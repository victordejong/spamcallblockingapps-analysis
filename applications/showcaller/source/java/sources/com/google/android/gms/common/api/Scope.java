package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Scope.class */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<Scope> CREATOR = new C6082o();

    /* renamed from: d */
    final int f19165d;

    /* renamed from: e */
    private final String f19166e;

    public Scope(int i, String str) {
        C6155o.m17021g(str, "scopeUri must not be null or empty");
        this.f19165d = i;
        this.f19166e = str;
    }

    public Scope(@RecentlyNonNull String str) {
        this(1, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f19166e.equals(((Scope) obj).f19166e);
        }
        return false;
    }

    public int hashCode() {
        return this.f19166e.hashCode();
    }

    @RecentlyNonNull
    /* renamed from: k0 */
    public String m17492k0() {
        return this.f19166e;
    }

    @RecentlyNonNull
    public String toString() {
        return this.f19166e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19165d);
        C6170a.m16930r(parcel, 2, m17492k0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
