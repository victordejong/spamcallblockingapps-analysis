package com.privacystar.core.data.sqlite.p008db.exclusions;

import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsContract;
import com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsModel;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.exclusions.ExclusionsHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/exclusions/ExclusionsHelper.class */
public class ExclusionsHelper {
    private static ExclusionsHelper sInstance;
    private Context mContext;

    private ExclusionsHelper(Context context) {
        this.mContext = context;
    }

    public static ExclusionsHelper getInstance() {
        ExclusionsHelper instance;
        synchronized (ExclusionsHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static ExclusionsHelper getInstance(Context context) {
        ExclusionsHelper exclusionsHelper;
        synchronized (ExclusionsHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new ExclusionsHelper(context.getApplicationContext());
                }
                exclusionsHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return exclusionsHelper;
    }

    public void addExclusion(ExclusionsModel.Exclusions exclusions) {
        addExclusion(exclusions, DatabaseHelper.getInstance(this.mContext).getWritableDatabase());
    }

    public void addExclusion(ExclusionsModel.Exclusions exclusions, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            try {
                sQLiteDatabase.insertOrThrow("ccMaxExclusions", null, ExclusionsContract.ExclusionsEntry.toContentValues(exclusions));
                sQLiteDatabase.setTransactionSuccessful();
                Timber.m28v("Added new exclusions entry for: %s %s running %s.", exclusions.make, exclusions.model, exclusions.f274os);
            } catch (Exception e) {
                Timber.m32e(e, "trying to add to exclusions.", new Object[0]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public int countExclusions() {
        return (int) DatabaseUtils.queryNumEntries(DatabaseHelper.getInstance(this.mContext).getReadableDatabase(), "ccMaxExclusions");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0087, code lost:
        if (r0.isClosed() == false) goto L_0x0063;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005a A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsModel.Exclusions> getAllExclusions() {
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
            java.lang.String r4 = "ccMaxExclusions"
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
            android.content.Context r0 = r0.mContext
            com.privacystar.core.data.sqlite.db.DatabaseHelper r0 = com.privacystar.core.data.sqlite.p008db.DatabaseHelper.getInstance(r0)
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()
            r1 = r8
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            r8 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x006c, Exception -> 0x0070
            if (r0 == 0) goto L_0x0056
        L_0x0042:
            r0 = r7
            r1 = r8
            com.privacystar.core.data.sqlite.db.exclusions.ExclusionsModel$Exclusions r1 = com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsContract.ExclusionsEntry.parseCursor(r1)     // Catch: all -> 0x006c, Exception -> 0x0070
            boolean r0 = r0.add(r1)     // Catch: all -> 0x006c, Exception -> 0x0070
            r0 = r8
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x006c, Exception -> 0x0070
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0042
        L_0x0056:
            r0 = r8
            if (r0 == 0) goto L_0x008d
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x008d
        L_0x0063:
            r0 = r8
            r0.close()
            goto L_0x008d
        L_0x006c:
            r7 = move-exception
            goto L_0x008f
        L_0x0070:
            r10 = move-exception
            r0 = r10
            java.lang.String r1 = "trying to fetch all exclusions."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x006c
            timber.log.Timber.m32e(r0, r1, r2)     // Catch: all -> 0x006c
            r0 = r8
            if (r0 == 0) goto L_0x008d
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x008d
            goto L_0x0063
        L_0x008d:
            r0 = r7
            return r0
        L_0x008f:
            r0 = r8
            if (r0 == 0) goto L_0x00a2
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x00a2
            r0 = r8
            r0.close()
        L_0x00a2:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsHelper.getAllExclusions():java.util.List");
    }

    public void initializeExclusionData(SQLiteDatabase sQLiteDatabase) {
        addExclusion(new ExclusionsModel.Exclusions("htc", "", "4.1"), sQLiteDatabase);
        addExclusion(new ExclusionsModel.Exclusions("htc", "", "4.2"), sQLiteDatabase);
        addExclusion(new ExclusionsModel.Exclusions("htc", "", "4.3"), sQLiteDatabase);
        addExclusion(new ExclusionsModel.Exclusions("htc", "", "4.4"), sQLiteDatabase);
        addExclusion(new ExclusionsModel.Exclusions("", "", "6.0"), sQLiteDatabase);
    }

    public boolean isExcluded(ExclusionsModel.Exclusions exclusions) {
        for (ExclusionsModel.Exclusions exclusions2 : getAllExclusions()) {
            if (exclusions.matchesPattern(exclusions2)) {
                return true;
            }
        }
        return false;
    }
}
