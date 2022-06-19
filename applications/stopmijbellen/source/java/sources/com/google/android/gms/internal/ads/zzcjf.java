package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "VersionInfoParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjf.class */
public final class zzcjf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcjf> CREATOR = new zzcjg();
    @SafeParcelable.Field(m4805id = 2)
    public String zza;
    @SafeParcelable.Field(m4805id = 3)
    public int zzb;
    @SafeParcelable.Field(m4805id = 4)
    public int zzc;
    @SafeParcelable.Field(m4805id = 5)
    public boolean zzd;
    @SafeParcelable.Field(m4805id = 6)
    public boolean zze;

    public zzcjf(int i, int i2, boolean z, boolean z2) {
        this(214106000, i2, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcjf(int r8, int r9, boolean r10, boolean r11, boolean r12) {
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
            r0 = r7
            r1 = r14
            java.lang.String r2 = "."
            r3 = r13
            java.lang.String r1 = android.support.p012v4.media.C0082b.m8754h(r1, r2, r3)
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcjf.<init>(int, int, boolean, boolean, boolean):void");
    }

    @SafeParcelable.Constructor
    public zzcjf(@SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) int i, @SafeParcelable.Param(m4804id = 4) int i2, @SafeParcelable.Param(m4804id = 5) boolean z, @SafeParcelable.Param(m4804id = 6) boolean z2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = z2;
    }

    public static zzcjf zza() {
        return new zzcjf((int) GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE, (int) GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE, true, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
