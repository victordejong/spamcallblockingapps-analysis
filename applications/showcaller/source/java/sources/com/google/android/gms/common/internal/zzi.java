package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzi.class */
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new C6133h1();

    /* renamed from: d */
    Bundle f19633d;

    /* renamed from: e */
    Feature[] f19634e;

    /* renamed from: f */
    int f19635f;

    /* renamed from: g */
    ConnectionTelemetryConfiguration f19636g;

    public zzi() {
    }

    public zzi(Bundle bundle, Feature[] featureArr, int i, ConnectionTelemetryConfiguration connectionTelemetryConfiguration) {
        this.f19633d = bundle;
        this.f19634e = featureArr;
        this.f19635f = i;
        this.f19636g = connectionTelemetryConfiguration;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16943e(parcel, 1, this.f19633d, false);
        C6170a.m16927u(parcel, 2, this.f19634e, i, false);
        C6170a.m16937k(parcel, 3, this.f19635f);
        C6170a.m16931q(parcel, 4, this.f19636g, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
