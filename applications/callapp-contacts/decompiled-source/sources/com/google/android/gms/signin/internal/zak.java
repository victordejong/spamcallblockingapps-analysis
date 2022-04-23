package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.zav;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new i();
    final int zaa;
    private final ConnectionResult zab;
    private final zav zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zak(int i, ConnectionResult connectionResult, zav zavVar) {
        this.zaa = i;
        this.zab = connectionResult;
        this.zac = zavVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab, i, false);
        a.a(parcel, 3, this.zac, i, false);
        a.b(parcel, a2);
    }

    public final ConnectionResult zaa() {
        return this.zab;
    }

    public final zav zab() {
        return this.zac;
    }
}
