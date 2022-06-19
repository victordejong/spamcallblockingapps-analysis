package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajt.class */
public final class zzajt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajt> CREATOR = new zzajs();
    public final int versionCode;
    public final int zzbnt;
    public final int zzdiz;
    public final String zzdja;

    public zzajt(int i, int i2, String str, int i3) {
        this.versionCode = i;
        this.zzdiz = i2;
        this.zzdja = str;
        this.zzbnt = i3;
    }

    public zzajt(zzakf zzakfVar) {
        this(2, 1, zzakfVar.zzuh(), zzakfVar.getMediaAspectRatio());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzdiz);
        SafeParcelWriter.writeString(parcel, 2, this.zzdja, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzbnt);
        SafeParcelWriter.writeInt(parcel, 1000, this.versionCode);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
