package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaf.class */
public abstract class zzaf extends zza implements zzac {
    public zzaf() {
        super("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks");
    }

    @Override // com.google.android.gms.internal.icing.zza
    /* renamed from: a */
    protected final boolean mo14049a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14052r0((Status) zzd.m13972a(parcel, Status.CREATOR));
            return true;
        } else if (i == 2) {
            mo14055I0((Status) zzd.m13972a(parcel, Status.CREATOR), (ParcelFileDescriptor) zzd.m13972a(parcel, ParcelFileDescriptor.CREATOR));
            return true;
        } else if (i != 4) {
            return false;
        } else {
            mo14054n((zzo) zzd.m13972a(parcel, zzo.CREATOR));
            return true;
        }
    }
}
