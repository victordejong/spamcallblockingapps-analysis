package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.y.y */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/y.class */
public final class C23535y {

    /* renamed from: a */
    public final int f65300a;

    /* renamed from: b */
    public final AbstractC23491w f65301b;

    /* renamed from: c */
    public final HashMap<String, AbstractC23488u> f65302c;

    /* renamed from: d */
    public final AbstractC23488u[] f65303d;

    /* renamed from: e.k.a.c.d0.y.y$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/y$a.class */
    public static class C23536a extends HashMap<String, AbstractC23488u> {

        /* renamed from: a */
        public final Locale f65304a;

        public C23536a(Locale locale) {
            this.f65304a = locale;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Object get(Object obj) {
            return (AbstractC23488u) super.get(((String) obj).toLowerCase(this.f65304a));
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Object put(Object obj, Object obj2) {
            return (AbstractC23488u) super.put(((String) obj).toLowerCase(this.f65304a), (AbstractC23488u) obj2);
        }
    }

    public C23535y(AbstractC23632g abstractC23632g, AbstractC23491w abstractC23491w, AbstractC23488u[] abstractC23488uArr, boolean z, boolean z2) {
        this.f65301b = abstractC23491w;
        if (z) {
            this.f65302c = new C23536a(abstractC23632g.f65501c.f65071b.f65030i);
        } else {
            this.f65302c = new HashMap<>();
        }
        int length = abstractC23488uArr.length;
        this.f65300a = length;
        this.f65303d = new AbstractC23488u[length];
        int i = 0;
        if (z2) {
            C23624f c23624f = abstractC23632g.f65501c;
            int length2 = abstractC23488uArr.length;
            int i2 = 0;
            while (true) {
                i = 0;
                if (i2 >= length2) {
                    break;
                }
                AbstractC23488u abstractC23488u = abstractC23488uArr[i2];
                if (!abstractC23488u.mo6760w()) {
                    List<C23951v> list = abstractC23488u.f65668b;
                    List<C23951v> list2 = list;
                    if (list == null) {
                        AbstractC23426b m6864e = c23624f.m6864e();
                        List<C23951v> list3 = list;
                        if (m6864e != null) {
                            AbstractC23663i mo6108c = abstractC23488u.mo6108c();
                            list3 = list;
                            if (mo6108c != null) {
                                list3 = m6864e.mo6319D(mo6108c);
                            }
                        }
                        List<C23951v> emptyList = list3 == null ? Collections.emptyList() : list3;
                        abstractC23488u.f65668b = emptyList;
                        list2 = emptyList;
                    }
                    if (!list2.isEmpty()) {
                        for (C23951v c23951v : list2) {
                            this.f65302c.put(c23951v.f66304a, abstractC23488u);
                        }
                    }
                }
                i2++;
            }
        }
        while (i < length) {
            AbstractC23488u abstractC23488u2 = abstractC23488uArr[i];
            this.f65303d[i] = abstractC23488u2;
            if (!abstractC23488u2.mo6760w()) {
                this.f65302c.put(abstractC23488u2.f65171c.f66304a, abstractC23488u2);
            }
            i++;
        }
    }

    /* renamed from: b */
    public static C23535y m6678b(AbstractC23632g abstractC23632g, AbstractC23491w abstractC23491w, AbstractC23488u[] abstractC23488uArr, boolean z) throws C23733k {
        int length = abstractC23488uArr.length;
        AbstractC23488u[] abstractC23488uArr2 = new AbstractC23488u[length];
        for (int i = 0; i < length; i++) {
            AbstractC23488u abstractC23488u = abstractC23488uArr[i];
            AbstractC23488u abstractC23488u2 = abstractC23488u;
            if (!abstractC23488u.mo6749t()) {
                abstractC23488u2 = abstractC23488u.mo6683G(abstractC23632g.m6461s(abstractC23488u.f65172d, abstractC23488u));
            }
            abstractC23488uArr2[i] = abstractC23488u2;
        }
        return new C23535y(abstractC23632g, abstractC23491w, abstractC23488uArr2, z, false);
    }

    /* renamed from: a */
    public Object m6679a(AbstractC23632g abstractC23632g, C23500b0 c23500b0) throws IOException {
        AbstractC23491w abstractC23491w = this.f65301b;
        AbstractC23488u[] abstractC23488uArr = this.f65303d;
        Objects.requireNonNull(abstractC23491w);
        if (c23500b0.f65201e > 0) {
            if (c23500b0.f65203g != null) {
                int length = c23500b0.f65200d.length;
                int i = 0;
                while (true) {
                    int nextClearBit = c23500b0.f65203g.nextClearBit(i);
                    if (nextClearBit >= length) {
                        break;
                    }
                    c23500b0.f65200d[nextClearBit] = c23500b0.m6734a(abstractC23488uArr[nextClearBit]);
                    i = nextClearBit + 1;
                }
            } else {
                int i2 = c23500b0.f65202f;
                int length2 = c23500b0.f65200d.length;
                int i3 = 0;
                while (i3 < length2) {
                    if ((i2 & 1) == 0) {
                        c23500b0.f65200d[i3] = c23500b0.m6734a(abstractC23488uArr[i3]);
                    }
                    i3++;
                    i2 >>= 1;
                }
            }
        }
        if (c23500b0.f65198b.m6488R(EnumC23694h.FAIL_ON_NULL_CREATOR_PROPERTIES)) {
            for (int i4 = 0; i4 < abstractC23488uArr.length; i4++) {
                if (c23500b0.f65200d[i4] == null) {
                    AbstractC23488u abstractC23488u = abstractC23488uArr[i4];
                    c23500b0.f65198b.m6481Y(abstractC23488u, "Null value for creator property '%s' (index %d); `DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES` enabled", abstractC23488u.f65171c.f66304a, Integer.valueOf(abstractC23488uArr[i4].mo6687m()));
                    throw null;
                }
            }
        }
        Object mo6549s = abstractC23491w.mo6549s(abstractC23632g, c23500b0.f65200d);
        Object obj = mo6549s;
        if (mo6549s != null) {
            C23531v c23531v = c23500b0.f65199c;
            Object obj2 = mo6549s;
            if (c23531v != null) {
                Object obj3 = c23500b0.f65205i;
                if (obj3 == null) {
                    Objects.requireNonNull(abstractC23632g);
                    abstractC23632g.m6481Y(c23531v.f65295f, String.format("No Object Id found for an instance of %s, to assign to property '%s'", C23914g.m5761f(mo6549s), c23531v.f65291b), new Object[0]);
                    throw null;
                }
                abstractC23632g.mo6457w(obj3, c23531v.f65292c, c23531v.f65293d).m6720b(mo6549s);
                AbstractC23488u abstractC23488u2 = c23500b0.f65199c.f65295f;
                obj2 = mo6549s;
                if (abstractC23488u2 != null) {
                    obj2 = abstractC23488u2.mo6686A(mo6549s, c23500b0.f65205i);
                }
            }
            AbstractC23495a0 abstractC23495a0 = c23500b0.f65204h;
            while (true) {
                AbstractC23495a0 abstractC23495a02 = abstractC23495a0;
                obj = obj2;
                if (abstractC23495a02 == null) {
                    break;
                }
                abstractC23495a02.mo6742a(obj2);
                abstractC23495a0 = abstractC23495a02.f65189a;
            }
        }
        return obj;
    }

    /* renamed from: c */
    public AbstractC23488u m6677c(String str) {
        return this.f65302c.get(str);
    }
}
