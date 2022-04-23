package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxb.class */
public final class zzxb extends zzgu implements zzwz {
    public zzxb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: O0 */
    public final zzwu mo10983O0() throws RemoteException {
        zzwu zzwuVar;
        Parcel a = m12085a(1, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzwuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzwuVar = queryLocalInterface instanceof zzwu ? (zzwu) queryLocalInterface : new zzww(readStrongBinder);
        }
        a.recycle();
        return zzwuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10982a(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, publisherAdViewOptions);
        m12084b(9, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10981a(zzadu zzaduVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzaduVar);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10980a(zzafe zzafeVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzafeVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10979a(zzaff zzaffVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaffVar);
        m12084b(4, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10978a(zzafs zzafsVar, zzvn zzvnVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzafsVar);
        zzgw.m12079a(W, zzvnVar);
        m12084b(8, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10977a(zzaft zzaftVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaftVar);
        m12084b(10, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10976a(zzajc zzajcVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzajcVar);
        m12084b(13, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10975a(zzajk zzajkVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzajkVar);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10974a(zzwt zzwtVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzwtVar);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10972a(String str, zzafl zzaflVar, zzafk zzafkVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        zzgw.m12081a(W, zzaflVar);
        zzgw.m12081a(W, zzafkVar);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: b */
    public final void mo10971b(zzxq zzxqVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzxqVar);
        m12084b(7, W);
    }
}
