package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagf.class */
public final class zzagf extends UnifiedNativeAd {

    /* renamed from: a */
    public final zzage f24076a;

    /* renamed from: c */
    public final zzaef f24078c;

    /* renamed from: b */
    public final List<NativeAd.Image> f24077b = new ArrayList();

    /* renamed from: d */
    public final VideoController f24079d = new VideoController();

    /* renamed from: e */
    public final List<MuteThisAdReason> f24080e = new ArrayList();

    public zzagf(zzage zzageVar) {
        zzaef zzaefVar;
        zzaee zzaeeVar;
        IBinder iBinder;
        this.f24076a = zzageVar;
        try {
            List i = zzageVar.mo14187i();
            if (i != null) {
                for (Object obj : i) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzaeeVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzaeeVar = queryLocalInterface instanceof zzaee ? (zzaee) queryLocalInterface : new zzaeg(iBinder);
                    }
                    if (zzaeeVar != null) {
                        this.f24077b.add(new zzaef(zzaeeVar));
                    }
                }
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
        try {
            List A1 = this.f24076a.mo14207A1();
            if (A1 != null) {
                for (Object obj2 : A1) {
                    zzyd a = obj2 instanceof IBinder ? zzyc.m11121a((IBinder) obj2) : null;
                    if (a != null) {
                        this.f24080e.add(new zzye(a));
                    }
                }
            }
        } catch (RemoteException e2) {
            zzbbq.m15855b("", e2);
        }
        try {
            zzaee q = this.f24076a.mo14185q();
            zzaefVar = null;
            if (q != null) {
                zzaefVar = new zzaef(q);
            }
        } catch (RemoteException e3) {
            zzbbq.m15855b("", e3);
            zzaefVar = null;
        }
        this.f24078c = zzaefVar;
        try {
            if (this.f24076a.mo14193d() != null) {
                new zzadx(this.f24076a.mo14193d());
            }
        } catch (RemoteException e4) {
            zzbbq.m15855b("", e4);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: a */
    public final void mo16794a() {
        try {
            this.f24076a.destroy();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: b */
    public final String mo16793b() {
        try {
            return this.f24076a.mo14206C();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: c */
    public final String mo16792c() {
        try {
            return this.f24076a.mo14189g();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: d */
    public final String mo16791d() {
        try {
            return this.f24076a.mo14190f();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: e */
    public final String mo16790e() {
        try {
            return this.f24076a.mo14192e();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: f */
    public final NativeAd.Image mo16789f() {
        return this.f24078c;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: g */
    public final List<NativeAd.Image> mo16788g() {
        return this.f24077b;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: h */
    public final String mo16787h() {
        try {
            return this.f24076a.mo14184s();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: i */
    public final Double mo16786i() {
        try {
            double starRating = this.f24076a.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: j */
    public final String mo16785j() {
        try {
            return this.f24076a.mo14205D();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: k */
    public final VideoController mo16784k() {
        try {
            if (this.f24076a.getVideoController() != null) {
                this.f24079d.m18088a(this.f24076a.getVideoController());
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("Exception occurred while getting video controller", e);
        }
        return this.f24079d;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* renamed from: m */
    public final Object mo16782m() {
        try {
            IObjectWrapper h = this.f24076a.mo14188h();
            if (h != null) {
                return ObjectWrapper.m17021Q(h);
            }
            return null;
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    /* renamed from: n */
    public final IObjectWrapper mo16783l() {
        try {
            return this.f24076a.mo14181v();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }
}
