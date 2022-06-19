package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23285b;
import p193e.p1545k.p1546a.p1547a.AbstractC23304h;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23640c0;
/* renamed from: e.k.a.c.g0.b0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/b0.class */
public class C23637b0 {

    /* renamed from: a */
    public final AbstractC23458k<?> f65516a;

    /* renamed from: b */
    public final AbstractC23633a f65517b;

    /* renamed from: c */
    public final boolean f65518c;

    /* renamed from: d */
    public final AbstractC23698i f65519d;

    /* renamed from: e */
    public final C23638c f65520e;

    /* renamed from: f */
    public final AbstractC23659g0<?> f65521f;

    /* renamed from: g */
    public final AbstractC23426b f65522g;

    /* renamed from: h */
    public final boolean f65523h;

    /* renamed from: i */
    public boolean f65524i;

    /* renamed from: j */
    public LinkedHashMap<String, C23640c0> f65525j;

    /* renamed from: k */
    public LinkedList<C23640c0> f65526k;

    /* renamed from: l */
    public Map<C23951v, C23951v> f65527l;

    /* renamed from: m */
    public LinkedList<AbstractC23663i> f65528m;

    /* renamed from: n */
    public LinkedList<AbstractC23663i> f65529n;

    /* renamed from: o */
    public LinkedList<C23664j> f65530o;

    /* renamed from: p */
    public LinkedList<AbstractC23663i> f65531p;

    /* renamed from: q */
    public LinkedList<AbstractC23663i> f65532q;

    /* renamed from: r */
    public LinkedList<AbstractC23663i> f65533r;

    /* renamed from: s */
    public HashSet<String> f65534s;

    /* renamed from: t */
    public LinkedHashMap<Object, AbstractC23663i> f65535t;

    public C23637b0(AbstractC23458k<?> abstractC23458k, boolean z, AbstractC23698i abstractC23698i, C23638c c23638c, AbstractC23633a abstractC23633a) {
        this.f65516a = abstractC23458k;
        this.f65518c = z;
        this.f65519d = abstractC23698i;
        this.f65520e = c23638c;
        if (abstractC23458k.m6860n()) {
            this.f65523h = true;
            this.f65522g = abstractC23458k.m6864e();
        } else {
            this.f65523h = false;
            this.f65522g = AbstractC23692z.f65683a;
        }
        this.f65521f = abstractC23458k.mo6854k(abstractC23698i.f65728a, c23638c);
        this.f65517b = abstractC23633a;
        abstractC23458k.m6859o(EnumC23942p.USE_STD_BEAN_NAMING);
    }

    /* renamed from: a */
    public void m6453a(Map<String, C23640c0> map, C23669m c23669m) {
        C23640c0 c23640c0;
        AbstractC23304h.EnumC23305a mo6289e;
        String mo6269o = this.f65522g.mo6269o(c23669m);
        String str = mo6269o;
        if (mo6269o == null) {
            str = "";
        }
        C23951v mo6257u = this.f65522g.mo6257u(c23669m);
        boolean z = mo6257u != null && !mo6257u.m5661e();
        if (!z) {
            if (str.isEmpty() || (mo6289e = this.f65522g.mo6289e(this.f65516a, c23669m.f65631c)) == null || mo6289e == AbstractC23304h.EnumC23305a.DISABLED) {
                return;
            }
            mo6257u = C23951v.m5665a(str);
        }
        String m6452b = m6452b(str);
        if (!z || !m6452b.isEmpty()) {
            c23640c0 = m6448f(map, m6452b);
        } else {
            String str2 = mo6257u.f66304a;
            C23640c0 c23640c02 = map.get(str2);
            c23640c0 = c23640c02;
            if (c23640c02 == null) {
                c23640c0 = new C23640c0(this.f65516a, this.f65522g, this.f65518c, mo6257u);
                map.put(str2, c23640c0);
            }
        }
        c23640c0.f65561h = new C23640c0.C23645e<>(c23669m, c23640c0.f65561h, mo6257u, z, true, false);
        this.f65526k.add(c23640c0);
    }

    /* renamed from: b */
    public final String m6452b(String str) {
        Map<C23951v, C23951v> map = this.f65527l;
        String str2 = str;
        if (map != null) {
            C23951v c23951v = map.get(m6449e(str));
            str2 = str;
            if (c23951v != null) {
                str2 = c23951v.f66304a;
            }
        }
        return str2;
    }

    /* renamed from: c */
    public void m6451c(String str) {
        if (this.f65518c || str == null) {
            return;
        }
        if (this.f65534s == null) {
            this.f65534s = new HashSet<>();
        }
        this.f65534s.add(str);
    }

    /* renamed from: d */
    public void m6450d(AbstractC23285b.C23286a c23286a, AbstractC23663i abstractC23663i) {
        if (c23286a == null) {
            return;
        }
        Object obj = c23286a.f64436a;
        if (this.f65535t == null) {
            this.f65535t = new LinkedHashMap<>();
        }
        AbstractC23663i put = this.f65535t.put(obj, abstractC23663i);
        if (put == null || put.getClass() != abstractC23663i.getClass()) {
            return;
        }
        String name = obj.getClass().getName();
        throw new IllegalArgumentException("Duplicate injectable value with id '" + obj + "' (of type " + name + ")");
    }

    /* renamed from: e */
    public final C23951v m6449e(String str) {
        return C23951v.m5664b(str, null);
    }

    /* renamed from: f */
    public C23640c0 m6448f(Map<String, C23640c0> map, String str) {
        C23640c0 c23640c0 = map.get(str);
        C23640c0 c23640c02 = c23640c0;
        if (c23640c0 == null) {
            c23640c02 = new C23640c0(this.f65516a, this.f65522g, this.f65518c, C23951v.m5665a(str));
            map.put(str, c23640c02);
        }
        return c23640c02;
    }

    /* renamed from: g */
    public boolean m6447g(C23640c0 c23640c0, List<C23640c0> list) {
        if (list != null) {
            String str = c23640c0.f65559f.f66304a;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).f65559f.f66304a.equals(str)) {
                    list.set(i, c23640c0);
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:255:0x0869, code lost:
        if (r20 != r0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0898, code lost:
        if (r20 != r0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x08c7, code lost:
        if (r20 != r0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x08f6, code lost:
        if (r20 != r0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x091f, code lost:
        if (r20 != r0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x094e, code lost:
        if (r20 != r0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x097d, code lost:
        if (r20 != r0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x09ac, code lost:
        if (r20 != r0) goto L299;
     */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0fca  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x1017  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x1025  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6446h() {
        /*
            Method dump skipped, instructions count: 5147
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1564g0.C23637b0.m6446h():void");
    }

    /* renamed from: i */
    public void m6445i(String str, Object... objArr) {
        String str2 = str;
        if (objArr.length > 0) {
            str2 = String.format(str, objArr);
        }
        StringBuilder m8728C = C22128a.m8728C("Problem with definition of ");
        m8728C.append(this.f65520e);
        m8728C.append(": ");
        m8728C.append(str2);
        throw new IllegalArgumentException(m8728C.toString());
    }
}
