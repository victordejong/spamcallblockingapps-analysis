package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaau.class */
public final class zzaau extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaau> CREATOR = new zzaax();
    public final boolean zzadx;
    public final boolean zzady;
    public final boolean zzadz;

    public zzaau(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    public zzaau(boolean z, boolean z2, boolean z3) {
        this.zzadx = z;
        this.zzady = z2;
        this.zzadz = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzadx);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzady);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzadz);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
