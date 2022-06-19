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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Scope.class */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zza();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5720a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5721b;

    @SafeParcelable.Constructor
    public Scope(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str) {
        Preconditions.m38900h(str, "scopeUri must not be null or empty");
        this.f5720a = i;
        this.f5721b = str;
    }

    public Scope(String str) {
        Preconditions.m38900h(str, "scopeUri must not be null or empty");
        this.f5720a = 1;
        this.f5721b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f5721b.equals(((Scope) obj).f5721b);
        }
        return false;
    }

    public int hashCode() {
        return this.f5721b.hashCode();
    }

    public String toString() {
        return this.f5721b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5720a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.f5721b, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
