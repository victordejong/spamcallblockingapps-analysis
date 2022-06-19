package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjs.class */
public final class zzfjs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfjs> CREATOR = new us2();

    /* renamed from: d */
    public final int f34011d;

    /* renamed from: e */
    private z14 f34012e = null;

    /* renamed from: f */
    private byte[] f34013f;

    public zzfjs(int i, byte[] bArr) {
        this.f34011d = i;
        this.f34013f = bArr;
        m7872b();
    }

    /* renamed from: b */
    private final void m7872b() {
        z14 z14Var = this.f34012e;
        if (z14Var != null || this.f34013f == null) {
            if (z14Var != null && this.f34013f == null) {
                return;
            }
            if (z14Var != null && this.f34013f != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (z14Var != null || this.f34013f != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    /* renamed from: k0 */
    public final z14 m7871k0() {
        if (this.f34012e == null) {
            try {
                this.f34012e = z14.m8562y0(this.f34013f, vd3.m10041a());
                this.f34013f = null;
            } catch (zzggm | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        m7872b();
        return this.f34012e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34011d);
        byte[] bArr = this.f34013f;
        if (bArr == null) {
            bArr = this.f34012e.mo10723K();
        }
        C6170a.m16942f(parcel, 2, bArr, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
