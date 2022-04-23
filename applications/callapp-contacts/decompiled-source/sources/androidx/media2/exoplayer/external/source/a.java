package androidx.media2.exoplayer.external.source;

import android.util.Pair;
import androidx.media2.exoplayer.external.al;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/a.class */
abstract class a extends al {

    /* renamed from: b  reason: collision with root package name */
    private final int f3492b;

    /* renamed from: c  reason: collision with root package name */
    private final an f3493c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3494d;

    public a(boolean z, an anVar) {
        this.f3494d = z;
        this.f3493c = anVar;
        this.f3492b = anVar.a();
    }

    private int a(int i, boolean z) {
        if (z) {
            return this.f3493c.a(i);
        }
        if (i < this.f3492b - 1) {
            return i + 1;
        }
        return -1;
    }

    public static Object a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    public static Object b(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object c(Object obj) {
        return ((Pair) obj).second;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int a(int i, int i2, boolean z) {
        int i3 = 0;
        int i4 = i2;
        if (this.f3494d) {
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
        while (a3 != -1 && d(a3).a()) {
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

    @Override // androidx.media2.exoplayer.external.al
    public final int a(Object obj) {
        int a2;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int d2 = d(obj2);
        if (d2 == -1 || (a2 = d(d2).a(obj3)) == -1) {
            return -1;
        }
        return e(d2) + a2;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int a(boolean z) {
        int i = this.f3492b;
        if (i == 0) {
            return -1;
        }
        if (this.f3494d) {
            z = false;
        }
        int b2 = z ? this.f3493c.b() : i - 1;
        while (d(b2).a()) {
            int b3 = z ? this.f3493c.b(b2) : b2 > 0 ? b2 - 1 : -1;
            b2 = b3;
            if (b3 == -1) {
                return -1;
            }
        }
        return f(b2) + d(b2).a(z);
    }

    @Override // androidx.media2.exoplayer.external.al
    public final al.a a(int i, al.a aVar, boolean z) {
        int b2 = b(i);
        int f = f(b2);
        d(b2).a(i - e(b2), aVar, z);
        aVar.f2832c += f;
        if (z) {
            aVar.f2831b = Pair.create(g(b2), androidx.media2.exoplayer.external.util.a.a(aVar.f2831b));
        }
        return aVar;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final al.a a(Object obj, al.a aVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int d2 = d(obj2);
        int f = f(d2);
        d(d2).a(obj3, aVar);
        aVar.f2832c += f;
        aVar.f2831b = obj;
        return aVar;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final al.b a(int i, al.b bVar, long j) {
        int c2 = c(i);
        int f = f(c2);
        int e = e(c2);
        d(c2).a(i - f, bVar, j);
        bVar.g += e;
        bVar.h += e;
        return bVar;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final Object a(int i) {
        int b2 = b(i);
        return Pair.create(g(b2), d(b2).a(i - e(b2)));
    }

    protected abstract int b(int i);

    @Override // androidx.media2.exoplayer.external.al
    public final int b(boolean z) {
        if (this.f3492b == 0) {
            return -1;
        }
        int i = 0;
        if (this.f3494d) {
            z = false;
        }
        if (z) {
            i = this.f3493c.c();
        }
        while (d(i).a()) {
            int a2 = a(i, z);
            i = a2;
            if (a2 == -1) {
                return -1;
            }
        }
        return f(i) + d(i).b(z);
    }

    protected abstract int c(int i);

    protected abstract int d(Object obj);

    protected abstract al d(int i);

    protected abstract int e(int i);

    protected abstract int f(int i);

    protected abstract Object g(int i);
}
