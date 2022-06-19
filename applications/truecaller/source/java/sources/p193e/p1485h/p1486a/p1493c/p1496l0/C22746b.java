package p193e.p1485h.p1486a.p1493c.p1496l0;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.File;
import java.util.ArrayList;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1502r0.C22825m;
/* renamed from: e.h.a.c.l0.b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/l0/b.class */
public class C22746b {

    /* renamed from: g */
    public static final String f62984g;

    /* renamed from: a */
    public CleverTapInstanceConfig f62997a;

    /* renamed from: b */
    public final C22747a f62998b;

    /* renamed from: c */
    public boolean f62999c;

    /* renamed from: d */
    public static final String f62981d = C22128a.m8618h(C22128a.m8688M("CREATE TABLE ", "events", " (_id INTEGER PRIMARY KEY AUTOINCREMENT, ", RemoteMessageConst.DATA, " STRING NOT NULL, "), "created_at", " INTEGER NOT NULL);");

    /* renamed from: e */
    public static final String f62982e = C22128a.m8618h(C22128a.m8688M("CREATE TABLE ", "profileEvents", " (_id INTEGER PRIMARY KEY AUTOINCREMENT, ", RemoteMessageConst.DATA, " STRING NOT NULL, "), "created_at", " INTEGER NOT NULL);");

    /* renamed from: f */
    public static final String f62983f = C22128a.m8717E2("CREATE TABLE ", "userProfiles", " (_id STRING UNIQUE PRIMARY KEY, ", RemoteMessageConst.DATA, " STRING NOT NULL);");

    /* renamed from: h */
    public static final String f62985h = C22128a.m8618h(C22128a.m8688M("CREATE UNIQUE INDEX IF NOT EXISTS userid_id_idx ON ", "inboxMessages", " (", "messageUser", ","), "_id", ");");

    /* renamed from: i */
    public static final String f62986i = "CREATE INDEX IF NOT EXISTS time_idx ON events (created_at);";

    /* renamed from: j */
    public static final String f62987j = "CREATE INDEX IF NOT EXISTS time_idx ON profileEvents (created_at);";

    /* renamed from: k */
    public static final String f62988k = C22128a.m8606k(C22128a.m8688M("CREATE TABLE ", "pushNotifications", " (_id INTEGER PRIMARY KEY AUTOINCREMENT, ", RemoteMessageConst.DATA, " STRING NOT NULL, "), "created_at", " INTEGER NOT NULL,", "isRead", " INTEGER NOT NULL);");

    /* renamed from: l */
    public static final String f62989l = C22128a.m8717E2("CREATE INDEX IF NOT EXISTS time_idx ON ", "pushNotifications", " (", "created_at", ");");

    /* renamed from: m */
    public static final String f62990m = C22128a.m8717E2("CREATE TABLE ", "uninstallTimestamp", " (_id INTEGER PRIMARY KEY AUTOINCREMENT, ", "created_at", " INTEGER NOT NULL);");

    /* renamed from: n */
    public static final String f62991n = C22128a.m8717E2("CREATE INDEX IF NOT EXISTS time_idx ON ", "uninstallTimestamp", " (", "created_at", ");");

    /* renamed from: o */
    public static final String f62992o = C22128a.m8618h(C22128a.m8688M("CREATE TABLE ", "notificationViewed", " (_id INTEGER PRIMARY KEY AUTOINCREMENT, ", RemoteMessageConst.DATA, " STRING NOT NULL, "), "created_at", " INTEGER NOT NULL);");

    /* renamed from: p */
    public static final String f62993p = C22128a.m8717E2("CREATE INDEX IF NOT EXISTS time_idx ON ", "notificationViewed", " (", "created_at", ");");

    /* renamed from: q */
    public static final String f62994q = "DROP TABLE IF EXISTS uninstallTimestamp";

    /* renamed from: r */
    public static final String f62995r = "DROP TABLE IF EXISTS inboxMessages";

    /* renamed from: s */
    public static final String f62996s = "DROP TABLE IF EXISTS notificationViewed";

    /* renamed from: e.h.a.c.l0.b$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/l0/b$a.class */
    public static class C22747a extends SQLiteOpenHelper {

        /* renamed from: a */
        public final File f63000a;

        public C22747a(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 3);
            this.f63000a = context.getDatabasePath(str);
        }

