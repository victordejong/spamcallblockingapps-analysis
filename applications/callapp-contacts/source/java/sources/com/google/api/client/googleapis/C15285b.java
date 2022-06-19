package com.google.api.client.googleapis;

import com.google.api.client.http.AbstractC15334m;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.C15340q;
/* renamed from: com.google.api.client.googleapis.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/b.class */
public final class C15285b implements AbstractC15334m, AbstractC15342s {

    /* renamed from: a */
    private final boolean f55251a;

    public C15285b() {
        this(false);
    }

    C15285b(boolean z) {
        this.f55251a = z;
    }

    @Override // com.google.api.client.http.AbstractC15342s
    /* renamed from: a */
    public final void mo9023a(C15340q c15340q) {
        c15340q.m9051a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0041, code lost:
        if (r6.m9057a().supportsMethod(r0) != false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // com.google.api.client.http.AbstractC15334m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void intercept(com.google.api.client.http.C15340q r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r0 = r0.m9044b()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "POST"
            boolean r0 = r0.equals(r1)
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L47
            r0 = r7
            java.lang.String r1 = "GET"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L2f
            r0 = r6
            com.google.api.client.http.i r0 = r0.m9043c()
            java.lang.String r0 = r0.m9106b()
            int r0 = r0.length()
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 <= r1) goto L39
            goto L4a
        L2f:
            r0 = r5
            boolean r0 = r0.f55251a
            if (r0 == 0) goto L39
            goto L4a
        L39:
            r0 = r6
            com.google.api.client.http.w r0 = r0.m9057a()
            r1 = r7
            boolean r0 = r0.supportsMethod(r1)
            if (r0 != 0) goto L47
            goto L4a
        L47:
            r0 = 0
            r9 = r0
        L4a:
            r0 = r9
            if (r0 == 0) goto L9d
            r0 = r6
            java.lang.String r0 = r0.m9044b()
            r7 = r0
            r0 = r6
            java.lang.String r1 = "POST"
            com.google.api.client.http.q r0 = r0.m9046a(r1)
            r0 = r6
            com.google.api.client.http.n r0 = r0.m9039g()
            java.lang.String r1 = "X-HTTP-Method-Override"
            r2 = r7
            com.google.api.client.http.n r0 = r0.set(r1, r2)
            r0 = r7
            java.lang.String r1 = "GET"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L8a
            r0 = r6
            com.google.api.client.http.ae r1 = new com.google.api.client.http.ae
            r2 = r1
            r3 = r6
            com.google.api.client.http.i r3 = r3.m9043c()
            com.google.api.client.http.i r3 = r3.clone()
            r2.<init>(r3)
            com.google.api.client.http.q r0 = r0.m9053a(r1)
            r0 = r6
            com.google.api.client.http.i r0 = r0.m9043c()
            r0.clear()
            return
        L8a:
            r0 = r6
            com.google.api.client.http.j r0 = r0.m9042d()
            if (r0 != 0) goto L9d
            r0 = r6
            com.google.api.client.http.f r1 = new com.google.api.client.http.f
            r2 = r1
            r2.<init>()
            com.google.api.client.http.q r0 = r0.m9053a(r1)
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.C15285b.intercept(com.google.api.client.http.q):void");
    }
}
