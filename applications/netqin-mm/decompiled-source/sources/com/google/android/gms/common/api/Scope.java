package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Scope.class */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zza();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23074a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f23075b;

    @SafeParcelable.Constructor
    public Scope(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str) {
        Preconditions.m17285a(str, (Object) "scopeUri must not be null or empty");
        this.f23074a = i;
        this.f23075b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f23075b.equals(((Scope) obj).f23075b);
    }

    @KeepForSdk
    /* renamed from: f */
    public final String m17746f() {
        return this.f23075b;
    }

    public final int hashCode() {
        return this.f23075b.hashCode();
    }

    public final String toString() {
        return this.f23075b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23074a);
        SafeParcelWriter.m17221a(parcel, 2, m17746f(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