        /* renamed from: b */
        public void m7821b() {
            close();
            this.f63000a.delete();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.compileStatement(C22746b.f62981d).execute();
            sQLiteDatabase.compileStatement(C22746b.f62982e).execute();
            sQLiteDatabase.compileStatement(C22746b.f62983f).execute();
            sQLiteDatabase.compileStatement(C22746b.f62984g).execute();
            sQLiteDatabase.compileStatement(C22746b.f62988k).execute();
            sQLiteDatabase.compileStatement(C22746b.f62990m).execute();
            sQLiteDatabase.compileStatement(C22746b.f62992o).execute();
            sQLiteDatabase.compileStatement(C22746b.f62986i).execute();
            sQLiteDatabase.compileStatement(C22746b.f62987j).execute();
            sQLiteDatabase.compileStatement(C22746b.f62991n).execute();
            sQLiteDatabase.compileStatement(C22746b.f62989l).execute();
            sQLiteDatabase.compileStatement(C22746b.f62985h).execute();
            sQLiteDatabase.compileStatement(C22746b.f62993p).execute();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                sQLiteDatabase.compileStatement(C22746b.f62996s).execute();
                sQLiteDatabase.compileStatement(C22746b.f62992o).execute();
                sQLiteDatabase.compileStatement(C22746b.f62993p).execute();
                return;
            }
            sQLiteDatabase.compileStatement(C22746b.f62994q).execute();
            sQLiteDatabase.compileStatement(C22746b.f62995r).execute();
            sQLiteDatabase.compileStatement(C22746b.f62996s).execute();
            sQLiteDatabase.compileStatement(C22746b.f62984g).execute();
            sQLiteDatabase.compileStatement(C22746b.f62988k).execute();
            sQLiteDatabase.compileStatement(C22746b.f62990m).execute();
            sQLiteDatabase.compileStatement(C22746b.f62992o).execute();
            sQLiteDatabase.compileStatement(C22746b.f62991n).execute();
            sQLiteDatabase.compileStatement(C22746b.f62989l).execute();
            sQLiteDatabase.compileStatement(C22746b.f62985h).execute();
            sQLiteDatabase.compileStatement(C22746b.f62993p).execute();
        }
    }

    /* renamed from: e.h.a.c.l0.b$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/l0/b$b.class */
    public enum EnumC22748b {
        EVENTS("events"),
        PROFILE_EVENTS("profileEvents"),
        USER_PROFILES("userProfiles"),
        INBOX_MESSAGES("inboxMessages"),
        PUSH_NOTIFICATIONS("pushNotifications"),
        UNINSTALL_TS("uninstallTimestamp"),
        PUSH_NOTIFICATION_VIEWED("notificationViewed");
        

        /* renamed from: a */
        public final String f63009a;

        EnumC22748b(String str) {
            this.f63009a = str;
        }
    }

    static {
        StringBuilder m8688M = C22128a.m8688M("CREATE TABLE ", "inboxMessages", " (_id STRING NOT NULL, ", RemoteMessageConst.DATA, " TEXT NOT NULL, ");
        C22128a.m8666T0(m8688M, "wzrkParams", " TEXT NOT NULL, ", "campaignId", " STRING NOT NULL, ");
        C22128a.m8666T0(m8688M, "tags", " TEXT NOT NULL, ", "isRead", " INTEGER NOT NULL DEFAULT 0, ");
        C22128a.m8666T0(m8688M, "expires", " INTEGER NOT NULL, ", "created_at", " INTEGER NOT NULL, ");
        f62984g = C22128a.m8618h(m8688M, "messageUser", " STRING NOT NULL);");
    }

    public C22746b(Context context, CleverTapInstanceConfig cleverTapInstanceConfig) {
        String str;
        if (cleverTapInstanceConfig.f2252m) {
            str = "clevertap";
        } else {
            StringBuilder m8728C = C22128a.m8728C("clevertap_");
            m8728C.append(cleverTapInstanceConfig.f2240a);
            str = m8728C.toString();
        }
        this.f62999c = true;
        this.f62998b = new C22747a(context, str);
        this.f62997a = cleverTapInstanceConfig;
    }

    /* renamed from: a */
    public final boolean m7835a() {
        C22747a c22747a = this.f62998b;
        boolean z = true;
        if (c22747a.f63000a.exists()) {
            z = Math.max(c22747a.f63000a.getUsableSpace(), 20971520L) >= c22747a.f63000a.length();
        }
        return z;
    }

    /* renamed from: b */
    public final void m7834b(EnumC22748b enumC22748b, long j) {
        long currentTimeMillis = (System.currentTimeMillis() - j) / 1000;
        String str = enumC22748b.f63009a;
        try {
            try {
                SQLiteDatabase writableDatabase = this.f62998b.getWritableDatabase();
                writableDatabase.delete(str, "created_at <= " + currentTimeMillis, null);
            } catch (SQLiteException e) {
                Objects.requireNonNull(m7828h());
                this.f62998b.m7821b();
            }
        } finally {
            this.f62998b.close();
        }
    }

    /* renamed from: c */
    public void m7833c(String str, EnumC22748b enumC22748b) {
        C22747a c22747a;
        synchronized (this) {
            String str2 = enumC22748b.f63009a;
            try {
                SQLiteDatabase writableDatabase = this.f62998b.getWritableDatabase();
                writableDatabase.delete(str2, "_id <= " + str, null);
                c22747a = this.f62998b;
            } catch (SQLiteException e) {
                Objects.requireNonNull(m7828h());
                this.f62998b.m7821b();
                c22747a = this.f62998b;
            }
            c22747a.close();
        }
    }

    /* renamed from: d */
    public void m7832d(EnumC22748b enumC22748b) {
        synchronized (this) {
            m7834b(enumC22748b, 432000000L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00e7 A[Catch: all -> 0x00ef, TRY_ENTER, TryCatch #6 {, blocks: (B:4:0x0002, B:25:0x008a, B:32:0x00ad, B:34:0x00b7, B:39:0x00c3, B:47:0x00dc, B:49:0x00e7, B:51:0x00ee), top: B:67:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject m7831e(p193e.p1485h.p1486a.p1493c.p1496l0.C22746b.EnumC22748b r11, int r12) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1496l0.C22746b.m7831e(e.h.a.c.l0.b$b, int):org.json.JSONObject");
    }

    /* renamed from: f */
    public final String m7830f(String str) {
        String str2;
        String str3;
        Cursor query;
        synchronized (this) {
            Cursor cursor = null;
            try {
                query = this.f62998b.getReadableDatabase().query("pushNotifications", null, "data =?", new String[]{str}, null, null, null);
                str3 = "";
                if (query != null) {
                    str3 = "";
                    if (query.moveToFirst()) {
                        cursor = query;
                        str3 = query.getString(query.getColumnIndex(RemoteMessageConst.DATA));
                    }
                }
                this.f62998b.close();
                str2 = str3;
            } catch (SQLiteException e) {
                Objects.requireNonNull(m7828h());
                this.f62998b.close();
                str2 = "";
                if (cursor != null) {
                    str3 = "";
                }
            }
            if (query != null) {
                cursor = query;
                cursor.close();
                str2 = str3;
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c5 A[Catch: all -> 0x00ce, TRY_ENTER, TryCatch #4 {, blocks: (B:21:0x006c, B:25:0x007d, B:33:0x009d, B:42:0x00b9, B:44:0x00c5, B:46:0x00cd), top: B:59:0x000a }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject m7829g(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1496l0.C22746b.m7829g(java.lang.String):org.json.JSONObject");
    }

    /* renamed from: h */
    public final C22735g0 m7828h() {
        return this.f62997a.m42081b();
    }

    /* renamed from: i */
    public ArrayList<C22825m> m7827i(String str) {
        ArrayList<C22825m> arrayList;
        synchronized (this) {
            arrayList = new ArrayList<>();
            try {
                try {
                    Cursor query = this.f62998b.getWritableDatabase().query("inboxMessages", null, "messageUser =?", new String[]{str}, null, null, "created_at DESC");
                    if (query != null) {
                        while (query.moveToNext()) {
                            C22825m c22825m = new C22825m();
                            c22825m.f63338d = query.getString(query.getColumnIndex("_id"));
                            c22825m.f63339e = new JSONObject(query.getString(query.getColumnIndex(RemoteMessageConst.DATA)));
                            c22825m.f63343i = new JSONObject(query.getString(query.getColumnIndex("wzrkParams")));
                            c22825m.f63336b = query.getLong(query.getColumnIndex("created_at"));
                            c22825m.f63337c = query.getLong(query.getColumnIndex("expires"));
                            c22825m.f63340f = query.getInt(query.getColumnIndex("isRead")) == 1;
                            c22825m.f63342h = query.getString(query.getColumnIndex("messageUser"));
                            c22825m.m7729c(query.getString(query.getColumnIndex("tags")));
                            c22825m.f63335a = query.getString(query.getColumnIndex("campaignId"));
                            arrayList.add(c22825m);
                        }
                        query.close();
                    }
                    this.f62998b.close();
                } catch (JSONException e) {
                    m7828h().m7855b("Error retrieving records from inboxMessages", e.getMessage());
                    this.f62998b.close();
                    return null;
                }
            } catch (SQLiteException e2) {
                Objects.requireNonNull(m7828h());
                this.f62998b.close();
                return null;
            }
        }
        return arrayList;
    }

    /* renamed from: j */
    public void m7826j(EnumC22748b enumC22748b) {
        synchronized (this) {
            try {
                this.f62998b.getWritableDatabase().delete(enumC22748b.f63009a, null, null);
            } catch (SQLiteException e) {
                Objects.requireNonNull(m7828h());
                this.f62998b.m7821b();
            }
            this.f62998b.close();
        }
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: k */
    public int m7825k(JSONObject jSONObject, EnumC22748b enumC22748b) {
        C22747a c22747a;
        synchronized (this) {
            if (!m7835a()) {
                return -2;
            }
            String str = enumC22748b.f63009a;
            char c = 65535;
            try {
                SQLiteDatabase writableDatabase = this.f62998b.getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put(RemoteMessageConst.DATA, jSONObject.toString());
                contentValues.put("created_at", Long.valueOf(System.currentTimeMillis()));
                writableDatabase.insert(str, null, contentValues);
                ?? simpleQueryForLong = writableDatabase.compileStatement("SELECT COUNT(*) FROM " + str).simpleQueryForLong();
                c22747a = this.f62998b;
                c = simpleQueryForLong;
            } catch (SQLiteException e) {
                Objects.requireNonNull(m7828h());
                this.f62998b.m7821b();
                c22747a = this.f62998b;
            }
            c22747a.close();
            return c;
        }
    }

    /* renamed from: l */
    public void m7824l() {
        C22747a c22747a;
        synchronized (this) {
            if (!m7835a()) {
                Objects.requireNonNull(m7828h());
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f62998b.getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("created_at", Long.valueOf(System.currentTimeMillis()));
                writableDatabase.insert("uninstallTimestamp", null, contentValues);
                c22747a = this.f62998b;
            } catch (SQLiteException e) {
                Objects.requireNonNull(m7828h());
                this.f62998b.m7821b();
                c22747a = this.f62998b;
            }
            c22747a.close();
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: m */
    public long m7823m(String str, JSONObject jSONObject) {
        synchronized (this) {
            char c = 65535;
            if (str == null) {
                return -1L;
            }
            if (!m7835a()) {
                Objects.requireNonNull(m7828h());
                return -2L;
            }
            try {
                SQLiteDatabase writableDatabase = this.f62998b.getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put(RemoteMessageConst.DATA, jSONObject.toString());
                contentValues.put("_id", str);
                c = writableDatabase.insertWithOnConflict("userProfiles", null, contentValues, 5);
            } catch (SQLiteException e) {
                Objects.requireNonNull(m7828h());
                this.f62998b.m7821b();
            }
            this.f62998b.close();
            return c;
        }
    }

    /* renamed from: n */
    public void m7822n(String[] strArr) {
        synchronized (this) {
            if (strArr.length == 0) {
                return;
            }
            if (!m7835a()) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f62998b.getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("isRead", (Integer) 1);
                StringBuilder sb = new StringBuilder();
                sb.append("?");
                for (int i = 0; i < strArr.length - 1; i++) {
                    sb.append(", ?");
                }
                writableDatabase.update("pushNotifications", contentValues, "data IN ( " + sb.toString() + " )", strArr);
                this.f62999c = false;
            } catch (SQLiteException e) {
                Objects.requireNonNull(m7828h());
                this.f62998b.m7821b();
            }
            this.f62998b.close();
        }
    }
}
