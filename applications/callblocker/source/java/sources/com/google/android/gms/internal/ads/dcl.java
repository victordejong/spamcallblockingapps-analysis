package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcl.class */
public final class dcl<T extends dcn<T>> {

    /* renamed from: d */
    private static final dcl f13990d = new dcl(true);

    /* renamed from: a */
    final dfe<T, Object> f13991a;

    /* renamed from: b */
    private boolean f13992b;

    /* renamed from: c */
    private boolean f13993c;

    private dcl() {
        this.f13991a = dfe.m9836a(16);
    }

    private dcl(dfe<T, Object> dfeVar) {
        this.f13991a = dfeVar;
        m10116b();
    }

    private dcl(boolean z) {
        this(dfe.m9836a(0));
        m10116b();
    }

    /* renamed from: a */
    public static int m10122a(dcn<?> dcnVar, Object obj) {
        int m10121a;
        int i = 0;
        int i2 = 0;
        dgi mo10059b = dcnVar.mo10059b();
        int mo10062a = dcnVar.mo10062a();
        if (!dcnVar.mo10057d()) {
            m10121a = m10121a(mo10059b, mo10062a, obj);
        } else if (!dcnVar.mo10056e()) {
            Iterator it = ((List) obj).iterator();
            while (true) {
                m10121a = i;
                if (!it.hasNext()) {
                    break;
                }
                i += m10121a(mo10059b, mo10062a, it.next());
            }
        } else {
            for (Object obj2 : (List) obj) {
                i2 += m10114b(mo10059b, obj2);
            }
            m10121a = zzebk.m6578l(i2) + zzebk.m6600e(mo10062a) + i2;
        }
        return m10121a;
    }

    /* renamed from: a */
    public static int m10121a(dgi dgiVar, int i, Object obj) {
        int m6600e = zzebk.m6600e(i);
        if (dgiVar == dgi.GROUP) {
            dcz.m10048a((deg) obj);
            m6600e <<= 1;
        }
        return m6600e + m10114b(dgiVar, obj);
    }

    /* renamed from: a */
    public static <T extends dcn<T>> dcl<T> m10125a() {
        return f13990d;
    }

    /* renamed from: a */
    private final Object m10123a(T t) {
        Object obj = this.f13991a.get(t);
        deg degVar = obj;
        if (obj instanceof ddg) {
            ddg ddgVar = (ddg) obj;
            degVar = ddg.m10037a();
        }
        return degVar;
    }

