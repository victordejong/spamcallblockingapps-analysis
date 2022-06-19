package com.google.android.gms.common.api;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/ApiException.class */
public class ApiException extends Exception {
    @Deprecated

    /* renamed from: a */
    protected final Status f39171a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ApiException(com.google.android.gms.common.api.Status r6) {
        /*
            r5 = this;
            r0 = r6
            int r0 = r0.getStatusCode()
            r7 = r0
            r0 = r6
            java.lang.String r0 = r0.getStatusMessage()
            if (r0 == 0) goto L14
            r0 = r6
            java.lang.String r0 = r0.getStatusMessage()
            r8 = r0
            goto L17
        L14:
            java.lang.String r0 = ""
            r8 = r0
        L17:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r8
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 13
            int r2 = r2 + r3
            r1.<init>(r2)
            r9 = r0
            r0 = r9
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = ": "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r9
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r0 = r5
            r1 = r6
            r0.f39171a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.ApiException.<init>(com.google.android.gms.common.api.Status):void");
    }

    /* renamed from: a */
    public final Status m19467a() {
        return this.f39171a;
    }

    /* renamed from: b */
    public final int m19466b() {
        return this.f39171a.getStatusCode();
    }
}
