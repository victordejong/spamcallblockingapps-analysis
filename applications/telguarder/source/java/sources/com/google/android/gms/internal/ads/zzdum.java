package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.ads.zzcf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdum.class */
public final class zzdum extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdum> CREATOR = new zzdul();
    private final int versionCode;
    private zzcf.zza zzhua = null;
    private byte[] zzhub;

    public zzdum(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzhub = bArr;
        zzayj();
    }

    private final void zzayj() {
        zzcf.zza zzaVar = this.zzhua;
        if (zzaVar != null || this.zzhub == null) {
            if (zzaVar != null && this.zzhub == null) {
                return;
            }
            if (zzaVar != null && this.zzhub != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (zzaVar != null || this.zzhub != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        byte[] bArr = this.zzhub;
        if (bArr == null) {
            bArr = this.zzhua.toByteArray();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArr, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzcf.zza zzayi() {
        if (!(this.zzhua != null)) {
            try {
                this.zzhua = zzcf.zza.zza(this.zzhub, zzeko.zzbhw());
                this.zzhub = null;
            } catch (zzelo | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzayj();
        return this.zzhua;
    }
}
