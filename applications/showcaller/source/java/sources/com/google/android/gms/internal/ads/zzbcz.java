package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5844r;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcz.class */
public final class zzbcz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbcz> CREATOR = new C6821oq();

    /* renamed from: d */
    public final int f33653d;

    /* renamed from: e */
    public final String f33654e;

    /* renamed from: f */
    public final String f33655f;

    /* renamed from: g */
    public zzbcz f33656g;

    /* renamed from: h */
    public IBinder f33657h;

    public zzbcz(int i, String str, String str2, zzbcz zzbczVar, IBinder iBinder) {
        this.f33653d = i;
        this.f33654e = str;
        this.f33655f = str2;
        this.f33656g = zzbczVar;
        this.f33657h = iBinder;
    }

    /* renamed from: k0 */
    public final C5592a m8085k0() {
        zzbcz zzbczVar = this.f33656g;
        return new C5592a(this.f33653d, this.f33654e, this.f33655f, zzbczVar == null ? null : new C5592a(zzbczVar.f33653d, zzbczVar.f33654e, zzbczVar.f33655f));
    }

    /* renamed from: l0 */
    public final C5756j m8084l0() {
        zzbcz zzbczVar = this.f33656g;
        C6416du c6416du = null;
        C5592a c5592a = zzbczVar == null ? null : new C5592a(zzbczVar.f33653d, zzbczVar.f33654e, zzbczVar.f33655f);
        int i = this.f33653d;
        String str = this.f33654e;
        String str2 = this.f33655f;
        IBinder iBinder = this.f33657h;
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            c6416du = queryLocalInterface instanceof AbstractC6491fu ? (AbstractC6491fu) queryLocalInterface : new C6416du(iBinder);
        }
        return new C5756j(i, str, str2, c5592a, C5844r.m17769d(c6416du));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33653d);
        C6170a.m16930r(parcel, 2, this.f33654e, false);
        C6170a.m16930r(parcel, 3, this.f33655f, false);
        C6170a.m16931q(parcel, 4, this.f33656g, i, false);
        C6170a.m16938j(parcel, 5, this.f33657h, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
