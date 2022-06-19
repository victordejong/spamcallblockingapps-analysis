package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
/* renamed from: e.k.a.c.d0.y.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/c.class */
public class C23501c implements Iterable<AbstractC23488u>, Serializable {

    /* renamed from: a */
    public final boolean f65206a;

    /* renamed from: b */
    public int f65207b;

    /* renamed from: c */
    public int f65208c;

    /* renamed from: d */
    public int f65209d;

    /* renamed from: e */
    public Object[] f65210e;

    /* renamed from: f */
    public final AbstractC23488u[] f65211f;

    /* renamed from: g */
    public final Map<String, List<C23951v>> f65212g;

    /* renamed from: h */
    public final Map<String, String> f65213h;

    /* renamed from: i */
    public final Locale f65214i;

    public C23501c(C23501c c23501c, AbstractC23488u abstractC23488u, int i, int i2) {
        this.f65206a = c23501c.f65206a;
        this.f65214i = c23501c.f65214i;
        this.f65207b = c23501c.f65207b;
        this.f65208c = c23501c.f65208c;
        this.f65209d = c23501c.f65209d;
        this.f65212g = c23501c.f65212g;
        this.f65213h = c23501c.f65213h;
        Object[] objArr = c23501c.f65210e;
        this.f65210e = Arrays.copyOf(objArr, objArr.length);
        AbstractC23488u[] abstractC23488uArr = c23501c.f65211f;
        AbstractC23488u[] abstractC23488uArr2 = (AbstractC23488u[]) Arrays.copyOf(abstractC23488uArr, abstractC23488uArr.length);
        this.f65211f = abstractC23488uArr2;
        this.f65210e[i] = abstractC23488u;
        abstractC23488uArr2[i2] = abstractC23488u;
    }

    public C23501c(C23501c c23501c, AbstractC23488u abstractC23488u, String str, int i) {
        this.f65206a = c23501c.f65206a;
        this.f65214i = c23501c.f65214i;
        this.f65207b = c23501c.f65207b;
        this.f65208c = c23501c.f65208c;
        this.f65209d = c23501c.f65209d;
        this.f65212g = c23501c.f65212g;
        this.f65213h = c23501c.f65213h;
        Object[] objArr = c23501c.f65210e;
        this.f65210e = Arrays.copyOf(objArr, objArr.length);
        AbstractC23488u[] abstractC23488uArr = c23501c.f65211f;
        int length = abstractC23488uArr.length;
        AbstractC23488u[] abstractC23488uArr2 = (AbstractC23488u[]) Arrays.copyOf(abstractC23488uArr, length + 1);
        this.f65211f = abstractC23488uArr2;
        abstractC23488uArr2[length] = abstractC23488u;
        int i2 = this.f65207b + 1;
        int i3 = i << 1;
        Object[] objArr2 = this.f65210e;
        int i4 = i3;
        if (objArr2[i3] != null) {
            int i5 = ((i >> 1) + i2) << 1;
            i4 = i5;
            if (objArr2[i5] != null) {
                int i6 = this.f65209d;
                int i7 = ((i2 + (i2 >> 1)) << 1) + i6;
                this.f65209d = i6 + 2;
                i4 = i7;
                if (i7 >= objArr2.length) {
                    this.f65210e = Arrays.copyOf(objArr2, objArr2.length + 4);
                    i4 = i7;
                }
            }
        }
        Object[] objArr3 = this.f65210e;
        objArr3[i4] = str;
        objArr3[i4 + 1] = abstractC23488u;
    }

    public C23501c(C23501c c23501c, boolean z) {
        this.f65206a = z;
        this.f65214i = c23501c.f65214i;
        this.f65212g = c23501c.f65212g;
        this.f65213h = c23501c.f65213h;
        AbstractC23488u[] abstractC23488uArr = c23501c.f65211f;
        AbstractC23488u[] abstractC23488uArr2 = (AbstractC23488u[]) Arrays.copyOf(abstractC23488uArr, abstractC23488uArr.length);
        this.f65211f = abstractC23488uArr2;
        m6724g(Arrays.asList(abstractC23488uArr2));
    }

