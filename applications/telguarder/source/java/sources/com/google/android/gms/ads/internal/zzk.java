package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzk.class */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzj();
    public final boolean zzbpe;
    public final boolean zzbpf;
    private final String zzbpg;
    public final boolean zzbph;
    public final float zzbpi;
    public final int zzbpj;
    public final boolean zzbpk;
    public final boolean zzbpl;
    public final boolean zzbpm;

    public zzk(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.zzbpe = z;
        this.zzbpf = z2;
        this.zzbpg = str;
        this.zzbph = z3;
        this.zzbpi = f;
        this.zzbpj = i;
        this.zzbpk = z4;
        this.zzbpl = z5;
        this.zzbpm = z6;
    }

    public zzk(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, false, 0.0f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzbpe);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzbpf);
        SafeParcelWriter.writeString(parcel, 4, this.zzbpg, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzbph);
        SafeParcelWriter.writeFloat(parcel, 6, this.zzbpi);
        SafeParcelWriter.writeInt(parcel, 7, this.zzbpj);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzbpk);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzbpl);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzbpm);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
