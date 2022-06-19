package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpu.class */
public final class cpu {

    /* renamed from: a */
    private final cov f46357a;

    /* renamed from: b */
    private final coz f46358b;

    /* renamed from: c */
    private final brs f46359c;

    /* renamed from: d */
    private final cus f46360d;

    public cpu(brs brsVar, cus cusVar, cov covVar, coz cozVar) {
        this.f46357a = covVar;
        this.f46358b = cozVar;
        this.f46359c = brsVar;
        this.f46360d = cusVar;
    }

    /* renamed from: a */
    private final void m17355a(String str, int i) {
        if (!this.f46357a.f46251ad) {
            this.f46360d.m17207a(str);
            return;
        }
        this.f46359c.m17630a(new brz(zzr.zzlc().mo19039a(), this.f46358b.f46290b, str, i));
    }

    /* renamed from: a */
    public final void m17354a(List<String> list) {
        for (String str : list) {
            m17355a(str, brp.f44573b);
        }
    }

    /* renamed from: a */
    public final void m17353a(List list, int i) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            m17355a((String) it2.next(), i);
        }
    }
}
