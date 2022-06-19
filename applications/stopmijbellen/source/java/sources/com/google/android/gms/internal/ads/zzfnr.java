package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "GassResponseParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfnr.class */
public final class zzfnr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfnr> CREATOR = new zzfns();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zza;
    @SafeParcelable.Field(getter = "getAfmaSignalsAsBytes", m4805id = 2, type = "byte[]")
    private zzajp zzb = null;
    private byte[] zzc;

    @SafeParcelable.Constructor
    public zzfnr(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) byte[] bArr) {
        this.zza = i;
        this.zzc = bArr;
        zzb();
    }

    private final void zzb() {
        zzajp zzajpVar = this.zzb;
        if (zzajpVar != null || this.zzc == null) {
            if (zzajpVar != null && this.zzc == null) {
                return;
            }
            if (zzajpVar != null && this.zzc != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (zzajpVar != null || this.zzc != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        byte[] bArr = this.zzc;
        if (bArr == null) {
            bArr = this.zzb.zzar();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArr, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzajp zza() {
        if (this.zzb == null) {
            try {
                this.zzb = zzajp.zze(this.zzc, zzgjx.zza());
                this.zzc = null;
            } catch (zzgkx | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzb();
        return this.zzb;
    }
}
