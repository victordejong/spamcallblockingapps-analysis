package com.google.android.exoplayer2.upstream.cache;

import java.util.ArrayList;
import java.util.TreeSet;
/* renamed from: com.google.android.exoplayer2.upstream.cache.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/h.class */
public final class C11549h {

    /* renamed from: a */
    public final int f38448a;

    /* renamed from: b */
    public final String f38449b;

    /* renamed from: c */
    final TreeSet<C11561o> f38450c;

    /* renamed from: d */
    final ArrayList<C11550a> f38451d;

    /* renamed from: e */
    C11557l f38452e;

    /* renamed from: com.google.android.exoplayer2.upstream.cache.h$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/h$a.class */
    public static final class C11550a {

        /* renamed from: a */
        public final long f38453a;

        /* renamed from: b */
        public final long f38454b;

        public C11550a(long j, long j2) {
            this.f38453a = j;
            this.f38454b = j2;
        }
    }

    public C11549h(int i, String str) {
        this(i, str, C11557l.f38475a);
    }

    public C11549h(int i, String str, C11557l c11557l) {
        this.f38448a = i;
        this.f38449b = str;
        this.f38452e = c11557l;
        this.f38450c = new TreeSet<>();
        this.f38451d = new ArrayList<>();
    }

    /* renamed from: a */
    public final void m20161a(C11561o c11561o) {
        this.f38450c.add(c11561o);
    }

    /* renamed from: a */
    public final boolean m20163a(long j, long j2) {
        for (int i = 0; i < this.f38451d.size(); i++) {
            C11550a c11550a = this.f38451d.get(i);
            if (c11550a.f38454b != -1 ? !(j2 == -1 || c11550a.f38453a > j || j + j2 > c11550a.f38453a + c11550a.f38454b) : j >= c11550a.f38453a) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m20162a(C11548g c11548g) {
        if (this.f38450c.remove(c11548g)) {
            if (c11548g.f38446e == null) {
                return true;
            }
            c11548g.f38446e.delete();
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C11549h c11549h = (C11549h) obj;
        return this.f38448a == c11549h.f38448a && this.f38449b.equals(c11549h.f38449b) && this.f38450c.equals(c11549h.f38450c) && this.f38452e.equals(c11549h.f38452e);
    }

    public final int hashCode() {
        return (((this.f38448a * 31) + this.f38449b.hashCode()) * 31) + this.f38452e.hashCode();
    }
}
