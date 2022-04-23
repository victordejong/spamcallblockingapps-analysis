package com.google.android.gms.common.internal;

import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ah.class */
public final class ah implements Parcelable.Creator<MethodInvocation> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.os.Parcelable.Creator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.common.internal.MethodInvocation createFromParcel(android.os.Parcel r14) {
        /*
            r13 = this;
            r0 = r14
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.a(r0)
            r15 = r0
            r0 = 0
            r16 = r0
            r0 = r16
            r17 = r0
            r0 = 0
            r18 = r0
            r0 = r18
            r20 = r0
            r0 = 0
            r22 = r0
            r0 = 0
            r23 = r0
            r0 = 0
            r24 = r0
            r0 = 0
            r25 = r0
        L_0x001d:
            r0 = r14
            int r0 = r0.dataPosition()
            r1 = r15
            if (r0 >= r1) goto L_0x00bc
            r0 = r14
            int r0 = r0.readInt()
            r26 = r0
            r0 = r26
            char r0 = (char) r0
            switch(r0) {
                case 1: goto L_0x00b1;
                case 2: goto L_0x00a6;
                case 3: goto L_0x009b;
                case 4: goto L_0x0090;
                case 5: goto L_0x0085;
                case 6: goto L_0x007b;
                case 7: goto L_0x0070;
                case 8: goto L_0x0065;
                default: goto L_0x005c;
            }
        L_0x005c:
            r0 = r14
            r1 = r26
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.b(r0, r1)
            goto L_0x001d
        L_0x0065:
            r0 = r14
            r1 = r26
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.e(r0, r1)
            r25 = r0
            goto L_0x001d
        L_0x0070:
            r0 = r14
            r1 = r26
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m(r0, r1)
            r17 = r0
            goto L_0x001d
        L_0x007b:
            r0 = r14
            r1 = r26
            java.lang.String r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m(r0, r1)
            r16 = r0
            goto L_0x001d
        L_0x0085:
            r0 = r14
            r1 = r26
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.f(r0, r1)
            r20 = r0
            goto L_0x001d
        L_0x0090:
            r0 = r14
            r1 = r26
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.f(r0, r1)
            r18 = r0
            goto L_0x001d
        L_0x009b:
            r0 = r14
            r1 = r26
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.e(r0, r1)
            r24 = r0
            goto L_0x001d
        L_0x00a6:
            r0 = r14
            r1 = r26
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.e(r0, r1)
            r23 = r0
            goto L_0x001d
        L_0x00b1:
            r0 = r14
            r1 = r26
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.e(r0, r1)
            r22 = r0
            goto L_0x001d
        L_0x00bc:
            r0 = r14
            r1 = r15
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.x(r0, r1)
            com.google.android.gms.common.internal.MethodInvocation r0 = new com.google.android.gms.common.internal.MethodInvocation
            r1 = r0
            r2 = r22
            r3 = r23
            r4 = r24
            r5 = r18
            r6 = r20
            r7 = r16
            r8 = r17
            r9 = r25
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.ah.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MethodInvocation[] newArray(int i) {
        return new MethodInvocation[i];
    }
}
