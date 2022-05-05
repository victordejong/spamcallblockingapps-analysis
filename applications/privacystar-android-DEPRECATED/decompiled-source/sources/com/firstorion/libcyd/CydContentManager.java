package com.firstorion.libcyd;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CydContentManager.class */
public final class CydContentManager {
    private static final String DB_NAME = "cyd_content";
    private static final int DB_VERSION = 3;
    private static final Object lock = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CydContentManager$CydSQLiteOpenHelper.class */
    public static final class CydSQLiteOpenHelper extends SQLiteOpenHelper {
        CydSQLiteOpenHelper(Context context, String str, int i) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        }

        private void upgradeTo2(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("ALTER TABLE CydMetadata ADD nbf INTEGER NOT NULL DEFAULT 0");
        }

        private void upgradeTo3(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("ALTER TABLE CydContent ADD contactId INTEGER NOT NULL DEFAULT 0");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE CydMetadata(    id INTEGER PRIMARY KEY,     tid TEXT NOT NULL,     ctid TEXT,     cvid TEXT NOT NULL UNIQUE,     spid TEXT NOT NULL,     exp INTEGER NOT NULL,     keep INTEGER NOT NULL,     nbf INTEGER NOT NULL DEFAULT 0)");
            sQLiteDatabase.execSQL("CREATE INDEX CydMetadata_cvid ON CydMetadata(cvid)");
            sQLiteDatabase.execSQL("CREATE TABLE ANumberMappings(    id INTEGER PRIMARY KEY,    metadataId INTEGER REFERENCES CydMetadata(id) ON DELETE CASCADE,    aNumber TEXT NOT NULL)");
            sQLiteDatabase.execSQL("CREATE INDEX ANumberMappings_aNumber ON ANumberMappings(aNumber)");
            sQLiteDatabase.execSQL("CREATE TABLE CydContent(    id INTEGER PRIMARY KEY,    metadataId INTEGER REFERENCES CydMetadata(id) ON DELETE CASCADE,    variables TEXT NOT NULL,    content TEXT NOT NULL,    contactId INTEGER NOT NULL DEFAULT 0)");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            PrintStream printStream = System.out;
            printStream.println("old version: " + i);
            PrintStream printStream2 = System.out;
            printStream2.println("new version: " + i2);
            if (i < 2) {
                upgradeTo2(sQLiteDatabase);
            }
            if (i < 3) {
                upgradeTo3(sQLiteDatabase);
            }
        }
    }

    private CydContentManager() {
    }

    private static void cleanContentInternal(Context context, SQLiteDatabase sQLiteDatabase, TelemetryHost telemetryHost, List<String> list, String str, String str2, CleanReason cleanReason, String str3) {
        ArrayList<TelemetryEvent> arrayList = new ArrayList();
        if (str != null) {
            arrayList.addAll(doOneClean(context, sQLiteDatabase, "SELECT id, tid, ctid FROM CydMetadata where spid = ?", new String[]{str}, CleanReason.KillSPID, str3));
        }
        if (str2 != null) {
            arrayList.addAll(doOneClean(context, sQLiteDatabase, "SELECT id, tid, ctid FROM CydMetadata where cvid = ?", new String[]{str2}, cleanReason, str3));
        }
        long currentTimeMillis = System.currentTimeMillis();
        arrayList.addAll(doOneClean(context, sQLiteDatabase, "SELECT id, tid, ctid FROM CydMetadata where exp <= " + Long.toString(currentTimeMillis), null, CleanReason.TTL, null));
        arrayList.addAll(doOneClean(context, sQLiteDatabase, "SELECT metadata.id, metadata.tid AS tid, metadata.ctid AS ctid FROM CydMetadata metadata WHERE NOT EXISTS (SELECT 1 FROM ANumberMappings mappings WHERE mappings.metadataId = metadata.Id)", null, CleanReason.NoANumbers, null));
        for (TelemetryEvent telemetryEvent : arrayList) {
            telemetryHost.putTelemetryEvent(telemetryEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void cleanExpiredContent(Context context, TelemetryHost telemetryHost) {
        synchronized (lock) {
            metaCleanContentInternal(context, telemetryHost, null, null, null, null, null);
        }
    }

    private static void deleteContactsForMetadataIds(List<Long> list, Context context, SQLiteDatabase sQLiteDatabase, CleanReason cleanReason, String str, List<TelemetryEvent> list2) {
        Throwable th;
        Cursor cursor = null;
        cursor = null;
        try {
            Iterator<Long> it = list.iterator();
            while (true) {
                cursor = cursor;
                if (!it.hasNext()) {
                    break;
                }
                cursor = sQLiteDatabase.rawQuery("SELECT m.tid, c.contactId FROM CydMetadata m JOIN CydContent c ON (m.id = c.metadataId) WHERE m.id = ?", new String[]{String.valueOf(it.next())});
                while (cursor.moveToNext()) {
                    try {
                        String string = cursor.getString(0);
                        long j = cursor.getLong(1);
                        if (!ContactManager.hasContactPermission(context)) {
                            list2.add(new TelemetryEvent(string, str, 59, getTelemetryCodeForContactDeleteReason(cleanReason, ContactDeleteReason.NoPermission)));
                        } else if (ContactManager.deleteContact(context, j)) {
                            list2.add(new TelemetryEvent(string, str, 59, getTelemetryCodeForContactDeleteReason(cleanReason, ContactDeleteReason.Ok)));
                        } else {
                            list2.add(new TelemetryEvent(string, str, 59, getTelemetryCodeForContactDeleteReason(cleanReason, ContactDeleteReason.NonExistent)));
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static List<TelemetryEvent> doOneClean(Context context, SQLiteDatabase sQLiteDatabase, String str, String[] strArr, CleanReason cleanReason, String str2) {
        Cursor cursor;
        Throwable th;
        int telemetryCodeForReason = getTelemetryCodeForReason(cleanReason);
        ArrayList arrayList = new ArrayList();
        ArrayList<Long> arrayList2 = new ArrayList();
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery(str, strArr);
            while (rawQuery.moveToNext()) {
                try {
                    long j = rawQuery.getLong(0);
                    arrayList.add(new TelemetryEvent(rawQuery.getString(1), str2, 59, telemetryCodeForReason));
                    arrayList2.add(Long.valueOf(j));
                } catch (Throwable th2) {
                    th = th2;
                    cursor = rawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            deleteContactsForMetadataIds(arrayList2, context, sQLiteDatabase, cleanReason, str2, arrayList);
            String[] strArr2 = new String[1];
            for (Long l : arrayList2) {
                strArr2[0] = l.toString();
                sQLiteDatabase.delete("CydMetadata", "id = ?", strArr2);
            }
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CydContent getContent(Context context, String str) throws InternalErrorException {
        CydSQLiteOpenHelper cydSQLiteOpenHelper;
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        Throwable th2;
        Cursor cursor;
        CydContent cydContent;
        synchronized (lock) {
            long currentTimeMillis = System.currentTimeMillis();
            cydContent = null;
            try {
                cydSQLiteOpenHelper = new CydSQLiteOpenHelper(context, DB_NAME, 3);
                try {
                    SQLiteDatabase writableDatabase = cydSQLiteOpenHelper.getWritableDatabase();
                    try {
                        writableDatabase.setForeignKeyConstraintsEnabled(true);
                        writableDatabase.beginTransaction();
                        try {
                            Cursor rawQuery = writableDatabase.rawQuery("SELECT metadata.tid, metadata.ctid, metadata.cvid, metadata.spid, metadata.exp, metadata.keep, metadata.nbf, content.variables, content.content, content.contactId FROM CydMetadata metadata, CydContent content, ANumberMappings mappings WHERE  mappings.aNumber = ? AND mappings.metadataId = metadata.Id AND mappings.metadataId = content.metadataId", new String[]{str});
                            try {
                                if (rawQuery.getCount() > 1) {
                                    throw new InternalErrorException("Selected more than content record.");
                                }
                                if (rawQuery.moveToNext()) {
                                    String string = rawQuery.getString(0);
                                    String string2 = rawQuery.getString(1);
                                    String string3 = rawQuery.getString(2);
                                    String string4 = rawQuery.getString(3);
                                    long j = rawQuery.getLong(4);
                                    boolean z = rawQuery.getShort(5) == 1;
                                    long j2 = rawQuery.getLong(6);
                                    String string5 = rawQuery.getString(7);
                                    cydContent = new CydContent(new CydContentMetadata(string, string2, string3, string4, j, z, j2), new JSONObject(rawQuery.getString(8)), new JSONObject(string5), null, rawQuery.getLong(9));
                                }
                                if (rawQuery != null) {
                                    rawQuery.close();
                                }
                                writableDatabase.setTransactionSuccessful();
                                if (writableDatabase != null) {
                                    if (writableDatabase.inTransaction()) {
                                        writableDatabase.endTransaction();
                                    }
                                    writableDatabase.close();
                                }
                                if (cydSQLiteOpenHelper != null) {
                                    cydSQLiteOpenHelper.close();
                                }
                                Log.d("libcyd.app", "Get content (ms): " + (System.currentTimeMillis() - currentTimeMillis));
                            } catch (Throwable th3) {
                                th2 = th3;
                                cursor = rawQuery;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            th2 = th4;
                            cursor = null;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        sQLiteDatabase = writableDatabase;
                        if (sQLiteDatabase != null) {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                            sQLiteDatabase.close();
                        }
                        if (cydSQLiteOpenHelper != null) {
                            cydSQLiteOpenHelper.close();
                        }
                        Log.d("libcyd.app", "Get content (ms): " + (System.currentTimeMillis() - currentTimeMillis));
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    sQLiteDatabase = null;
                }
            } catch (Throwable th7) {
                th = th7;
                cydSQLiteOpenHelper = null;
                sQLiteDatabase = null;
            }
        }
        return cydContent;
    }

    private static int getTelemetryCodeForContactDeleteReason(CleanReason cleanReason, ContactDeleteReason contactDeleteReason) {
        if (cleanReason == CleanReason.RingStop) {
            if (contactDeleteReason == ContactDeleteReason.Ok) {
                return 51;
            }
            if (contactDeleteReason == ContactDeleteReason.NoPermission) {
                return 52;
            }
            if (contactDeleteReason == ContactDeleteReason.NonExistent) {
                return 53;
            }
            return contactDeleteReason == ContactDeleteReason.Unkown ? 54 : 50;
        } else if (cleanReason == CleanReason.TTL) {
            if (contactDeleteReason == ContactDeleteReason.Ok) {
                return 55;
            }
            if (contactDeleteReason == ContactDeleteReason.NoPermission) {
                return 56;
            }
            if (contactDeleteReason == ContactDeleteReason.NonExistent) {
                return 57;
            }
            return contactDeleteReason == ContactDeleteReason.Unkown ? 58 : 50;
        } else if (cleanReason == CleanReason.Kill || cleanReason == CleanReason.KillSPID) {
            if (contactDeleteReason == ContactDeleteReason.Ok) {
                return 59;
            }
            if (contactDeleteReason == ContactDeleteReason.NoPermission) {
                return 60;
            }
            if (contactDeleteReason == ContactDeleteReason.NonExistent) {
                return 61;
            }
            return contactDeleteReason == ContactDeleteReason.Unkown ? 62 : 50;
        } else if (cleanReason != CleanReason.CallEnded) {
            return 50;
        } else {
            if (contactDeleteReason == ContactDeleteReason.Ok) {
                return 63;
            }
            if (contactDeleteReason == ContactDeleteReason.NoPermission) {
                return 64;
            }
            if (contactDeleteReason == ContactDeleteReason.NonExistent) {
                return 65;
            }
            return contactDeleteReason == ContactDeleteReason.Unkown ? 66 : 50;
        }
    }

    private static int getTelemetryCodeForReason(CleanReason cleanReason) {
        return cleanReason == CleanReason.Kill ? 11 : cleanReason == CleanReason.Squash ? 2 : cleanReason == CleanReason.RingStop ? 0 : cleanReason == CleanReason.NoOverlayPermissions ? 5 : cleanReason == CleanReason.TemplateError ? 6 : cleanReason == CleanReason.NetworkError ? 12 : cleanReason == CleanReason.CallEnded ? 16 : cleanReason == CleanReason.KillSPID ? 10 : cleanReason == CleanReason.TTL ? 1 : cleanReason == CleanReason.NoANumbers ? 14 : cleanReason == CleanReason.KillAll ? 15 : 13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void killContent(Context context, TelemetryHost telemetryHost, String str, String str2, String str3) {
        CydSQLiteOpenHelper cydSQLiteOpenHelper;
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        synchronized (lock) {
            long currentTimeMillis = System.currentTimeMillis();
            if ("*".equals(str)) {
                try {
                    cydSQLiteOpenHelper = new CydSQLiteOpenHelper(context, DB_NAME, 3);
                    try {
                        SQLiteDatabase writableDatabase = cydSQLiteOpenHelper.getWritableDatabase();
                        try {
                            writableDatabase.setForeignKeyConstraintsEnabled(true);
                            writableDatabase.beginTransaction();
                            List<TelemetryEvent> doOneClean = doOneClean(context, writableDatabase, "SELECT id, tid, ctid FROM CydMetadata", null, CleanReason.KillAll, str3);
                            writableDatabase.setTransactionSuccessful();
                            writableDatabase.endTransaction();
                            for (TelemetryEvent telemetryEvent : doOneClean) {
                                telemetryHost.putTelemetryEvent(telemetryEvent);
                            }
                            if (writableDatabase != null) {
                                if (writableDatabase.inTransaction()) {
                                    writableDatabase.endTransaction();
                                }
                                writableDatabase.close();
                            }
                            if (cydSQLiteOpenHelper != null) {
                                cydSQLiteOpenHelper.close();
                            }
                            Log.d("libcyd.app", "Clean content (ms): " + (System.currentTimeMillis() - currentTimeMillis));
                        } catch (Throwable th2) {
                            th = th2;
                            sQLiteDatabase = writableDatabase;
                            if (sQLiteDatabase != null) {
                                if (sQLiteDatabase.inTransaction()) {
                                    sQLiteDatabase.endTransaction();
                                }
                                sQLiteDatabase.close();
                            }
                            if (cydSQLiteOpenHelper != null) {
                                cydSQLiteOpenHelper.close();
                            }
                            Log.d("libcyd.app", "Clean content (ms): " + (System.currentTimeMillis() - currentTimeMillis));
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        sQLiteDatabase = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    cydSQLiteOpenHelper = null;
                    sQLiteDatabase = null;
                }
            } else {
                metaCleanContentInternal(context, telemetryHost, null, str2, str, CleanReason.Kill, str3);
            }
        }
    }

    private static void metaCleanContentInternal(Context context, TelemetryHost telemetryHost, List<String> list, String str, String str2, CleanReason cleanReason, String str3) {
        CydSQLiteOpenHelper cydSQLiteOpenHelper;
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        SQLiteDatabase writableDatabase;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            CydSQLiteOpenHelper cydSQLiteOpenHelper2 = new CydSQLiteOpenHelper(context, DB_NAME, 3);
            try {
                writableDatabase = cydSQLiteOpenHelper2.getWritableDatabase();
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = null;
                cydSQLiteOpenHelper = cydSQLiteOpenHelper2;
            }
            try {
                writableDatabase.setForeignKeyConstraintsEnabled(true);
                writableDatabase.beginTransaction();
                cleanContentInternal(context, writableDatabase, telemetryHost, list, str, str2, cleanReason, str3);
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                if (writableDatabase != null) {
                    if (writableDatabase.inTransaction()) {
                        writableDatabase.endTransaction();
                    }
                    writableDatabase.close();
                }
                if (cydSQLiteOpenHelper2 != null) {
                    cydSQLiteOpenHelper2.close();
                }
                Log.d("libcyd.app", "Clean content (ms): " + (System.currentTimeMillis() - currentTimeMillis));
            } catch (Throwable th3) {
                th = th3;
                cydSQLiteOpenHelper = cydSQLiteOpenHelper2;
                sQLiteDatabase = writableDatabase;
                if (sQLiteDatabase != null) {
                    if (sQLiteDatabase.inTransaction()) {
                        sQLiteDatabase.endTransaction();
                    }
                    sQLiteDatabase.close();
                }
                if (cydSQLiteOpenHelper != null) {
                    cydSQLiteOpenHelper.close();
                }
                Log.d("libcyd.app", "Clean content (ms): " + (System.currentTimeMillis() - currentTimeMillis));
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            cydSQLiteOpenHelper = null;
            sQLiteDatabase = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0292 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02a9 A[Catch: all -> 0x0329, TRY_ENTER, TryCatch #6 {, blocks: (B:4:0x0006, B:38:0x01fa, B:40:0x0202, B:42:0x0209, B:45:0x0211, B:46:0x0216, B:46:0x0216, B:47:0x0219, B:49:0x0239, B:73:0x02a9, B:75:0x02b0, B:77:0x02b5, B:80:0x02bc, B:81:0x02c0, B:81:0x02c0, B:82:0x02c3, B:83:0x02e7, B:86:0x02ec, B:88:0x02f3, B:90:0x02f8, B:93:0x02ff, B:94:0x0303, B:94:0x0303, B:95:0x0306, B:97:0x0327), top: B:106:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02bc A[Catch: all -> 0x0329, TRY_ENTER, TryCatch #6 {, blocks: (B:4:0x0006, B:38:0x01fa, B:40:0x0202, B:42:0x0209, B:45:0x0211, B:46:0x0216, B:46:0x0216, B:47:0x0219, B:49:0x0239, B:73:0x02a9, B:75:0x02b0, B:77:0x02b5, B:80:0x02bc, B:81:0x02c0, B:81:0x02c0, B:82:0x02c3, B:83:0x02e7, B:86:0x02ec, B:88:0x02f3, B:90:0x02f8, B:93:0x02ff, B:94:0x0303, B:94:0x0303, B:95:0x0306, B:97:0x0327), top: B:106:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02ec A[Catch: all -> 0x0329, TRY_ENTER, TryCatch #6 {, blocks: (B:4:0x0006, B:38:0x01fa, B:40:0x0202, B:42:0x0209, B:45:0x0211, B:46:0x0216, B:46:0x0216, B:47:0x0219, B:49:0x0239, B:73:0x02a9, B:75:0x02b0, B:77:0x02b5, B:80:0x02bc, B:81:0x02c0, B:81:0x02c0, B:82:0x02c3, B:83:0x02e7, B:86:0x02ec, B:88:0x02f3, B:90:0x02f8, B:93:0x02ff, B:94:0x0303, B:94:0x0303, B:95:0x0306, B:97:0x0327), top: B:106:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02ff A[Catch: all -> 0x0329, TRY_ENTER, TryCatch #6 {, blocks: (B:4:0x0006, B:38:0x01fa, B:40:0x0202, B:42:0x0209, B:45:0x0211, B:46:0x0216, B:46:0x0216, B:47:0x0219, B:49:0x0239, B:73:0x02a9, B:75:0x02b0, B:77:0x02b5, B:80:0x02bc, B:81:0x02c0, B:81:0x02c0, B:82:0x02c3, B:83:0x02e7, B:86:0x02ec, B:88:0x02f3, B:90:0x02f8, B:93:0x02ff, B:94:0x0303, B:94:0x0303, B:95:0x0306, B:97:0x0327), top: B:106:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void putContent(android.content.Context r9, com.firstorion.libcyd.TelemetryHost r10, com.firstorion.libcyd.CydContent r11) throws com.firstorion.libcyd.InternalErrorException {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.firstorion.libcyd.CydContentManager.putContent(android.content.Context, com.firstorion.libcyd.TelemetryHost, com.firstorion.libcyd.CydContent):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void removeContentForReason(Context context, TelemetryHost telemetryHost, String str, CleanReason cleanReason) {
        synchronized (lock) {
            metaCleanContentInternal(context, telemetryHost, null, null, str, cleanReason, null);
        }
    }
}
