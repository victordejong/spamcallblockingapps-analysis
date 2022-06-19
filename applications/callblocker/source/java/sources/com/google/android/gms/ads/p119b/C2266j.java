package com.google.android.gms.ads.p119b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import com.google.android.gms.internal.ads.AbstractBinderC3013ds;
import com.google.android.gms.internal.ads.AbstractC3008dp;
import com.google.android.gms.internal.ads.dzv;
import com.google.android.gms.internal.ads.dzw;
/* renamed from: com.google.android.gms.ads.b.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/b/j.class */
public final class C2266j extends AbstractC2663a {
    public static final Parcelable.Creator<C2266j> CREATOR = new C2271n();

    /* renamed from: a */
    private final boolean f6562a;

    /* renamed from: b */
    private final dzw f6563b;

    /* renamed from: c */
    private final IBinder f6564c;

    public C2266j(boolean z, IBinder iBinder, IBinder iBinder2) {
        this.f6562a = z;
        this.f6563b = iBinder != null ? dzv.m8126a(iBinder) : null;
        this.f6564c = iBinder2;
    }

    /* renamed from: a */
    public final boolean m14877a() {
        return this.f6562a;
    }

    /* renamed from: b */
    public final dzw m14876b() {
        return this.f6563b;
    }

    /* renamed from: c */
    public final AbstractC3008dp m14875c() {
        return AbstractBinderC3013ds.m8768a(this.f6564c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13930a(parcel, 1, m14877a());
        C2664b.m13938a(parcel, 2, this.f6563b == null ? null : this.f6563b.asBinder(), false);
        C2664b.m13938a(parcel, 3, this.f6564c, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
