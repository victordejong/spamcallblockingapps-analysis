package com.dropbox.core;

import com.dropbox.core.p265v2.p266a.AbstractC8658a;
import com.dropbox.core.p265v2.p266a.AbstractRunnableC8659b;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWrappedException.class */
public final class DbxWrappedException extends Exception {

    /* renamed from: a */
    public final Object f30437a;

    /* renamed from: b */
    public final String f30438b;

    /* renamed from: c */
    public final C8621n f30439c;

    public DbxWrappedException(Object obj, String str, C8621n c8621n) {
        this.f30437a = obj;
        this.f30438b = str;
        this.f30439c = c8621n;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0094, code lost:
        r0.setAccessible(true);
        m25356a(r0, r0.get(r0));
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.dropbox.core.DbxWrappedException m25357a(com.dropbox.core.p263a.AbstractC8547c<T> r6, com.dropbox.core.http.AbstractC8582a.C8584b r7, java.lang.String r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
        /*
            r0 = r7
            java.lang.String r0 = com.dropbox.core.C8600i.m25260c(r0)
            r8 = r0
            com.dropbox.core.a$a r0 = new com.dropbox.core.a$a
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r1 = r7
            java.io.InputStream r1 = r1.f30567b
            java.lang.Object r0 = r0.deserialize(r1)
            com.dropbox.core.a r0 = (com.dropbox.core.C8543a) r0
            r6 = r0
            r0 = r6
            T r0 = r0.f30448a
            r7 = r0
            com.dropbox.core.v2.a.a r0 = com.dropbox.core.C8600i.f30602a
            r9 = r0
            r0 = r9
            r1 = r7
            m25356a(r0, r1)
            r0 = r7
            java.lang.Class r0 = r0.getClass()     // Catch: java.lang.Exception -> Lbb
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            java.lang.String r1 = "tag"
            r2 = 0
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> Lbb
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: java.lang.Exception -> Lbb
            r1 = r7
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> Lbb
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Exception -> Lbb
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbb
            r12 = r0
            r0 = r12
            r0.<init>()     // Catch: java.lang.Exception -> Lbb
            r0 = r12
            r1 = r10
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> Lbb
            java.lang.String r1 = r1.toLowerCase()     // Catch: java.lang.Exception -> Lbb
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> Lbb
            r0 = r12
            java.lang.String r1 = "value"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> Lbb
            r0 = r12
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> Lbb
            r13 = r0
            r0 = r7
            java.lang.Class r0 = r0.getClass()     // Catch: java.lang.Exception -> Lbb
            java.lang.reflect.Field[] r0 = r0.getDeclaredFields()     // Catch: java.lang.Exception -> Lbb
            r12 = r0
            r0 = r12
            int r0 = r0.length     // Catch: java.lang.Exception -> Lbb
            r14 = r0
        L79:
            r0 = r11
            r1 = r14
            if (r0 >= r1) goto Lad
            r0 = r12
            r1 = r11
            r0 = r0[r1]
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Exception -> Lbb
            r1 = r13
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.Exception -> Lbb
            if (r0 == 0) goto La7
            r0 = r10
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Exception -> Lbb
            r0 = r9
            r1 = r10
            r2 = r7
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Exception -> Lbb
            m25356a(r0, r1)     // Catch: java.lang.Exception -> Lbb
            goto Lad
        La7:
            int r11 = r11 + 1
            goto L79
        Lad:
            com.dropbox.core.DbxWrappedException r0 = new com.dropbox.core.DbxWrappedException
            r1 = r0
            r2 = r7
            r3 = r8
            r4 = r6
            com.dropbox.core.n r4 = r4.f30449b
            r1.<init>(r2, r3, r4)
            return r0
        Lbb:
            r9 = move-exception
            goto Lad
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.DbxWrappedException.m25357a(com.dropbox.core.a.c, com.dropbox.core.http.a$b, java.lang.String):com.dropbox.core.DbxWrappedException");
    }

    /* renamed from: a */
    private static <T> void m25356a(AbstractC8658a abstractC8658a, T t) {
        AbstractRunnableC8659b<T> m25197a;
        if (abstractC8658a == null || (m25197a = abstractC8658a.m25197a()) == null) {
            return;
        }
        m25197a.f30742a = t;
        m25197a.run();
    }
}
