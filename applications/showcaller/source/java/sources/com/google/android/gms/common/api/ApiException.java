package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ApiException.class */
public class ApiException extends Exception {
    @RecentlyNonNull
    @Deprecated
    protected final Status mStatus;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ApiException(@androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.Status r6) {
        /*
            r5 = this;
            r0 = r6
            int r0 = r0.m17489m0()
            r7 = r0
            r0 = r6
            java.lang.String r0 = r0.m17488n0()
            if (r0 == 0) goto L14
            r0 = r6
            java.lang.String r0 = r0.m17488n0()
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
            r0.mStatus = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.ApiException.<init>(com.google.android.gms.common.api.Status):void");
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public int getStatusCode() {
        return this.mStatus.m17489m0();
    }

    @RecentlyNullable
    @Deprecated
    public String getStatusMessage() {
        return this.mStatus.m17488n0();
    }
}
