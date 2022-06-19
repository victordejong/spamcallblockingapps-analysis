package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i42.class */
public final class i42 extends AbstractBinderC6971ss {

    /* renamed from: d */
    private final zzbdl f24133d;

    /* renamed from: e */
    private final Context f24134e;

    /* renamed from: f */
    private final gh2 f24135f;

    /* renamed from: g */
    private final String f24136g;

    /* renamed from: h */
    private final a42 f24137h;

    /* renamed from: i */
    private final hi2 f24138i;

    /* renamed from: j */
    private lb1 f24139j;

    /* renamed from: k */
    private boolean f24140k = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25799t0)).booleanValue();

    public i42(Context context, zzbdl zzbdlVar, String str, gh2 gh2Var, a42 a42Var, hi2 hi2Var) {
        this.f24133d = zzbdlVar;
        this.f24136g = str;
        this.f24134e = context;
        this.f24135f = gh2Var;
        this.f24137h = a42Var;
        this.f24138i = hi2Var;
    }

    /* renamed from: G6 */
    private final boolean m14489G6() {
        boolean z;
        synchronized (this) {
            lb1 lb1Var = this.f24139j;
            if (lb1Var != null) {
                if (!lb1Var.m13595h()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: C4 */
    public final void mo9663C4(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: D */
    public final boolean mo9662D() {
        boolean mo8957b;
        synchronized (this) {
            mo8957b = this.f24135f.mo8957b();
        }
        return mo8957b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: F4 */
    public final void mo9660F4(AbstractC7156xs abstractC7156xs) {
        C6155o.m17023e("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: H */
    public final AbstractC6526gs mo9657H() {
        return this.f24137h.m16699a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: K */
    public final String mo9653K() {
        String str;
        synchronized (this) {
            str = this.f24136g;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: K2 */
    public final void mo9652K2(AbstractC6304at abstractC6304at) {
        C6155o.m17023e("setAppEventListener must be called on the main UI thread.");
        this.f24137h.m16696v(abstractC6304at);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: L0 */
    public final void mo9650L0(zzbdl zzbdlVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: N5 */
    public final void mo9649N5(zzbdr zzbdrVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: O5 */
    public final void mo9648O5(zzbdg zzbdgVar, AbstractC6638js abstractC6638js) {
        this.f24137h.m16702H(abstractC6638js);
        mo9634k5(zzbdgVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: S1 */
    public final void mo9647S1(AbstractC6602it abstractC6602it) {
        this.f24137h.m16701I(abstractC6602it);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: U2 */
    public final void mo9646U2(C6453et c6453et) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: W3 */
    public final void mo9645W3(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            if (this.f24139j == null) {
                ei0.m15464f("Interstitial can not be shown before loaded.");
                this.f24137h.mo9239l(sk2.m10997d(9, null, null));
                return;
            }
            this.f24139j.m13596g(this.f24140k, (Activity) BinderC6255b.m16745J0(abstractC6253a));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: X5 */
    public final void mo9644X5(AbstractC6526gs abstractC6526gs) {
        C6155o.m17023e("setAdListener must be called on the main UI thread.");
        this.f24137h.m16697r(abstractC6526gs);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: Y1 */
    public final void mo9643Y1(tb0 tb0Var) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: b6 */
    public final void mo9642b6(ud0 ud0Var) {
        this.f24138i.m14634I(ud0Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: e3 */
    public final void mo9640e3(AbstractC6379cu abstractC6379cu) {
        C6155o.m17023e("setPaidEventListener must be called on the main UI thread.");
        this.f24137h.m16695y(abstractC6379cu);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: e6 */
    public final void mo9639e6(AbstractC6531gx abstractC6531gx) {
        synchronized (this) {
            C6155o.m17023e("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f24135f.m14941g(abstractC6531gx);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: g */
    public final void mo9638g() {
        synchronized (this) {
            C6155o.m17023e("destroy must be called on the main UI thread.");
            lb1 lb1Var = this.f24139j;
            if (lb1Var != null) {
                lb1Var.m9019c().m8965Z0(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: h */
    public final boolean mo9637h() {
        boolean m14489G6;
        synchronized (this) {
            C6155o.m17023e("isLoaded must be called on the main UI thread.");
            m14489G6 = m14489G6();
        }
        return m14489G6;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: i4 */
    public final void mo9636i4(yb0 yb0Var, String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: j */
    public final void mo9635j() {
        synchronized (this) {
            C6155o.m17023e("pause must be called on the main UI thread.");
            lb1 lb1Var = this.f24139j;
            if (lb1Var != null) {
                lb1Var.m9019c().m8967S0(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: k5 */
    public final boolean mo9634k5(zzbdg zzbdgVar) {
        synchronized (this) {
            C6155o.m17023e("loadAd must be called on the main UI thread.");
            C5667s.m18160d();
            if (C5679c2.m18064k(this.f24134e) && zzbdgVar.f33677v == null) {
                ei0.m15467c("Failed to load the ad because app ID is missing.");
                a42 a42Var = this.f24137h;
                if (a42Var != null) {
                    a42Var.mo9146O(sk2.m10997d(4, null, null));
                }
                return false;
            } else if (m14489G6()) {
                return false;
            } else {
                nk2.m12891b(this.f24134e, zzbdgVar.f33664i);
                this.f24139j = null;
                return this.f24135f.mo8958a(zzbdgVar, this.f24136g, new zg2(this.f24133d), new h42(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l1 */
    public final void mo9633l1(String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l3 */
    public final void mo9632l3(String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l6 */
    public final void mo9631l6(zzbis zzbisVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: m */
    public final void mo9630m() {
        synchronized (this) {
            C6155o.m17023e("resume must be called on the main UI thread.");
            lb1 lb1Var = this.f24139j;
            if (lb1Var != null) {
                lb1Var.m9019c().m8966T0(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: m6 */
    public final void mo9629m6(AbstractC6779nl abstractC6779nl) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: o */
    public final void mo9628o() {
        synchronized (this) {
            C6155o.m17023e("showInterstitial must be called on the main UI thread.");
            lb1 lb1Var = this.f24139j;
            if (lb1Var != null) {
                lb1Var.m13596g(this.f24140k, null);
                return;
            }
            ei0.m15464f("Interstitial can not be shown before loaded.");
            this.f24137h.mo9239l(sk2.m10997d(9, null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: p0 */
    public final AbstractC6640ju mo9627p0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: q */
    public final String mo9626q() {
        synchronized (this) {
            lb1 lb1Var = this.f24139j;
            if (lb1Var == null || lb1Var.m9018d() == null) {
                return null;
            }
            return this.f24139j.m9018d().mo12041a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s */
    public final Bundle mo9625s() {
        C6155o.m17023e("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s0 */
    public final void mo9624s0(boolean z) {
        synchronized (this) {
            C6155o.m17023e("setImmersiveMode must be called on the main UI thread.");
            this.f24140k = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s5 */
    public final void mo9623s5(zzbhg zzbhgVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: t */
    public final AbstractC6304at mo9622t() {
        return this.f24137h.m16698q();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: u */
    public final AbstractC6491fu mo9621u() {
        synchronized (this) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25658b5)).booleanValue()) {
                return null;
            }
            lb1 lb1Var = this.f24139j;
            if (lb1Var == null) {
                return null;
            }
            return lb1Var.m9018d();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: v */
    public final String mo9620v() {
        synchronized (this) {
            lb1 lb1Var = this.f24139j;
            if (lb1Var == null || lb1Var.m9018d() == null) {
                return null;
            }
            return this.f24139j.m9018d().mo12041a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: v4 */
    public final void mo9619v4(AbstractC6377cs abstractC6377cs) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final AbstractC6253a zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final void zzt() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final zzbdl zzu() {
        return null;
    }
}
