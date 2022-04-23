package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.d;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable.class */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new c();
    final int zaa;
    private int zab;
    private Bundle zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptionsExtensionParcelable(int i, int i2, Bundle bundle) {
        this.zaa = i;
        this.zab = i2;
        this.zac = bundle;
    }

    public GoogleSignInOptionsExtensionParcelable(d dVar) {
        this(1, dVar.a(), dVar.b());
    }

    public int getType() {
        return this.zab;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, getType());
        a.a(parcel, 3, this.zac, false);
        a.b(parcel, a2);
    }
}
