package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.sm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sm.class */
public abstract class AbstractBinderC12909sm extends dvd implements AbstractC12906sj {
    public AbstractBinderC12909sm() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12911so c12911so;
        C12915ss c12915ss;
        C12915ss c12915ss2;
        C12915ss c12915ss3;
        C12915ss c12915ss4;
        if (i == 1) {
            zzats a = mo14194a((zzatq) dvc.m15675a(parcel, zzatq.CREATOR));
            parcel2.writeNoException();
            dvc.m15671b(parcel2, a);
            return true;
        } else if (i == 2) {
            zzatq zzatqVar = (zzatq) dvc.m15675a(parcel, zzatq.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12911so = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                c12911so = queryLocalInterface instanceof AbstractC12912sp ? (AbstractC12912sp) queryLocalInterface : new C12911so(readStrongBinder);
            }
            mo14193a(zzatqVar, c12911so);
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            zzauj zzaujVar = (zzauj) dvc.m15675a(parcel, zzauj.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 == null) {
                c12915ss = null;
            } else {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                c12915ss = queryLocalInterface2 instanceof AbstractC12914sr ? (AbstractC12914sr) queryLocalInterface2 : new C12915ss(readStrongBinder2);
            }
            mo14192a(zzaujVar, c12915ss);
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            zzauj zzaujVar2 = (zzauj) dvc.m15675a(parcel, zzauj.CREATOR);
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            if (readStrongBinder3 == null) {
                c12915ss2 = null;
            } else {
                IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                c12915ss2 = queryLocalInterface3 instanceof AbstractC12914sr ? (AbstractC12914sr) queryLocalInterface3 : new C12915ss(readStrongBinder3);
            }
            mo14190b(zzaujVar2, c12915ss2);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zzauj zzaujVar3 = (zzauj) dvc.m15675a(parcel, zzauj.CREATOR);
            IBinder readStrongBinder4 = parcel.readStrongBinder();
            if (readStrongBinder4 == null) {
                c12915ss3 = null;
            } else {
                IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                c12915ss3 = queryLocalInterface4 instanceof AbstractC12914sr ? (AbstractC12914sr) queryLocalInterface4 : new C12915ss(readStrongBinder4);
            }
            mo14189c(zzaujVar3, c12915ss3);
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            String readString = parcel.readString();
            IBinder readStrongBinder5 = parcel.readStrongBinder();
            if (readStrongBinder5 == null) {
                c12915ss4 = null;
            } else {
                IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                c12915ss4 = queryLocalInterface5 instanceof AbstractC12914sr ? (AbstractC12914sr) queryLocalInterface5 : new C12915ss(readStrongBinder5);
            }
            mo14191a(readString, c12915ss4);
            parcel2.writeNoException();
            return true;
        }
    }
}
