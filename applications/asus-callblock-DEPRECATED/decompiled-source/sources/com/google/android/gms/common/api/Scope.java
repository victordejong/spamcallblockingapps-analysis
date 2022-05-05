package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Scope.class */
public final class Scope extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new m();

    /* renamed from: a  reason: collision with root package name */
    final int f3943a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3944b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Scope(int i, String str) {
        b.a(str, (Object) "scopeUri must not be null or empty");
        this.f3943a = i;
        this.f3944b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof Scope) ? false : this.f3944b.equals(((Scope) obj).f3944b);
    }

    public final int hashCode() {
        return this.f3944b.hashCode();
    }

    public final String toString() {
        return this.f3944b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        m.a(this, parcel);
    }
}
