package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.AbstractC5607b;
import com.google.android.gms.ads.mediation.AbstractC5791v;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b90.class */
public final class b90 extends g80 {

    /* renamed from: d */
    private final AbstractC5791v f20314d;

    public b90(AbstractC5791v abstractC5791v) {
        this.f20314d = abstractC5791v;
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: K */
    public final float mo14744K() {
        return this.f20314d.m17881e();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: a */
    public final String mo14743a() {
        return this.f20314d.m17878h();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: d */
    public final List mo14742d() {
        List<AbstractC5607b> m17876j = this.f20314d.m17876j();
        ArrayList arrayList = new ArrayList();
        if (m17876j != null) {
            for (AbstractC5607b abstractC5607b : m17876j) {
                arrayList.add(new BinderC6940ry(abstractC5607b.mo14525a(), abstractC5607b.mo14523c(), abstractC5607b.mo14524b(), abstractC5607b.mo14522d(), abstractC5607b.mo14521e()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: f */
    public final AbstractC6533gz mo14741f() {
        AbstractC5607b m17877i = this.f20314d.m17877i();
        if (m17877i != null) {
            return new BinderC6940ry(m17877i.mo14525a(), m17877i.mo14523c(), m17877i.mo14524b(), m17877i.mo14522d(), m17877i.mo14521e());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: g */
    public final String mo14740g() {
        return this.f20314d.m17884b();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: g0 */
    public final void mo14739g0(AbstractC6253a abstractC6253a) {
        this.f20314d.m17869q((View) BinderC6255b.m16745J0(abstractC6253a));
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: h */
    public final double mo14738h() {
        if (this.f20314d.m17871o() != null) {
            return this.f20314d.m17871o().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: i */
    public final String mo14737i() {
        return this.f20314d.m17870p();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: j */
    public final String mo14736j() {
        return this.f20314d.m17872n();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: k */
    public final AbstractC6253a mo14735k() {
        View m17887J = this.f20314d.m17887J();
        if (m17887J == null) {
            return null;
        }
        return BinderC6255b.m16744m2(m17887J);
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: k2 */
    public final void mo14734k2(AbstractC6253a abstractC6253a) {
        this.f20314d.m17891F((View) BinderC6255b.m16745J0(abstractC6253a));
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: l */
    public final AbstractC6253a mo14733l() {
        View m17885a = this.f20314d.m17885a();
        if (m17885a == null) {
            return null;
        }
        return BinderC6255b.m16744m2(m17885a);
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: m */
    public final AbstractC6640ju mo14732m() {
        if (this.f20314d.m17888I() != null) {
            return this.f20314d.m17888I().m17766c();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: n */
    public final AbstractC7199yy mo14731n() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: o */
    public final Bundle mo14730o() {
        return this.f20314d.m17879g();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: q */
    public final float mo14729q() {
        return this.f20314d.m17875k();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: s */
    public final AbstractC6253a mo14728s() {
        Object m17886K = this.f20314d.m17886K();
        if (m17886K == null) {
            return null;
        }
        return BinderC6255b.m16744m2(m17886K);
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: u */
    public final float mo14727u() {
        return this.f20314d.m17880f();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: w */
    public final void mo14726w() {
        this.f20314d.m17867s();
    }

    @Override // com.google.android.gms.internal.ads.h80
    /* renamed from: y1 */
    public final void mo14725y1(AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2, AbstractC6253a abstractC6253a3) {
        this.f20314d.mo17892E((View) BinderC6255b.m16745J0(abstractC6253a), (HashMap) BinderC6255b.m16745J0(abstractC6253a2), (HashMap) BinderC6255b.m16745J0(abstractC6253a3));
    }

    @Override // com.google.android.gms.internal.ads.h80
    public final String zzg() {
        return this.f20314d.m17883c();
    }

    @Override // com.google.android.gms.internal.ads.h80
    public final String zzi() {
        return this.f20314d.m17882d();
    }

    @Override // com.google.android.gms.internal.ads.h80
    public final boolean zzt() {
        return this.f20314d.m17873m();
    }

    @Override // com.google.android.gms.internal.ads.h80
    public final boolean zzu() {
        return this.f20314d.m17874l();
    }
}
