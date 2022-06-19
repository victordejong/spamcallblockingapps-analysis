package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.util.Map;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23907c0;
/* renamed from: e.k.a.c.l0.s.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/m.class */
public final class C23795m {

    /* renamed from: a */
    public final C23796a[] f65911a;

    /* renamed from: b */
    public final int f65912b;

    /* renamed from: e.k.a.c.l0.s.m$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/m$a.class */
    public static final class C23796a {

        /* renamed from: a */
        public final AbstractC23890n<Object> f65913a;

        /* renamed from: b */
        public final C23796a f65914b;

        /* renamed from: c */
        public final Class<?> f65915c;

        /* renamed from: d */
        public final AbstractC23698i f65916d;

        /* renamed from: e */
        public final boolean f65917e;

        public C23796a(C23796a c23796a, C23907c0 c23907c0, AbstractC23890n<Object> abstractC23890n) {
            this.f65914b = c23796a;
            this.f65913a = abstractC23890n;
            this.f65917e = c23907c0.f66148d;
            this.f65915c = c23907c0.f66146b;
            this.f65916d = c23907c0.f66147c;
        }
    }

    public C23795m(Map<C23907c0, AbstractC23890n<Object>> map) {
        int i;
        int size = map.size();
        int i2 = size <= 64 ? size + size : size + (size >> 2);
        int i3 = 8;
        while (true) {
            i = i3;
            if (i >= i2) {
                break;
            }
            i3 = i + i;
        }
        this.f65912b = i - 1;
        C23796a[] c23796aArr = new C23796a[i];
        for (Map.Entry<C23907c0, AbstractC23890n<Object>> entry : map.entrySet()) {
            C23907c0 key = entry.getKey();
            int i4 = key.f66145a & this.f65912b;
            c23796aArr[i4] = new C23796a(c23796aArr[i4], key, entry.getValue());
        }
        this.f65911a = c23796aArr;
    }

    /* renamed from: a */
    public AbstractC23890n<Object> m6059a(AbstractC23698i abstractC23698i) {
        C23796a c23796a;
        C23796a c23796a2 = this.f65911a[(abstractC23698i.f65729b - 1) & this.f65912b];
        if (c23796a2 == null) {
            return null;
        }
        C23796a c23796a3 = c23796a2;
        if (!c23796a2.f65917e && abstractC23698i.equals(c23796a2.f65916d)) {
            return c23796a2.f65913a;
        }
        do {
            c23796a = c23796a3.f65914b;
            if (c23796a == null) {
                return null;
            }
            c23796a3 = c23796a;
        } while (!(!c23796a.f65917e && abstractC23698i.equals(c23796a.f65916d)));
        return c23796a.f65913a;
    }

    /* renamed from: b */
    public AbstractC23890n<Object> m6058b(Class<?> cls) {
        C23796a c23796a;
        C23796a c23796a2 = this.f65911a[cls.getName().hashCode() & this.f65912b];
        if (c23796a2 == null) {
            return null;
        }
        C23796a c23796a3 = c23796a2;
        if (c23796a2.f65915c == cls && !c23796a2.f65917e) {
            return c23796a2.f65913a;
        }
        do {
            c23796a = c23796a3.f65914b;
            if (c23796a == null) {
                return null;
            }
            c23796a3 = c23796a;
        } while (!(c23796a.f65915c == cls && !c23796a.f65917e));
        return c23796a.f65913a;
    }
}
