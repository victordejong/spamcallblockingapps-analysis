package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.pl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pl.class */
public abstract class AbstractBinderC3412pl extends dkl implements AbstractC3414pn {
    public AbstractBinderC3412pl() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3419ps c3419ps;
        C3419ps c3419ps2;
        C3419ps c3419ps3;
        C3419ps c3419ps4;
        C3418pr c3418pr;
        boolean z;
        switch (i) {
            case 1:
                C3409pi a = mo7338a((C3407pg) dkk.m9323a(parcel, C3407pg.CREATOR));
                parcel2.writeNoException();
                dkk.m9319b(parcel2, a);
                z = true;
                break;
            case 2:
                C3407pg c3407pg = (C3407pg) dkk.m9323a(parcel, C3407pg.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3418pr = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    c3418pr = queryLocalInterface instanceof AbstractC3415po ? (AbstractC3415po) queryLocalInterface : new C3418pr(readStrongBinder);
                }
                mo7337a(c3407pg, c3418pr);
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
            default:
                z = false;
                break;
            case 4:
                C3423pw c3423pw = (C3423pw) dkk.m9323a(parcel, C3423pw.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c3419ps4 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    c3419ps4 = queryLocalInterface2 instanceof AbstractC3417pq ? (AbstractC3417pq) queryLocalInterface2 : new C3419ps(readStrongBinder2);
                }
                mo7336a(c3423pw, c3419ps4);
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                C3423pw c3423pw2 = (C3423pw) dkk.m9323a(parcel, C3423pw.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c3419ps3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    c3419ps3 = queryLocalInterface3 instanceof AbstractC3417pq ? (AbstractC3417pq) queryLocalInterface3 : new C3419ps(readStrongBinder3);
                }
                mo7334b(c3423pw2, c3419ps3);
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                C3423pw c3423pw3 = (C3423pw) dkk.m9323a(parcel, C3423pw.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c3419ps2 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    c3419ps2 = queryLocalInterface4 instanceof AbstractC3417pq ? (AbstractC3417pq) queryLocalInterface4 : new C3419ps(readStrongBinder4);
                }
                mo7333c(c3423pw3, c3419ps2);
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c3419ps = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    c3419ps = queryLocalInterface5 instanceof AbstractC3417pq ? (AbstractC3417pq) queryLocalInterface5 : new C3419ps(readStrongBinder5);
                }
                mo7335a(readString, c3419ps);
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
