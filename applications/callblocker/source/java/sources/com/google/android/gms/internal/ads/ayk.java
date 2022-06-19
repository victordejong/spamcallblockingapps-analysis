package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ayk.class */
public final class ayk extends AbstractBinderC2842bs {

    /* renamed from: a */
    private final ayx f10596a;

    /* renamed from: b */
    private AbstractC2731a f10597b;

    public ayk(ayx ayxVar) {
        this.f10596a = ayxVar;
    }

    /* renamed from: b */
    private static float m12326b(AbstractC2731a abstractC2731a) {
        float intrinsicWidth;
        if (abstractC2731a == null) {
            intrinsicWidth = 0.0f;
        } else {
            Drawable drawable = (Drawable) BinderC2734b.m13795a(abstractC2731a);
            intrinsicWidth = (drawable == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) ? 0.0f : drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        }
        return intrinsicWidth;
    }

    /* renamed from: g */
    private final float m12325g() {
        float f;
        try {
            f = this.f10596a.m12263b().mo7648i();
        } catch (RemoteException e) {
            C3556uu.m6748c("Remote exception getting video controller aspect ratio.", e);
            f = 0.0f;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: a */
    public final float mo11603a() {
        float f;
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16530dd)).booleanValue()) {
            f = 0.0f;
        } else if (this.f10596a.m12231z() != 0.0f) {
            f = this.f10596a.m12231z();
        } else if (this.f10596a.m12263b() != null) {
            f = m12325g();
        } else if (this.f10597b != null) {
            f = m12326b(this.f10597b);
        } else {
            AbstractC2844bu m12250g = this.f10596a.m12250g();
            if (m12250g == null) {
                f = 0.0f;
            } else {
                float mo11581d = (m12250g == null || m12250g.mo11581d() == -1 || m12250g.mo11580e() == -1) ? 0.0f : m12250g.mo11581d() / m12250g.mo11580e();
                f = mo11581d;
                if (mo11581d == 0.0f) {
                    f = m12326b(m12250g.mo11584a());
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: a */
    public final void mo11602a(AbstractC2731a abstractC2731a) {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16444bx)).booleanValue()) {
            this.f10597b = abstractC2731a;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: a */
    public final void mo11601a(AbstractC2997dh abstractC2997dh) {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16531de)).booleanValue() && (this.f10596a.m12263b() instanceof adn)) {
            ((adn) this.f10596a.m12263b()).m13568a(abstractC2997dh);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: b */
    public final AbstractC2731a mo11600b() {
        AbstractC2731a mo11584a;
        if (this.f10597b != null) {
            mo11584a = this.f10597b;
        } else {
            AbstractC2844bu m12250g = this.f10596a.m12250g();
            mo11584a = m12250g == null ? null : m12250g.mo11584a();
        }
        return mo11584a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: c */
    public final float mo11599c() {
        return !((Boolean) dyx.m8158e().m7876a(edi.f16531de)).booleanValue() ? 0.0f : this.f10596a.m12263b() != null ? this.f10596a.m12263b().mo7651f() : 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: d */
    public final float mo11598d() {
        return !((Boolean) dyx.m8158e().m7876a(edi.f16531de)).booleanValue() ? 0.0f : this.f10596a.m12263b() != null ? this.f10596a.m12263b().mo7650g() : 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: e */
    public final eba mo11597e() {
        return !((Boolean) dyx.m8158e().m7876a(edi.f16531de)).booleanValue() ? null : this.f10596a.m12263b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: f */
    public final boolean mo11596f() {
        return !((Boolean) dyx.m8158e().m7876a(edi.f16531de)).booleanValue() ? false : this.f10596a.m12263b() != null;
    }
}