    public C23501c(boolean z, Collection<AbstractC23488u> collection, Map<String, List<C23951v>> map, Locale locale) {
        HashMap hashMap;
        this.f65206a = z;
        this.f65211f = (AbstractC23488u[]) collection.toArray(new AbstractC23488u[collection.size()]);
        this.f65212g = map;
        this.f65214i = locale;
        if (map == null || map.isEmpty()) {
            hashMap = Collections.emptyMap();
        } else {
            HashMap hashMap2 = new HashMap();
            Iterator<Map.Entry<String, List<C23951v>>> it = map.entrySet().iterator();
            while (true) {
                hashMap = hashMap2;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, List<C23951v>> next = it.next();
                String key = next.getKey();
                String lowerCase = z ? key.toLowerCase(locale) : key;
                for (C23951v c23951v : next.getValue()) {
                    String str = c23951v.f66304a;
                    String str2 = str;
                    if (z) {
                        str2 = str.toLowerCase(locale);
                    }
                    hashMap2.put(str2, lowerCase);
                }
            }
        }
        this.f65213h = hashMap;
        m6724g(collection);
    }

    /* renamed from: a */
    public final int m6730a(AbstractC23488u abstractC23488u) {
        int length = this.f65211f.length;
        for (int i = 0; i < length; i++) {
            if (this.f65211f[i] == abstractC23488u) {
                return i;
            }
        }
        throw new IllegalStateException(C22128a.m8618h(C22128a.m8728C("Illegal state: property '"), abstractC23488u.f65171c.f66304a, "' missing from _propsInOrder"));
    }

    /* renamed from: b */
    public final AbstractC23488u m6729b(String str) {
        AbstractC23488u abstractC23488u;
        if (str == null) {
            return null;
        }
        int m6728c = m6728c(str);
        int i = m6728c << 1;
        Object obj = this.f65210e[i];
        if (str.equals(obj)) {
            return (AbstractC23488u) this.f65210e[i + 1];
        }
        if (obj == null) {
            return null;
        }
        int i2 = this.f65207b + 1;
        int i3 = ((m6728c >> 1) + i2) << 1;
        Object obj2 = this.f65210e[i3];
        if (str.equals(obj2)) {
            abstractC23488u = (AbstractC23488u) this.f65210e[i3 + 1];
        } else {
            abstractC23488u = null;
            if (obj2 != null) {
                int i4 = (i2 + (i2 >> 1)) << 1;
                int i5 = this.f65209d;
                int i6 = i4;
                while (true) {
                    abstractC23488u = null;
                    if (i6 >= i5 + i4) {
                        break;
                    }
                    Object obj3 = this.f65210e[i6];
                    if (obj3 == str || str.equals(obj3)) {
                        break;
                    }
                    i6 += 2;
                }
                abstractC23488u = (AbstractC23488u) this.f65210e[i6 + 1];
            }
        }
        return abstractC23488u;
    }

    /* renamed from: c */
    public final int m6728c(String str) {
        return str.hashCode() & this.f65207b;
    }

