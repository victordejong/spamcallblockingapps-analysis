package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eks.class */
public abstract class eks extends dvd implements ekp {
    public eks() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        fe feVar;
        fm fmVar = null;
        fh fhVar = null;
        elk elkVar = null;
        ey eyVar = null;
        ex exVar = null;
        es esVar = null;
        eki ekiVar = null;
        jf jfVar = null;
        switch (i) {
            case 1:
                eko a2 = a();
                parcel2.writeNoException();
                dvc.a(parcel2, a2);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    ekiVar = queryLocalInterface instanceof eki ? (eki) queryLocalInterface : new ekk(readStrongBinder);
                }
                a(ekiVar);
                parcel2.writeNoException();
                return true;
            case 3:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
                    esVar = queryLocalInterface2 instanceof es ? (es) queryLocalInterface2 : new eu(readStrongBinder2);
                }
                a(esVar);
                parcel2.writeNoException();
                return true;
            case 4:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
                    exVar = queryLocalInterface3 instanceof ex ? (ex) queryLocalInterface3 : new ez(readStrongBinder3);
                }
                a(exVar);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    feVar = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
                    feVar = queryLocalInterface4 instanceof fe ? (fe) queryLocalInterface4 : new fg(readStrongBinder4);
                }
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    eyVar = queryLocalInterface5 instanceof ey ? (ey) queryLocalInterface5 : new fb(readStrongBinder5);
                }
                a(readString, feVar, eyVar);
                parcel2.writeNoException();
                return true;
            case 6:
                a((zzaei) dvc.a(parcel, zzaei.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    elkVar = queryLocalInterface6 instanceof elk ? (elk) queryLocalInterface6 : new elj(readStrongBinder6);
                }
                a(elkVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
                    fhVar = queryLocalInterface7 instanceof fh ? (fh) queryLocalInterface7 : new fj(readStrongBinder7);
                }
                a(fhVar, (zzvt) dvc.a(parcel, zzvt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                a((PublisherAdViewOptions) dvc.a(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
                    fmVar = queryLocalInterface8 instanceof fm ? (fm) queryLocalInterface8 : new fo(readStrongBinder8);
                }
                a(fmVar);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                a((zzajy) dvc.a(parcel, zzajy.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
                    jfVar = queryLocalInterface9 instanceof jf ? (jf) queryLocalInterface9 : new jh(readStrongBinder9);
                }
                a(jfVar);
                parcel2.writeNoException();
                return true;
            case 15:
                a((AdManagerAdViewOptions) dvc.a(parcel, AdManagerAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
