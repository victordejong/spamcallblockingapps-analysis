package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "AdapterResponseInfoParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfm.class */
public final class zzbfm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbfm> CREATOR = new zzbfn();
    @SafeParcelable.Field(m4805id = 1)
    public final String zza;
    @SafeParcelable.Field(m4805id = 2)
    public long zzb;
    @SafeParcelable.Field(m4805id = 3)
    public zzbew zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final Bundle zzd;

    @SafeParcelable.Constructor
    public zzbfm(@SafeParcelable.Param(m4804id = 1) String str, @SafeParcelable.Param(m4804id = 2) long j, @SafeParcelable.Param(m4804id = 3) zzbew zzbewVar, @SafeParcelable.Param(m4804id = 4) Bundle bundle) {
        this.zza = str;
        this.zzb = j;
        this.zzc = zzbewVar;
        this.zzd = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeLong(parcel, 2, this.zzb);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeBundle(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
