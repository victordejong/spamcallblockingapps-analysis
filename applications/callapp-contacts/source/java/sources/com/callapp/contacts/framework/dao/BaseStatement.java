package com.callapp.contacts.framework.dao;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/BaseStatement.class */
public abstract class BaseStatement<E> {

    /* renamed from: a */
    private int f25151a = 0;

    /* renamed from: d */
    private void m29038d() {
        try {
            Thread.sleep(this.f25151a * 70);
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: a */
    protected abstract E mo29031a();

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
        if (r0.contains("database is locked") != false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final E m29039b() {
        /*
            r8 = this;
            r0 = r8
            r1 = r8
            int r1 = r1.f25151a
            r2 = 1
            int r1 = r1 + r2
            r0.f25151a = r1
            r0 = r8
            java.lang.Object r0 = r0.mo29031a()     // Catch: java.lang.RuntimeException -> L2b android.database.sqlite.SQLiteException -> L3e
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto La4
            r0 = r9
            r10 = r0
            r0 = r8
            int r0 = r0.f25151a     // Catch: java.lang.RuntimeException -> L2b android.database.sqlite.SQLiteException -> L3e
            r1 = 3
            if (r0 > r1) goto La4
            r0 = r8
            r0.m29038d()     // Catch: java.lang.RuntimeException -> L2b android.database.sqlite.SQLiteException -> L3e
            r0 = r8
            java.lang.Object r0 = r0.m29039b()     // Catch: java.lang.RuntimeException -> L2b android.database.sqlite.SQLiteException -> L3e
            r10 = r0
            goto La4
        L2b:
            r10 = move-exception
            java.lang.Class<com.callapp.contacts.framework.dao.BaseStatement> r0 = com.callapp.contacts.framework.dao.BaseStatement.class
            r1 = r10
            com.callapp.contacts.util.CLog.m27609a(r0, r1)
            android.database.sqlite.SQLiteException r0 = new android.database.sqlite.SQLiteException
            r1 = r0
            r2 = r10
            java.lang.String r2 = r2.getMessage()
            r1.<init>(r2)
            throw r0
        L3e:
            r9 = move-exception
            r0 = r8
            boolean r0 = r0.mo29011c()
            if (r0 == 0) goto L4e
            r0 = r8
            java.lang.Object r0 = r0.m29039b()
            r10 = r0
            goto La4
        L4e:
            r0 = r8
            boolean r0 = r0.isNumTriesOK()
            if (r0 == 0) goto L79
            r0 = r9
            boolean r0 = r0 instanceof android.database.sqlite.SQLiteDatabaseLockedException
            if (r0 == 0) goto L61
        L5c:
            r0 = 1
            r11 = r0
            goto L7b
        L61:
            r0 = r9
            java.lang.String r0 = r0.getMessage()
            r10 = r0
            r0 = r10
            boolean r0 = com.callapp.framework.util.StringUtils.m26045b(r0)
            if (r0 == 0) goto L79
            r0 = r10
            java.lang.String r1 = "database is locked"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L79
            goto L5c
        L79:
            r0 = 0
            r11 = r0
        L7b:
            r0 = r11
            if (r0 == 0) goto La6
            r0 = r8
            r0.m29038d()
            r0 = r8
            java.lang.Object r0 = r0.m29039b()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto La4
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
            r0.m28450a(r1, r2)
        La4:
            r0 = r10
            return r0
        La6:
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.framework.dao.BaseStatement.m29039b():java.lang.Object");
    }

    /* renamed from: c */
    protected boolean mo29011c() {
        return false;
    }

    public boolean isNumTriesOK() {
        return this.f25151a <= 3;
    }
}
