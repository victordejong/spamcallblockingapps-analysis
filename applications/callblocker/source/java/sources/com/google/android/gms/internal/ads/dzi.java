package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.p119b.C2266j;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzi.class */
public final class dzi extends dkj implements dzg {
    public dzi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.dzf] */
    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final dzf mo7987a() {
        dzh dzhVar;
        Parcel m9329a = m9329a(1, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            dzhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            dzhVar = queryLocalInterface instanceof dzf ? (dzf) queryLocalInterface : new dzh(readStrongBinder);
        }
        m9329a.recycle();
        return dzhVar;
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7986a(C2266j c2266j) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c2266j);
        m9328b(9, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7985a(C2835bl c2835bl) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c2835bl);
        m9328b(6, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7984a(AbstractC2902cv abstractC2902cv) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2902cv);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7983a(AbstractC2950da abstractC2950da) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2950da);
        m9328b(4, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7982a(AbstractC2999dj abstractC2999dj, dyd dydVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2999dj);
        dkk.m9322a(m9326y, dydVar);
        m9328b(8, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7981a(AbstractC3007do abstractC3007do) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3007do);
        m9328b(10, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7980a(dza dzaVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, dzaVar);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7979a(eac eacVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, eacVar);
        m9328b(7, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7977a(C3171gn c3171gn) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3171gn);
        m9328b(13, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7976a(AbstractC3179gv abstractC3179gv) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3179gv);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7975a(String str, AbstractC2964dg abstractC2964dg, AbstractC2952db abstractC2952db) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC2964dg);
        dkk.m9324a(m9326y, abstractC2952db);
        m9328b(5, m9326y);
    }
}
