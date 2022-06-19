package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaaz.class */
public final class zzaaz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaaz> CREATOR = new C13060y();
    public final boolean zzaee;
    public final boolean zzaef;
    public final boolean zzaeg;

    public zzaaz(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    public zzaaz(boolean z, boolean z2, boolean z3) {
        this.zzaee = z;
        this.zzaef = z2;
        this.zzaeg = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 2, this.zzaee);
        C12050a.m19101a(parcel, 3, this.zzaef);
        C12050a.m19101a(parcel, 4, this.zzaeg);
        C12050a.m19095b(parcel, m19116a);
    }
}
