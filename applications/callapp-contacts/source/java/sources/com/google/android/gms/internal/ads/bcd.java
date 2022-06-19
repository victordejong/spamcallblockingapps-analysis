package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcd.class */
public final class bcd extends AbstractBinderC12388dp {

    /* renamed from: a */
    private final bcr f43517a;

    /* renamed from: b */
    private AbstractC12126b f43518b;

    public bcd(bcr bcrVar) {
        this.f43517a = bcrVar;
    }

    /* renamed from: b */
    private static float m18237b(AbstractC12126b abstractC12126b) {
        if (abstractC12126b == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        Drawable drawable = (Drawable) BinderC12129d.m18980a(abstractC12126b);
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

    /* renamed from: g */
    private final float m18236g() {
        try {
            return this.f43517a.m18178b().mo14456i();
        } catch (RemoteException e) {
            zzd.zzc("Remote exception getting video controller aspect ratio.", e);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: a */
    public final float mo15788a() throws RemoteException {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42812dP)).booleanValue()) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (this.f43517a.m18146z() != BitmapDescriptorFactory.HUE_RED) {
            return this.f43517a.m18146z();
        }
        if (this.f43517a.m18178b() != null) {
            return m18236g();
        }
        AbstractC12126b abstractC12126b = this.f43518b;
        if (abstractC12126b != null) {
            return m18237b(abstractC12126b);
        }
        AbstractC12394dr m18165g = this.f43517a.m18165g();
        if (m18165g == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float mo15749d = (m18165g == null || m18165g.mo15749d() == -1 || m18165g.mo15748e() == -1) ? 0.0f : m18165g.mo15749d() / m18165g.mo15748e();
        return mo15749d != BitmapDescriptorFactory.HUE_RED ? mo15749d : m18237b(m18165g.mo15752a());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: a */
    public final void mo15787a(AbstractC12126b abstractC12126b) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42714bX)).booleanValue()) {
            this.f43518b = abstractC12126b;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: a */
    public final void mo15786a(AbstractC12550ff abstractC12550ff) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42813dQ)).booleanValue() && (this.f43517a.m18178b() instanceof aem)) {
            aem aemVar = (aem) this.f43517a.m18178b();
            synchronized (aemVar.f40118b) {
                aemVar.f40123g = abstractC12550ff;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: b */
    public final AbstractC12126b mo15785b() throws RemoteException {
        AbstractC12126b abstractC12126b = this.f43518b;
        if (abstractC12126b != null) {
            return abstractC12126b;
        }
        AbstractC12394dr m18165g = this.f43517a.m18165g();
        if (m18165g != null) {
            return m18165g.mo15752a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: c */
    public final float mo15784c() throws RemoteException {
        return (((Boolean) ekb.m14831e().m18571a(C12187aq.f42813dQ)).booleanValue() && this.f43517a.m18178b() != null) ? this.f43517a.m18178b().mo14459f() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: d */
    public final float mo15783d() throws RemoteException {
        return (((Boolean) ekb.m14831e().m18571a(C12187aq.f42813dQ)).booleanValue() && this.f43517a.m18178b() != null) ? this.f43517a.m18178b().mo14458g() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: e */
    public final emk mo15782e() throws RemoteException {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42813dQ)).booleanValue()) {
            return null;
        }
        return this.f43517a.m18178b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: f */
    public final boolean mo15781f() throws RemoteException {
        return ((Boolean) ekb.m14831e().m18571a(C12187aq.f42813dQ)).booleanValue() && this.f43517a.m18178b() != null;
    }
}
