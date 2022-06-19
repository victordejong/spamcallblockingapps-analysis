package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/np2.class */
public final class np2 extends kp2 {

    /* renamed from: a */
    private static final Pattern f27247a = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: b */
    private final mp2 f27248b;

    /* renamed from: c */
    private final lp2 f27249c;

    /* renamed from: e */
    private fr2 f27251e;

    /* renamed from: f */
    private iq2 f27252f;

    /* renamed from: d */
    private final List<xp2> f27250d = new ArrayList();

    /* renamed from: g */
    private boolean f27253g = false;

    /* renamed from: h */
    private boolean f27254h = false;

    /* renamed from: i */
    private final String f27255i = UUID.randomUUID().toString();

    public np2(lp2 lp2Var, mp2 mp2Var) {
        this.f27249c = lp2Var;
        this.f27248b = mp2Var;
        m12825k(null);
        if (mp2Var.m13116i() == zzfgf.HTML || mp2Var.m13116i() == zzfgf.JAVASCRIPT) {
            this.f27252f = new jq2(mp2Var.m13119f());
        } else {
            this.f27252f = new lq2(mp2Var.m13120e(), null);
        }
        this.f27252f.mo13433a();
        up2.m10275a().m10274b(this);
        aq2.m16505a().m16504b(this.f27252f.m14303d(), lp2Var.m13458b());
    }

    /* renamed from: k */
    private final void m12825k(View view) {
        this.f27251e = new fr2(view);
    }

    @Override // com.google.android.gms.internal.ads.kp2
    /* renamed from: a */
    public final void mo12834a() {
        if (this.f27253g) {
            return;
        }
        this.f27253g = true;
        up2.m10275a().m10273c(this);
        this.f27252f.m14298j(bq2.m16299a().m16294f());
        this.f27252f.mo13431h(this, this.f27248b);
    }

    @Override // com.google.android.gms.internal.ads.kp2
    /* renamed from: b */
    public final void mo12833b(View view) {
        if (!this.f27254h && m12827i() != view) {
            m12825k(view);
            this.f27252f.m14297k();
            Collection<np2> m10271e = up2.m10275a().m10271e();
            if (m10271e == null || m10271e.size() <= 0) {
                return;
            }
            for (np2 np2Var : m10271e) {
                if (np2Var != this && np2Var.m12827i() == view) {
                    np2Var.f27251e.clear();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kp2
    /* renamed from: c */
    public final void mo12832c() {
        if (this.f27254h) {
            return;
        }
        this.f27251e.clear();
        if (!this.f27254h) {
            this.f27250d.clear();
        }
        this.f27254h = true;
        aq2.m16505a().m16502d(this.f27252f.m14303d());
        up2.m10275a().m10272d(this);
        this.f27252f.mo13432b();
        this.f27252f = null;
    }

    @Override // com.google.android.gms.internal.ads.kp2
    /* renamed from: d */
    public final void mo12831d(View view, zzfgi zzfgiVar, String str) {
        xp2 xp2Var;
        if (!this.f27254h) {
            if (!f27247a.matcher("Ad overlay").matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
            }
            Iterator<xp2> it = this.f27250d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    xp2Var = null;
                    break;
                }
                xp2Var = it.next();
                if (xp2Var.m9093a().get() == view) {
                    break;
                }
            }
            if (xp2Var != null) {
                return;
            }
            this.f27250d.add(new xp2(view, zzfgiVar, "Ad overlay"));
        }
    }

    /* renamed from: f */
    public final List<xp2> m12830f() {
        return this.f27250d;
    }

    /* renamed from: g */
    public final iq2 m12829g() {
        return this.f27252f;
    }

    /* renamed from: h */
    public final String m12828h() {
        return this.f27255i;
    }

    /* renamed from: i */
    public final View m12827i() {
        return this.f27251e.get();
    }

    /* renamed from: j */
    public final boolean m12826j() {
        return this.f27253g && !this.f27254h;
    }
}
