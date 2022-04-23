package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcd.class */
public final class bcd extends dp {

    /* renamed from: a  reason: collision with root package name */
    private final bcr f24156a;

    /* renamed from: b  reason: collision with root package name */
    private b f24157b;

    public bcd(bcr bcrVar) {
        this.f24156a = bcrVar;
    }

    private static float b(b bVar) {
        if (bVar == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        Drawable drawable = (Drawable) d.a(bVar);
        float f = 0.0f;
        if (drawable != null) {
            f = 0.0f;
            if (drawable.getIntrinsicWidth() != -1) {
                f = 0.0f;
                if (drawable.getIntrinsicHeight() != -1) {
                    f = drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
                }
            }
        }
        return f;
    }

    private final float g() {
        try {
            return this.f24156a.b().i();
        } catch (RemoteException e) {
            zzd.zzc("Remote exception getting video controller aspect ratio.", e);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final float a() throws RemoteException {
        if (!((Boolean) ekb.e().a(aq.dP)).booleanValue()) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (this.f24156a.z() != BitmapDescriptorFactory.HUE_RED) {
            return this.f24156a.z();
        }
        if (this.f24156a.b() != null) {
            return g();
        }
        b bVar = this.f24157b;
        if (bVar != null) {
            return b(bVar);
        }
        dr g = this.f24156a.g();
        if (g == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float d2 = (g == null || g.d() == -1 || g.e() == -1) ? BitmapDescriptorFactory.HUE_RED : g.d() / g.e();
        return d2 != BitmapDescriptorFactory.HUE_RED ? d2 : b(g.a());
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void a(b bVar) {
        if (((Boolean) ekb.e().a(aq.bX)).booleanValue()) {
            this.f24157b = bVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void a(ff ffVar) {
        if (((Boolean) ekb.e().a(aq.dQ)).booleanValue() && (this.f24156a.b() instanceof aem)) {
            aem aemVar = (aem) this.f24156a.b();
            synchronized (aemVar.f23199b) {
                aemVar.g = ffVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final b b() throws RemoteException {
        b bVar = this.f24157b;
        if (bVar != null) {
            return bVar;
        }
        dr g = this.f24156a.g();
        if (g == null) {
            return null;
        }
        return g.a();
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final float c() throws RemoteException {
        return (((Boolean) ekb.e().a(aq.dQ)).booleanValue() && this.f24156a.b() != null) ? this.f24156a.b().f() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final float d() throws RemoteException {
        return (((Boolean) ekb.e().a(aq.dQ)).booleanValue() && this.f24156a.b() != null) ? this.f24156a.b().g() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final emk e() throws RemoteException {
        if (!((Boolean) ekb.e().a(aq.dQ)).booleanValue()) {
            return null;
        }
        return this.f24156a.b();
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final boolean f() throws RemoteException {
        return ((Boolean) ekb.e().a(aq.dQ)).booleanValue() && this.f24156a.b() != null;
    }
}
