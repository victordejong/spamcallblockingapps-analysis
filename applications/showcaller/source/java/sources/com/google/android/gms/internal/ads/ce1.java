package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ce1.class */
public final class ce1 extends AbstractBinderC6384cz {

    /* renamed from: d */
    private final re1 f21194d;

    /* renamed from: e */
    private AbstractC6253a f21195e;

    public ce1(re1 re1Var) {
        this.f21194d = re1Var;
    }

    /* renamed from: E6 */
    private static float m16078E6(AbstractC6253a abstractC6253a) {
        if (abstractC6253a == null) {
            return 0.0f;
        }
        Drawable drawable = (Drawable) BinderC6255b.m16745J0(abstractC6253a);
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

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    /* renamed from: N2 */
    public final void mo15650N2(n00 n00Var) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25448B4)).booleanValue() && (this.f21194d.m11511e0() instanceof ro0)) {
            ((ro0) this.f21194d.m11511e0()).m11358K6(n00Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    /* renamed from: a */
    public final float mo15649a() {
        float f;
        float f2 = 0.0f;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25440A4)).booleanValue()) {
            return 0.0f;
        }
        if (this.f21194d.m11490w() != 0.0f) {
            return this.f21194d.m11490w();
        }
        if (this.f21194d.m11511e0() != null) {
            try {
                f2 = this.f21194d.m11511e0().mo11348j();
            } catch (RemoteException e) {
                ei0.m15466d("Remote exception getting video controller aspect ratio.", e);
            }
            return f2;
        }
        AbstractC6253a abstractC6253a = this.f21195e;
        if (abstractC6253a != null) {
            f = m16078E6(abstractC6253a);
        } else {
            AbstractC6533gz m11518b = this.f21194d.m11518b();
            if (m11518b == null) {
                f = 0.0f;
            } else {
                f = (m11518b.mo11258a() == -1 || m11518b.mo11255d() == -1) ? 0.0f : m11518b.mo11258a() / m11518b.mo11255d();
                if (f == 0.0f) {
                    return m16078E6(m11518b.mo11257b());
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    /* renamed from: f */
    public final float mo15648f() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25448B4)).booleanValue() && this.f21194d.m11511e0() != null) {
            return this.f21194d.m11511e0().mo11351g();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    /* renamed from: g */
    public final AbstractC6640ju mo15647g() {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25448B4)).booleanValue()) {
            return null;
        }
        return this.f21194d.m11511e0();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    /* renamed from: h */
    public final boolean mo15646h() {
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25448B4)).booleanValue() && this.f21194d.m11511e0() != null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    public final void zzf(AbstractC6253a abstractC6253a) {
        this.f21195e = abstractC6253a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    public final AbstractC6253a zzg() {
        AbstractC6253a abstractC6253a = this.f21195e;
        if (abstractC6253a != null) {
            return abstractC6253a;
        }
        AbstractC6533gz m11518b = this.f21194d.m11518b();
        if (m11518b != null) {
            return m11518b.mo11257b();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    public final float zzi() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25448B4)).booleanValue() && this.f21194d.m11511e0() != null) {
            return this.f21194d.m11511e0().mo11349h();
        }
        return 0.0f;
    }
}
