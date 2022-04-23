package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzas.class */
public final class zzas extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzas> CREATOR = new r();
    public final String zza;
    public final zzaq zzb;
    public final String zzc;
    public final long zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzas(zzas zzasVar, long j) {
        o.a(zzasVar);
        this.zza = zzasVar.zza;
        this.zzb = zzasVar.zzb;
        this.zzc = zzasVar.zzc;
        this.zzd = j;
    }

    public zzas(String str, zzaq zzaqVar, String str2, long j) {
        this.zza = str;
        this.zzb = zzaqVar;
        this.zzc = str2;
        this.zzd = j;
    }

    public final String toString() {
        String str = this.zzc;
        String str2 = this.zza;
        String valueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        r.a(this, parcel, i);
    }
}
