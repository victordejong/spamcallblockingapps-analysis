package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazn.class */
public final class zzazn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzazn> CREATOR = new zzazq();
    public String zzbrp;
    public int zzehy;
    public int zzehz;
    public boolean zzeia;
    public boolean zzeib;

    public zzazn(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public zzazn(int i, int i2, boolean z, boolean z2) {
        this(204204000, i2, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzazn(int r8, int r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            r0 = r10
            if (r0 == 0) goto Lb
            java.lang.String r0 = "0"
            r13 = r0
            goto Lf
        Lb:
            java.lang.String r0 = "1"
            r13 = r0
        Lf:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r13
            int r2 = r2.length()
            r3 = 36
            int r2 = r2 + r3
            r1.<init>(r2)
            r14 = r0
            r0 = r14
            java.lang.String r1 = "afma-sdk-a-v"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r14
            java.lang.String r1 = r1.toString()
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazn.<init>(int, int, boolean, boolean, boolean):void");
    }

    public zzazn(String str, int i, int i2, boolean z, boolean z2) {
        this.zzbrp = str;
        this.zzehy = i;
        this.zzehz = i2;
        this.zzeia = z;
        this.zzeib = z2;
    }

    public static zzazn zzaab() {
        return new zzazn(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzbrp, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzehy);
        SafeParcelWriter.writeInt(parcel, 4, this.zzehz);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzeia);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzeib);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