    /* renamed from: a */
    private static Object m10118a(Object obj) {
        del delVar;
        if (obj instanceof del) {
            delVar = ((del) obj).mo9934a();
        } else {
            delVar = obj;
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                delVar = new byte[bArr.length];
                System.arraycopy(bArr, 0, delVar, 0, bArr.length);
            }
        }
        return delVar;
    }

    /* renamed from: a */
    private static void m10120a(dgi dgiVar, Object obj) {
        boolean z = false;
        dcz.m10047a(obj);
        switch (dco.f13996a[dgiVar.m9629a().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                if ((obj instanceof dbi) || (obj instanceof byte[])) {
                    z = true;
                    break;
                }
                break;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof dcy)) {
                    z = true;
                    break;
                }
                break;
            case 9:
                if ((obj instanceof deg) || (obj instanceof ddg)) {
                    z = true;
                    break;
                }
                break;
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: a */
    public static void m10119a(zzebk zzebkVar, dgi dgiVar, int i, Object obj) {
        if (dgiVar == dgi.GROUP) {
            dcz.m10048a((deg) obj);
            zzebkVar.mo6573a(i, 3);
            ((deg) obj).mo9986a(zzebkVar);
            zzebkVar.mo6573a(i, 4);
            return;
        }
        zzebkVar.mo6573a(i, dgiVar.m9628b());
        switch (dco.f13997b[dgiVar.ordinal()]) {
            case 1:
                zzebkVar.m6636a(((Double) obj).doubleValue());
                return;
            case 2:
                zzebkVar.m6635a(((Float) obj).floatValue());
                return;
            case 3:
                zzebkVar.mo6566a(((Long) obj).longValue());
                return;
            case 4:
                zzebkVar.mo6566a(((Long) obj).longValue());
                return;
            case 5:
                zzebkVar.mo6574a(((Integer) obj).intValue());
                return;
            case 6:
                zzebkVar.mo6555c(((Long) obj).longValue());
                return;
            case 7:
                zzebkVar.mo6553d(((Integer) obj).intValue());
                return;
            case 8:
                zzebkVar.m6628a(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((deg) obj).mo9986a(zzebkVar);
                return;
            case 10:
                zzebkVar.mo6564a((deg) obj);
                return;
            case 11:
                if (obj instanceof dbi) {
                    zzebkVar.mo6565a((dbi) obj);
                    return;
                } else {
                    zzebkVar.mo6563a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof dbi) {
                    zzebkVar.mo6565a((dbi) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzebkVar.mo6558b(bArr, 0, bArr.length);
                return;
            case 13:
                zzebkVar.mo6561b(((Integer) obj).intValue());
                return;
            case 14:
                zzebkVar.mo6553d(((Integer) obj).intValue());
                return;
            case 15:
                zzebkVar.mo6555c(((Long) obj).longValue());
                return;
            case 16:
                zzebkVar.m6608c(((Integer) obj).intValue());
                return;
            case 17:
                zzebkVar.m6615b(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof dcy) {
                    zzebkVar.mo6574a(((dcy) obj).mo8208a());
                    return;
                } else {
                    zzebkVar.mo6574a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: a */
    private static <T extends dcn<T>> boolean m10117a(Map.Entry<T, Object> entry) {
        boolean z;
        T key = entry.getKey();
        if (key.mo10058c() == dgp.MESSAGE) {
            if (key.mo10057d()) {
                for (deg degVar : (List) entry.getValue()) {
                    if (!degVar.mo9976o()) {
                        z = false;
                        break;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof deg) {
                    if (!((deg) value).mo9976o()) {
                        z = false;
                    }
                } else if (!(value instanceof ddg)) {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                } else {
                    z = true;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: b */
    private static int m10114b(dgi dgiVar, Object obj) {
        int m6580k;
        switch (dco.f13997b[dgiVar.ordinal()]) {
            case 1:
                m6580k = zzebk.m6625b(((Double) obj).doubleValue());
                break;
            case 2:
                m6580k = zzebk.m6624b(((Float) obj).floatValue());
                break;
            case 3:
                m6580k = zzebk.m6601d(((Long) obj).longValue());
                break;
            case 4:
                m6580k = zzebk.m6598e(((Long) obj).longValue());
                break;
            case 5:
                m6580k = zzebk.m6597f(((Integer) obj).intValue());
                break;
            case 6:
                m6580k = zzebk.m6590g(((Long) obj).longValue());
                break;
            case 7:
                m6580k = zzebk.m6585i(((Integer) obj).intValue());
                break;
            case 8:
                m6580k = zzebk.m6611b(((Boolean) obj).booleanValue());
                break;
            case 9:
                m6580k = zzebk.m6605c((deg) obj);
                break;
            case 10:
                if (!(obj instanceof ddg)) {
                    m6580k = zzebk.m6613b((deg) obj);
                    break;
                } else {
                    m6580k = zzebk.m6631a((ddg) obj);
                    break;
                }
            case 11:
                if (!(obj instanceof dbi)) {
                    m6580k = zzebk.m6612b((String) obj);
                    break;
                } else {
                    m6580k = zzebk.m6614b((dbi) obj);
                    break;
                }
            case 12:
                if (!(obj instanceof dbi)) {
                    m6580k = zzebk.m6610b((byte[]) obj);
                    break;
                } else {
                    m6580k = zzebk.m6614b((dbi) obj);
                    break;
                }
            case 13:
                m6580k = zzebk.m6593g(((Integer) obj).intValue());
                break;
            case 14:
                m6580k = zzebk.m6582j(((Integer) obj).intValue());
                break;
            case 15:
                m6580k = zzebk.m6586h(((Long) obj).longValue());
                break;
            case 16:
                m6580k = zzebk.m6589h(((Integer) obj).intValue());
                break;
            case 17:
                m6580k = zzebk.m6594f(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof dcy)) {
                    m6580k = zzebk.m6580k(((Integer) obj).intValue());
                    break;
                } else {
                    m6580k = zzebk.m6580k(((dcy) obj).mo8208a());
                    break;
                }
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return m6580k;
    }

    /* renamed from: b */
    private final void m10115b(T t, Object obj) {
        if (!t.mo10057d()) {
            m10120a(t.mo10059b(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (true) {
                obj = arrayList;
                if (i >= size) {
                    break;
                }
                Object obj2 = arrayList2.get(i);
                i++;
                m10120a(t.mo10059b(), obj2);
            }
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof ddg) {
            this.f13993c = true;
        }
        this.f13991a.m9832a((dfe<T, Object>) t, (T) obj);
    }

    /* renamed from: b */
    private final void m10113b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        deg degVar = value;
        if (value instanceof ddg) {
            ddg ddgVar = (ddg) value;
            degVar = ddg.m10037a();
        }
        if (key.mo10057d()) {
            Object m10123a = m10123a((dcl<T>) key);
            ArrayList arrayList = m10123a;
            if (m10123a == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) degVar) {
                ((List) arrayList).add(m10118a(obj));
            }
            this.f13991a.m9832a((dfe<T, Object>) key, (T) arrayList);
        } else if (key.mo10058c() != dgp.MESSAGE) {
            this.f13991a.m9832a((dfe<T, Object>) key, (T) m10118a(degVar));
        } else {
            Object m10123a2 = m10123a((dcl<T>) key);
            if (m10123a2 == null) {
                this.f13991a.m9832a((dfe<T, Object>) key, (T) m10118a(degVar));
            } else {
                this.f13991a.m9832a((dfe<T, Object>) key, (T) (m10123a2 instanceof del ? key.mo10060a((del) m10123a2, (del) degVar) : key.mo10061a(((deg) m10123a2).mo9982u(), (deg) degVar).mo9987g()));
            }
        }
    }

    /* renamed from: c */
    private static int m10111c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.mo10058c() != dgp.MESSAGE || key.mo10057d() || key.mo10056e()) ? m10122a((dcn<?>) key, value) : value instanceof ddg ? zzebk.m6620b(entry.getKey().mo10062a(), (ddg) value) : zzebk.m6619b(entry.getKey().mo10062a(), (deg) value);
    }

    /* renamed from: a */
    public final void m10124a(dcl<T> dclVar) {
        for (int i = 0; i < dclVar.f13991a.m9828c(); i++) {
            m10113b(dclVar.f13991a.m9830b(i));
        }
        for (Map.Entry<T, Object> entry : dclVar.f13991a.m9825d()) {
            m10113b(entry);
        }
    }

    /* renamed from: b */
    public final void m10116b() {
        if (this.f13992b) {
            return;
        }
        this.f13991a.mo9763a();
        this.f13992b = true;
    }

    /* renamed from: c */
    public final boolean m10112c() {
        return this.f13992b;
    }

    public final /* synthetic */ Object clone() {
        dcl dclVar = new dcl();
        for (int i = 0; i < this.f13991a.m9828c(); i++) {
            Map.Entry<T, Object> m9830b = this.f13991a.m9830b(i);
            dclVar.m10115b((dcl) m9830b.getKey(), m9830b.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f13991a.m9825d()) {
            dclVar.m10115b((dcl) entry.getKey(), entry.getValue());
        }
        dclVar.f13993c = this.f13993c;
        return dclVar;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<T, Object>> m10110d() {
        return this.f13993c ? new ddl(this.f13991a.entrySet().iterator()) : this.f13991a.entrySet().iterator();
    }

    /* renamed from: e */
    public final Iterator<Map.Entry<T, Object>> m10109e() {
        return this.f13993c ? new ddl(this.f13991a.m9823e().iterator()) : this.f13991a.m9823e().iterator();
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof dcl) ? false : this.f13991a.equals(((dcl) obj).f13991a);
    }

    /* renamed from: f */
    public final boolean m10108f() {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= this.f13991a.m9828c()) {
                Iterator<Map.Entry<T, Object>> it = this.f13991a.m9825d().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    } else if (!m10117a((Map.Entry) it.next())) {
                        break;
                    }
                }
            } else if (!m10117a((Map.Entry) this.f13991a.m9830b(i))) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: g */
    public final int m10107g() {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= this.f13991a.m9828c()) {
                break;
            }
            i2++;
            i3 = m10111c(this.f13991a.m9830b(i2)) + i;
        }
        for (Map.Entry<T, Object> entry : this.f13991a.m9825d()) {
            i += m10111c(entry);
        }
        return i;
    }

    public final int hashCode() {
        return this.f13991a.hashCode();
    }
}
