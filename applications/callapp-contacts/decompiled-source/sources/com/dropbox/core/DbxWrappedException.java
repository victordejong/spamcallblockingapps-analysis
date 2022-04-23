package com.dropbox.core;

import com.dropbox.core.v2.a.a;
import com.dropbox.core.v2.a.b;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWrappedException.class */
public final class DbxWrappedException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final Object f17695a;

    /* renamed from: b  reason: collision with root package name */
    public final String f17696b;

    /* renamed from: c  reason: collision with root package name */
    public final n f17697c;

    public DbxWrappedException(Object obj, String str, n nVar) {
        this.f17695a = obj;
        this.f17696b = str;
        this.f17697c = nVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0094, code lost:
        r0.setAccessible(true);
        a(r0, r0.get(r0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.dropbox.core.DbxWrappedException a(com.dropbox.core.a.c<T> r6, com.dropbox.core.http.a.b r7, java.lang.String r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
        /*
            r0 = r7
            java.lang.String r0 = com.dropbox.core.i.c(r0)
            r8 = r0
            com.dropbox.core.a$a r0 = new com.dropbox.core.a$a
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r1 = r7
            java.io.InputStream r1 = r1.f17783b
            java.lang.Object r0 = r0.deserialize(r1)
            com.dropbox.core.a r0 = (com.dropbox.core.a) r0
            r6 = r0
            r0 = r6
            T r0 = r0.f17706a
            r7 = r0
            com.dropbox.core.v2.a.a r0 = com.dropbox.core.i.f17811a
            r9 = r0
            r0 = r9
            r1 = r7
            a(r0, r1)
            r0 = r7
            java.lang.Class r0 = r0.getClass()     // Catch: Exception -> 0x00bb
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            java.lang.String r1 = "tag"
            r2 = 0
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: Exception -> 0x00bb
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: Exception -> 0x00bb
            r1 = r7
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: Exception -> 0x00bb
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: Exception -> 0x00bb
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x00bb
            r12 = r0
            r0 = r12
            r0.<init>()     // Catch: Exception -> 0x00bb
            r0 = r12
            r1 = r10
            java.lang.String r1 = r1.toString()     // Catch: Exception -> 0x00bb
            java.lang.String r1 = r1.toLowerCase()     // Catch: Exception -> 0x00bb
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00bb
            r0 = r12
            java.lang.String r1 = "value"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00bb
            r0 = r12
            java.lang.String r0 = r0.toString()     // Catch: Exception -> 0x00bb
            r13 = r0
            r0 = r7
            java.lang.Class r0 = r0.getClass()     // Catch: Exception -> 0x00bb
            java.lang.reflect.Field[] r0 = r0.getDeclaredFields()     // Catch: Exception -> 0x00bb
            r12 = r0
            r0 = r12
            int r0 = r0.length     // Catch: Exception -> 0x00bb
            r14 = r0
        L_0x0079:
            r0 = r11
            r1 = r14
            if (r0 >= r1) goto L_0x00ad
            r0 = r12
            r1 = r11
            r0 = r0[r1]
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.getName()     // Catch: Exception -> 0x00bb
            r1 = r13
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: Exception -> 0x00bb
            if (r0 == 0) goto L_0x00a7
            r0 = r10
            r1 = 1
            r0.setAccessible(r1)     // Catch: Exception -> 0x00bb
            r0 = r9
            r1 = r10
            r2 = r7
            java.lang.Object r1 = r1.get(r2)     // Catch: Exception -> 0x00bb
            a(r0, r1)     // Catch: Exception -> 0x00bb
            goto L_0x00ad
        L_0x00a7:
            int r11 = r11 + 1
            goto L_0x0079
        L_0x00ad:
            com.dropbox.core.DbxWrappedException r0 = new com.dropbox.core.DbxWrappedException
            r1 = r0
            r2 = r7
            r3 = r8
            r4 = r6
            com.dropbox.core.n r4 = r4.f17707b
            r1.<init>(r2, r3, r4)
            return r0
        L_0x00bb:
            r9 = move-exception
            goto L_0x00ad
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.DbxWrappedException.a(com.dropbox.core.a.c, com.dropbox.core.http.a$b, java.lang.String):com.dropbox.core.DbxWrappedException");
    }

    private static <T> void a(a aVar, T t) {
        b<T> a2;
        if (aVar != null && (a2 = aVar.a()) != null) {
            a2.f17915a = t;
            a2.run();
        }
    }
}
