package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable.class */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5548a;
    @SafeParcelable.Field

    /* renamed from: b */
    public int f5549b;
    @SafeParcelable.Field

    /* renamed from: c */
    public Bundle f5550c;

    @SafeParcelable.Constructor
    public GoogleSignInOptionsExtensionParcelable(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) Bundle bundle) {
        this.f5548a = i;
        this.f5549b = i2;
        this.f5550c = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5548a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = this.f5549b;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        SafeParcelWriter.m38860c(parcel, 3, this.f5550c, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
