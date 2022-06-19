package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.lang.reflect.Array;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.c.n0.u */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/u.class */
public final class C23933u {

    /* renamed from: a */
    public C23924n<Object[]> f66191a;

    /* renamed from: b */
    public C23924n<Object[]> f66192b;

    /* renamed from: c */
    public int f66193c;

    /* renamed from: d */
    public Object[] f66194d;

    /* renamed from: a */
    public final void m5727a(Object obj, int i, Object[] objArr, int i2) {
        int i3 = 0;
        for (C23924n<Object[]> c23924n = this.f66191a; c23924n != null; c23924n = c23924n.f66183b) {
            Object[] objArr2 = c23924n.f66182a;
            int length = objArr2.length;
            System.arraycopy(objArr2, 0, obj, i3, length);
            i3 += length;
        }
        System.arraycopy(objArr, 0, obj, i3, i2);
        int i4 = i3 + i2;
        if (i4 == i) {
            return;
        }
        throw new IllegalStateException(C22128a.m8595m2("Should have gotten ", i, " entries, got ", i4));
    }

    /* renamed from: b */
    public void m5726b() {
        C23924n<Object[]> c23924n = this.f66192b;
        if (c23924n != null) {
            this.f66194d = c23924n.f66182a;
        }
        this.f66192b = null;
        this.f66191a = null;
        this.f66193c = 0;
    }

    /* renamed from: c */
    public Object[] m5725c(Object[] objArr) {
        int i;
        C23924n c23924n = new C23924n(objArr, null);
        if (this.f66191a == null) {
            this.f66192b = c23924n;
            this.f66191a = c23924n;
        } else {
            C23924n<Object[]> c23924n2 = this.f66192b;
            if (c23924n2.f66183b != null) {
                throw new IllegalStateException();
            }
            c23924n2.f66183b = c23924n;
            this.f66192b = c23924n;
        }
        int length = objArr.length;
        this.f66193c += length;
        if (length < 16384) {
            i = length + length;
        } else {
            i = length;
            if (length < 262144) {
                i = length + (length >> 2);
            }
        }
        return new Object[i];
    }

    /* renamed from: d */
    public void m5724d(Object[] objArr, int i, List<Object> list) {
        int i2;
        C23924n c23924n = this.f66191a;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 != null) {
                for (Object obj : (Object[]) c23924n2.f66182a) {
                    list.add(obj);
                }
                c23924n = c23924n2.f66183b;
            }
        }
        for (i2 = 0; i2 < i; i2++) {
            list.add(objArr[i2]);
        }
        m5726b();
    }

    /* renamed from: e */
    public Object[] m5723e(Object[] objArr, int i) {
        int i2 = this.f66193c + i;
        Object[] objArr2 = new Object[i2];
        m5727a(objArr2, i2, objArr, i);
        m5726b();
        return objArr2;
    }

    /* renamed from: f */
    public <T> T[] m5722f(Object[] objArr, int i, Class<T> cls) {
        int i2 = this.f66193c + i;
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i2));
        m5727a(tArr, i2, objArr, i);
        m5726b();
        return tArr;
    }

    /* renamed from: g */
    public Object[] m5721g() {
        m5726b();
        Object[] objArr = this.f66194d;
        Object[] objArr2 = objArr;
        if (objArr == null) {
            objArr2 = new Object[12];
            this.f66194d = objArr2;
        }
        return objArr2;
    }

    /* renamed from: h */
    public Object[] m5720h(Object[] objArr, int i) {
        m5726b();
        Object[] objArr2 = this.f66194d;
        if (objArr2 == null || objArr2.length < i) {
            this.f66194d = new Object[Math.max(12, i)];
        }
        System.arraycopy(objArr, 0, this.f66194d, 0, i);
        return this.f66194d;
    }
}
