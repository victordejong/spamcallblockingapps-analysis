package com.google.android.gms.location;

import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzb.class */
public final class zzb implements Parcelable.Creator<ActivityRecognitionResult> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.os.Parcelable.Creator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.location.ActivityRecognitionResult createFromParcel(android.os.Parcel r11) {
        /*
            r10 = this;
            r0 = r11
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17263b(r0)
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r13
            r15 = r0
            r0 = 0
            r17 = r0
            r0 = r17
            r18 = r0
            r0 = 0
            r19 = r0
        L_0x0014:
            r0 = r11
            int r0 = r0.dataPosition()
            r1 = r12
            if (r0 >= r1) goto L_0x0089
            r0 = r11
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17268a(r0)
            r20 = r0
            r0 = r20
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17269a(r0)
            r21 = r0
            r0 = r21
            r1 = 1
            if (r0 == r1) goto L_0x007b
            r0 = r21
            r1 = 2
            if (r0 == r1) goto L_0x0071
            r0 = r21
            r1 = 3
            if (r0 == r1) goto L_0x0066
            r0 = r21
            r1 = 4
            if (r0 == r1) goto L_0x005b
            r0 = r21
            r1 = 5
            if (r0 == r1) goto L_0x0050
            r0 = r11
            r1 = r20
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17270F(r0, r1)
            goto L_0x0014
        L_0x0050:
            r0 = r11
            r1 = r20
            android.os.Bundle r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17256f(r0, r1)
            r18 = r0
            goto L_0x0014
        L_0x005b:
            r0 = r11
            r1 = r20
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17275A(r0, r1)
            r19 = r0
            goto L_0x0014
        L_0x0066:
            r0 = r11
            r1 = r20
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17274B(r0, r1)
            r15 = r0
            goto L_0x0014
        L_0x0071:
            r0 = r11
            r1 = r20
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17274B(r0, r1)
            r13 = r0
            goto L_0x0014
        L_0x007b:
            r0 = r11
            r1 = r20
            android.os.Parcelable$Creator<com.google.android.gms.location.DetectedActivity> r2 = com.google.android.gms.location.DetectedActivity.CREATOR
            java.util.ArrayList r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17259c(r0, r1, r2)
            r17 = r0
            goto L_0x0014
        L_0x0089:
            r0 = r11
            r1 = r12
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17243s(r0, r1)
            com.google.android.gms.location.ActivityRecognitionResult r0 = new com.google.android.gms.location.ActivityRecognitionResult
            r1 = r0
            r2 = r17
            r3 = r13
            r4 = r15
            r5 = r19
            r6 = r18
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.zzb.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityRecognitionResult[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}
