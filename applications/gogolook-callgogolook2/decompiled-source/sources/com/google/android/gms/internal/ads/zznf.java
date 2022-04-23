package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7397s6;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznf.class */
public final class zznf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zznf> CREATOR = new C7397s6();

    /* renamed from: a */
    public final boolean f6785a;

    /* renamed from: b */
    public final boolean f6786b;

    /* renamed from: c */
    public final boolean f6787c;

    public zznf(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    public zznf(boolean z, boolean z2, boolean z3) {
        this.f6785a = z;
        this.f6786b = z2;
        this.f6787c = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21212a(parcel, 2, this.f6785a);
        C7031b.m21212a(parcel, 3, this.f6786b);
        C7031b.m21212a(parcel, 4, this.f6787c);
        C7031b.m21229a(parcel, a);
    }
}
