package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdv.class */
public final class zzcdv extends zzaec {

    /* renamed from: a */
    public final zzcei f25796a;

    /* renamed from: b */
    public IObjectWrapper f25797b;

    public zzcdv(zzcei zzceiVar) {
        this.f25796a = zzceiVar;
    }

    /* renamed from: Q */
    public static float m14771Q(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return 0.0f;
        }
        Drawable drawable = (Drawable) ObjectWrapper.m17021Q(iObjectWrapper);
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

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: I0 */
    public final boolean mo14772I0() throws RemoteException {
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23854m3)).booleanValue() && this.f25796a.m14683n() != null;
    }

    /* renamed from: Q1 */
    public final float m14770Q1() {
        try {
            return this.f25796a.m14683n().mo11108X();
        } catch (RemoteException e) {
            zzbbq.m15855b("Remote exception getting video controller aspect ratio.", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: X */
    public final float mo14769X() throws RemoteException {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23848l3)).booleanValue()) {
            return 0.0f;
        }
        if (this.f25796a.m14688i() != 0.0f) {
            return this.f25796a.m14688i();
        }
        if (this.f25796a.m14683n() != null) {
            return m14770Q1();
        }
        IObjectWrapper iObjectWrapper = this.f25797b;
        if (iObjectWrapper != null) {
            return m14771Q(iObjectWrapper);
        }
        zzaee q = this.f25796a.m14680q();
        if (q == null) {
            return 0.0f;
        }
        float width = (q == null || q.getWidth() == -1 || q.getHeight() == -1) ? 0.0f : q.getWidth() / q.getHeight();
        return width != 0.0f ? width : m14771Q(q.mo16833U1());
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: a */
    public final void mo14768a(zzafq zzafqVar) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23854m3)).booleanValue() && (this.f25796a.m14683n() instanceof zzbhd)) {
            ((zzbhd) this.f25796a.m14683n()).m15536a(zzafqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    public final float getDuration() throws RemoteException {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23854m3)).booleanValue() && this.f25796a.m14683n() != null) {
            return this.f25796a.m14683n().getDuration();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    public final zzyo getVideoController() throws RemoteException {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23854m3)).booleanValue()) {
            return null;
        }
        return this.f25796a.m14683n();
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: i0 */
    public final float mo14767i0() throws RemoteException {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23854m3)).booleanValue() && this.f25796a.m14683n() != null) {
            return this.f25796a.m14683n().mo11104i0();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: j */
    public final void mo14766j(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23670E1)).booleanValue()) {
            this.f25797b = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: l1 */
    public final IObjectWrapper mo14765l1() throws RemoteException {
        IObjectWrapper iObjectWrapper = this.f25797b;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzaee q = this.f25796a.m14680q();
        if (q == null) {
            return null;
        }
        return q.mo16833U1();
    }
}
