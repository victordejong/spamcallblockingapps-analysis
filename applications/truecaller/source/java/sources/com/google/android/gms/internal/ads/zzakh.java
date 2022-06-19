package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakh.class */
public final class zzakh extends zzajx {
    public static final Parcelable.Creator<zzakh> CREATOR = new zzakg();
    public final String zza;
    public final String zzb;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzakh(android.os.Parcel r4) {
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
            java.lang.String r1 = r1.readString()
            r0.zza = r1
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.zzb = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakh.<init>(android.os.Parcel):void");
    }

    public zzakh(String str, String str2, String str3) {
        super(str);
        this.zza = str2;
        this.zzb = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakh.class != obj.getClass()) {
            return false;
        }
        zzakh zzakhVar = (zzakh) obj;
        return this.zzf.equals(zzakhVar.zzf) && zzamq.zzc(this.zza, zzakhVar.zza) && zzamq.zzc(this.zzb, zzakhVar.zzb);
    }

    public final int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.zzf, 527, 31);
        String str = this.zza;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.zzb;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((m8579q2 + hashCode) * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.zzf;
        String str2 = this.zzb;
        return C22128a.m8610j(new StringBuilder(String.valueOf(str).length() + 6 + String.valueOf(str2).length()), str, ": url=", str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }
}
