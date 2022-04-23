package p012b.p076s.p078b.p079a.p102w0;

import android.util.Pair;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.w0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/a.class */
public abstract class AbstractC1532a extends AbstractC1252n0 {

    /* renamed from: b */
    public final int f6244b;

    /* renamed from: c */
    public final AbstractC1576j0 f6245c;

    /* renamed from: d */
    public final boolean f6246d;

    public AbstractC1532a(boolean z, AbstractC1576j0 j0Var) {
        this.f6246d = z;
        this.f6245c = j0Var;
        this.f6244b = j0Var.mo32754a();
    }

    /* renamed from: a */
    public static Object m32959a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    /* renamed from: c */
    public static Object m32957c(Object obj) {
        return ((Pair) obj).second;
    }

    /* renamed from: d */
    public static Object m32956d(Object obj) {
        return ((Pair) obj).first;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public int mo32717a(int i, int i2, boolean z) {
        int i3 = 0;
        int i4 = i2;
        if (this.f6246d) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        int c = mo32769c(i);
        int f = mo32766f(c);
        AbstractC1252n0 g = mo32765g(c);
        if (i4 != 2) {
            i3 = i4;
        }
        int a = g.mo32717a(i - f, i3, z);
        if (a != -1) {
            return f + a;
        }
        int a2 = m32961a(c, z);
        while (a2 != -1 && mo32765g(a2).m34040c()) {
            a2 = m32961a(a2, z);
        }
        if (a2 != -1) {
            return mo32766f(a2) + mo32765g(a2).mo32714a(z);
        }
        if (i4 == 2) {
            return mo32714a(z);
        }
        return -1;
    }

    /* renamed from: a */
    public final int m32961a(int i, boolean z) {
        return z ? this.f6245c.mo32749b(i) : i < this.f6244b - 1 ? i + 1 : -1;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public final int mo32715a(Object obj) {
        int i = -1;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object d = m32956d(obj);
        Object c = m32957c(obj);
        int b = mo32770b(d);
        if (b == -1) {
            return -1;
        }
        int a = mo32765g(b).mo32715a(c);
        if (a != -1) {
            i = mo32767e(b) + a;
        }
        return i;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public int mo32714a(boolean z) {
        if (this.f6244b == 0) {
            return -1;
        }
        int i = 0;
        if (this.f6246d) {
            z = false;
        }
        if (z) {
            i = this.f6245c.mo32750b();
        }
        while (mo32765g(i).m34040c()) {
            int a = m32961a(i, z);
            i = a;
            if (a == -1) {
                return -1;
            }
        }
        return mo32766f(i) + mo32765g(i).mo32714a(z);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public final AbstractC1252n0.C1254b mo32738a(int i, AbstractC1252n0.C1254b bVar, boolean z) {
        int b = mo32771b(i);
        int f = mo32766f(b);
        mo32765g(b).mo32738a(i - mo32767e(b), bVar, z);
        bVar.f5015c += f;
        if (z) {
            Object d = mo32768d(b);
            Object obj = bVar.f5014b;
            C1160a.m34522a(obj);
            bVar.f5014b = m32959a(d, obj);
        }
        return bVar;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public final AbstractC1252n0.C1254b mo32960a(Object obj, AbstractC1252n0.C1254b bVar) {
        Object d = m32956d(obj);
        Object c = m32957c(obj);
        int b = mo32770b(d);
        int f = mo32766f(b);
        mo32765g(b).mo32960a(c, bVar);
        bVar.f5015c += f;
        bVar.f5014b = obj;
        return bVar;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public final AbstractC1252n0.C1255c mo32716a(int i, AbstractC1252n0.C1255c cVar, boolean z, long j) {
        int c = mo32769c(i);
        int f = mo32766f(c);
        int e = mo32767e(c);
        mo32765g(c).mo32716a(i - f, cVar, z, j);
        cVar.f5024f += e;
        cVar.f5025g += e;
        return cVar;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public final Object mo32718a(int i) {
        int b = mo32771b(i);
        return m32959a(mo32768d(b), mo32765g(b).mo32718a(i - mo32767e(b)));
    }

    /* renamed from: b */
    public abstract int mo32771b(int i);

    /* renamed from: b */
    public final int m32958b(int i, boolean z) {
        return z ? this.f6245c.mo32753a(i) : i > 0 ? i - 1 : -1;
    }

    /* renamed from: b */
    public abstract int mo32770b(Object obj);

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: b */
    public int mo32712b(boolean z) {
        if (this.f6244b == 0) {
            return -1;
        }
        if (this.f6246d) {
            z = false;
        }
        int c = z ? this.f6245c.mo32747c() : this.f6244b - 1;
        while (mo32765g(c).m34040c()) {
            int b = m32958b(c, z);
            c = b;
            if (b == -1) {
                return -1;
            }
        }
        return mo32766f(c) + mo32765g(c).mo32712b(z);
    }

    /* renamed from: c */
    public abstract int mo32769c(int i);

    /* renamed from: d */
    public abstract Object mo32768d(int i);

    /* renamed from: e */
    public abstract int mo32767e(int i);

    /* renamed from: f */
    public abstract int mo32766f(int i);

    /* renamed from: g */
    public abstract AbstractC1252n0 mo32765g(int i);
}
