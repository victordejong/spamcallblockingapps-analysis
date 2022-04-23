package p131c.p161d.p266c.p269c;

import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.n */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/n.class */
public final class C5006n {
    /* renamed from: a */
    public static int m24663a(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    /* renamed from: a */
    public static long m24662a(long j, String str) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + j);
    }

    /* renamed from: a */
    public static void m24661a(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        } else if (obj2 == null) {
            throw new NullPointerException("null value in entry: " + obj + "=null");
        }
    }

    /* renamed from: a */
    public static void m24660a(boolean z) {
        C4933n.m24775b(z, "no calls to next() since the last call to remove()");
    }

    /* renamed from: b */
    public static void m24659b(int i, String str) {
        if (i <= 0) {
            throw new IllegalArgumentException(str + " must be positive but was: " + i);
        }
    }
}
