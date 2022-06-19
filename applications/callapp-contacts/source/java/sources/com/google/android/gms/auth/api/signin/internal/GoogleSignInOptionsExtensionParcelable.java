package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.AbstractC11734d;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable.class */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new C11743c();
    final int zaa;
    private int zab;
    private Bundle zac;

    public GoogleSignInOptionsExtensionParcelable(int i, int i2, Bundle bundle) {
        this.zaa = i;
        this.zab = i2;
        this.zac = bundle;
    }

    public GoogleSignInOptionsExtensionParcelable(AbstractC11734d abstractC11734d) {
        this(1, abstractC11734d.m19559a(), abstractC11734d.m19558b());
    }

    public int getType() {
        return this.zab;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19112a(parcel, 2, getType());
        C12050a.m19110a(parcel, 3, this.zac, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
