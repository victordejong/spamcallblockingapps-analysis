package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzh;
import com.google.android.gms.measurement.internal.zzl;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p259j.p276q.C8588e1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8606g1;
/* renamed from: h.i.a.e.m.b.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/h.class */
public final class C8985h extends C8588e1 implements AbstractC8973f {
    public C8985h(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final String mo16143a(zzh zzhVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzhVar);
        Parcel a = m17697a(11, G0);
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final List<zzfh> mo16142a(zzh zzhVar, boolean z) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzhVar);
        C8606g1.m17661a(G0, z);
        Parcel a = m17697a(7, G0);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzfh.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final List<zzl> mo16137a(String str, String str2, zzh zzhVar) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        C8606g1.m17662a(G0, zzhVar);
        Parcel a = m17697a(16, G0);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzl.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final List<zzl> mo16136a(String str, String str2, String str3) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        G0.writeString(str3);
        Parcel a = m17697a(17, G0);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzl.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final List<zzfh> mo16135a(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        G0.writeString(str3);
        C8606g1.m17661a(G0, z);
        Parcel a = m17697a(15, G0);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzfh.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final List<zzfh> mo16134a(String str, String str2, boolean z, zzh zzhVar) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeString(str);
        G0.writeString(str2);
        C8606g1.m17661a(G0, z);
        C8606g1.m17662a(G0, zzhVar);
        Parcel a = m17697a(14, G0);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzfh.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final void mo16148a(long j, String str, String str2, String str3) throws RemoteException {
        Parcel G0 = m17698G0();
        G0.writeLong(j);
        G0.writeString(str);
        G0.writeString(str2);
        G0.writeString(str3);
        m17696b(10, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final void mo16147a(zzad zzadVar, zzh zzhVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzadVar);
        C8606g1.m17662a(G0, zzhVar);
        m17696b(1, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final void mo16145a(zzad zzadVar, String str, String str2) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzadVar);
        G0.writeString(str);
        G0.writeString(str2);
        m17696b(5, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final void mo16144a(zzfh zzfhVar, zzh zzhVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzfhVar);
        C8606g1.m17662a(G0, zzhVar);
        m17696b(2, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final void mo16141a(zzl zzlVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzlVar);
        m17696b(13, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: a */
    public final void mo16140a(zzl zzlVar, zzh zzhVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzlVar);
        C8606g1.m17662a(G0, zzhVar);
        m17696b(12, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: c */
    public final void mo16129c(zzh zzhVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzhVar);
        m17696b(4, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    /* renamed from: d */
    public final void mo16128d(zzh zzhVar) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, zzhVar);
        m17696b(6, G0);
    }
}
