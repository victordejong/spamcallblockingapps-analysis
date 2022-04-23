package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable.class */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f22956a;
    @SafeParcelable.Field

    /* renamed from: b */
    public int f22957b;
    @SafeParcelable.Field

    /* renamed from: c */
    public Bundle f22958c;

    @SafeParcelable.Constructor
    public GoogleSignInOptionsExtensionParcelable(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) Bundle bundle) {
        this.f22956a = i;
        this.f22957b = i2;
        this.f22958c = bundle;
    }

    @KeepForSdk
    /* renamed from: f */
    public int m17862f() {
        return this.f22957b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f22956a);
        SafeParcelWriter.m17231a(parcel, 2, m17862f());
        SafeParcelWriter.m17229a(parcel, 3, this.f22958c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
