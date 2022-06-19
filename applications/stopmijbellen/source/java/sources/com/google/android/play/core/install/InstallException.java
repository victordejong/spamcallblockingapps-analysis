package com.google.android.play.core.install;

import com.google.android.play.core.tasks.zzj;
/* loaded from: classes-dex2jar.jar:com/google/android/play/core/install/InstallException.class */
public class InstallException extends zzj {
    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InstallException(int r8) {
        /*
            r7 = this;
            java.util.Map r0 = p178n4.C3715a.f12102a
            r9 = r0
            r0 = r8
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r10 = r0
            r0 = r9
            java.util.HashMap r0 = (java.util.HashMap) r0
            r11 = r0
            r0 = r11
            r1 = r10
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L66
            java.util.Map r0 = p178n4.C3715a.f12103b
            java.util.HashMap r0 = (java.util.HashMap) r0
            r9 = r0
            r0 = r9
            r1 = r10
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L2a
            goto L66
        L2a:
            r0 = r11
            r1 = r10
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r11 = r0
            r0 = r9
            r1 = r10
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r11
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 103(0x67, float:1.44E-43)
            int r2 = r2 + r3
            r3 = r10
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            r1 = r11
            java.lang.String r2 = " (https://developer.android.com/reference/com/google/android/play/core/install/model/InstallErrorCode#"
            r3 = r10
            java.lang.String r4 = ")"
            java.lang.String r0 = com.google.android.gms.internal.ads.C1676a.m4788i(r0, r1, r2, r3, r4)
            r10 = r0
            goto L69
        L66:
            java.lang.String r0 = ""
            r10 = r0
        L69:
            r0 = r7
            java.lang.String r1 = "Install Error(%d): %s"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r8
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r10
            r3[r4] = r5
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.<init>(r1)
            r0 = r8
            if (r0 == 0) goto L86
            return
        L86:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "errorCode should not be 0."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.install.InstallException.<init>(int):void");
    }
}
