package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaak.class */
public final class zzaak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaak> CREATOR = new zzaaj();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f23630a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f23631b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f23632c;

    public zzaak(VideoOptions videoOptions) {
        this(videoOptions.m18083c(), videoOptions.m18084b(), videoOptions.m18085a());
    }

    @SafeParcelable.Constructor
    public zzaak(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) boolean z3) {
        this.f23630a = z;
        this.f23631b = z2;
        this.f23632c = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17218a(parcel, 2, this.f23630a);
        SafeParcelWriter.m17218a(parcel, 3, this.f23631b);
        SafeParcelWriter.m17218a(parcel, 4, this.f23632c);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
