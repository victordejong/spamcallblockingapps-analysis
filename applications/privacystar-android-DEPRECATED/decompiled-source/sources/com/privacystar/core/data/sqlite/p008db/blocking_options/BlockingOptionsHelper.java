package com.privacystar.core.data.sqlite.p008db.blocking_options;

import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsModel;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.blocking_options.BlockingOptionsHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/blocking_options/BlockingOptionsHelper.class */
public class BlockingOptionsHelper {
    private static BlockingOptionsHelper sInstance;
    private Context mContext;

    private BlockingOptionsHelper(Context context) {
        this.mContext = context;
    }

    public static BlockingOptionsHelper getInstance() {
        BlockingOptionsHelper instance;
        synchronized (BlockingOptionsHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static BlockingOptionsHelper getInstance(Context context) {
        BlockingOptionsHelper blockingOptionsHelper;
        synchronized (BlockingOptionsHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new BlockingOptionsHelper(context.getApplicationContext());
                }
                blockingOptionsHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return blockingOptionsHelper;
    }

    public void addBlockingOption(BlockingOptionsModel.BlockingOptions blockingOptions) {
        addBlockingOption(blockingOptions, DatabaseHelper.getInstance(this.mContext).getWritableDatabase());
    }

    public void addBlockingOption(BlockingOptionsModel.BlockingOptions blockingOptions, SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(blockingOptions);
        addBlockingOptionsList(arrayList, sQLiteDatabase);
    }

    public void addBlockingOptionsList(List<BlockingOptionsModel.BlockingOptions> list) {
        addBlockingOptionsList(list, DatabaseHelper.getInstance(this.mContext).getWritableDatabase());
    }

    public void addBlockingOptionsList(List<BlockingOptionsModel.BlockingOptions> list, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            try {
                for (BlockingOptionsModel.BlockingOptions blockingOptions : list) {
                    sQLiteDatabase.insertOrThrow("blockingOptions", null, BlockingOptionsContract.BlockingOptionsEntry.toContentValues(blockingOptions));
                    Timber.m28v("Added new BlockingOptions entry for: optionType: %s, checked: %s, offline: %s.", blockingOptions.optionType, Integer.valueOf(blockingOptions.checked), Integer.valueOf(blockingOptions.offline));
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                Timber.m32e(e, "trying to add to BlockingOptions.", new Object[0]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public int countBlockingOptionsEntries() {
        return (int) DatabaseUtils.queryNumEntries(DatabaseHelper.getInstance(this.mContext).getReadableDatabase(), "blockingOptions");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0087, code lost:
        if (r0.isClosed() == false) goto L_0x0063;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005a A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsModel.BlockingOptions> getAllBlockingOptionsEntries() {
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
            java.lang.String r4 = "blockingOptions"
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
            com.privacystar.core.data.sqlite.db.blocking_options.BlockingOptionsModel$BlockingOptions r1 = com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract.BlockingOptionsEntry.parseCursor(r1)     // Catch: all -> 0x006c, Exception -> 0x0070
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
            java.lang.String r1 = "trying to fetch all blocking options."
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
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsHelper.getAllBlockingOptionsEntries():java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a1, code lost:
        if (r0.isClosed() == false) goto L_0x00a4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsModel.BlockingOptions getEntry(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsHelper.getEntry(java.lang.String):com.privacystar.core.data.sqlite.db.blocking_options.BlockingOptionsModel$BlockingOptions");
    }

    public void initializeBlockingOptions(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BlockingOptionsModel.BlockingOptions("text", 1, "", 0));
        arrayList.add(new BlockingOptionsModel.BlockingOptions("unknown", 0, "", 0));
        arrayList.add(new BlockingOptionsModel.BlockingOptions("dnd", 0, "", 0));
        arrayList.add(new BlockingOptionsModel.BlockingOptions("service", 1, "", 0));
        arrayList.add(new BlockingOptionsModel.BlockingOptions("group", 0, "", 0));
        arrayList.add(new BlockingOptionsModel.BlockingOptions("smart", 0, "", 0));
        arrayList.add(new BlockingOptionsModel.BlockingOptions("callerId", 1, "", 0));
        arrayList.add(new BlockingOptionsModel.BlockingOptions("scammer", 1, "", 1));
        addBlockingOptionsList(arrayList, sQLiteDatabase);
    }

    public boolean isBlockingOptionTurnedOn(String str) {
        BlockingOptionsModel.BlockingOptions entry = getEntry(str);
        boolean z = true;
        if (entry == null || entry.checked != 1) {
            z = false;
        }
        return z;
    }
}
