package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable.class */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new C5915c();

    /* renamed from: d */
    final int f19026d;

    /* renamed from: e */
    private int f19027e;

    /* renamed from: f */
    private Bundle f19028f;

    public GoogleSignInOptionsExtensionParcelable(int i, int i2, Bundle bundle) {
        this.f19026d = i;
        this.f19027e = i2;
        this.f19028f = bundle;
    }

    /* renamed from: k0 */
    public int m17612k0() {
        return this.f19027e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19026d);
        C6170a.m16937k(parcel, 2, m17612k0());
        C6170a.m16943e(parcel, 3, this.f19028f, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
