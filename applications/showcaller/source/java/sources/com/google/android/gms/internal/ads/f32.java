package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f32.class */
public final class f32 extends AbstractBinderC6971ss implements p51 {

    /* renamed from: d */
    private final Context f22716d;

    /* renamed from: e */
    private final mf2 f22717e;

    /* renamed from: f */
    private final String f22718f;

    /* renamed from: g */
    private final a42 f22719g;

    /* renamed from: h */
    private zzbdl f22720h;

    /* renamed from: i */
    private final vj2 f22721i;

    /* renamed from: j */
    private xw0 f22722j;

    public f32(Context context, zzbdl zzbdlVar, String str, mf2 mf2Var, a42 a42Var) {
        this.f22716d = context;
        this.f22717e = mf2Var;
        this.f22720h = zzbdlVar;
        this.f22718f = str;
        this.f22719g = a42Var;
        this.f22721i = mf2Var.m13208l();
        mf2Var.m13206n(this);
    }

    /* renamed from: G6 */
    private final void m15318G6(zzbdl zzbdlVar) {
        synchronized (this) {
            this.f22721i.m9987I(zzbdlVar);
            this.f22721i.m9986J(this.f22720h.f33695q);
        }
    }

    /* renamed from: H6 */
    private final boolean m15317H6(zzbdg zzbdgVar) {
        synchronized (this) {
            C6155o.m17023e("loadAd must be called on the main UI thread.");
            C5667s.m18160d();
            if (!C5679c2.m18064k(this.f22716d) || zzbdgVar.f33677v != null) {
                nk2.m12891b(this.f22716d, zzbdgVar.f33664i);
                return this.f22717e.mo8958a(zzbdgVar, this.f22718f, null, new e32(this));
            }
            ei0.m15467c("Failed to load the ad because app ID is missing.");
            a42 a42Var = this.f22719g;
            if (a42Var != null) {
                a42Var.mo9146O(sk2.m10997d(4, null, null));
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: C4 */
    public final void mo9663C4(boolean z) {
        synchronized (this) {
            C6155o.m17023e("setManualImpressionsEnabled must be called from the main thread.");
            this.f22721i.m9980a(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: D */
    public final boolean mo9662D() {
        boolean mo8957b;
        synchronized (this) {
            mo8957b = this.f22717e.mo8957b();
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
        return this.f22719g.m16699a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: K */
    public final String mo9653K() {
        String str;
        synchronized (this) {
            str = this.f22718f;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: K2 */
    public final void mo9652K2(AbstractC6304at abstractC6304at) {
        C6155o.m17023e("setAppEventListener must be called on the main UI thread.");
        this.f22719g.m16696v(abstractC6304at);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: L0 */
    public final void mo9650L0(zzbdl zzbdlVar) {
        synchronized (this) {
            C6155o.m17023e("setAdSize must be called on the main UI thread.");
            this.f22721i.m9987I(zzbdlVar);
            this.f22720h = zzbdlVar;
            xw0 xw0Var = this.f22722j;
            if (xw0Var != null) {
                xw0Var.mo9036h(this.f22717e.m13211i(), zzbdlVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: N5 */
    public final void mo9649N5(zzbdr zzbdrVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: O5 */
    public final void mo9648O5(zzbdg zzbdgVar, AbstractC6638js abstractC6638js) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: S1 */
    public final void mo9647S1(AbstractC6602it abstractC6602it) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: U2 */
    public final void mo9646U2(C6453et c6453et) {
        synchronized (this) {
            C6155o.m17023e("setCorrelationIdProvider must be called on the main UI thread");
            this.f22721i.m9966o(c6453et);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: W3 */
    public final void mo9645W3(AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: X5 */
    public final void mo9644X5(AbstractC6526gs abstractC6526gs) {
        C6155o.m17023e("setAdListener must be called on the main UI thread.");
        this.f22719g.m16697r(abstractC6526gs);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: Y1 */
    public final void mo9643Y1(tb0 tb0Var) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: b6 */
    public final void mo9642b6(ud0 ud0Var) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: e3 */
    public final void mo9640e3(AbstractC6379cu abstractC6379cu) {
        C6155o.m17023e("setPaidEventListener must be called on the main UI thread.");
        this.f22719g.m16695y(abstractC6379cu);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: e6 */
    public final void mo9639e6(AbstractC6531gx abstractC6531gx) {
        synchronized (this) {
            C6155o.m17023e("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f22717e.m13210j(abstractC6531gx);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: g */
    public final void mo9638g() {
        synchronized (this) {
            C6155o.m17023e("destroy must be called on the main UI thread.");
            xw0 xw0Var = this.f22722j;
            if (xw0Var != null) {
                xw0Var.mo9020b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: h */
    public final boolean mo9637h() {
        return false;
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
            xw0 xw0Var = this.f22722j;
            if (xw0Var != null) {
                xw0Var.m9019c().m8967S0(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: k5 */
    public final boolean mo9634k5(zzbdg zzbdgVar) {
        boolean m15317H6;
        synchronized (this) {
            m15318G6(this.f22720h);
            m15317H6 = m15317H6(zzbdgVar);
        }
        return m15317H6;
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
        synchronized (this) {
            C6155o.m17023e("setVideoOptions must be called on the main UI thread.");
            this.f22721i.m9982N(zzbisVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: m */
    public final void mo9630m() {
        synchronized (this) {
            C6155o.m17023e("resume must be called on the main UI thread.");
            xw0 xw0Var = this.f22722j;
            if (xw0Var != null) {
                xw0Var.m9019c().m8966T0(null);
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
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: p0 */
    public final AbstractC6640ju mo9627p0() {
        synchronized (this) {
            C6155o.m17023e("getVideoController must be called from the main thread.");
            xw0 xw0Var = this.f22722j;
            if (xw0Var != null) {
                return xw0Var.mo9035i();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: q */
    public final String mo9626q() {
        synchronized (this) {
            xw0 xw0Var = this.f22722j;
            if (xw0Var == null || xw0Var.m9018d() == null) {
                return null;
            }
            return this.f22722j.m9018d().mo12041a();
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
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s5 */
    public final void mo9623s5(zzbhg zzbhgVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: t */
    public final AbstractC6304at mo9622t() {
        return this.f22719g.m16698q();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: u */
    public final AbstractC6491fu mo9621u() {
        synchronized (this) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25658b5)).booleanValue()) {
                return null;
            }
            xw0 xw0Var = this.f22722j;
            if (xw0Var == null) {
                return null;
            }
            return xw0Var.m9018d();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: v */
    public final String mo9620v() {
        synchronized (this) {
            xw0 xw0Var = this.f22722j;
            if (xw0Var == null || xw0Var.m9018d() == null) {
                return null;
            }
            return this.f22722j.m9018d().mo12041a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: v4 */
    public final void mo9619v4(AbstractC6377cs abstractC6377cs) {
        C6155o.m17023e("setAdListener must be called on the main UI thread.");
        this.f22717e.m13209k(abstractC6377cs);
    }

    @Override // com.google.android.gms.internal.ads.p51
    public final void zza() {
        synchronized (this) {
            if (!this.f22717e.m13207m()) {
                this.f22717e.m13205o();
                return;
            }
            zzbdl m9985K = this.f22721i.m9985K();
            xw0 xw0Var = this.f22722j;
            zzbdl zzbdlVar = m9985K;
            if (xw0Var != null) {
                zzbdlVar = m9985K;
                if (xw0Var.mo9033k() != null) {
                    zzbdlVar = m9985K;
                    if (this.f22721i.m9968m()) {
                        zzbdlVar = bk2.m16326b(this.f22716d, Collections.singletonList(this.f22722j.mo9033k()));
                    }
                }
            }
            m15318G6(zzbdlVar);
            try {
                m15317H6(this.f22721i.m9988H());
            } catch (RemoteException e) {
                ei0.m15464f("Failed to refresh the banner ad.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final AbstractC6253a zzi() {
        C6155o.m17023e("destroy must be called on the main UI thread.");
        return BinderC6255b.m16744m2(this.f22717e.m13211i());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final void zzt() {
        synchronized (this) {
            C6155o.m17023e("recordManualImpression must be called on the main UI thread.");
            xw0 xw0Var = this.f22722j;
            if (xw0Var != null) {
                xw0Var.mo9031m();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final zzbdl zzu() {
        synchronized (this) {
            C6155o.m17023e("getAdSize must be called on the main UI thread.");
            xw0 xw0Var = this.f22722j;
            if (xw0Var != null) {
                return bk2.m16326b(this.f22716d, Collections.singletonList(xw0Var.mo9034j()));
            }
            return this.f22721i.m9985K();
        }
    }
}
