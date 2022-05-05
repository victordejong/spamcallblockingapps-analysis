package com.privacystar.core.data.sqlite.p008db.event_control;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsHelper;
import com.privacystar.core.data.sqlite.p008db.event_control.EventControlContract;
import com.privacystar.core.data.sqlite.p008db.event_control.EventControlModel;
import com.privacystar.core.data.sqlite.p008db.offenders.OffendersHelper;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.Text;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.event_control.EventControlHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/event_control/EventControlHelper.class */
public class EventControlHelper {
    private static final Object eventControlTableLock = new Object();
    private static boolean eventControlTableUpdatePending = false;
    private static EventControlHelper instance;
    private Context context;

    private EventControlHelper(Context context) {
        this.context = context;
    }

    public static EventControlHelper getInstance() {
        EventControlHelper instance2;
        synchronized (EventControlHelper.class) {
            try {
                instance2 = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance2;
    }

    public static EventControlHelper getInstance(Context context) {
        EventControlHelper eventControlHelper;
        synchronized (EventControlHelper.class) {
            try {
                if (instance == null) {
                    instance = new EventControlHelper(context.getApplicationContext());
                }
                eventControlHelper = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eventControlHelper;
    }

    private String manageEventControlTablePaged(String str, int i) {
        String str2;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT ");
            sb.append(EventControlContract.EventControlEntry.COLUMN_MATCH_VALUE);
            sb.append(',');
            sb.append(EventControlContract.EventControlEntry.COLUMN_EVENT_CODE);
            sb.append(',');
            sb.append(EventControlContract.EventControlEntry.COLUMN_ACTION_CODE);
            sb.append(',');
            sb.append(" Label");
            sb.append(" FROM ");
            sb.append(EventControlContract.EventControlEntry.TABLE_NAME);
            if (!Text.isBlank(str)) {
                sb.append(" WHERE ");
                sb.append(EventControlContract.EventControlEntry.COLUMN_MATCH_VALUE);
                sb.append(">\"");
                sb.append(str);
                sb.append('\"');
            }
            sb.append(" ORDER BY ");
            sb.append(EventControlContract.EventControlEntry.COLUMN_MATCH_VALUE);
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(';');
            str2 = populateManagingHashMaps(DatabaseHelper.getInstance(this.context).getReadableDatabase().rawQuery(sb.toString(), new String[0]), i);
        } catch (Exception e) {
            Timber.m32e(e, "while populating blocking managers", new Object[0]);
            str2 = null;
        }
        return str2;
    }

    private String manageScamHashMaps(String str, int i) {
        if (!PreferenceUtil.getUseCompactBinaryOffenderList()) {
            return OffendersHelper.getInstance().manageScamHashMaps(str, i);
        }
        BlockingManager.setShouldBlockScammers(true);
        return null;
    }

    private String populateManagingHashMaps(Cursor cursor, int i) {
        BlockingManager instance2 = BlockingManager.getInstance();
        try {
            cursor.moveToFirst();
            int matchTrimLength = PreferenceUtil.getMatchTrimLength();
            String str = null;
            if (cursor.getCount() <= 0) {
                return str;
            }
            int columnIndex = cursor.getColumnIndex(EventControlContract.EventControlEntry.COLUMN_MATCH_VALUE);
            int columnIndex2 = cursor.getColumnIndex(EventControlContract.EventControlEntry.COLUMN_EVENT_CODE);
            int columnIndex3 = cursor.getColumnIndex(EventControlContract.EventControlEntry.COLUMN_ACTION_CODE);
            str = null;
            int i2 = 0;
            do {
                i2++;
                String string = cursor.getString(columnIndex);
                int i3 = cursor.getInt(columnIndex2);
                int i4 = cursor.getInt(columnIndex3);
                if (i3 == 1 || i3 == 0) {
                    if (i4 == 1 || i4 == 3) {
                        if (!Text.equalsIgnoreCase(string, "*") && !Text.equalsIgnoreCase(string, "") && !Text.equalsIgnoreCase(string, BlockingManager.MATCHVALUE_UNKNOWN) && !Text.equalsIgnoreCase(string, BlockingManager.MATCHVALUE_ROBOCALL)) {
                            if (string.length() < 2 || !Text.endsWithIgnoreCase(string, "*")) {
                                instance2.getCallsBlocklistMap().put(Long.valueOf(Long.parseLong(NumbersUtil.getLast10Digits(Text.stripNonNumericCharacters(string), matchTrimLength))), Integer.valueOf(i4));
                            } else {
                                instance2.getGroupBlockMap().put(string, Integer.valueOf(i4));
                            }
                        }
                        instance2.getSpecialCasesCallBlocksMap().put(string, Integer.valueOf(i4));
                    } else if (i4 == 2) {
                        if (string.length() < 2 || !Text.endsWithIgnoreCase(string, "*")) {
                            instance2.getCallsWhitelistMap().put(Long.valueOf(Long.parseLong(NumbersUtil.getLast10Digits(Text.stripNonNumericCharacters(string), matchTrimLength))), Integer.valueOf(i4));
                        } else {
                            instance2.getGroupWhitelistMap().put(string, Integer.valueOf(i4));
                        }
                    } else if (i4 == 0) {
                        Timber.m28v("Matched no-op actionCode.", new Object[0]);
                    } else {
                        Timber.m25w("Call rule found with unknown actionCode --> matchValue: %s, action code: %s", string, Integer.valueOf(i4));
                    }
                }
                if (i3 == 2 || i3 == 0) {
                    if (i4 == 1) {
                        if (!Text.equalsIgnoreCase(string, "*") && !Text.equalsIgnoreCase(string, "") && !Text.equalsIgnoreCase(string, BlockingManager.MATCHVALUE_UNKNOWN) && !Text.equalsIgnoreCase(string, BlockingManager.MATCHVALUE_ROBOCALL)) {
                            if (Text.endsWithIgnoreCase(string, "*")) {
                                instance2.getGroupSmsBlockMap().put(string, Integer.valueOf(i4));
                            } else {
                                instance2.getSmsBlocklistMap().put(Long.valueOf(Long.parseLong(NumbersUtil.getLast10Digits(Text.stripNonNumericCharacters(string), matchTrimLength))), Integer.valueOf(i4));
                            }
                        }
                        instance2.getSpecialCasesSmsBlocksMap().put(string, Integer.valueOf(i4));
                    } else if (i4 == 2) {
                        if (string.length() < 2 || !Text.endsWithIgnoreCase(string, "*")) {
                            instance2.getSmsWhitelistMap().put(Long.valueOf(Long.parseLong(NumbersUtil.getLast10Digits(Text.stripNonNumericCharacters(string), matchTrimLength))), Integer.valueOf(i4));
                        } else {
                            instance2.getGroupSmsWhitelistMap().put(string, Integer.valueOf(i4));
                        }
                    } else if (i4 == 0) {
                        Timber.m28v("Matched no-op actionCode.", new Object[0]);
                    } else {
                        Timber.m25w("SMS rule found with unknown actionCode --> matchValue: %s, actionCode: %s", string, Integer.valueOf(i4));
                    }
                }
                if (i2 == i) {
                    str = string;
                }
                str = str;
            } while (cursor.moveToNext());
            return str;
        } finally {
            cursor.close();
        }
    }

    private static void setEventControlTableUpdatePending(boolean z) {
        synchronized (EventControlHelper.class) {
            try {
                eventControlTableUpdatePending = z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addEventControl(EventControlModel.EventControl eventControl) {
        addEventControl(eventControl, DatabaseHelper.getInstance(this.context).getWritableDatabase());
    }

    public void addEventControl(EventControlModel.EventControl eventControl, SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(eventControl);
        addEventControlList(arrayList, sQLiteDatabase);
    }

    public void addEventControlList(List<EventControlModel.EventControl> list) {
        addEventControlList(list, DatabaseHelper.getInstance(this.context).getWritableDatabase());
    }

    public void addEventControlList(List<EventControlModel.EventControl> list, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            try {
                for (EventControlModel.EventControl eventControl : list) {
                    sQLiteDatabase.insertOrThrow(EventControlContract.EventControlEntry.TABLE_NAME, null, EventControlContract.EventControlEntry.toContentValues(eventControl));
                    Timber.m28v("Added new EventControl entry for: MatchValue: %s, EventCode: %s, ActionCode: %s.", eventControl.matchValue, Integer.valueOf(eventControl.eventCode), Integer.valueOf(eventControl.actionCode));
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (SQLiteConstraintException e) {
                Timber.m32e(e, "duplicate EventControl entry. Was the table cleared before re-adding data?", new Object[0]);
            } catch (Exception e2) {
                Timber.m32e(e2, "trying to add to EventControl.", new Object[0]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public int clearEventControl() {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.context).getWritableDatabase();
        Timber.m37d("Deleting all entries from EventControl using injection-safe API method.", new Object[0]);
        return writableDatabase.delete(EventControlContract.EventControlEntry.TABLE_NAME, "1", null);
    }

    public int countControlEntries() {
        return (int) DatabaseUtils.queryNumEntries(DatabaseHelper.getInstance(this.context).getReadableDatabase(), EventControlContract.EventControlEntry.TABLE_NAME);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
        if (r0.isClosed() == false) goto L_0x0065;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005c A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.privacystar.core.data.sqlite.p008db.event_control.EventControlModel.EventControl> getAllControlEntries() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r7 = r0
            java.lang.String r0 = "SELECT %s FROM %s"
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "*"
            r2[r3] = r4
            r2 = r1
            r3 = 1
            java.lang.String r4 = "EventControl"
            r2[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r8 = r0
            java.lang.String r0 = "Preparing to execute SQL: %s."
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r8
            r2[r3] = r4
            timber.log.Timber.m28v(r0, r1)
            r0 = r6
            android.content.Context r0 = r0.context
            com.privacystar.core.data.sqlite.db.DatabaseHelper r0 = com.privacystar.core.data.sqlite.p008db.DatabaseHelper.getInstance(r0)
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()
            r1 = r8
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            r8 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x006e, Exception -> 0x0072
            if (r0 == 0) goto L_0x0058
        L_0x0044:
            r0 = r7
            r1 = r8
            com.privacystar.core.data.sqlite.db.event_control.EventControlModel$EventControl r1 = com.privacystar.core.data.sqlite.p008db.event_control.EventControlContract.EventControlEntry.parseCursor(r1)     // Catch: all -> 0x006e, Exception -> 0x0072
            boolean r0 = r0.add(r1)     // Catch: all -> 0x006e, Exception -> 0x0072
            r0 = r8
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x006e, Exception -> 0x0072
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0044
        L_0x0058:
            r0 = r8
            if (r0 == 0) goto L_0x0090
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x0090
        L_0x0065:
            r0 = r8
            r0.close()
            goto L_0x0090
        L_0x006e:
            r7 = move-exception
            goto L_0x0092
        L_0x0072:
            r10 = move-exception
            r0 = r10
            java.lang.String r1 = "trying to fetch all event controls."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x006e
            timber.log.Timber.m32e(r0, r1, r2)     // Catch: all -> 0x006e
            r0 = r8
            if (r0 == 0) goto L_0x0090
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x0090
            goto L_0x0065
        L_0x0090:
            r0 = r7
            return r0
        L_0x0092:
            r0 = r8
            if (r0 == 0) goto L_0x00a5
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x00a5
            r0 = r8
            r0.close()
        L_0x00a5:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.event_control.EventControlHelper.getAllControlEntries():java.util.List");
    }

    public void manageEventControlTable() {
        String manageEventControlTablePaged;
        String manageScamHashMaps;
        if (!eventControlTableUpdatePending) {
            setEventControlTableUpdatePending(true);
            synchronized (eventControlTableLock) {
                eventControlTableUpdatePending = false;
                String str = null;
                do {
                    manageEventControlTablePaged = manageEventControlTablePaged(str, 1000);
                    str = manageEventControlTablePaged;
                } while (!Text.isBlank(manageEventControlTablePaged));
                if (BlockingOptionsHelper.getInstance().isBlockingOptionTurnedOn("scammer")) {
                    do {
                        manageScamHashMaps = manageScamHashMaps(manageEventControlTablePaged, 1000);
                        manageEventControlTablePaged = manageScamHashMaps;
                    } while (!Text.isBlank(manageScamHashMaps));
                    BlockingManager.getInstance().getSpecialCasesCallBlocksMap().put(BlockingManager.MATCHVALUE_INVALID, 1);
                } else {
                    BlockingManager.setShouldBlockScammers(false);
                }
            }
        }
    }
}
