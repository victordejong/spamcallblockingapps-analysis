package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.p119b.C2255d;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.ads.bl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bl.class */
public final class C2835bl extends AbstractC2663a {
    public static final Parcelable.Creator<C2835bl> CREATOR = new C2838bo();

    /* renamed from: a */
    public final int f11455a;

    /* renamed from: b */
    public final boolean f11456b;

    /* renamed from: c */
    public final int f11457c;

    /* renamed from: d */
    public final boolean f11458d;

    /* renamed from: e */
    public final int f11459e;

    /* renamed from: f */
    public final ecn f11460f;

    /* renamed from: g */
    public final boolean f11461g;

    /* renamed from: h */
    public final int f11462h;

    public C2835bl(int i, boolean z, int i2, boolean z2, int i3, ecn ecnVar, boolean z3, int i4) {
        this.f11455a = i;
        this.f11456b = z;
        this.f11457c = i2;
        this.f11458d = z2;
        this.f11459e = i3;
        this.f11460f = ecnVar;
        this.f11461g = z3;
        this.f11462h = i4;
    }

    public C2835bl(C2255d c2255d) {
        this(4, c2255d.m14906a(), c2255d.m14905b(), c2255d.m14903d(), c2255d.m14902e(), c2255d.m14901f() != null ? new ecn(c2255d.m14901f()) : null, c2255d.m14900g(), c2255d.m14904c());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f11455a);
        C2664b.m13930a(parcel, 2, this.f11456b);
        C2664b.m13941a(parcel, 3, this.f11457c);
        C2664b.m13930a(parcel, 4, this.f11458d);
        C2664b.m13941a(parcel, 5, this.f11459e);
        C2664b.m13937a(parcel, 6, (Parcelable) this.f11460f, i, false);
        C2664b.m13930a(parcel, 7, this.f11461g);
        C2664b.m13941a(parcel, 8, this.f11462h);
        C2664b.m13943a(parcel, m13944a);
    }
}
