package com.google.android.gms.common.api;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/ApiException.class */
public class ApiException extends Exception {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    protected final Status f22606a;

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
            if (r0 == 0) goto L_0x0014
            r0 = r6
            java.lang.String r0 = r0.getStatusMessage()
            r8 = r0
            goto L_0x0017
        L_0x0014:
            java.lang.String r0 = ""
            r8 = r0
        L_0x0017:
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
            r0.f22606a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.ApiException.<init>(com.google.android.gms.common.api.Status):void");
    }

    public final Status a() {
        return this.f22606a;
    }

    public final int b() {
        return this.f22606a.getStatusCode();
    }
}
