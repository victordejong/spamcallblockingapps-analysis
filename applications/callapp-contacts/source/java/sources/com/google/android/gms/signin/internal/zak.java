package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.zav;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new C14163i();
    final int zaa;
    private final ConnectionResult zab;
    private final zav zac;

    public zak(int i, ConnectionResult connectionResult, zav zavVar) {
        this.zaa = i;
        this.zab = connectionResult;
        this.zac = zavVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19107a(parcel, 2, this.zab, i, false);
        C12050a.m19107a(parcel, 3, this.zac, i, false);
        C12050a.m19095b(parcel, m19116a);
    }

    public final ConnectionResult zaa() {
        return this.zab;
    }

    public final zav zab() {
        return this.zac;
    }
}
