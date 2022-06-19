package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajk.class */
public final class zzajk extends zzajx {
    public static final Parcelable.Creator<zzajk> CREATOR = new zzajj();
    public final byte[] zza;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzajk(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            int r0 = com.google.android.gms.internal.ads.zzamq.zza
            r6 = r0
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            byte[] r1 = r1.createByteArray()
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzamq.zzd(r1)
            byte[] r1 = (byte[]) r1
            r0.zza = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajk.<init>(android.os.Parcel):void");
    }

    public zzajk(String str, byte[] bArr) {
        super(str);
        this.zza = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajk.class != obj.getClass()) {
            return false;
        }
        zzajk zzajkVar = (zzajk) obj;
        return this.zzf.equals(zzajkVar.zzf) && Arrays.equals(this.zza, zzajkVar.zza);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza) + C22128a.m8579q2(this.zzf, 527, 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeByteArray(this.zza);
    }
}