    /* renamed from: d */
    public C23501c m6727d() {
        int length = this.f65210e.length;
        int i = 1;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                AbstractC23488u abstractC23488u = (AbstractC23488u) this.f65210e[i];
                int i4 = i3;
                if (abstractC23488u != null) {
                    abstractC23488u.mo6756g(i3);
                    i4 = i3 + 1;
                }
                i += 2;
                i2 = i4;
            } else {
                return this;
            }
        }
    }

    /* renamed from: e */
    public AbstractC23488u m6726e(String str) {
        AbstractC23488u abstractC23488u;
        if (str != null) {
            String str2 = str;
            if (this.f65206a) {
                str2 = str.toLowerCase(this.f65214i);
            }
            int hashCode = str2.hashCode() & this.f65207b;
            int i = hashCode << 1;
            Object obj = this.f65210e[i];
            if (obj == str2 || str2.equals(obj)) {
                return (AbstractC23488u) this.f65210e[i + 1];
            }
            if (obj == null) {
                abstractC23488u = m6729b(this.f65213h.get(str2));
            } else {
                int i2 = this.f65207b + 1;
                int i3 = ((hashCode >> 1) + i2) << 1;
                Object obj2 = this.f65210e[i3];
                if (str2.equals(obj2)) {
                    abstractC23488u = (AbstractC23488u) this.f65210e[i3 + 1];
                } else {
                    if (obj2 != null) {
                        int i4 = (i2 + (i2 >> 1)) << 1;
                        int i5 = this.f65209d;
                        for (int i6 = i4; i6 < i5 + i4; i6 += 2) {
                            Object obj3 = this.f65210e[i6];
                            if (obj3 == str2 || str2.equals(obj3)) {
                                abstractC23488u = (AbstractC23488u) this.f65210e[i6 + 1];
                                break;
                            }
                        }
                    }
                    abstractC23488u = m6729b(this.f65213h.get(str2));
                }
            }
            return abstractC23488u;
        }
        throw new IllegalArgumentException("Cannot pass null property name");
    }

    /* renamed from: f */
    public final String m6725f(AbstractC23488u abstractC23488u) {
        return this.f65206a ? abstractC23488u.f65171c.f66304a.toLowerCase(this.f65214i) : abstractC23488u.f65171c.f66304a;
    }

    /* renamed from: g */
    public void m6724g(Collection<AbstractC23488u> collection) {
        int i;
        int size = collection.size();
        this.f65208c = size;
        if (size <= 5) {
            i = 8;
        } else if (size > 12) {
            int i2 = 32;
            while (true) {
                i = i2;
                if (i >= size + (size >> 2)) {
                    break;
                }
                i2 = i + i;
            }
        } else {
            i = 16;
        }
        this.f65207b = i - 1;
        int i3 = (i >> 1) + i;
        Object[] objArr = new Object[i3 * 2];
        int i4 = 0;
        for (AbstractC23488u abstractC23488u : collection) {
            if (abstractC23488u != null) {
                String m6725f = m6725f(abstractC23488u);
                int m6728c = m6728c(m6725f);
                int i5 = m6728c << 1;
                Object[] objArr2 = objArr;
                int i6 = i4;
                int i7 = i5;
                if (objArr[i5] != null) {
                    int i8 = ((m6728c >> 1) + i) << 1;
                    objArr2 = objArr;
                    i6 = i4;
                    i7 = i8;
                    if (objArr[i8] != null) {
                        int i9 = (i3 << 1) + i4;
                        int i10 = i4 + 2;
                        objArr2 = objArr;
                        i6 = i10;
                        i7 = i9;
                        if (i9 >= objArr.length) {
                            objArr2 = Arrays.copyOf(objArr, objArr.length + 4);
                            i7 = i9;
                            i6 = i10;
                        }
                    }
                }
                objArr2[i7] = m6725f;
                objArr2[i7 + 1] = abstractC23488u;
                objArr = objArr2;
                i4 = i6;
            }
        }
        this.f65210e = objArr;
        this.f65209d = i4;
    }

    /* renamed from: h */
    public void m6723h(AbstractC23488u abstractC23488u) {
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList(this.f65208c);
        String m6725f = m6725f(abstractC23488u);
        int length = this.f65210e.length;
        int i = 1;
        boolean z3 = false;
        while (true) {
            z = z3;
            if (i >= length) {
                break;
            }
            Object[] objArr = this.f65210e;
            AbstractC23488u abstractC23488u2 = (AbstractC23488u) objArr[i];
            if (abstractC23488u2 == null) {
                z2 = z;
            } else {
                z2 = z;
                if (!z) {
                    boolean equals = m6725f.equals(objArr[i - 1]);
                    z2 = equals;
                    if (equals) {
                        this.f65211f[m6730a(abstractC23488u2)] = null;
                        z2 = equals;
                    }
                }
                arrayList.add(abstractC23488u2);
            }
            i += 2;
            z3 = z2;
        }
        if (z) {
            m6724g(arrayList);
            return;
        }
        throw new NoSuchElementException(C22128a.m8618h(C22128a.m8728C("No entry '"), abstractC23488u.f65171c.f66304a, "' found, can't remove"));
    }

    /* renamed from: i */
    public C23501c m6722i(AbstractC23488u abstractC23488u) {
        String m6725f = m6725f(abstractC23488u);
        int length = this.f65210e.length;
        for (int i = 1; i < length; i += 2) {
            AbstractC23488u abstractC23488u2 = (AbstractC23488u) this.f65210e[i];
            if (abstractC23488u2 != null && abstractC23488u2.f65171c.f66304a.equals(m6725f)) {
                return new C23501c(this, abstractC23488u, i, m6730a(abstractC23488u2));
            }
        }
        return new C23501c(this, abstractC23488u, m6725f, m6728c(m6725f));
    }

    @Override // java.lang.Iterable
    public Iterator<AbstractC23488u> iterator() {
        ArrayList arrayList = new ArrayList(this.f65208c);
        int length = this.f65210e.length;
        for (int i = 1; i < length; i += 2) {
            AbstractC23488u abstractC23488u = (AbstractC23488u) this.f65210e[i];
            if (abstractC23488u != null) {
                arrayList.add(abstractC23488u);
            }
        }
        return arrayList.iterator();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Properties=[");
        Iterator<AbstractC23488u> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            AbstractC23488u next = it.next();
            if (i > 0) {
                m8728C.append(", ");
            }
            m8728C.append(next.f65171c.f66304a);
            m8728C.append('(');
            m8728C.append(next.f65172d);
            m8728C.append(')');
            i++;
        }
        m8728C.append(']');
        if (!this.f65212g.isEmpty()) {
            m8728C.append("(aliases: ");
            m8728C.append(this.f65212g);
            m8728C.append(")");
        }
        return m8728C.toString();
    }
}
