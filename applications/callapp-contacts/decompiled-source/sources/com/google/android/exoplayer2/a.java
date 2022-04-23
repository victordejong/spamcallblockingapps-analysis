package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.ac;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a.class */
public abstract class a extends al {

    /* renamed from: a  reason: collision with root package name */
    private final int f20630a;

    /* renamed from: c  reason: collision with root package name */
    private final ac f20631c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f20632d;

    public a(boolean z, ac acVar) {
        this.f20632d = z;
        this.f20631c = acVar;
        this.f20630a = acVar.a();
    }

    private int a(int i, boolean z) {
        if (z) {
            return this.f20631c.a(i);
        }
        if (i < this.f20630a - 1) {
            return i + 1;
        }
        return -1;
    }

    public static Object a(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int b(int i, boolean z) {
        if (z) {
            return this.f20631c.b(i);
        }
        if (i > 0) {
            return i - 1;
        }
        return -1;
    }

    public static Object b(Object obj) {
        return ((Pair) obj).second;
    }

    @Override // com.google.android.exoplayer2.al
    public final int a(int i, int i2, boolean z) {
        int i3 = 0;
        int i4 = i2;
        if (this.f20632d) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        int c2 = c(i);
        int f = f(c2);
        al d2 = d(c2);
        if (i4 != 2) {
            i3 = i4;
        }
        int a2 = d2.a(i - f, i3, z);
        if (a2 != -1) {
            return f + a2;
        }
        int a3 = a(c2, z);
        while (a3 != -1 && d(a3).c()) {
            a3 = a(a3, z);
        }
        if (a3 != -1) {
            return f(a3) + d(a3).b(z);
        }
        if (i4 == 2) {
            return b(z);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.al
    public final int a(boolean z) {
        int i = this.f20630a;
        if (i == 0) {
            return -1;
        }
        if (this.f20632d) {
            z = false;
        }
        int b2 = z ? this.f20631c.b() : i - 1;
        while (d(b2).c()) {
            int b3 = b(b2, z);
            b2 = b3;
            if (b3 == -1) {
                return -1;
            }
        }
        return f(b2) + d(b2).a(z);
    }

    @Override // com.google.android.exoplayer2.al
    public final al.a a(int i, al.a aVar, boolean z) {
        int b2 = b(i);
        int f = f(b2);
        d(b2).a(i - e(b2), aVar, z);
        aVar.f20677c += f;
        if (z) {
            aVar.f20676b = Pair.create(g(b2), com.google.android.exoplayer2.util.a.b(aVar.f20676b));
        }
        return aVar;
    }

    @Override // com.google.android.exoplayer2.al
    public final al.a a(Object obj, al.a aVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int d2 = d(obj2);
        int f = f(d2);
        d(d2).a(obj3, aVar);
        aVar.f20677c += f;
        aVar.f20676b = obj;
        return aVar;
    }

    @Override // com.google.android.exoplayer2.al
    public final al.b a(int i, al.b bVar, long j) {
        int c2 = c(i);
        int f = f(c2);
        int e = e(c2);
        d(c2).a(i - f, bVar, j);
        Object g = g(c2);
        if (!al.b.f20679a.equals(bVar.f20680b)) {
            g = Pair.create(g, bVar.f20680b);
        }
        bVar.f20680b = g;
        bVar.n += e;
        bVar.o += e;
        return bVar;
    }

    @Override // com.google.android.exoplayer2.al
    public final Object a(int i) {
        int b2 = b(i);
        return Pair.create(g(b2), d(b2).a(i - e(b2)));
    }

    protected abstract int b(int i);

    @Override // com.google.android.exoplayer2.al
    public final int b(int i, int i2, boolean z) {
        int i3 = 0;
        int i4 = i2;
        if (this.f20632d) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        int c2 = c(i);
        int f = f(c2);
        al d2 = d(c2);
        if (i4 != 2) {
            i3 = i4;
        }
        int b2 = d2.b(i - f, i3, z);
        if (b2 != -1) {
            return f + b2;
        }
        int b3 = b(c2, z);
        while (b3 != -1 && d(b3).c()) {
            b3 = b(b3, z);
        }
        if (b3 != -1) {
            return f(b3) + d(b3).a(z);
        }
        if (i4 == 2) {
            return a(z);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.al
    public final int b(boolean z) {
        if (this.f20630a == 0) {
            return -1;
        }
        int i = 0;
        if (this.f20632d) {
            z = false;
        }
        if (z) {
            i = this.f20631c.c();
        }
        while (d(i).c()) {
            int a2 = a(i, z);
            i = a2;
            if (a2 == -1) {
                return -1;
            }
        }
        return f(i) + d(i).b(z);
    }

    protected abstract int c(int i);

    @Override // com.google.android.exoplayer2.al
    public final int c(Object obj) {
        int c2;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int d2 = d(obj2);
        if (d2 == -1 || (c2 = d(d2).c(obj3)) == -1) {
            return -1;
        }
        return e(d2) + c2;
    }

    protected abstract int d(Object obj);

    protected abstract al d(int i);

    protected abstract int e(int i);

    protected abstract int f(int i);

    protected abstract Object g(int i);
}
