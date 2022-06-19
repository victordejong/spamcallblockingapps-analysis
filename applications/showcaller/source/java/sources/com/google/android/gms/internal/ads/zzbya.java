package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.C5792w;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbya.class */
public final class zzbya extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbya> CREATOR = new ea0();

    /* renamed from: d */
    public final int f33746d;

    /* renamed from: e */
    public final int f33747e;

    /* renamed from: f */
    public final int f33748f;

    public zzbya(int i, int i2, int i3) {
        this.f33746d = i;
        this.f33747e = i2;
        this.f33748f = i3;
    }

    /* renamed from: k0 */
    public static zzbya m8072k0(C5792w c5792w) {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbya)) {
            zzbya zzbyaVar = (zzbya) obj;
            return zzbyaVar.f33748f == this.f33748f && zzbyaVar.f33747e == this.f33747e && zzbyaVar.f33746d == this.f33746d;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.f33746d, this.f33747e, this.f33748f});
    }

    public final String toString() {
        int i = this.f33746d;
        int i2 = this.f33747e;
        int i3 = this.f33748f;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33746d);
        C6170a.m16937k(parcel, 2, this.f33747e);
        C6170a.m16937k(parcel, 3, this.f33748f);
        C6170a.m16946b(parcel, m16947a);
    }
}
