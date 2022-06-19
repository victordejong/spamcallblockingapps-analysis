package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ju1.class */
public final class ju1 implements w71, AbstractC6673kq, s31, c31 {

    /* renamed from: d */
    private final Context f24987d;

    /* renamed from: e */
    private final kk2 f24988e;

    /* renamed from: f */
    private final rj2 f24989f;

    /* renamed from: g */
    private final ej2 f24990g;

    /* renamed from: h */
    private final dw1 f24991h;

    /* renamed from: i */
    private Boolean f24992i;

    /* renamed from: j */
    private final boolean f24993j = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25667c5)).booleanValue();

    /* renamed from: k */
    private final jo2 f24994k;

    /* renamed from: l */
    private final String f24995l;

    public ju1(Context context, kk2 kk2Var, rj2 rj2Var, ej2 ej2Var, dw1 dw1Var, jo2 jo2Var, String str) {
        this.f24987d = context;
        this.f24988e = kk2Var;
        this.f24989f = rj2Var;
        this.f24990g = ej2Var;
        this.f24991h = dw1Var;
        this.f24994k = jo2Var;
        this.f24995l = str;
    }

    /* renamed from: b */
    private final boolean m14036b() {
        if (this.f24992i == null) {
            synchronized (this) {
                if (this.f24992i == null) {
                    String str = (String) C7192yr.m8714c().m14263c(C6679kw.f25628Y0);
                    C5667s.m18160d();
                    String m18076c0 = C5679c2.m18076c0(this.f24987d);
                    boolean z = false;
                    if (str != null) {
                        if (m18076c0 == null) {
                            z = false;
                        } else {
                            try {
                                z = Pattern.matches(str, m18076c0);
                            } catch (RuntimeException e) {
                                C5667s.m18156h().m12235k(e, "CsiActionsListener.isPatternMatched");
                                z = false;
                            }
                        }
                    }
                    this.f24992i = Boolean.valueOf(z);
                }
            }
        }
        return this.f24992i.booleanValue();
    }

    /* renamed from: d */
    private final io2 m14035d(String str) {
        io2 m14338a = io2.m14338a(str);
        m14338a.m14332g(this.f24989f, null);
        m14338a.m14330i(this.f24990g);
        m14338a.m14336c("request_id", this.f24995l);
        if (!this.f24990g.f22248t.isEmpty()) {
            m14338a.m14336c("ancn", this.f24990g.f22248t.get(0));
        }
        if (this.f24990g.f22230f0) {
            C5667s.m18160d();
            m14338a.m14336c("device_connectivity", true != C5679c2.m18066i(this.f24987d) ? "offline" : "online");
            m14338a.m14336c("event_timestamp", String.valueOf(C5667s.m18153k().mo16807a()));
            m14338a.m14336c("offline_ad", "1");
        }
        return m14338a;
    }

    /* renamed from: l */
    private final void m14034l(io2 io2Var) {
        if (!this.f24990g.f22230f0) {
            this.f24994k.mo9502b(io2Var);
            return;
        }
        this.f24991h.m15669k(new fw1(C5667s.m18153k().mo16807a(), this.f24989f.f28999b.f28519b.f24897b, this.f24994k.mo9503a(io2Var), 2));
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: H */
    public final void mo13737H(zzdkm zzdkmVar) {
        if (!this.f24993j) {
            return;
        }
        io2 m14035d = m14035d("ifts");
        m14035d.m14336c("reason", "exception");
        if (!TextUtils.isEmpty(zzdkmVar.getMessage())) {
            m14035d.m14336c("msg", zzdkmVar.getMessage());
        }
        this.f24994k.mo9502b(m14035d);
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: I */
    public final void mo13736I(zzbcz zzbczVar) {
        if (!this.f24993j) {
            return;
        }
        int i = zzbczVar.f33653d;
        String str = zzbczVar.f33654e;
        int i2 = i;
        String str2 = str;
        if (zzbczVar.f33655f.equals("com.google.android.gms.ads")) {
            zzbcz zzbczVar2 = zzbczVar.f33656g;
            i2 = i;
            str2 = str;
            if (zzbczVar2 != null) {
                i2 = i;
                str2 = str;
                if (!zzbczVar2.f33655f.equals("com.google.android.gms.ads")) {
                    zzbcz zzbczVar3 = zzbczVar.f33656g;
                    i2 = zzbczVar3.f33653d;
                    str2 = zzbczVar3.f33654e;
                }
            }
        }
        String m13870a = this.f24988e.m13870a(str2);
        io2 m14035d = m14035d("ifts");
        m14035d.m14336c("reason", "adapter");
        if (i2 >= 0) {
            m14035d.m14336c("arec", String.valueOf(i2));
        }
        if (m13870a != null) {
            m14035d.m14336c("areec", m13870a);
        }
        this.f24994k.mo9502b(m14035d);
    }

    @Override // com.google.android.gms.internal.ads.w71
    /* renamed from: a */
    public final void mo9382a() {
        if (!m14036b()) {
            return;
        }
        this.f24994k.mo9502b(m14035d("adapter_shown"));
    }

    @Override // com.google.android.gms.internal.ads.w71
    /* renamed from: c */
    public final void mo9380c() {
        if (!m14036b()) {
            return;
        }
        this.f24994k.mo9502b(m14035d("adapter_impression"));
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: e */
    public final void mo13732e() {
        if (!this.f24993j) {
            return;
        }
        jo2 jo2Var = this.f24994k;
        io2 m14035d = m14035d("ifts");
        m14035d.m14336c("reason", "blocked");
        jo2Var.mo9502b(m14035d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        if (!this.f24990g.f22230f0) {
            return;
        }
        m14034l(m14035d("click"));
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        if (m14036b() || this.f24990g.f22230f0) {
            m14034l(m14035d("impression"));
        }
    }
}
