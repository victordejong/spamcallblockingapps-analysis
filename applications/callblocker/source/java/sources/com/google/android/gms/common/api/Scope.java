package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Scope.class */
public final class Scope extends AbstractC2663a implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new C2577n();

    /* renamed from: a */
    private final int f7027a;

    /* renamed from: b */
    private final String f7028b;

    public Scope(int i, String str) {
        C2662s.m13978a(str, (Object) "scopeUri must not be null or empty");
        this.f7027a = i;
        this.f7028b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    /* renamed from: a */
    public final String m14463a() {
        return this.f7028b;
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof Scope) ? false : this.f7028b.equals(((Scope) obj).f7028b);
    }

    public final int hashCode() {
        return this.f7028b.hashCode();
    }

    public final String toString() {
        return this.f7028b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f7027a);
        C2664b.m13932a(parcel, 2, m14463a(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
