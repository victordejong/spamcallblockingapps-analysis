package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjo;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.z4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/z4.class */
public final class C7479z4 extends C7441w2 implements AbstractC7455x4 {
    public C7479z4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: a */
    public final AbstractC7259h4 mo20458a(AbstractC7106b bVar, String str, AbstractC7226ea eaVar, int i) throws RemoteException {
        AbstractC7259h4 h4Var;
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        G0.writeString(str);
        C7465y2.m20510a(G0, eaVar);
        G0.writeInt(i);
        Parcel a = m20617a(3, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            h4Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            h4Var = queryLocalInterface instanceof AbstractC7259h4 ? (AbstractC7259h4) queryLocalInterface : new C7285j4(readStrongBinder);
        }
        a.recycle();
        return h4Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: a */
    public final AbstractC7322m4 mo20461a(AbstractC7106b bVar, zzjo zzjoVar, String str, int i) throws RemoteException {
        AbstractC7322m4 m4Var;
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20508a(G0, zzjoVar);
        G0.writeString(str);
        G0.writeInt(i);
        Parcel a = m20617a(10, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            m4Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            m4Var = queryLocalInterface instanceof AbstractC7322m4 ? (AbstractC7322m4) queryLocalInterface : new C7346o4(readStrongBinder);
        }
        a.recycle();
        return m4Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: a */
    public final AbstractC7322m4 mo20460a(AbstractC7106b bVar, zzjo zzjoVar, String str, AbstractC7226ea eaVar, int i) throws RemoteException {
        AbstractC7322m4 m4Var;
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20508a(G0, zzjoVar);
        G0.writeString(str);
        C7465y2.m20510a(G0, eaVar);
        G0.writeInt(i);
        Parcel a = m20617a(2, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            m4Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            m4Var = queryLocalInterface instanceof AbstractC7322m4 ? (AbstractC7322m4) queryLocalInterface : new C7346o4(readStrongBinder);
        }
        a.recycle();
        return m4Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: a */
    public final AbstractC7446w7 mo20459a(AbstractC7106b bVar, AbstractC7106b bVar2) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20510a(G0, bVar2);
        Parcel a = m20617a(5, G0);
        AbstractC7446w7 a2 = AbstractBinderC7458x7.m20531a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: b */
    public final AbstractC7322m4 mo20457b(AbstractC7106b bVar, zzjo zzjoVar, String str, AbstractC7226ea eaVar, int i) throws RemoteException {
        AbstractC7322m4 m4Var;
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20508a(G0, zzjoVar);
        G0.writeString(str);
        C7465y2.m20510a(G0, eaVar);
        G0.writeInt(i);
        Parcel a = m20617a(1, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            m4Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            m4Var = queryLocalInterface instanceof AbstractC7322m4 ? (AbstractC7322m4) queryLocalInterface : new C7346o4(readStrongBinder);
        }
        a.recycle();
        return m4Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: b */
    public final AbstractC7415u0 mo20456b(AbstractC7106b bVar, AbstractC7226ea eaVar, int i) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20510a(G0, eaVar);
        G0.writeInt(i);
        Parcel a = m20617a(6, G0);
        AbstractC7415u0 a2 = AbstractBinderC7427v0.m20642a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: c */
    public final AbstractC7185b8 mo20455c(AbstractC7106b bVar, AbstractC7106b bVar2, AbstractC7106b bVar3) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20510a(G0, bVar2);
        C7465y2.m20510a(G0, bVar3);
        Parcel a = m20617a(11, G0);
        AbstractC7185b8 a2 = AbstractBinderC7198c8.m20965a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: d */
    public final AbstractC7208d5 mo20454d(AbstractC7106b bVar, int i) throws RemoteException {
        AbstractC7208d5 d5Var;
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        G0.writeInt(i);
        Parcel a = m20617a(9, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            d5Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            d5Var = queryLocalInterface instanceof AbstractC7208d5 ? (AbstractC7208d5) queryLocalInterface : new C7234f5(readStrongBinder);
        }
        a.recycle();
        return d5Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7455x4
    /* renamed from: i */
    public final AbstractC7164a0 mo20453i(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        Parcel a = m20617a(8, G0);
        AbstractC7164a0 a2 = AbstractBinderC7177b0.m20989a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
