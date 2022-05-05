package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7432v5;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzme.class */
public final class zzme extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzme> CREATOR = new C7432v5();

    /* renamed from: a */
    public final int f6783a;

    public zzme(int i) {
        this.f6783a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 2, this.f6783a);
        C7031b.m21229a(parcel, a);
    }
}
