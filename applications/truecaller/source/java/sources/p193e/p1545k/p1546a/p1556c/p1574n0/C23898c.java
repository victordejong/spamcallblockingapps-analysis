package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.lang.reflect.Array;
/* renamed from: e.k.a.c.n0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c.class */
public final class C23898c {

    /* renamed from: a */
    public C23900b f66135a = null;

    /* renamed from: b */
    public C23901c f66136b = null;

    /* renamed from: c */
    public C23906h f66137c = null;

    /* renamed from: d */
    public C23904f f66138d = null;

    /* renamed from: e */
    public C23905g f66139e = null;

    /* renamed from: f */
    public C23903e f66140f = null;

    /* renamed from: g */
    public C23902d f66141g = null;

    /* renamed from: e.k.a.c.n0.c$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c$a.class */
    public static final class C23899a {

        /* renamed from: a */
        public final /* synthetic */ Class f66142a;

        /* renamed from: b */
        public final /* synthetic */ int f66143b;

        /* renamed from: c */
        public final /* synthetic */ Object f66144c;

        public C23899a(Class cls, int i, Object obj) {
            this.f66142a = cls;
            this.f66143b = i;
            this.f66144c = obj;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!C23914g.m5746u(obj, this.f66142a) || Array.getLength(obj) != this.f66143b) {
                return false;
            }
            for (int i = 0; i < this.f66143b; i++) {
                Object obj2 = Array.get(this.f66144c, i);
                Object obj3 = Array.get(obj, i);
                if (obj2 != obj3 && obj2 != null && !obj2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: e.k.a.c.n0.c$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c$b.class */
    public static final class C23900b extends AbstractC23934v<boolean[]> {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23934v
        /* renamed from: a */
        public boolean[] mo5719a(int i) {
            return new boolean[i];
        }
    }

    /* renamed from: e.k.a.c.n0.c$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c$c.class */
    public static final class C23901c extends AbstractC23934v<byte[]> {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23934v
        /* renamed from: a */
        public byte[] mo5719a(int i) {
            return new byte[i];
        }
    }

    /* renamed from: e.k.a.c.n0.c$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c$d.class */
    public static final class C23902d extends AbstractC23934v<double[]> {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23934v
        /* renamed from: a */
        public double[] mo5719a(int i) {
            return new double[i];
        }
    }

    /* renamed from: e.k.a.c.n0.c$e */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c$e.class */
    public static final class C23903e extends AbstractC23934v<float[]> {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23934v
        /* renamed from: a */
        public float[] mo5719a(int i) {
            return new float[i];
        }
    }

    /* renamed from: e.k.a.c.n0.c$f */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c$f.class */
    public static final class C23904f extends AbstractC23934v<int[]> {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23934v
        /* renamed from: a */
        public int[] mo5719a(int i) {
            return new int[i];
        }
    }

    /* renamed from: e.k.a.c.n0.c$g */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c$g.class */
    public static final class C23905g extends AbstractC23934v<long[]> {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23934v
        /* renamed from: a */
        public long[] mo5719a(int i) {
            return new long[i];
        }
    }

    /* renamed from: e.k.a.c.n0.c$h */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c$h.class */
    public static final class C23906h extends AbstractC23934v<short[]> {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23934v
        /* renamed from: a */
        public short[] mo5719a(int i) {
            return new short[i];
        }
    }

    /* renamed from: a */
    public static Object m5782a(Object obj) {
        return new C23899a(obj.getClass(), Array.getLength(obj), obj);
    }
}
