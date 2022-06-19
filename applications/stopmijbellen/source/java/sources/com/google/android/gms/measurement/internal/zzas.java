package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import p007a6.C0033h;
@SafeParcelable.Class(creator = "EventParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzas.class */
public final class zzas extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzas> CREATOR = new zzat();
    @SafeParcelable.Field(m4805id = 2)
    public final String zza;
    @SafeParcelable.Field(m4805id = 3)
    public final zzaq zzb;
    @SafeParcelable.Field(m4805id = 4)
    public final String zzc;
    @SafeParcelable.Field(m4805id = 5)
    public final long zzd;

    public zzas(zzas zzasVar, long j) {
        Preconditions.checkNotNull(zzasVar);
        this.zza = zzasVar.zza;
        this.zzb = zzasVar.zzb;
        this.zzc = zzasVar.zzc;
        this.zzd = j;
    }

    @SafeParcelable.Constructor
    public zzas(@SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) zzaq zzaqVar, @SafeParcelable.Param(m4804id = 4) String str2, @SafeParcelable.Param(m4804id = 5) long j) {
        this.zza = str;
        this.zzb = zzaqVar;
        this.zzc = str2;
        this.zzd = j;
    }

    public final String toString() {
        String str = this.zzc;
        String str2 = this.zza;
        String valueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(str).length(), 21, String.valueOf(str2).length(), valueOf.length()));
        C0082b.m8749m(sb, "origin=", str, ",name=", str2);
        return C0082b.m8754h(sb, ",params=", valueOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzat.zza(this, parcel, i);
    }
}
