package com.google.android.gms.location;

import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ai.class */
public final class ai implements Parcelable.Creator<SleepSegmentEvent> {
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
    public final /* synthetic */ com.google.android.gms.location.SleepSegmentEvent createFromParcel(android.os.Parcel r11) {
        /*
            r10 = this;
            r0 = r11
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.a(r0)
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r13
            r15 = r0
            r0 = 0
            r17 = r0
            r0 = 0
            r18 = r0
            r0 = 0
            r19 = r0
        L_0x0013:
            r0 = r11
            int r0 = r0.dataPosition()
            r1 = r12
            if (r0 >= r1) goto L_0x0083
            r0 = r11
            int r0 = r0.readInt()
            r20 = r0
            r0 = r20
            char r0 = (char) r0
            r21 = r0
            r0 = r21
            r1 = 1
            if (r0 == r1) goto L_0x0079
            r0 = r21
            r1 = 2
            if (r0 == r1) goto L_0x006e
            r0 = r21
            r1 = 3
            if (r0 == r1) goto L_0x0063
            r0 = r21
            r1 = 4
            if (r0 == r1) goto L_0x0058
            r0 = r21
            r1 = 5
            if (r0 == r1) goto L_0x004d
            r0 = r11
            r1 = r20
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.b(r0, r1)
            goto L_0x0013
        L_0x004d:
            r0 = r11
            r1 = r20
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.e(r0, r1)
            r19 = r0
            goto L_0x0013
        L_0x0058:
            r0 = r11
            r1 = r20
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.e(r0, r1)
            r18 = r0
            goto L_0x0013
        L_0x0063:
            r0 = r11
            r1 = r20
            int r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.e(r0, r1)
            r17 = r0
            goto L_0x0013
        L_0x006e:
            r0 = r11
            r1 = r20
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.f(r0, r1)
            r15 = r0
            goto L_0x0013
        L_0x0079:
            r0 = r11
            r1 = r20
            long r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.f(r0, r1)
            r13 = r0
            goto L_0x0013
        L_0x0083:
            r0 = r11
            r1 = r12
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.x(r0, r1)
            com.google.android.gms.location.SleepSegmentEvent r0 = new com.google.android.gms.location.SleepSegmentEvent
            r1 = r0
            r2 = r13
            r3 = r15
            r4 = r17
            r5 = r18
            r6 = r19
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.ai.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SleepSegmentEvent[] newArray(int i) {
        return new SleepSegmentEvent[i];
    }
}
