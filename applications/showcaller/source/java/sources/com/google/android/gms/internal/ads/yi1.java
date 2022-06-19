package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.Arrays;
import java.util.List;
import p020b.p036e.C1489a;
import p020b.p036e.C1502g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yi1.class */
public final class yi1 extends AbstractBinderC7200yz {

    /* renamed from: d */
    private final Context f32517d;

    /* renamed from: e */
    private final re1 f32518e;

    /* renamed from: f */
    private rf1 f32519f;

    /* renamed from: g */
    private me1 f32520g;

    public yi1(Context context, re1 re1Var, rf1 rf1Var, me1 me1Var) {
        this.f32517d = context;
        this.f32518e = re1Var;
        this.f32519f = rf1Var;
        this.f32520g = me1Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: B */
    public final String mo8139B(String str) {
        return this.f32518e.m11488y().get(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: H0 */
    public final void mo8138H0(String str) {
        me1 me1Var = this.f32520g;
        if (me1Var != null) {
            me1Var.m13255A(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: S */
    public final boolean mo8137S(AbstractC6253a abstractC6253a) {
        rf1 rf1Var;
        Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
        if ((m16745J0 instanceof ViewGroup) && (rf1Var = this.f32519f) != null && rf1Var.m11480d((ViewGroup) m16745J0)) {
            this.f32518e.m11495r().mo7897m0(new xi1(this));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: f */
    public final String mo8136f() {
        return this.f32518e.m11496q();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: g */
    public final void mo8135g() {
        me1 me1Var = this.f32520g;
        if (me1Var != null) {
            me1Var.m13254B();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: h */
    public final AbstractC6640ju mo8134h() {
        return this.f32518e.m11511e0();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: i */
    public final void mo8133i() {
        me1 me1Var = this.f32520g;
        if (me1Var != null) {
            me1Var.mo9020b();
        }
        this.f32520g = null;
        this.f32519f = null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: j */
    public final AbstractC6253a mo8132j() {
        return BinderC6255b.m16744m2(this.f32517d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: l */
    public final boolean mo8131l() {
        AbstractC6253a m11492u = this.f32518e.m11492u();
        if (m11492u == null) {
            ei0.m15464f("Trying to start OMID session before creation.");
            return false;
        }
        C5667s.m18145s().zzf(m11492u);
        if (this.f32518e.m11493t() == null) {
            return true;
        }
        this.f32518e.m11493t().mo7959D0("onSdkLoaded", new C1489a());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: n */
    public final boolean mo8130n() {
        me1 me1Var = this.f32520g;
        return (me1Var == null || me1Var.m13231m()) && this.f32518e.m11493t() != null && this.f32518e.m11495r() == null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: p */
    public final AbstractC6533gz mo8129p(String str) {
        return this.f32518e.m11491v().get(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: s */
    public final void mo8128s() {
        String m11489x = this.f32518e.m11489x();
        if ("Google".equals(m11489x)) {
            ei0.m15464f("Illegal argument specified for omid partner name.");
        } else if (TextUtils.isEmpty(m11489x)) {
            ei0.m15464f("Not starting OMID session. OM partner name has not been configured.");
        } else {
            me1 me1Var = this.f32520g;
            if (me1Var == null) {
                return;
            }
            me1Var.m13232l(m11489x, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: x2 */
    public final void mo8127x2(AbstractC6253a abstractC6253a) {
        me1 me1Var;
        Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
        if (!(m16745J0 instanceof View) || this.f32518e.m11492u() == null || (me1Var = this.f32520g) == null) {
            return;
        }
        me1Var.m13230n((View) m16745J0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    public final List<String> zzg() {
        int i;
        int i2;
        C1502g<String, BinderC6940ry> m11491v = this.f32518e.m11491v();
        C1502g<String, String> m11488y = this.f32518e.m11488y();
        String[] strArr = new String[m11491v.size() + m11488y.size()];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i3 < m11491v.size()) {
                strArr[i4] = m11491v.m29910i(i3);
                i3++;
                i4++;
            }
        }
        while (i < m11488y.size()) {
            strArr[i2] = m11488y.m29910i(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }
}
