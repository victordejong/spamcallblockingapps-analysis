package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzh.class */
public final class zzzh extends zzzu {
    public static final Parcelable.Creator<zzzh> CREATOR = new zzzg();
    public final byte[] zza;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzzh(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            int r0 = com.google.android.gms.internal.ads.zzfn.zza
            r6 = r0
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            byte[] r1 = r1.createByteArray()
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzfn.zzC(r1)
            byte[] r1 = (byte[]) r1
            r0.zza = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzh.<init>(android.os.Parcel):void");
    }

    public zzzh(String str, byte[] bArr) {
        super(str);
        this.zza = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzzh.class != obj.getClass()) {
            return false;
        }
        zzzh zzzhVar = (zzzh) obj;
        return this.zzf.equals(zzzhVar.zzf) && Arrays.equals(this.zza, zzzhVar.zza);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza) + C1676a.m4793d(this.zzf, 527, 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeByteArray(this.zza);
    }
}
