package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7230f1;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaio.class */
public final class zzaio extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaio> CREATOR = new C7230f1();

    /* renamed from: a */
    public final zzjk f6739a;

    /* renamed from: b */
    public final String f6740b;

    public zzaio(zzjk zzjkVar, String str) {
        this.f6739a = zzjkVar;
        this.f6740b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f6739a, i, false);
        C7031b.m21215a(parcel, 3, this.f6740b, false);
        C7031b.m21229a(parcel, a);
    }
}
