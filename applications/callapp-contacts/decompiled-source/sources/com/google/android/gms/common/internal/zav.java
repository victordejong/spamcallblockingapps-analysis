package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/zav.class */
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new an();
    final int zaa;
    final IBinder zab;
    private final ConnectionResult zac;
    private final boolean zad;
    private final boolean zae;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zav(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.zaa = i;
        this.zab = iBinder;
        this.zac = connectionResult;
        this.zad = z;
        this.zae = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zav)) {
            return false;
        }
        zav zavVar = (zav) obj;
        return this.zac.equals(zavVar.zac) && m.a(zaa(), zavVar.zaa());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab);
        a.a(parcel, 3, this.zac, i, false);
        a.a(parcel, 4, this.zad);
        a.a(parcel, 5, this.zae);
        a.b(parcel, a2);
    }

    public final i zaa() {
        IBinder iBinder = this.zab;
        if (iBinder == null) {
            return null;
        }
        return i.a.a(iBinder);
    }

    public final ConnectionResult zab() {
        return this.zac;
    }

    public final boolean zac() {
        return this.zad;
    }

    public final boolean zad() {
        return this.zae;
    }
}
