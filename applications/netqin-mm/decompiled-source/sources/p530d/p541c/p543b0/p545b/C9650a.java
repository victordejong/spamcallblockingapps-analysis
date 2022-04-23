package p530d.p541c.p543b0.p545b;

import p530d.p541c.p542a0.AbstractC9641d;
/* renamed from: d.c.b0.b.a */
/* loaded from: classes2-dex2jar.jar:d/c/b0/b/a.class */
public final class C9650a {

    /* renamed from: d.c.b0.b.a$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/b/a$a.class */
    public static final class C9651a implements AbstractC9641d<Object, Object> {
        @Override // p530d.p541c.p542a0.AbstractC9641d
        /* renamed from: a */
        public boolean mo2094a(Object obj, Object obj2) {
            return C9650a.m2096a(obj, obj2);
        }
    }

    static {
        new C9651a();
    }

    /* renamed from: a */
    public static int m2100a(int i, int i2) {
        return i < i2 ? -1 : i > i2 ? 1 : 0;
    }

    /* renamed from: a */
    public static int m2099a(int i, String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }

    /* renamed from: a */
    public static int m2098a(long j, long j2) {
        return j < j2 ? -1 : j > j2 ? 1 : 0;
    }

    /* renamed from: a */
    public static long m2097a(long j, String str) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j);
    }

    /* renamed from: a */
    public static <T> T m2095a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static boolean m2096a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
