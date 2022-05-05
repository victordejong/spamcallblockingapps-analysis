package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p236k.C6955t;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Scope.class */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new C6955t();

    /* renamed from: a */
    public final int f6508a;

    /* renamed from: b */
    public final String f6509b;

    public Scope(int i, String str) {
        C7021t.m21287a(str, (Object) "scopeUri must not be null or empty");
        this.f6508a = i;
        this.f6509b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    /* renamed from: c */
    public final String m31994c() {
        return this.f6509b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f6509b.equals(((Scope) obj).f6509b);
    }

    public final int hashCode() {
        return this.f6509b.hashCode();
    }

    public final String toString() {
        return this.f6509b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6508a);
        C7031b.m21215a(parcel, 2, m31994c(), false);
        C7031b.m21229a(parcel, a);
    }
}
