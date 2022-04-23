package com.google.api.client.googleapis;

import com.google.api.client.http.m;
import com.google.api.client.http.q;
import com.google.api.client.http.s;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/b.class */
public final class b implements m, s {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f31741a;

    public b() {
        this(false);
    }

    b(boolean z) {
        this.f31741a = z;
    }

    @Override // com.google.api.client.http.s
    public final void a(q qVar) {
        qVar.a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0041, code lost:
        if (r6.a().supportsMethod(r0) != false) goto L_0x0047;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // com.google.api.client.http.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void intercept(com.google.api.client.http.q r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r0 = r0.b()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "POST"
            boolean r0 = r0.equals(r1)
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0047
            r0 = r7
            java.lang.String r1 = "GET"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x002f
            r0 = r6
            com.google.api.client.http.i r0 = r0.c()
            java.lang.String r0 = r0.b()
            int r0 = r0.length()
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 <= r1) goto L_0x0039
            goto L_0x004a
        L_0x002f:
            r0 = r5
            boolean r0 = r0.f31741a
            if (r0 == 0) goto L_0x0039
            goto L_0x004a
        L_0x0039:
            r0 = r6
            com.google.api.client.http.w r0 = r0.a()
            r1 = r7
            boolean r0 = r0.supportsMethod(r1)
            if (r0 != 0) goto L_0x0047
            goto L_0x004a
        L_0x0047:
            r0 = 0
            r9 = r0
        L_0x004a:
            r0 = r9
            if (r0 == 0) goto L_0x009d
            r0 = r6
            java.lang.String r0 = r0.b()
            r7 = r0
            r0 = r6
            java.lang.String r1 = "POST"
            com.google.api.client.http.q r0 = r0.a(r1)
            r0 = r6
            com.google.api.client.http.n r0 = r0.g()
            java.lang.String r1 = "X-HTTP-Method-Override"
            r2 = r7
            com.google.api.client.http.n r0 = r0.set(r1, r2)
            r0 = r7
            java.lang.String r1 = "GET"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x008a
            r0 = r6
            com.google.api.client.http.ae r1 = new com.google.api.client.http.ae
            r2 = r1
            r3 = r6
            com.google.api.client.http.i r3 = r3.c()
            com.google.api.client.http.i r3 = r3.clone()
            r2.<init>(r3)
            com.google.api.client.http.q r0 = r0.a(r1)
            r0 = r6
            com.google.api.client.http.i r0 = r0.c()
            r0.clear()
            return
        L_0x008a:
            r0 = r6
            com.google.api.client.http.j r0 = r0.d()
            if (r0 != 0) goto L_0x009d
            r0 = r6
            com.google.api.client.http.f r1 = new com.google.api.client.http.f
            r2 = r1
            r2.<init>()
            com.google.api.client.http.q r0 = r0.a(r1)
        L_0x009d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.b.intercept(com.google.api.client.http.q):void");
    }
}
