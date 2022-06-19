package com.facebook.rebound;

import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.facebook.rebound.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/f.class */
public final class C10417f implements AbstractC10420i {

    /* renamed from: b */
    private static final C10419h f34087b = C10419h.m22830a();

    /* renamed from: c */
    private static int f34088c = 0;

    /* renamed from: a */
    public final CopyOnWriteArrayList<C10414e> f34089a;

    /* renamed from: d */
    private final C10422k f34090d;

    /* renamed from: e */
    private final CopyOnWriteArrayList<AbstractC10420i> f34091e;

    /* renamed from: f */
    private int f34092f;

    /* renamed from: g */
    private final C10418g f34093g;

    /* renamed from: h */
    private final C10418g f34094h;

    private C10417f() {
        this(40, 6, 70, 10);
    }

    private C10417f(int i, int i2, int i3, int i4) {
        this.f34090d = C10422k.m22825c();
        this.f34091e = new CopyOnWriteArrayList<>();
        this.f34089a = new CopyOnWriteArrayList<>();
        this.f34092f = -1;
        C10418g m22831a = C10418g.m22831a(i, i2);
        this.f34093g = m22831a;
        C10418g m22831a2 = C10418g.m22831a(i3, i4);
        this.f34094h = m22831a2;
        C10419h c10419h = f34087b;
        StringBuilder sb = new StringBuilder("main spring ");
        int i5 = f34088c;
        f34088c = i5 + 1;
        sb.append(i5);
        c10419h.m22829a(m22831a, sb.toString());
        StringBuilder sb2 = new StringBuilder("attachment spring ");
        int i6 = f34088c;
        f34088c = i6 + 1;
        sb2.append(i6);
        c10419h.m22829a(m22831a2, sb2.toString());
    }

    /* renamed from: a */
    public static C10417f m22835a() {
        return new C10417f();
    }

    /* renamed from: a */
    public final C10417f m22834a(int i) {
        this.f34092f = i;
        if (this.f34089a.get(i) == null) {
            return null;
        }
        for (C10414e c10414e : this.f34090d.m22852b()) {
            c10414e.m22843a(this.f34094h);
        }
        m22832b().m22843a(this.f34093g);
        return this;
    }

    /* renamed from: a */
    public final C10417f m22833a(AbstractC10420i abstractC10420i) {
        this.f34089a.add(this.f34090d.m22856a().m22842a(this).m22843a(this.f34094h));
        this.f34091e.add(abstractC10420i);
        return this;
    }

    @Override // com.facebook.rebound.AbstractC10420i
    /* renamed from: a */
    public final void mo22809a(C10414e c10414e) {
        int i;
        int indexOf = this.f34089a.indexOf(c10414e);
        AbstractC10420i abstractC10420i = this.f34091e.get(indexOf);
        int i2 = this.f34092f;
        int i3 = -1;
        if (indexOf == i2) {
            i3 = indexOf + 1;
            i = indexOf - 1;
        } else if (indexOf < i2) {
            i = indexOf - 1;
        } else {
            int i4 = -1;
            if (indexOf > i2) {
                i4 = indexOf + 1;
            }
            i3 = i4;
            i = -1;
        }
        if (i3 >= 0 && i3 < this.f34089a.size()) {
            this.f34089a.get(i3).m22840b(c10414e.f34074d.f34085a);
        }
        if (i >= 0 && i < this.f34089a.size()) {
            this.f34089a.get(i).m22840b(c10414e.f34074d.f34085a);
        }
        abstractC10420i.mo22809a(c10414e);
    }

    /* renamed from: b */
    public final C10414e m22832b() {
        return this.f34089a.get(this.f34092f);
    }

    @Override // com.facebook.rebound.AbstractC10420i
    /* renamed from: b */
    public final void mo22808b(C10414e c10414e) {
        this.f34091e.get(this.f34089a.indexOf(c10414e)).mo22808b(c10414e);
    }

    @Override // com.facebook.rebound.AbstractC10420i
    /* renamed from: c */
    public final void mo22807c(C10414e c10414e) {
        this.f34091e.get(this.f34089a.indexOf(c10414e)).mo22807c(c10414e);
    }

    @Override // com.facebook.rebound.AbstractC10420i
    /* renamed from: d */
    public final void mo22806d(C10414e c10414e) {
        this.f34091e.get(this.f34089a.indexOf(c10414e)).mo22806d(c10414e);
    }
}
