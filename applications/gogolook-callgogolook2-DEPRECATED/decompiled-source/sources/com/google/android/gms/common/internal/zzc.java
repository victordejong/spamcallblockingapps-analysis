package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7002l0;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new C7002l0();

    /* renamed from: a */
    public Bundle f6611a;

    /* renamed from: b */
    public Feature[] f6612b;

    /* renamed from: c */
    public int f6613c;

    public zzc() {
    }

    public zzc(Bundle bundle, Feature[] featureArr, int i) {
        this.f6611a = bundle;
        this.f6612b = featureArr;
        this.f6613c = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21223a(parcel, 1, this.f6611a, false);
        C7031b.m21209a(parcel, 2, (Parcelable[]) this.f6612b, i, false);
        C7031b.m21225a(parcel, 3, this.f6613c);
        C7031b.m21229a(parcel, a);
    }
}
