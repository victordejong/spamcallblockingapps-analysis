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
    public final dj0 m7736a(AbstractC1699d7 d7Var) {
        this.f6327a = d7Var;
        return this;
    }

    /* renamed from: b */
    public final dj0 m7735b(AbstractC1644a7 a7Var) {
        this.f6328b = a7Var;
        return this;
    }

    /* renamed from: c */
    public final dj0 m7734c(AbstractC1901q7 q7Var) {
        this.f6329c = q7Var;
        return this;
    }

    /* renamed from: d */
    public final dj0 m7733d(AbstractC1858n7 n7Var) {
        this.f6330d = n7Var;
        return this;
    }

    /* renamed from: e */
    public final dj0 m7732e(AbstractC1799jb jbVar) {
        this.f6331e = jbVar;
        return this;
    }

    /* renamed from: f */
    public final dj0 m7731f(String str, AbstractC1798j7 j7Var, AbstractC1747g7 g7Var) {
        this.f6332f.put(str, j7Var);
        if (g7Var != null) {
            this.f6333g.put(str, g7Var);
        }
        return this;
    }

    /* renamed from: g */
    public final ej0 m7730g() {
        return new ej0(this);
    }
}
