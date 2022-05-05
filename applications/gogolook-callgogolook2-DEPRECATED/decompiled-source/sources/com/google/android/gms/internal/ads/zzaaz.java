package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.session.MediaSessionImplBase;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7356p2;
import p081h.p203i.p204a.p224e.p259j.p260a.C7462y;
@ParametersAreNonnullByDefault
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaaz.class */
public final class zzaaz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaaz> CREATOR = new C7462y();

    /* renamed from: a */
    public final int f6736a;

    /* renamed from: b */
    public final int f6737b;

    /* renamed from: c */
    public final int f6738c;

    public zzaaz(int i, int i2, int i3) {
        this.f6736a = i;
        this.f6737b = i2;
        this.f6738c = i3;
    }

    /* renamed from: a */
    public static zzaaz m31854a(C7356p2 p2Var) {
        throw new NoSuchMethodError();
    }

    public final String toString() {
        int i = this.f6736a;
        int i2 = this.f6737b;
        int i3 = this.f6738c;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        sb.append(i2);
        sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6736a);
        C7031b.m21225a(parcel, 2, this.f6737b);
        C7031b.m21225a(parcel, 3, this.f6738c);
        C7031b.m21229a(parcel, a);
    }
}
