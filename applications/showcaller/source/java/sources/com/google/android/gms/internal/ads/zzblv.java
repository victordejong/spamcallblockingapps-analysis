package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.nativead.C5800b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblv.class */
public final class zzblv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzblv> CREATOR = new C7088vy();

    /* renamed from: d */
    public final int f33717d;

    /* renamed from: e */
    public final boolean f33718e;

    /* renamed from: f */
    public final int f33719f;

    /* renamed from: g */
    public final boolean f33720g;

    /* renamed from: h */
    public final int f33721h;

    /* renamed from: i */
    public final zzbis f33722i;

    /* renamed from: j */
    public final boolean f33723j;

    /* renamed from: k */
    public final int f33724k;

    public zzblv(int i, boolean z, int i2, boolean z2, int i3, zzbis zzbisVar, boolean z3, int i4) {
        this.f33717d = i;
        this.f33718e = z;
        this.f33719f = i2;
        this.f33720g = z2;
        this.f33721h = i3;
        this.f33722i = zzbisVar;
        this.f33723j = z3;
        this.f33724k = i4;
    }

    public zzblv(C5608c c5608c) {
        this(4, c5608c.m18252f(), c5608c.m18256b(), c5608c.m18253e(), c5608c.m18257a(), c5608c.m18254d() != null ? new zzbis(c5608c.m18254d()) : null, c5608c.m18251g(), c5608c.m18255c());
    }

    /* renamed from: k0 */
    public static C5800b m8073k0(zzblv zzblvVar) {
        C5800b.C5801a c5801a = new C5800b.C5801a();
        if (zzblvVar == null) {
            return c5801a.m17841a();
        }
        int i = zzblvVar.f33717d;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    c5801a.m17838d(zzblvVar.f33723j);
                    c5801a.m17839c(zzblvVar.f33724k);
                }
                c5801a.m17836f(zzblvVar.f33718e);
                c5801a.m17837e(zzblvVar.f33720g);
                return c5801a.m17841a();
            }
            zzbis zzbisVar = zzblvVar.f33722i;
            if (zzbisVar != null) {
                c5801a.m17835g(new C5848t(zzbisVar));
            }
        }
        c5801a.m17840b(zzblvVar.f33721h);
        c5801a.m17836f(zzblvVar.f33718e);
        c5801a.m17837e(zzblvVar.f33720g);
        return c5801a.m17841a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33717d);
        C6170a.m16945c(parcel, 2, this.f33718e);
        C6170a.m16937k(parcel, 3, this.f33719f);
        C6170a.m16945c(parcel, 4, this.f33720g);
        C6170a.m16937k(parcel, 5, this.f33721h);
        C6170a.m16931q(parcel, 6, this.f33722i, i, false);
        C6170a.m16945c(parcel, 7, this.f33723j);
        C6170a.m16937k(parcel, 8, this.f33724k);
        C6170a.m16946b(parcel, m16947a);
    }
}
