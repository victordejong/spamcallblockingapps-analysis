package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzatw;
import com.google.android.gms.internal.ads.zzczn;
import com.google.android.gms.internal.ads.zzczr;
import com.google.android.gms.internal.ads.zzczs;
import com.google.android.gms.internal.ads.zzdmc;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzvp;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3951qf;
import p131c.p161d.p170b.p224d.p252g.p253a.C3353af;
import p131c.p161d.p170b.p224d.p252g.p253a.C3469df;
import p131c.p161d.p170b.p224d.p252g.p253a.C3506ef;
import p131c.p161d.p170b.p224d.p252g.p253a.C3543ff;
import p131c.p161d.p170b.p224d.p252g.p253a.C3580gf;
import p131c.p161d.p170b.p224d.p252g.p253a.C3617hf;
import p131c.p161d.p170b.p224d.p252g.p253a.C3692jf;
import p131c.p161d.p170b.p224d.p252g.p253a.C3729kf;
import p131c.p161d.p170b.p224d.p252g.p253a.C3766lf;
import p131c.p161d.p170b.p224d.p252g.p253a.C3803mf;
import p131c.p161d.p170b.p224d.p252g.p253a.C4064te;
import p131c.p161d.p170b.p224d.p252g.p253a.C4101ue;
import p131c.p161d.p170b.p224d.p252g.p253a.C4138ve;
import p131c.p161d.p170b.p224d.p252g.p253a.C4175we;
import p131c.p161d.p170b.p224d.p252g.p253a.C4212xe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwv.class */
public final class zzbwv extends AdMetadataListener implements AppEventListener, zzbuh, zzbuv, zzbuz, zzbwb, zzbwl, zzux {

    /* renamed from: a */
    public final zzbxq f25585a = new zzbxq(this);

    /* renamed from: b */
    public zzczs f25586b;

    /* renamed from: c */
    public zzczp f25587c;

    /* renamed from: d */
    public zzczr f25588d;

    /* renamed from: e */
    public zzczn f25589e;

    /* renamed from: f */
    public zzdkc f25590f;

    /* renamed from: g */
    public zzdmc f25591g;

    /* renamed from: a */
    public static <T> void m14969a(T t, AbstractC3951qf<T> qfVar) {
        if (t != null) {
            qfVar.mo26007a(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: A */
    public final void mo13512A() {
        m14969a(this.f25586b, C3543ff.f12964a);
        m14969a(this.f25591g, C3617hf.f13459a);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: H */
    public final void mo13511H() {
        m14969a(this.f25586b, C3803mf.f14169a);
        m14969a(this.f25591g, C3766lf.f13965a);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        m14969a(this.f25586b, C3506ef.f12838a);
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    /* renamed from: T0 */
    public final void mo13535T0() {
        m14969a(this.f25590f, C3469df.f12740a);
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    /* renamed from: a */
    public final void mo13510a() {
        m14969a(this.f25591g, C3580gf.f13201a);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: a */
    public final void mo13508a(final zzatw zzatwVar, final String str, final String str2) {
        m14969a(this.f25586b, new AbstractC3951qf(zzatwVar, str, str2) { // from class: c.d.b.d.g.a.of
            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3951qf
            /* renamed from: a */
            public final void mo26007a(Object obj) {
                zzczs zzczsVar = (zzczs) obj;
            }
        });
        m14969a(this.f25591g, new AbstractC3951qf(zzatwVar, str, str2) { // from class: c.d.b.d.g.a.nf

            /* renamed from: a */
            public final zzatw f14240a;

            /* renamed from: b */
            public final String f14241b;

            /* renamed from: c */
            public final String f14242c;

            {
                this.f14240a = zzatwVar;
                this.f14241b = str;
                this.f14242c = str2;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3951qf
            /* renamed from: a */
            public final void mo26007a(Object obj) {
                ((zzdmc) obj).mo13508a(this.f14240a, this.f14241b, this.f14242c);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbwl
    /* renamed from: a */
    public final void mo13500a(final zzvp zzvpVar) {
        m14969a(this.f25589e, new AbstractC3951qf(zzvpVar) { // from class: c.d.b.d.g.a.cf

            /* renamed from: a */
            public final zzvp f12555a;

            {
                this.f12555a = zzvpVar;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3951qf
            /* renamed from: a */
            public final void mo26007a(Object obj) {
                ((zzczn) obj).mo13500a(this.f12555a);
            }
        });
        m14969a(this.f25591g, new AbstractC3951qf(zzvpVar) { // from class: c.d.b.d.g.a.bf

            /* renamed from: a */
            public final zzvp f12472a;

            {
                this.f12472a = zzvpVar;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3951qf
            /* renamed from: a */
            public final void mo26007a(Object obj) {
                ((zzdmc) obj).mo13500a(this.f12472a);
            }
        });
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    /* renamed from: a */
    public final void mo13729a(final String str, final String str2) {
        m14969a(this.f25588d, new AbstractC3951qf(str, str2) { // from class: c.d.b.d.g.a.ze

            /* renamed from: a */
            public final String f16435a;

            /* renamed from: b */
            public final String f16436b;

            {
                this.f16435a = str;
                this.f16436b = str2;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3951qf
            /* renamed from: a */
            public final void mo26007a(Object obj) {
                ((zzczr) obj).mo13729a(this.f16435a, this.f16436b);
            }
        });
    }

    /* renamed from: b */
    public final zzbxq m14968b() {
        return this.f25585a;
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    /* renamed from: b */
    public final void mo13498b(final zzva zzvaVar) {
        m14969a(this.f25591g, new AbstractC3951qf(zzvaVar) { // from class: c.d.b.d.g.a.if

            /* renamed from: a */
            public final zzva f13537a;

            {
                this.f13537a = zzvaVar;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3951qf
            /* renamed from: a */
            public final void mo26007a(Object obj) {
                ((zzdmc) obj).mo13498b(this.f13537a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: k */
    public final void mo13497k() {
        m14969a(this.f25586b, C3729kf.f13879a);
        m14969a(this.f25591g, C3692jf.f13781a);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        m14969a(this.f25586b, C4175we.f15941a);
        m14969a(this.f25587c, C3353af.f12287a);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    public final void onRewardedVideoCompleted() {
        m14969a(this.f25586b, C4101ue.f15635a);
        m14969a(this.f25591g, C4212xe.f16038a);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: t */
    public final void mo13496t() {
        m14969a(this.f25586b, C4064te.f15400a);
        m14969a(this.f25591g, C4138ve.f15838a);
    }
}
