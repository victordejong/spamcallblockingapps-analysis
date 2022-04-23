package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzp;
import java.lang.ref.WeakReference;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4180wj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjg.class */
public final class zzcjg extends zzbqo {

    /* renamed from: h */
    public final Context f26120h;

    /* renamed from: i */
    public final WeakReference<zzbgj> f26121i;

    /* renamed from: j */
    public final zzccm f26122j;

    /* renamed from: k */
    public final zzbzp f26123k;

    /* renamed from: l */
    public final zzbuk f26124l;

    /* renamed from: m */
    public final zzbvv f26125m;

    /* renamed from: n */
    public final zzbrh f26126n;

    /* renamed from: o */
    public final zzaux f26127o;

    /* renamed from: p */
    public final zzdtn f26128p;

    /* renamed from: q */
    public boolean f26129q = false;

    public zzcjg(zzbqn zzbqnVar, Context context, zzbgj zzbgjVar, zzccm zzccmVar, zzbzp zzbzpVar, zzbuk zzbukVar, zzbvv zzbvvVar, zzbrh zzbrhVar, zzdnv zzdnvVar, zzdtn zzdtnVar) {
        super(zzbqnVar);
        this.f26120h = context;
        this.f26122j = zzccmVar;
        this.f26121i = new WeakReference<>(zzbgjVar);
        this.f26123k = zzbzpVar;
        this.f26124l = zzbukVar;
        this.f26125m = zzbvvVar;
        this.f26126n = zzbrhVar;
        this.f26128p = zzdtnVar;
        this.f26127o = new zzavu(zzdnvVar.f27596l);
    }

    /* renamed from: a */
    public final boolean m14153a(boolean z, Activity activity) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23809f0)).booleanValue()) {
            zzp.m17969c();
            if (zzayu.m16088g(this.f26120h)) {
                zzbbq.m15852d("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f26124l.mo14061m();
                if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23815g0)).booleanValue()) {
                    return false;
                }
                this.f26128p.m13199a(this.f25380a.f27634b.f27630b.f27612b);
                return false;
            }
        }
        if (this.f26129q) {
            zzbbq.m15852d("The rewarded ad have been showed.");
            this.f26124l.mo14063b(zzdpe.m13339a(zzdpg.AD_REUSED, null, null));
            return false;
        }
        this.f26129q = true;
        this.f26123k.m14873s();
        Context context = activity;
        if (activity == null) {
            context = this.f26120h;
        }
        try {
            this.f26122j.mo14809a(z, context);
            this.f26123k.m14874q();
            return true;
        } catch (zzccl e) {
            this.f26124l.mo14068a(e);
            return false;
        }
    }

    public final void finalize() throws Throwable {
        try {
            zzbgj zzbgjVar = this.f26121i.get();
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23687H3)).booleanValue()) {
                if (!this.f26129q && zzbgjVar != null) {
                    zzdzb zzdzbVar = zzbbz.f24768e;
                    zzbgjVar.getClass();
                    zzdzbVar.execute(RunnableC4180wj.m26171a(zzbgjVar));
                }
            } else if (zzbgjVar != null) {
                zzbgjVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    /* renamed from: g */
    public final Bundle m14152g() {
        return this.f26125m.m15012q();
    }

    /* renamed from: h */
    public final boolean m14151h() {
        return this.f26126n.m15135a();
    }

    /* renamed from: i */
    public final boolean m14150i() {
        return this.f26129q;
    }

    /* renamed from: j */
    public final zzaux m14149j() {
        return this.f26127o;
    }

    /* renamed from: k */
    public final boolean m14148k() {
        zzbgj zzbgjVar = this.f26121i.get();
        return zzbgjVar != null && !zzbgjVar.mo15604E();
    }
}
