package com.google.android.gms.internal.ads;

import d.e.g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dj0.class */
public final class dj0 {

    /* renamed from: a */
    AbstractC1699d7 f6327a;

    /* renamed from: b */
    AbstractC1644a7 f6328b;

    /* renamed from: c */
    AbstractC1901q7 f6329c;

    /* renamed from: d */
    AbstractC1858n7 f6330d;

    /* renamed from: e */
    AbstractC1799jb f6331e;

    /* renamed from: f */
    final g<String, AbstractC1798j7> f6332f = new g<>();

    /* renamed from: g */
    final g<String, AbstractC1747g7> f6333g = new g<>();

    /* renamed from: a */
    public final dj0 m7736a(AbstractC1699d7 abstractC1699d7) {
        this.f6327a = abstractC1699d7;
        return this;
    }

    /* renamed from: b */
    public final dj0 m7735b(AbstractC1644a7 abstractC1644a7) {
        this.f6328b = abstractC1644a7;
        return this;
    }

    /* renamed from: c */
    public final dj0 m7734c(AbstractC1901q7 abstractC1901q7) {
        this.f6329c = abstractC1901q7;
        return this;
    }

    /* renamed from: d */
    public final dj0 m7733d(AbstractC1858n7 abstractC1858n7) {
        this.f6330d = abstractC1858n7;
        return this;
    }

    /* renamed from: e */
    public final dj0 m7732e(AbstractC1799jb abstractC1799jb) {
        this.f6331e = abstractC1799jb;
        return this;
    }

    /* renamed from: f */
    public final dj0 m7731f(String str, AbstractC1798j7 abstractC1798j7, AbstractC1747g7 abstractC1747g7) {
        this.f6332f.put(str, abstractC1798j7);
        if (abstractC1747g7 != null) {
            this.f6333g.put(str, abstractC1747g7);
        }
        return this;
    }

    /* renamed from: g */
    public final ej0 m7730g() {
        return new ej0(this);
    }
}
