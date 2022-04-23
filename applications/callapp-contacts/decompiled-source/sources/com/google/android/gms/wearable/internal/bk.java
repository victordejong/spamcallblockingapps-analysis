package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.wearable.b;
import com.google.android.gms.internal.wearable.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bk.class */
public abstract class bk extends b implements bj {
    public bk() {
        super("com.google.android.gms.wearable.internal.IWearableListener");
    }

    @Override // com.google.android.gms.internal.wearable.b
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 1:
                a((DataHolder) c.a(parcel, DataHolder.CREATOR));
                return true;
            case 2:
                a((zzfe) c.a(parcel, zzfe.CREATOR));
                return true;
            case 3:
                a((zzfo) c.a(parcel, zzfo.CREATOR));
                return true;
            case 4:
                b((zzfo) c.a(parcel, zzfo.CREATOR));
                return true;
            case 5:
                a(parcel.createTypedArrayList(zzfo.CREATOR));
                return true;
            case 6:
                a((zzl) c.a(parcel, zzl.CREATOR));
                return true;
            case 7:
                a((zzaw) c.a(parcel, zzaw.CREATOR));
                return true;
            case 8:
                a((zzah) c.a(parcel, zzah.CREATOR));
                return true;
            case 9:
                a((zzi) c.a(parcel, zzi.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
