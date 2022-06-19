package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.measurement.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/b.class */
public final class C3811b extends AbstractC2663a {
    public static final Parcelable.Creator<C3811b> CREATOR = new C3896e();

    /* renamed from: a */
    public final long f17870a;

    /* renamed from: b */
    public final long f17871b;

    /* renamed from: c */
    public final boolean f17872c;

    /* renamed from: d */
    public final String f17873d;

    /* renamed from: e */
    public final String f17874e;

    /* renamed from: f */
    public final String f17875f;

    /* renamed from: g */
    public final Bundle f17876g;

    public C3811b(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle) {
        this.f17870a = j;
        this.f17871b = j2;
        this.f17872c = z;
        this.f17873d = str;
        this.f17874e = str2;
        this.f17875f = str3;
        this.f17876g = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13940a(parcel, 1, this.f17870a);
        C2664b.m13940a(parcel, 2, this.f17871b);
        C2664b.m13930a(parcel, 3, this.f17872c);
        C2664b.m13932a(parcel, 4, this.f17873d, false);
        C2664b.m13932a(parcel, 5, this.f17874e, false);
        C2664b.m13932a(parcel, 6, this.f17875f, false);
        C2664b.m13939a(parcel, 7, this.f17876g, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
