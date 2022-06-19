package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.ng */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ng.class */
public final class C6774ng implements AbstractC6663kg {

    /* renamed from: d */
    private final AbstractC6663kg[] f27134d;

    /* renamed from: e */
    private final ArrayList<AbstractC6663kg> f27135e;

    /* renamed from: g */
    private AbstractC6626jg f27137g;

    /* renamed from: h */
    private AbstractC6287ac f27138h;

    /* renamed from: j */
    private zzasu f27140j;

    /* renamed from: f */
    private final C7213zb f27136f = new C7213zb();

    /* renamed from: i */
    private int f27139i = -1;

    public C6774ng(AbstractC6663kg... abstractC6663kgArr) {
        this.f27134d = abstractC6663kgArr;
        this.f27135e = new ArrayList<>(Arrays.asList(abstractC6663kgArr));
    }

    /* renamed from: f */
    public static /* synthetic */ void m12916f(C6774ng c6774ng, int i, AbstractC6287ac abstractC6287ac, Object obj) {
        zzasu zzasuVar;
        if (c6774ng.f27140j == null) {
            for (int i2 = 0; i2 <= 0; i2++) {
                abstractC6287ac.m16650g(i2, c6774ng.f27136f, false);
            }
            int i3 = c6774ng.f27139i;
            if (i3 == -1) {
                c6774ng.f27139i = 1;
            } else if (i3 != 1) {
                zzasuVar = new zzasu(1);
                c6774ng.f27140j = zzasuVar;
            }
            zzasuVar = null;
            c6774ng.f27140j = zzasuVar;
        }
        if (c6774ng.f27140j != null) {
            return;
        }
        c6774ng.f27135e.remove(c6774ng.f27134d[i]);
        if (i == 0) {
            c6774ng.f27138h = abstractC6287ac;
        }
        if (!c6774ng.f27135e.isEmpty()) {
            return;
        }
        c6774ng.f27137g.mo11980f(c6774ng.f27138h, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: a */
    public final void mo12921a(AbstractC6589ig abstractC6589ig) {
        C6700lg c6700lg = (C6700lg) abstractC6589ig;
        int i = 0;
        while (true) {
            AbstractC6663kg[] abstractC6663kgArr = this.f27134d;
            if (i < abstractC6663kgArr.length) {
                abstractC6663kgArr[i].mo12921a(c6700lg.f26091d[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: b */
    public final void mo12920b() {
        zzasu zzasuVar = this.f27140j;
        if (zzasuVar == null) {
            for (AbstractC6663kg abstractC6663kg : this.f27134d) {
                abstractC6663kg.mo12920b();
            }
            return;
        }
        throw zzasuVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: c */
    public final void mo12919c(AbstractC6583ib abstractC6583ib, boolean z, AbstractC6626jg abstractC6626jg) {
        this.f27137g = abstractC6626jg;
        int i = 0;
        while (true) {
            AbstractC6663kg[] abstractC6663kgArr = this.f27134d;
            if (i < abstractC6663kgArr.length) {
                abstractC6663kgArr[i].mo12919c(abstractC6583ib, false, new C6737mg(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: d */
    public final AbstractC6589ig mo12918d(int i, C6960sh c6960sh) {
        int length = this.f27134d.length;
        AbstractC6589ig[] abstractC6589igArr = new AbstractC6589ig[length];
        for (int i2 = 0; i2 < length; i2++) {
            abstractC6589igArr[i2] = this.f27134d[i2].mo12918d(i, c6960sh);
        }
        return new C6700lg(abstractC6589igArr);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: e */
    public final void mo12917e() {
        for (AbstractC6663kg abstractC6663kg : this.f27134d) {
            abstractC6663kg.mo12917e();
        }
    }
}
