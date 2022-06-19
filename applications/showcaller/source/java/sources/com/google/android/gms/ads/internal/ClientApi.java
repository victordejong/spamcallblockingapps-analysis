package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.BinderC5640b;
import com.google.android.gms.ads.internal.overlay.BinderC5641c;
import com.google.android.gms.ads.internal.overlay.BinderC5655q;
import com.google.android.gms.ads.internal.overlay.BinderC5656r;
import com.google.android.gms.ads.internal.overlay.BinderC5658t;
import com.google.android.gms.ads.internal.overlay.BinderC5662x;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.AbstractBinderC6378ct;
import com.google.android.gms.internal.ads.AbstractC6682kz;
import com.google.android.gms.internal.ads.AbstractC6713lt;
import com.google.android.gms.internal.ads.AbstractC6860ps;
import com.google.android.gms.internal.ads.AbstractC6867pz;
import com.google.android.gms.internal.ads.AbstractC7008ts;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ab0;
import com.google.android.gms.internal.ads.ap1;
import com.google.android.gms.internal.ads.c32;
import com.google.android.gms.internal.ads.fe0;
import com.google.android.gms.internal.ads.h30;
import com.google.android.gms.internal.ads.ih2;
import com.google.android.gms.internal.ads.j30;
import com.google.android.gms.internal.ads.kb0;
import com.google.android.gms.internal.ads.lf1;
import com.google.android.gms.internal.ads.nf1;
import com.google.android.gms.internal.ads.of2;
import com.google.android.gms.internal.ads.rd0;
import com.google.android.gms.internal.ads.s70;
import com.google.android.gms.internal.ads.sp0;
import com.google.android.gms.internal.ads.xi2;
import com.google.android.gms.internal.ads.yd2;
import com.google.android.gms.internal.ads.yg0;
import com.google.android.gms.internal.ads.zd2;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzcgz;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends AbstractBinderC6378ct {
    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: D5 */
    public final AbstractC7008ts mo15703D5(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, int i) {
        return new BinderC5666r((Context) BinderC6255b.m16745J0(abstractC6253a), zzbdlVar, str, new zzcgz(213806000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: M */
    public final kb0 mo15702M(AbstractC6253a abstractC6253a) {
        BinderC5656r binderC5656r;
        Activity activity = (Activity) BinderC6255b.m16745J0(abstractC6253a);
        AdOverlayInfoParcel m18207k0 = AdOverlayInfoParcel.m18207k0(activity.getIntent());
        if (m18207k0 == null) {
            binderC5656r = new BinderC5656r(activity);
        } else {
            int i = m18207k0.f18325n;
            binderC5656r = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? new BinderC5656r(activity) : new BinderC5662x(activity) : new BinderC5658t(activity, m18207k0) : new BinderC5641c(activity) : new BinderC5640b(activity) : new BinderC5655q(activity);
        }
        return binderC5656r;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: O3 */
    public final AbstractC6867pz mo15701O3(AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2, AbstractC6253a abstractC6253a3) {
        return new lf1((View) BinderC6255b.m16745J0(abstractC6253a), (HashMap) BinderC6255b.m16745J0(abstractC6253a2), (HashMap) BinderC6255b.m16745J0(abstractC6253a3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: R0 */
    public final AbstractC6682kz mo15700R0(AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2) {
        return new nf1((FrameLayout) BinderC6255b.m16745J0(abstractC6253a), (FrameLayout) BinderC6255b.m16745J0(abstractC6253a2), 213806000);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: Z4 */
    public final AbstractC6713lt mo15699Z4(AbstractC6253a abstractC6253a, int i) {
        return sp0.m10961e((Context) BinderC6255b.m16745J0(abstractC6253a), i).mo10953m();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: e1 */
    public final yg0 mo15698e1(AbstractC6253a abstractC6253a, s70 s70Var, int i) {
        return sp0.m10962d((Context) BinderC6255b.m16745J0(abstractC6253a), s70Var, i).mo10941y();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: h3 */
    public final fe0 mo15697h3(AbstractC6253a abstractC6253a, String str, s70 s70Var, int i) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        xi2 mo10943w = sp0.m10962d(context, s70Var, i).mo10943w();
        mo10943w.mo9074a(context);
        mo10943w.mo9073r(str);
        return mo10943w.zza().mo8713b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: j2 */
    public final AbstractC7008ts mo15696j2(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, s70 s70Var, int i) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        yd2 mo10948r = sp0.m10962d(context, s70Var, i).mo10948r();
        mo10948r.mo8843r(str);
        mo10948r.mo8844a(context);
        zd2 zza = mo10948r.zza();
        return i >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25455C3)).intValue() ? zza.mo8431b() : zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: n5 */
    public final rd0 mo15695n5(AbstractC6253a abstractC6253a, s70 s70Var, int i) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        xi2 mo10943w = sp0.m10962d(context, s70Var, i).mo10943w();
        mo10943w.mo9074a(context);
        return mo10943w.zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: p4 */
    public final AbstractC6860ps mo15694p4(AbstractC6253a abstractC6253a, String str, s70 s70Var, int i) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        return new c32(sp0.m10962d(context, s70Var, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: p6 */
    public final ab0 mo15693p6(AbstractC6253a abstractC6253a, s70 s70Var, int i) {
        return sp0.m10962d((Context) BinderC6255b.m16745J0(abstractC6253a), s70Var, i).mo10968A();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: t1 */
    public final j30 mo15692t1(AbstractC6253a abstractC6253a, s70 s70Var, int i, h30 h30Var) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        ap1 mo10963c = sp0.m10962d(context, s70Var, i).mo10963c();
        mo10963c.mo12188a(context);
        mo10963c.mo12187b(h30Var);
        return mo10963c.zza().mo11819c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: u4 */
    public final AbstractC7008ts mo15691u4(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, s70 s70Var, int i) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        of2 mo10951o = sp0.m10962d(context, s70Var, i).mo10951o();
        mo10951o.mo12682b(context);
        mo10951o.mo12683a(zzbdlVar);
        mo10951o.mo12681y(str);
        return mo10951o.zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: w2 */
    public final AbstractC7008ts mo15690w2(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, s70 s70Var, int i) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        ih2 mo10946t = sp0.m10962d(context, s70Var, i).mo10946t();
        mo10946t.mo10182b(context);
        mo10946t.mo10183a(zzbdlVar);
        mo10946t.mo10181y(str);
        return mo10946t.zza().zza();
    }
}
