package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaec.class */
public abstract class zzaec extends zzgt implements zzadz {
    public zzaec() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    /* renamed from: a */
    public static zzadz m16835a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
        return queryLocalInterface instanceof zzadz ? (zzadz) queryLocalInterface : new zzaeb(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzafq zzafqVar;
        switch (i) {
            case 2:
                float X = mo14769X();
                parcel2.writeNoException();
                parcel2.writeFloat(X);
                return true;
            case 3:
                mo14766j(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper l1 = mo14765l1();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, l1);
                return true;
            case 5:
                float duration = getDuration();
                parcel2.writeNoException();
                parcel2.writeFloat(duration);
                return true;
            case 6:
                float i0 = mo14767i0();
                parcel2.writeNoException();
                parcel2.writeFloat(i0);
                return true;
            case 7:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 8:
                boolean I0 = mo14772I0();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, I0);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzafqVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    zzafqVar = queryLocalInterface instanceof zzafq ? (zzafq) queryLocalInterface : new zzafp(readStrongBinder);
                }
                mo14768a(zzafqVar);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
