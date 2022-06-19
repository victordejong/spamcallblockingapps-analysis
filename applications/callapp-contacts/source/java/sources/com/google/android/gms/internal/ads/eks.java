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
        ekk ekkVar;
        C12538eu c12538eu;
        C12543ez c12543ez;
        C12551fg c12551fg;
        C12546fb c12546fb;
        elj eljVar;
        C12554fj c12554fj;
        C12559fo c12559fo;
        C12660jh c12660jh;
        switch (i) {
            case 1:
                eko a = mo14695a();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, a);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    ekkVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    ekkVar = queryLocalInterface instanceof eki ? (eki) queryLocalInterface : new ekk(readStrongBinder);
                }
                mo14692a(ekkVar);
                parcel2.writeNoException();
                return true;
            case 3:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c12538eu = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
                    c12538eu = queryLocalInterface2 instanceof AbstractC12536es ? (AbstractC12536es) queryLocalInterface2 : new C12538eu(readStrongBinder2);
                }
                mo14690a(c12538eu);
                parcel2.writeNoException();
                return true;
            case 4:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c12543ez = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
                    c12543ez = queryLocalInterface3 instanceof AbstractC12541ex ? (AbstractC12541ex) queryLocalInterface3 : new C12543ez(readStrongBinder3);
                }
                mo14689a(c12543ez);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c12551fg = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
                    c12551fg = queryLocalInterface4 instanceof AbstractC12549fe ? (AbstractC12549fe) queryLocalInterface4 : new C12551fg(readStrongBinder4);
                }
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c12546fb = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    c12546fb = queryLocalInterface5 instanceof AbstractC12542ey ? (AbstractC12542ey) queryLocalInterface5 : new C12546fb(readStrongBinder5);
                }
                mo14682a(readString, c12551fg, c12546fb);
                parcel2.writeNoException();
                return true;
            case 6:
                mo14684a((zzaei) dvc.m15675a(parcel, zzaei.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    eljVar = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    eljVar = queryLocalInterface6 instanceof elk ? (elk) queryLocalInterface6 : new elj(readStrongBinder6);
                }
                mo14691a(eljVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    c12554fj = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
                    c12554fj = queryLocalInterface7 instanceof AbstractC12552fh ? (AbstractC12552fh) queryLocalInterface7 : new C12554fj(readStrongBinder7);
                }
                mo14687a(c12554fj, (zzvt) dvc.m15675a(parcel, zzvt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                mo14693a((PublisherAdViewOptions) dvc.m15675a(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    c12559fo = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
                    c12559fo = queryLocalInterface8 instanceof AbstractC12557fm ? (AbstractC12557fm) queryLocalInterface8 : new C12559fo(readStrongBinder8);
                }
                mo14686a(c12559fo);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                mo14683a((zzajy) dvc.m15675a(parcel, zzajy.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 == null) {
                    c12660jh = null;
                } else {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
                    c12660jh = queryLocalInterface9 instanceof AbstractC12658jf ? (AbstractC12658jf) queryLocalInterface9 : new C12660jh(readStrongBinder9);
                }
                mo14685a(c12660jh);
                parcel2.writeNoException();
                return true;
            case 15:
                mo14694a((AdManagerAdViewOptions) dvc.m15675a(parcel, AdManagerAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
