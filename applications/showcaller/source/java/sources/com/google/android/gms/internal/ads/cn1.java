package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.nonagon.signalgeneration.C5827n;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cn1.class */
public final class cn1 implements w71, AbstractC6673kq, s31, c31 {

    /* renamed from: d */
    private final Context f21324d;

    /* renamed from: e */
    private final kk2 f21325e;

    /* renamed from: f */
    private final rn1 f21326f;

    /* renamed from: g */
    private final rj2 f21327g;

    /* renamed from: h */
    private final ej2 f21328h;

    /* renamed from: i */
    private final dw1 f21329i;

    /* renamed from: j */
    private Boolean f21330j;

    /* renamed from: k */
    private final boolean f21331k = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25667c5)).booleanValue();

    public cn1(Context context, kk2 kk2Var, rn1 rn1Var, rj2 rj2Var, ej2 ej2Var, dw1 dw1Var) {
        this.f21324d = context;
        this.f21325e = kk2Var;
        this.f21326f = rn1Var;
        this.f21327g = rj2Var;
        this.f21328h = ej2Var;
        this.f21329i = dw1Var;
    }

    /* renamed from: b */
    private final boolean m16017b() {
        if (this.f21330j == null) {
            synchronized (this) {
                if (this.f21330j == null) {
                    String str = (String) C7192yr.m8714c().m14263c(C6679kw.f25628Y0);
                    C5667s.m18160d();
                    String m18076c0 = C5679c2.m18076c0(this.f21324d);
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
                    this.f21330j = Boolean.valueOf(z);
                }
            }
        }
        return this.f21330j.booleanValue();
    }

    /* renamed from: d */
    private final qn1 m16016d(String str) {
        qn1 m11371d = this.f21326f.m11371d();
        m11371d.m11847b(this.f21327g.f28999b.f28519b);
        m11371d.m11846c(this.f21328h);
        m11371d.m11845d("action", str);
        if (!this.f21328h.f22248t.isEmpty()) {
            m11371d.m11845d("ancn", this.f21328h.f22248t.get(0));
        }
        if (this.f21328h.f22230f0) {
            C5667s.m18160d();
            m11371d.m11845d("device_connectivity", true != C5679c2.m18066i(this.f21324d) ? "offline" : "online");
            m11371d.m11845d("event_timestamp", String.valueOf(C5667s.m18153k().mo16807a()));
            m11371d.m11845d("offline_ad", "1");
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25740l5)).booleanValue()) {
            boolean m17783a = C5827n.m17783a(this.f21327g);
            m11371d.m11845d("scar", String.valueOf(m17783a));
            if (m17783a) {
                String m17782b = C5827n.m17782b(this.f21327g);
                if (!TextUtils.isEmpty(m17782b)) {
                    m11371d.m11845d("ragent", m17782b);
                }
                String m17781c = C5827n.m17781c(this.f21327g);
                if (!TextUtils.isEmpty(m17781c)) {
                    m11371d.m11845d("rtype", m17781c);
                }
            }
        }
        return m11371d;
    }

    /* renamed from: l */
    private final void m16015l(qn1 qn1Var) {
        if (!this.f21328h.f22230f0) {
            qn1Var.m11844e();
            return;
        }
        this.f21329i.m15669k(new fw1(C5667s.m18153k().mo16807a(), this.f21327g.f28999b.f28519b.f24897b, qn1Var.m11843f(), 2));
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: H */
    public final void mo13737H(zzdkm zzdkmVar) {
        if (!this.f21331k) {
            return;
        }
        qn1 m16016d = m16016d("ifts");
        m16016d.m11845d("reason", "exception");
        if (!TextUtils.isEmpty(zzdkmVar.getMessage())) {
            m16016d.m11845d("msg", zzdkmVar.getMessage());
        }
        m16016d.m11844e();
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: I */
    public final void mo13736I(zzbcz zzbczVar) {
        if (!this.f21331k) {
            return;
        }
        qn1 m16016d = m16016d("ifts");
        m16016d.m11845d("reason", "adapter");
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
        if (i2 >= 0) {
            m16016d.m11845d("arec", String.valueOf(i2));
        }
        String m13870a = this.f21325e.m13870a(str2);
        if (m13870a != null) {
            m16016d.m11845d("areec", m13870a);
        }
        m16016d.m11844e();
    }

    @Override // com.google.android.gms.internal.ads.w71
    /* renamed from: a */
    public final void mo9382a() {
        if (!m16017b()) {
            return;
        }
        m16016d("adapter_shown").m11844e();
    }

    @Override // com.google.android.gms.internal.ads.w71
    /* renamed from: c */
    public final void mo9380c() {
        if (!m16017b()) {
            return;
        }
        m16016d("adapter_impression").m11844e();
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: e */
    public final void mo13732e() {
        if (!this.f21331k) {
            return;
        }
        qn1 m16016d = m16016d("ifts");
        m16016d.m11845d("reason", "blocked");
        m16016d.m11844e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        if (!this.f21328h.f22230f0) {
            return;
        }
        m16015l(m16016d("click"));
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        if (m16017b() || this.f21328h.f22230f0) {
            m16015l(m16016d("impression"));
        }
    }
}
