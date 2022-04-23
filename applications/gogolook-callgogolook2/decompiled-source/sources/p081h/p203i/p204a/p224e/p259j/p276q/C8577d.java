package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzek;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.q.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/d.class */
public final class C8577d extends C8588e1 implements AbstractC8554b {
    public C8577d(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17736a(int i, String str, AbstractC7106b bVar, AbstractC7106b bVar2, AbstractC7106b bVar3) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeInt(i);
        G0.writeString(str);
        C8606g1.m17664a(G0, bVar);
        C8606g1.m17664a(G0, bVar2);
        C8606g1.m17664a(G0, bVar3);
        m17696b(33, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17735a(Bundle bundle, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, bundle);
        G0.writeLong(j);
        m17696b(8, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17734a(Bundle bundle, AbstractC8586e eVar, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, bundle);
        C8606g1.m17664a(G0, eVar);
        G0.writeLong(j);
        m17696b(32, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17733a(AbstractC7106b bVar, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        G0.writeLong(j);
        m17696b(26, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17732a(AbstractC7106b bVar, Bundle bundle, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        C8606g1.m17662a(G0, bundle);
        G0.writeLong(j);
        m17696b(27, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17731a(AbstractC7106b bVar, zzek zzekVar, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        C8606g1.m17662a(G0, zzekVar);
        G0.writeLong(j);
        m17696b(1, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17730a(AbstractC7106b bVar, AbstractC8586e eVar, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        C8606g1.m17664a(G0, eVar);
        G0.writeLong(j);
        m17696b(31, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17729a(AbstractC7106b bVar, String str, String str2, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        G0.writeString(str);
        G0.writeString(str2);
        G0.writeLong(j);
        m17696b(15, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17728a(AbstractC8586e eVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, eVar);
        m17696b(17, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17727a(String str, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeLong(j);
        m17696b(23, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17726a(String str, AbstractC8586e eVar) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        C8606g1.m17664a(G0, eVar);
        m17696b(6, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17725a(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        C8606g1.m17662a(G0, bundle);
        m17696b(9, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17724a(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        C8606g1.m17662a(G0, bundle);
        C8606g1.m17661a(G0, z);
        C8606g1.m17661a(G0, z2);
        G0.writeLong(j);
        m17696b(2, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17723a(String str, String str2, AbstractC7106b bVar, boolean z, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        C8606g1.m17664a(G0, bVar);
        C8606g1.m17661a(G0, z);
        G0.writeLong(j);
        m17696b(4, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17722a(String str, String str2, AbstractC8586e eVar) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        C8606g1.m17664a(G0, eVar);
        m17696b(10, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: a */
    public final void mo17721a(String str, String str2, boolean z, AbstractC8586e eVar) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        C8606g1.m17661a(G0, z);
        C8606g1.m17664a(G0, eVar);
        m17696b(5, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: b */
    public final void mo17720b(AbstractC7106b bVar, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        G0.writeLong(j);
        m17696b(28, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: b */
    public final void mo17719b(AbstractC8586e eVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, eVar);
        m17696b(21, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: b */
    public final void mo17718b(String str, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeLong(j);
        m17696b(24, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: c */
    public final void mo17717c(AbstractC7106b bVar, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        G0.writeLong(j);
        m17696b(25, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: c */
    public final void mo17716c(AbstractC8586e eVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, eVar);
        m17696b(22, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: d */
    public final void mo17715d(AbstractC7106b bVar, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        G0.writeLong(j);
        m17696b(29, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: d */
    public final void mo17714d(AbstractC8586e eVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, eVar);
        m17696b(19, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: e */
    public final void mo17713e(AbstractC7106b bVar, long j) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, bVar);
        G0.writeLong(j);
        m17696b(30, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8554b
    /* renamed from: e */
    public final void mo17712e(AbstractC8586e eVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, eVar);
        m17696b(16, G0);
    }
}
