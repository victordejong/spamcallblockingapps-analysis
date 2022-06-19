package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgz.class */
public final class zzcgz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcgz> CREATOR = new zzcha();
    @SafeParcelable.Field
    public String zza;
    @SafeParcelable.Field
    public int zzb;
    @SafeParcelable.Field
    public int zzc;
    @SafeParcelable.Field
    public boolean zzd;
    @SafeParcelable.Field
    public boolean zze;

    public zzcgz(int i, int i2, boolean z, boolean z2) {
        this(213806000, i2, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcgz(int r8, int r9, boolean r10, boolean r11, boolean r12) {
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
            java.lang.String r1 = p193e.p1432d.p1439c.p1440a.C22128a.m8618h(r1, r2, r3)
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcgz.<init>(int, int, boolean, boolean, boolean):void");
    }

    @SafeParcelable.Constructor
    public zzcgz(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) boolean z2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = z2;
    }

    public static zzcgz zza() {
        return new zzcgz((int) GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE, (int) GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE, true, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, this.zza, false);
        int i2 = this.zzb;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        int i3 = this.zzc;
        parcel.writeInt(262148);
        parcel.writeInt(i3);
        boolean z = this.zzd;
        parcel.writeInt(262149);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zze;
        parcel.writeInt(262150);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
