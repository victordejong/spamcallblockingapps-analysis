package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/Feature.class */
public class Feature extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<Feature> CREATOR = new C6201n();

    /* renamed from: d */
    private final String f19155d;
    @Deprecated

    /* renamed from: e */
    private final int f19156e;

    /* renamed from: f */
    private final long f19157f;

    public Feature(@RecentlyNonNull String str, int i, long j) {
        this.f19155d = str;
        this.f19156e = i;
        this.f19157f = j;
    }

    public Feature(@RecentlyNonNull String str, long j) {
        this.f19155d = str;
        this.f19157f = j;
        this.f19156e = -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            return ((m17499k0() != null && m17499k0().equals(feature.m17499k0())) || (m17499k0() == null && feature.m17499k0() == null)) && m17498l0() == feature.m17498l0();
        }
        return false;
    }

    public final int hashCode() {
        return C6147m.m17043b(m17499k0(), Long.valueOf(m17498l0()));
    }

    @RecentlyNonNull
    /* renamed from: k0 */
    public String m17499k0() {
        return this.f19155d;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: l0 */
    public long m17498l0() {
        ?? r0 = this.f19157f;
        char c = r0;
        if (r0 == -1) {
            c = this.f19156e;
        }
        return c;
    }

    @RecentlyNonNull
    public final String toString() {
        C6147m.C6148a m17042c = C6147m.m17042c(this);
        m17042c.m17041a(ShortCut.NAME, m17499k0());
        m17042c.m17041a("version", Long.valueOf(m17498l0()));
        return m17042c.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, m17499k0(), false);
        C6170a.m16937k(parcel, 2, this.f19156e);
        C6170a.m16934n(parcel, 3, m17498l0());
        C6170a.m16946b(parcel, m16947a);
    }
}
