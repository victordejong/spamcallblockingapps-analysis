package p081h.p203i.p316b.p318b;

import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.d */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/d.class */
public final class C9317d {
    /* renamed from: a */
    public static int m15440a(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    /* renamed from: a */
    public static void m15439a(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        } else if (obj2 == null) {
            throw new NullPointerException("null value in entry: " + obj + "=null");
        }
    }

    /* renamed from: a */
    public static void m15438a(boolean z) {
        C9301k.m15467b(z, "no calls to next() since the last call to remove()");
    }
}
