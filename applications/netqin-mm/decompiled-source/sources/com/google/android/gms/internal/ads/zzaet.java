package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaet.class */
public final class zzaet extends NativeAppInstallAd {

    /* renamed from: a */
    public final zzaes f24066a;

    /* renamed from: c */
    public final zzaef f24068c;

    /* renamed from: b */
    public final List<NativeAd.Image> f24067b = new ArrayList();

    /* renamed from: d */
    public final VideoController f24069d = new VideoController();

    public zzaet(zzaes zzaesVar) {
        zzaef zzaefVar;
        zzaee zzaeeVar;
        IBinder iBinder;
        this.f24066a = zzaesVar;
        try {
            List i = zzaesVar.mo14243i();
            if (i != null) {
                for (Object obj : i) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzaeeVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzaeeVar = queryLocalInterface instanceof zzaee ? (zzaee) queryLocalInterface : new zzaeg(iBinder);
                    }
                    if (zzaeeVar != null) {
                        this.f24067b.add(new zzaef(zzaeeVar));
                    }
                }
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
        try {
            zzaee q = this.f24066a.mo14242q();
            zzaefVar = null;
            if (q != null) {
                zzaefVar = new zzaef(q);
            }
        } catch (RemoteException e2) {
            zzbbq.m15855b("", e2);
            zzaefVar = null;
        }
        this.f24068c = zzaefVar;
        try {
            if (this.f24066a.mo14249d() != null) {
                new zzadx(this.f24066a.mo14249d());
            }
        } catch (RemoteException e3) {
            zzbbq.m15855b("", e3);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: b */
    public final CharSequence mo16828b() {
        try {
            return this.f24066a.mo14245g();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: c */
    public final CharSequence mo16827c() {
        try {
            return this.f24066a.mo14246f();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: d */
    public final CharSequence mo16826d() {
        try {
            return this.f24066a.mo14248e();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: e */
    public final NativeAd.Image mo16825e() {
        return this.f24068c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: f */
    public final List<NativeAd.Image> mo16824f() {
        return this.f24067b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: g */
    public final CharSequence mo16823g() {
        try {
            return this.f24066a.mo14241s();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: h */
    public final Double mo16822h() {
        try {
            double starRating = this.f24066a.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: i */
    public final CharSequence mo16821i() {
        try {
            return this.f24066a.mo14253D();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    /* renamed from: j */
    public final VideoController mo16820j() {
        try {
            if (this.f24066a.getVideoController() != null) {
                this.f24069d.m18088a(this.f24066a.getVideoController());
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("Exception occurred while getting video controller", e);
        }
        return this.f24069d;
    }

    /* renamed from: k */
    public final IObjectWrapper mo16818a() {
        try {
            return this.f24066a.mo14240v();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }
}
