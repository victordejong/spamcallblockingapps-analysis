package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.clearcut.zzc;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzm.class */
public abstract class zzm extends zzb implements zzl {
    public zzm() {
        super("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
    }

    @Override // com.google.android.gms.internal.clearcut.zzb
    /* renamed from: a */
    public final boolean mo10543a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo10548b((Status) zzc.m10734a(parcel, Status.CREATOR));
                return true;
            case 2:
                mo10545d((Status) zzc.m10734a(parcel, Status.CREATOR));
                return true;
            case 3:
                mo10552a((Status) zzc.m10734a(parcel, Status.CREATOR), parcel.readLong());
                return true;
            case 4:
                mo10544f((Status) zzc.m10734a(parcel, Status.CREATOR));
                return true;
            case 5:
                mo10547b((Status) zzc.m10734a(parcel, Status.CREATOR), parcel.readLong());
                return true;
            case 6:
                mo10550a((Status) zzc.m10734a(parcel, Status.CREATOR), (zze[]) parcel.createTypedArray(zze.CREATOR));
                return true;
            case 7:
                mo10549a((DataHolder) zzc.m10734a(parcel, DataHolder.CREATOR));
                return true;
            case 8:
                mo10551a((Status) zzc.m10734a(parcel, Status.CREATOR), (zzc) zzc.m10734a(parcel, zzc.CREATOR));
                return true;
            case 9:
                mo10546b((Status) zzc.m10734a(parcel, Status.CREATOR), (zzc) zzc.m10734a(parcel, zzc.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
