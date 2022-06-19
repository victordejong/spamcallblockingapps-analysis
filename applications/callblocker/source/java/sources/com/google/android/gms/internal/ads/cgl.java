package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.reward.C2391a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgl.class */
public final class cgl extends AbstractBinderC3451qx {

    /* renamed from: a */
    private final cfy f12934a;

    /* renamed from: b */
    private final cfa f12935b;

    /* renamed from: c */
    private final chb f12936c;
    @GuardedBy("this")

    /* renamed from: d */
    private bdr f12937d;
    @GuardedBy("this")

    /* renamed from: e */
    private boolean f12938e = false;

    public cgl(cfy cfyVar, cfa cfaVar, chb chbVar) {
        this.f12934a = cfyVar;
        this.f12935b = cfaVar;
        this.f12936c = chbVar;
    }

    /* renamed from: j */
    private final boolean m11373j() {
        boolean z;
        synchronized (this) {
            if (this.f12937d != null) {
                if (!this.f12937d.m12063c()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: a */
    public final void mo7288a() {
        synchronized (this) {
            mo7273d(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: a */
    public final void mo7287a(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            C2662s.m13974b("pause must be called on the main UI thread.");
            if (this.f12937d != null) {
                this.f12937d.m12947i().m12809a(abstractC2731a == null ? null : (Context) BinderC2734b.m13795a(abstractC2731a));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: a */
    public final void mo7286a(dzr dzrVar) {
        C2662s.m13974b("setAdMetadataListener can only be called from the UI thread.");
        if (dzrVar == null) {
            this.f12935b.m11426a((C2391a) null);
        } else {
            this.f12935b.m11426a(new cgn(this, dzrVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: a */
    public final void mo7285a(AbstractC3450qw abstractC3450qw) {
        C2662s.m13974b("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f12935b.m11420a(abstractC3450qw);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: a */
    public final void mo7284a(AbstractC3456rb abstractC3456rb) {
        C2662s.m13974b("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f12935b.m11419a(abstractC3456rb);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.dyx.m8158e().m7876a(com.google.android.gms.internal.ads.edi.f16493ct)).booleanValue() != false) goto L13;
     */
    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo7283a(com.google.android.gms.internal.ads.C3462rh r7) {
        /*
            r6 = this;
            r0 = r6
            monitor-enter(r0)
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.C2662s.m13974b(r0)     // Catch: java.lang.Throwable -> L74
            r0 = r7
            java.lang.String r0 = r0.f17304b     // Catch: java.lang.Throwable -> L74
            boolean r0 = com.google.android.gms.internal.ads.C2949d.m10280a(r0)     // Catch: java.lang.Throwable -> L74
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L16
        L13:
            r0 = r6
            monitor-exit(r0)
            return
        L16:
            r0 = r6
            boolean r0 = r0.m11373j()     // Catch: java.lang.Throwable -> L74
            if (r0 == 0) goto L31
            com.google.android.gms.internal.ads.ect<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.edi.f16493ct     // Catch: java.lang.Throwable -> L74
            r9 = r0
            com.google.android.gms.internal.ads.ede r0 = com.google.android.gms.internal.ads.dyx.m8158e()     // Catch: java.lang.Throwable -> L74
            r1 = r9
            java.lang.Object r0 = r0.m7876a(r1)     // Catch: java.lang.Throwable -> L74
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L74
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L74
            if (r0 == 0) goto L13
        L31:
            com.google.android.gms.internal.ads.cfv r0 = new com.google.android.gms.internal.ads.cfv     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L74
            r10 = r0
            r0 = r10
            r1 = 0
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L74
            r0 = r6
            r1 = 0
            r0.f12937d = r1     // Catch: java.lang.Throwable -> L74
            r0 = r6
            com.google.android.gms.internal.ads.cfy r0 = r0.f12934a     // Catch: java.lang.Throwable -> L74
            int r1 = com.google.android.gms.internal.ads.cgy.f13018a     // Catch: java.lang.Throwable -> L74
            r0.m11395a(r1)     // Catch: java.lang.Throwable -> L74
            r0 = r6
            com.google.android.gms.internal.ads.cfy r0 = r0.f12934a     // Catch: java.lang.Throwable -> L74
            r9 = r0
            r0 = r7
            com.google.android.gms.internal.ads.dya r0 = r0.f17303a     // Catch: java.lang.Throwable -> L74
            r11 = r0
            r0 = r7
            java.lang.String r0 = r0.f17304b     // Catch: java.lang.Throwable -> L74
            r12 = r0
            com.google.android.gms.internal.ads.cgk r0 = new com.google.android.gms.internal.ads.cgk     // Catch: java.lang.Throwable -> L74
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L74
            r0 = r9
            r1 = r11
            r2 = r12
            r3 = r10
            r4 = r7
            boolean r0 = r0.mo11391a(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L74
            goto L13
        L74:
            r7 = move-exception
            r0 = r6
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cgl.mo7283a(com.google.android.gms.internal.ads.rh):void");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: a */
    public final void mo7282a(String str) {
        synchronized (this) {
            C2662s.m13974b("setUserId must be called on the main UI thread.");
            this.f12936c.f13027a = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: a */
    public final void mo7281a(boolean z) {
        synchronized (this) {
            C2662s.m13974b("setImmersiveMode must be called on the main UI thread.");
            this.f12938e = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: b */
    public final void mo7279b(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            C2662s.m13974b("resume must be called on the main UI thread.");
            if (this.f12937d != null) {
                this.f12937d.m12947i().m12807b(abstractC2731a == null ? null : (Context) BinderC2734b.m13795a(abstractC2731a));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: b */
    public final void mo7278b(String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: b */
    public final boolean mo7280b() {
        C2662s.m13974b("isLoaded must be called on the main UI thread.");
        return m11373j();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: c */
    public final void mo7277c() {
        mo7287a((AbstractC2731a) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: c */
    public final void mo7276c(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            C2662s.m13974b("destroy must be called on the main UI thread.");
            this.f12935b.m11426a((C2391a) null);
            if (this.f12937d != null) {
                this.f12937d.m12947i().m12806c(abstractC2731a == null ? null : (Context) BinderC2734b.m13795a(abstractC2731a));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: c */
    public final void mo7275c(String str) {
        synchronized (this) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16381an)).booleanValue()) {
                C2662s.m13974b("#008 Must be called on the main UI thread.: setCustomData");
                this.f12936c.f13028b = str;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: d */
    public final void mo7274d() {
        mo7279b((AbstractC2731a) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: d */
    public final void mo7273d(AbstractC2731a abstractC2731a) {
        Activity activity;
        synchronized (this) {
            C2662s.m13974b("showAd must be called on the main UI thread.");
            if (this.f12937d != null) {
                if (abstractC2731a != null) {
                    Object m13795a = BinderC2734b.m13795a(abstractC2731a);
                    if (m13795a instanceof Activity) {
                        activity = (Activity) m13795a;
                        this.f12937d.m12065a(this.f12938e, activity);
                    }
                }
                activity = null;
                this.f12937d.m12065a(this.f12938e, activity);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: e */
    public final void mo7272e() {
        mo7276c((AbstractC2731a) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: f */
    public final String mo7271f() {
        String mo8095a;
        synchronized (this) {
            mo8095a = (this.f12937d == null || this.f12937d.m12946j() == null) ? null : this.f12937d.m12946j().mo8095a();
        }
        return mo8095a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: g */
    public final Bundle mo7270g() {
        C2662s.m13974b("getAdMetadata can only be called from the UI thread.");
        return this.f12937d != null ? this.f12937d.m12061e() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: h */
    public final boolean mo7269h() {
        return this.f12937d != null && this.f12937d.m12062d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3452qy
    /* renamed from: i */
    public final eav mo7268i() {
        apk m12946j;
        synchronized (this) {
            m12946j = !((Boolean) dyx.m8158e().m7876a(edi.f16502dB)).booleanValue() ? null : this.f12937d != null ? this.f12937d.m12946j() : null;
        }
        return m12946j;
    }
}
