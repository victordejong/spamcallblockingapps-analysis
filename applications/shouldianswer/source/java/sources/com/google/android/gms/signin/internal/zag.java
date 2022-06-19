package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zag.class */
public final class zag extends zaa implements zaf {
    public zag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.signin.internal.zaf
    public final void zaa(IAccountAccessor iAccountAccessor, int i, boolean z) {
        Parcel zaa = zaa();
        zac.zaa(zaa, iAccountAccessor);
        zaa.writeInt(i);
        zac.writeBoolean(zaa, z);
        zab(9, zaa);
    }

    @Override // com.google.android.gms.signin.internal.zaf
    public final void zaa(zah zahVar, zad zadVar) {
        Parcel zaa = zaa();
        zac.zaa(zaa, zahVar);
        zac.zaa(zaa, zadVar);
        zab(12, zaa);
    }

    @Override // com.google.android.gms.signin.internal.zaf
    public final void zam(int i) {
        Parcel zaa = zaa();
        zaa.writeInt(i);
        zab(7, zaa);
    }
}
