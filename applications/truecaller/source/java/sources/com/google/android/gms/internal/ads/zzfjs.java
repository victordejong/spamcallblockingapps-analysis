package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjs.class */
public final class zzfjs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfjs> CREATOR = new zzfjt();
    @SafeParcelable.VersionField
    public final int zza;
    @SafeParcelable.Field
    private zzyz zzb = null;
    private byte[] zzc;

    @SafeParcelable.Constructor
    public zzfjs(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.zza = i;
        this.zzc = bArr;
        zzb();
    }

    private final void zzb() {
        zzyz zzyzVar = this.zzb;
        if (zzyzVar != null || this.zzc == null) {
            if (zzyzVar != null && this.zzc == null) {
                return;
            }
            if (zzyzVar != null && this.zzc != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (zzyzVar != null || this.zzc != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        byte[] bArr = this.zzc;
        if (bArr == null) {
            bArr = this.zzb.zzao();
        }
        SafeParcelWriter.m38859d(parcel, 2, bArr, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    public final zzyz zza() {
        if (this.zzb == null) {
            try {
                this.zzb = zzyz.zzh(this.zzc, zzgfm.zza());
                this.zzc = null;
            } catch (zzggm | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzb();
        return this.zzb;
    }
}
