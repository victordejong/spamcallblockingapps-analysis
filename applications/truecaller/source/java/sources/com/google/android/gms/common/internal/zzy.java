package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
import p193e.p1577m.p1578a.p1642f.p1653e.AbstractBinderC24987i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzy.class */
public abstract class zzy extends zzb implements zzz {

    /* renamed from: a */
    public static final /* synthetic */ int f6070a = 0;

    public zzy() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.internal.common.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper zzd = ((AbstractBinderC24987i) this).zzd();
            parcel2.writeNoException();
            zzc.zze(parcel2, zzd);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = ((AbstractBinderC24987i) this).f69944b;
            parcel2.writeNoException();
            parcel2.writeInt(i3);
            return true;
        }
    }
}
