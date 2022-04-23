package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaaz.class */
public final class zzaaz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaaz> CREATOR = new y();
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzaee);
        a.a(parcel, 3, this.zzaef);
        a.a(parcel, 4, this.zzaeg);
        a.b(parcel, a2);
    }
}
