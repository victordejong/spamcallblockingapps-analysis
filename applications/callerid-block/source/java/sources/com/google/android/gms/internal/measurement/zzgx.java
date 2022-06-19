package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgx.class */
public final class zzgx extends IOException {
    zzgx() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    zzgx(java.lang.String r5, java.lang.Throwable r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r5 = r0
            r0 = r5
            int r0 = r0.length()
            if (r0 == 0) goto L16
            java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
            r1 = r5
            java.lang.String r0 = r0.concat(r1)
            r5 = r0
            goto L20
        L16:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
            r1.<init>(r2)
            r5 = r0
        L20:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgx.<init>(java.lang.String, java.lang.Throwable):void");
    }

    zzgx(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
