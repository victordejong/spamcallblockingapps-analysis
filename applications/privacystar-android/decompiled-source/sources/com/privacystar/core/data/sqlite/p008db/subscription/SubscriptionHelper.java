package com.privacystar.core.data.sqlite.p008db.subscription;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionModel;
/* renamed from: com.privacystar.core.data.sqlite.db.subscription.SubscriptionHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/subscription/SubscriptionHelper.class */
public class SubscriptionHelper {
    private static SubscriptionHelper sInstance;
    private Context mContext;

    private SubscriptionHelper(Context context) {
        this.mContext = context;
    }

    public static SubscriptionHelper getInstance() {
        SubscriptionHelper instance;
        synchronized (SubscriptionHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static SubscriptionHelper getInstance(Context context) {
        SubscriptionHelper subscriptionHelper;
        synchronized (SubscriptionHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new SubscriptionHelper(context.getApplicationContext());
                }
                subscriptionHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return subscriptionHelper;
    }

    public long addToOrUpdateSubscription(SubscriptionModel.Subscription subscription) {
        return addToOrUpdateSubscription(subscription, DatabaseHelper.getInstance(this.mContext).getWritableDatabase());
    }

    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long addToOrUpdateSubscription(com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionModel.Subscription r7, android.database.sqlite.SQLiteDatabase r8) {
        /*
            r6 = this;
            r0 = r8
            r0.beginTransaction()
            r0 = -1
            r9 = r0
            r0 = r7
            android.content.ContentValues r0 = com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract.SubscriptionEntry.toContentValues(r0)     // Catch: all -> 0x0044, Exception -> 0x0048
            r11 = r0
            java.lang.String r0 = "Attempting to set subscription as: %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: all -> 0x0044, Exception -> 0x0048
            r2 = r1
            r3 = 0
            r4 = r7
            java.lang.String r4 = r4.toString()     // Catch: all -> 0x0044, Exception -> 0x0048
            r2[r3] = r4     // Catch: all -> 0x0044, Exception -> 0x0048
            timber.log.Timber.m37d(r0, r1)     // Catch: all -> 0x0044, Exception -> 0x0048
            r0 = r9
            r12 = r0
            r0 = r8
            java.lang.String r1 = "subscription"
            r2 = r11
            r3 = 0
            r4 = 0
            int r0 = r0.update(r1, r2, r3, r4)     // Catch: all -> 0x0044, Exception -> 0x0048
            if (r0 != 0) goto L_0x0056
            r0 = r8
            java.lang.String r1 = "subscription"
            r2 = 0
            r3 = r11
            long r0 = r0.insertOrThrow(r1, r2, r3)     // Catch: all -> 0x0044, Exception -> 0x0048
            r12 = r0
            r0 = r8
            r0.setTransactionSuccessful()     // Catch: Exception -> 0x0040, all -> 0x0044
            goto L_0x0056
        L_0x0040:
            r7 = move-exception
            goto L_0x004c
        L_0x0044:
            r7 = move-exception
            goto L_0x005d
        L_0x0048:
            r7 = move-exception
            r0 = r9
            r12 = r0
        L_0x004c:
            r0 = r7
            java.lang.String r1 = "trying to set subscription."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x0044
            timber.log.Timber.m32e(r0, r1, r2)     // Catch: all -> 0x0044
        L_0x0056:
            r0 = r8
            r0.endTransaction()
            r0 = r12
            return r0
        L_0x005d:
            r0 = r8
            r0.endTransaction()
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionHelper.addToOrUpdateSubscription(com.privacystar.core.data.sqlite.db.subscription.SubscriptionModel$Subscription, android.database.sqlite.SQLiteDatabase):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0055, code lost:
        if (r0.isClosed() == false) goto L_0x0058;
     */
    @hugo.weaving.DebugLog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionModel.Subscription getSubscription() {
        /*
            r6 = this;
            java.lang.String r0 = "SELECT * FROM %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "subscription"
            r2[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r7 = r0
            java.lang.String r0 = "Preparing to execute SQL: %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r7
            r2[r3] = r4
            timber.log.Timber.m28v(r0, r1)
            r0 = r6
            android.content.Context r0 = r0.mContext
            com.privacystar.core.data.sqlite.db.DatabaseHelper r0 = com.privacystar.core.data.sqlite.p008db.DatabaseHelper.getInstance(r0)
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r8
            r1 = r7
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            r8 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0064, Exception -> 0x0069
            if (r0 == 0) goto L_0x0045
            r0 = r8
            com.privacystar.core.data.sqlite.db.subscription.SubscriptionModel$Subscription r0 = com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract.SubscriptionEntry.parseCursor(r0)     // Catch: all -> 0x0064, Exception -> 0x0069
            r11 = r0
        L_0x0045:
            r0 = r11
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L_0x008f
            r0 = r11
            r7 = r0
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x008f
        L_0x0058:
            r0 = r8
            r0.close()
            r0 = r11
            r7 = r0
            goto L_0x008f
        L_0x0064:
            r11 = move-exception
            goto L_0x00a5
        L_0x0069:
            r11 = move-exception
            r0 = r11
            java.lang.String r1 = "trying to fetch subscription."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x0064
            timber.log.Timber.m32e(r0, r1, r2)     // Catch: all -> 0x0064
            r0 = r10
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L_0x008f
            r0 = r10
            r7 = r0
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x008f
            r0 = r9
            r11 = r0
            goto L_0x0058
        L_0x008f:
            r0 = r7
            if (r0 == 0) goto L_0x00a3
            java.lang.String r0 = "Fetched Subscription: %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r7
            java.lang.String r4 = r4.toString()
            r2[r3] = r4
            timber.log.Timber.m28v(r0, r1)
        L_0x00a3:
            r0 = r7
            return r0
        L_0x00a5:
            r0 = r8
            if (r0 == 0) goto L_0x00b8
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x00b8
            r0 = r8
            r0.close()
        L_0x00b8:
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionHelper.getSubscription():com.privacystar.core.data.sqlite.db.subscription.SubscriptionModel$Subscription");
    }

    public void initializeSubscription(SQLiteDatabase sQLiteDatabase) {
        SubscriptionModel.Subscription subscription = new SubscriptionModel.Subscription();
        subscription.trial = true;
        subscription.expireDate = System.currentTimeMillis() + 604800000;
        addToOrUpdateSubscription(subscription, sQLiteDatabase);
    }
}
