package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qc0.class */
public abstract class qc0 extends BinderC6649k2 implements rc0 {
    public qc0() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        tc0 tc0Var;
        tc0 tc0Var2;
        tc0 tc0Var3;
        tc0 tc0Var4;
        if (i == 1) {
            zzcav zzcavVar = (zzcav) C6686l2.m13744c(parcel, zzcav.CREATOR);
            parcel2.writeNoException();
            C6686l2.m13742e(parcel2, null);
            return true;
        } else if (i == 2) {
            zzcav zzcavVar2 = (zzcav) C6686l2.m13744c(parcel, zzcav.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                if (queryLocalInterface instanceof sc0) {
                    sc0 sc0Var = (sc0) queryLocalInterface;
                } else {
                    new sc0(readStrongBinder);
                }
            }
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            zzcbj zzcbjVar = (zzcbj) C6686l2.m13744c(parcel, zzcbj.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 == null) {
                tc0Var = null;
            } else {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                tc0Var = queryLocalInterface2 instanceof vc0 ? (vc0) queryLocalInterface2 : new tc0(readStrongBinder2);
            }
            mo11611v1(zzcbjVar, tc0Var);
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            zzcbj zzcbjVar2 = (zzcbj) C6686l2.m13744c(parcel, zzcbj.CREATOR);
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            if (readStrongBinder3 == null) {
                tc0Var2 = null;
            } else {
                IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                tc0Var2 = queryLocalInterface3 instanceof vc0 ? (vc0) queryLocalInterface3 : new tc0(readStrongBinder3);
            }
            mo11613X0(zzcbjVar2, tc0Var2);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zzcbj zzcbjVar3 = (zzcbj) C6686l2.m13744c(parcel, zzcbj.CREATOR);
            IBinder readStrongBinder4 = parcel.readStrongBinder();
            if (readStrongBinder4 == null) {
                tc0Var3 = null;
            } else {
                IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                tc0Var3 = queryLocalInterface4 instanceof vc0 ? (vc0) queryLocalInterface4 : new tc0(readStrongBinder4);
            }
            mo11612Z2(zzcbjVar3, tc0Var3);
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            String readString = parcel.readString();
            IBinder readStrongBinder5 = parcel.readStrongBinder();
            if (readStrongBinder5 == null) {
                tc0Var4 = null;
            } else {
                IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                tc0Var4 = queryLocalInterface5 instanceof vc0 ? (vc0) queryLocalInterface5 : new tc0(readStrongBinder5);
            }
            mo11614E1(readString, tc0Var4);
            parcel2.writeNoException();
            return true;
        }
    }
}
