package com.callapp.contacts.framework.dao;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/BaseStatement.class */
public abstract class BaseStatement<E> {

    /* renamed from: a  reason: collision with root package name */
    private int f14381a = 0;

    private void d() {
        try {
            Thread.sleep(this.f14381a * 70);
        } catch (InterruptedException e) {
        }
    }

    protected abstract E a();

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
        if (r0.contains("database is locked") != false) goto L_0x005c;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final E b() {
        /*
            r8 = this;
            r0 = r8
            r1 = r8
            int r1 = r1.f14381a
            r2 = 1
            int r1 = r1 + r2
            r0.f14381a = r1
            r0 = r8
            java.lang.Object r0 = r0.a()     // Catch: RuntimeException -> 0x002b, SQLiteException -> 0x003e
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x00a4
            r0 = r9
            r10 = r0
            r0 = r8
            int r0 = r0.f14381a     // Catch: RuntimeException -> 0x002b, SQLiteException -> 0x003e
            r1 = 3
            if (r0 > r1) goto L_0x00a4
            r0 = r8
            r0.d()     // Catch: RuntimeException -> 0x002b, SQLiteException -> 0x003e
            r0 = r8
            java.lang.Object r0 = r0.b()     // Catch: RuntimeException -> 0x002b, SQLiteException -> 0x003e
            r10 = r0
            goto L_0x00a4
        L_0x002b:
            r10 = move-exception
            java.lang.Class<com.callapp.contacts.framework.dao.BaseStatement> r0 = com.callapp.contacts.framework.dao.BaseStatement.class
            r1 = r10
            com.callapp.contacts.util.CLog.a(r0, r1)
            android.database.sqlite.SQLiteException r0 = new android.database.sqlite.SQLiteException
            r1 = r0
            r2 = r10
            java.lang.String r2 = r2.getMessage()
            r1.<init>(r2)
            throw r0
        L_0x003e:
            r9 = move-exception
            r0 = r8
            boolean r0 = r0.c()
            if (r0 == 0) goto L_0x004e
            r0 = r8
            java.lang.Object r0 = r0.b()
            r10 = r0
            goto L_0x00a4
        L_0x004e:
            r0 = r8
            boolean r0 = r0.isNumTriesOK()
            if (r0 == 0) goto L_0x0079
            r0 = r9
            boolean r0 = r0 instanceof android.database.sqlite.SQLiteDatabaseLockedException
            if (r0 == 0) goto L_0x0061
        L_0x005c:
            r0 = 1
            r11 = r0
            goto L_0x007b
        L_0x0061:
            r0 = r9
            java.lang.String r0 = r0.getMessage()
            r10 = r0
            r0 = r10
            boolean r0 = com.callapp.framework.util.StringUtils.b(r0)
            if (r0 == 0) goto L_0x0079
            r0 = r10
            java.lang.String r1 = "database is locked"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0079
            goto L_0x005c
        L_0x0079:
            r0 = 0
            r11 = r0
        L_0x007b:
            r0 = r11
            if (r0 == 0) goto L_0x00a6
            r0 = r8
            r0.d()
            r0 = r8
            java.lang.Object r0 = r0.b()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00a4
            com.callapp.contacts.manager.Singletons r0 = com.callapp.contacts.manager.Singletons.get()
            com.callapp.contacts.manager.analytics.AnalyticsManager r0 = r0.getAnalyticsManager()
            java.lang.String r1 = "Database"
            java.lang.String r2 = "Successfully recovered from a %s exception"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r9
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r0.a(r1, r2)
        L_0x00a4:
            r0 = r10
            return r0
        L_0x00a6:
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.framework.dao.BaseStatement.b():java.lang.Object");
    }

    protected boolean c() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isNumTriesOK() {
        return this.f14381a <= 3;
    }
}
