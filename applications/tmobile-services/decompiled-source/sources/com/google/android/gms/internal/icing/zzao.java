package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzao.class */
public abstract class zzao extends zza implements zzam {
    public zzao() {
        super("com.google.android.gms.search.internal.ISearchAuthCallbacks");
    }

    @Override // com.google.android.gms.internal.icing.zza
    /* renamed from: a */
    protected final boolean mo14049a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14044P0((Status) zzd.m13972a(parcel, Status.CREATOR), (GoogleNowAuthState) zzd.m13972a(parcel, GoogleNowAuthState.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo14046z0((Status) zzd.m13972a(parcel, Status.CREATOR));
            return true;
        }
    }
}
