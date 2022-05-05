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

    /* renamed from: f */
    private final int f7021f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final String f7022g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public Scope(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str) {
        Preconditions.m14526h(str, "scopeUri must not be null or empty");
        this.f7021f = i;
        this.f7022g = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    @KeepForSdk
    /* renamed from: B */
    public final String m15001B() {
        return this.f7022g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f7022g.equals(((Scope) obj).f7022g);
    }

    public final int hashCode() {
        return this.f7022g.hashCode();
    }

    public final String toString() {
        return this.f7022g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7021f);
        SafeParcelWriter.m14447q(parcel, 2, m15001B(), false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
