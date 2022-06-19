package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzz.class */
public final class dzz extends dkj implements dzx {
    public dzz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final AbstractC2849by mo8122a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC2731a2);
        Parcel m9329a = m9329a(5, m9326y);
        AbstractC2849by m11501a = AbstractBinderC2853cb.m11501a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m11501a;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final AbstractC2858cg mo8121a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC2731a2);
        dkk.m9324a(m9326y, abstractC2731a3);
        Parcel m9329a = m9329a(11, m9326y);
        AbstractC2858cg m11428a = AbstractBinderC2857cf.m11428a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m11428a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [com.google.android.gms.internal.ads.dzg] */
    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final dzg mo8117a(AbstractC2731a abstractC2731a, String str, AbstractC3280ko abstractC3280ko, int i) {
        dzi dziVar;
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(3, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            dziVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            dziVar = queryLocalInterface instanceof dzg ? (dzg) queryLocalInterface : new dzi(readStrongBinder);
        }
        m9329a.recycle();
        return dziVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [com.google.android.gms.internal.ads.dzn] */
    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final dzn mo8120a(AbstractC2731a abstractC2731a, dyd dydVar, String str, int i) {
        dzq dzqVar;
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dydVar);
        m9326y.writeString(str);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(10, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            dzqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            dzqVar = queryLocalInterface instanceof dzn ? (dzn) queryLocalInterface : new dzq(readStrongBinder);
        }
        m9329a.recycle();
        return dzqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [com.google.android.gms.internal.ads.dzn] */
    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final dzn mo8119a(AbstractC2731a abstractC2731a, dyd dydVar, String str, AbstractC3280ko abstractC3280ko, int i) {
        dzq dzqVar;
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dydVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(1, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            dzqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            dzqVar = queryLocalInterface instanceof dzn ? (dzn) queryLocalInterface : new dzq(readStrongBinder);
        }
        m9329a.recycle();
        return dzqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.gms.internal.ads.eae] */
    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final eae mo8123a(AbstractC2731a abstractC2731a, int i) {
        eag eagVar;
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(9, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            eagVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            eagVar = queryLocalInterface instanceof eae ? (eae) queryLocalInterface : new eag(readStrongBinder);
        }
        m9329a.recycle();
        return eagVar;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final AbstractC3371ny mo8124a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(8, m9326y);
        AbstractC3371ny m7384a = AbstractBinderC3370nx.m7384a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m7384a;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: a */
    public final AbstractC3452qy mo8118a(AbstractC2731a abstractC2731a, AbstractC3280ko abstractC3280ko, int i) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(6, m9326y);
        AbstractC3452qy m7289a = AbstractBinderC3451qx.m7289a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m7289a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [com.google.android.gms.internal.ads.dzn] */
    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: b */
    public final dzn mo8115b(AbstractC2731a abstractC2731a, dyd dydVar, String str, AbstractC3280ko abstractC3280ko, int i) {
        dzq dzqVar;
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dydVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(2, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            dzqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            dzqVar = queryLocalInterface instanceof dzn ? (dzn) queryLocalInterface : new dzq(readStrongBinder);
        }
        m9329a.recycle();
        return dzqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.gms.internal.ads.eae] */
    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: b */
    public final eae mo8116b(AbstractC2731a abstractC2731a) {
        eag eagVar;
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(4, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            eagVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            eagVar = queryLocalInterface instanceof eae ? (eae) queryLocalInterface : new eag(readStrongBinder);
        }
        m9329a.recycle();
        return eagVar;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: b */
    public final AbstractC3475ru mo8114b(AbstractC2731a abstractC2731a, String str, AbstractC3280ko abstractC3280ko, int i) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(12, m9326y);
        AbstractC3475ru m7203a = AbstractBinderC3478rx.m7203a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m7203a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [com.google.android.gms.internal.ads.dzn] */
    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: c */
    public final dzn mo8112c(AbstractC2731a abstractC2731a, dyd dydVar, String str, AbstractC3280ko abstractC3280ko, int i) {
        dzq dzqVar;
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dydVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(13, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            dzqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            dzqVar = queryLocalInterface instanceof dzn ? (dzn) queryLocalInterface : new dzq(readStrongBinder);
        }
        m9329a.recycle();
        return dzqVar;
    }

    @Override // com.google.android.gms.internal.ads.dzx
    /* renamed from: c */
    public final AbstractC3383oj mo8113c(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(7, m9326y);
        AbstractC3383oj m7359a = BinderC3386om.m7359a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m7359a;
    }
}
