package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.C2389q;
import com.google.android.gms.ads.mediation.AbstractC2378t;
import com.google.android.gms.ads.p119b.C2255d;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.ads.lq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lq.class */
public final class C3309lq implements AbstractC2378t {

    /* renamed from: a */
    private final Date f16925a;

    /* renamed from: b */
    private final int f16926b;

    /* renamed from: c */
    private final Set<String> f16927c;

    /* renamed from: d */
    private final boolean f16928d;

    /* renamed from: e */
    private final Location f16929e;

    /* renamed from: f */
    private final int f16930f;

    /* renamed from: g */
    private final C2835bl f16931g;

    /* renamed from: i */
    private final boolean f16933i;

    /* renamed from: k */
    private final int f16935k;

    /* renamed from: l */
    private final String f16936l;

    /* renamed from: h */
    private final List<String> f16932h = new ArrayList();

    /* renamed from: j */
    private final Map<String, Boolean> f16934j = new HashMap();

    public C3309lq(Date date, int i, Set<String> set, Location location, boolean z, int i2, C2835bl c2835bl, List<String> list, boolean z2, int i3, String str) {
        this.f16925a = date;
        this.f16926b = i;
        this.f16927c = set;
        this.f16929e = location;
        this.f16928d = z;
        this.f16930f = i2;
        this.f16931g = c2835bl;
        this.f16933i = z2;
        this.f16935k = i3;
        this.f16936l = str;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.f16934j.put(split[1], true);
                        } else if ("false".equals(split[2])) {
                            this.f16934j.put(split[1], false);
                        }
                    }
                } else {
                    this.f16932h.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    @Deprecated
    /* renamed from: a */
    public final Date mo7569a() {
        return this.f16925a;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    @Deprecated
    /* renamed from: b */
    public final int mo7568b() {
        return this.f16926b;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    /* renamed from: c */
    public final Set<String> mo7567c() {
        return this.f16927c;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    /* renamed from: d */
    public final Location mo7566d() {
        return this.f16929e;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    /* renamed from: e */
    public final int mo7565e() {
        return this.f16930f;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    /* renamed from: f */
    public final boolean mo7564f() {
        return this.f16928d;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    @Deprecated
    /* renamed from: g */
    public final boolean mo7563g() {
        return this.f16933i;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2378t
    /* renamed from: h */
    public final C2255d mo7562h() {
        C2255d m14899a;
        if (this.f16931g == null) {
            m14899a = null;
        } else {
            C2255d.C2256a m14892b = new C2255d.C2256a().m14895a(this.f16931g.f11456b).m14898a(this.f16931g.f11457c).m14892b(this.f16931g.f11458d);
            if (this.f16931g.f11455a >= 2) {
                m14892b.m14894b(this.f16931g.f11459e);
            }
            if (this.f16931g.f11455a >= 3 && this.f16931g.f11460f != null) {
                m14892b.m14896a(new C2389q(this.f16931g.f11460f));
            }
            m14899a = m14892b.m14899a();
        }
        return m14899a;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2378t
    /* renamed from: i */
    public final boolean mo7561i() {
        return this.f16932h != null && (this.f16932h.contains("2") || this.f16932h.contains("6"));
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2378t
    /* renamed from: j */
    public final boolean mo7560j() {
        return this.f16932h != null && this.f16932h.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2378t
    /* renamed from: k */
    public final boolean mo7559k() {
        return this.f16932h != null && (this.f16932h.contains("1") || this.f16932h.contains("6"));
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2378t
    /* renamed from: l */
    public final boolean mo7558l() {
        return this.f16932h != null && this.f16932h.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2378t
    /* renamed from: m */
    public final Map<String, Boolean> mo7557m() {
        return this.f16934j;
    }
}
