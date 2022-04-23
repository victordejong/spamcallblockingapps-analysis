package com.google.android.exoplayer2.upstream.cache;

import java.util.ArrayList;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final int f22160a;

    /* renamed from: b  reason: collision with root package name */
    public final String f22161b;

    /* renamed from: c  reason: collision with root package name */
    final TreeSet<o> f22162c;

    /* renamed from: d  reason: collision with root package name */
    final ArrayList<a> f22163d;
    l e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f22164a;

        /* renamed from: b  reason: collision with root package name */
        public final long f22165b;

        public a(long j, long j2) {
            this.f22164a = j;
            this.f22165b = j2;
        }
    }

    public h(int i, String str) {
        this(i, str, l.f22180a);
    }

    public h(int i, String str, l lVar) {
        this.f22160a = i;
        this.f22161b = str;
        this.e = lVar;
        this.f22162c = new TreeSet<>();
        this.f22163d = new ArrayList<>();
    }

    public final void a(o oVar) {
        this.f22162c.add(oVar);
    }

    public final boolean a(long j, long j2) {
        for (int i = 0; i < this.f22163d.size(); i++) {
            a aVar = this.f22163d.get(i);
            if (aVar.f22165b != -1 ? !(j2 == -1 || aVar.f22164a > j || j + j2 > aVar.f22164a + aVar.f22165b) : j >= aVar.f22164a) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(g gVar) {
        if (!this.f22162c.remove(gVar)) {
            return false;
        }
        if (gVar.e == null) {
            return true;
        }
        gVar.e.delete();
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.f22160a == hVar.f22160a && this.f22161b.equals(hVar.f22161b) && this.f22162c.equals(hVar.f22162c) && this.e.equals(hVar.e);
    }

    public final int hashCode() {
        return (((this.f22160a * 31) + this.f22161b.hashCode()) * 31) + this.e.hashCode();
    }
}
