package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdu;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzds.class */
final class zzds<T extends zzdu<T>> {

    /* renamed from: d */
    private static final zzds f7988d = new zzds(true);

    /* renamed from: a */
    final zzfz<T, Object> f7989a;

    /* renamed from: b */
    private boolean f7990b;

    /* renamed from: c */
    private boolean f7991c;

    private zzds() {
        this.f7989a = zzfz.m13637h(16);
    }

    private zzds(zzfz<T, Object> zzfzVar) {
        this.f7989a = zzfzVar;
        m13846k();
    }

    private zzds(boolean z) {
        this(zzfz.m13637h(0));
        m13846k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m13852e(zzha zzhaVar, int i, Object obj) {
        int y0 = zzdk.m13898y0(i);
        int i2 = y0;
        if (zzhaVar == zzha.GROUP) {
            zzeb.m13799h((zzfh) obj);
            i2 = y0 << 1;
        }
        return i2 + m13844m(zzhaVar, obj);
    }

    /* renamed from: f */
    private final Object m13851f(T t) {
        Object obj = this.f7989a.get(t);
        if (!(obj instanceof zzei)) {
            return obj;
        }
        zzei zzeiVar = (zzei) obj;
        zzei.m13792e();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m13850g(zzdk zzdkVar, zzha zzhaVar, int i, Object obj) throws IOException {
        if (zzhaVar == zzha.GROUP) {
            zzfh zzfhVar = (zzfh) obj;
            zzeb.m13799h(zzfhVar);
            zzdkVar.mo13895F(i, 3);
            zzfhVar.mo13751u(zzdkVar);
            zzdkVar.mo13895F(i, 4);
            return;
        }
        zzdkVar.mo13895F(i, zzhaVar.zzdu());
        switch (zzdr.f7987b[zzhaVar.ordinal()]) {
            case 1:
                zzdkVar.m13926e(((Double) obj).doubleValue());
                return;
            case 2:
                zzdkVar.m13924f(((Float) obj).floatValue());
                return;
            case 3:
                zzdkVar.mo13892I(((Long) obj).longValue());
                return;
            case 4:
                zzdkVar.mo13892I(((Long) obj).longValue());
                return;
            case 5:
                zzdkVar.mo13874s0(((Integer) obj).intValue());
                return;
            case 6:
                zzdkVar.mo13885X(((Long) obj).longValue());
                return;
            case 7:
                zzdkVar.mo13871x0(((Integer) obj).intValue());
                return;
            case 8:
                zzdkVar.m13931b0(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzfh) obj).mo13751u(zzdkVar);
                return;
            case 10:
                zzdkVar.mo13891J((zzfh) obj);
                return;
            case 11:
                if (obj instanceof zzct) {
                    zzdkVar.mo13876o((zzct) obj);
                    return;
                } else {
                    zzdkVar.mo13872v0((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzct) {
                    zzdkVar.mo13876o((zzct) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzdkVar.mo13890K(bArr, 0, bArr.length);
                return;
            case 13:
                zzdkVar.mo13873t0(((Integer) obj).intValue());
                return;
            case 14:
                zzdkVar.mo13871x0(((Integer) obj).intValue());
                return;
            case 15:
                zzdkVar.mo13885X(((Long) obj).longValue());
                return;
            case 16:
                zzdkVar.m13904u0(((Integer) obj).intValue());
                return;
            case 17:
                zzdkVar.m13939S(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzec) {
                    zzdkVar.mo13874s0(((zzec) obj).m13796d());
                    return;
                } else {
                    zzdkVar.mo13874s0(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: i */
    private final void m13848i(T t, Object obj) {
        if (!t.mo13813s()) {
            m13847j(t.mo13812v(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                m13847j(t.mo13812v(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzei) {
            this.f7991c = true;
        }
        this.f7989a.put(t, obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: j */
    private static void m13847j(zzha zzhaVar, Object obj) {
        boolean z;
        zzeb.m13806a(obj);
        switch (zzdr.f7986a[zzhaVar.zzdt().ordinal()]) {
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
                z = true;
                if (!(obj instanceof zzct)) {
                    if (obj instanceof byte[]) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 8:
                z = true;
                if (!(obj instanceof Integer)) {
                    if (obj instanceof zzec) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzfh)) {
                    if (obj instanceof zzei) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: l */
    public static int m13845l(zzdu<?> zzduVar, Object obj) {
        zzha v = zzduVar.mo13812v();
        int d = zzduVar.mo13817d();
        if (!zzduVar.mo13813s()) {
            return m13852e(v, d, obj);
        }
        int i = 0;
        int i2 = 0;
        if (zzduVar.mo13818c()) {
            for (Object obj2 : (List) obj) {
                i2 += m13844m(v, obj2);
            }
            return zzdk.m13898y0(d) + i2 + zzdk.m13910q(i2);
        }
        for (Object obj3 : (List) obj) {
            i += m13852e(v, d, obj3);
        }
        return i;
    }

    /* renamed from: m */
    private static int m13844m(zzha zzhaVar, Object obj) {
        switch (zzdr.f7987b[zzhaVar.ordinal()]) {
            case 1:
                return zzdk.m13905u(((Double) obj).doubleValue());
            case 2:
                return zzdk.m13903v(((Float) obj).floatValue());
            case 3:
                return zzdk.m13934Z(((Long) obj).longValue());
            case 4:
                return zzdk.m13927d0(((Long) obj).longValue());
            case 5:
                return zzdk.m13896z0(((Integer) obj).intValue());
            case 6:
                return zzdk.m13916l0(((Long) obj).longValue());
            case 7:
                return zzdk.m13950C0(((Integer) obj).intValue());
            case 8:
                return zzdk.m13925e0(((Boolean) obj).booleanValue());
            case 9:
                return zzdk.m13936V((zzfh) obj);
            case 10:
                return obj instanceof zzei ? zzdk.m13930c((zzei) obj) : zzdk.m13941N((zzfh) obj);
            case 11:
                return obj instanceof zzct ? zzdk.m13949D((zzct) obj) : zzdk.m13901w0((String) obj);
            case 12:
                return obj instanceof zzct ? zzdk.m13949D((zzct) obj) : zzdk.m13940O((byte[]) obj);
            case 13:
                return zzdk.m13954A0(((Integer) obj).intValue());
            case 14:
                return zzdk.m13948D0(((Integer) obj).intValue());
            case 15:
                return zzdk.m13914n0(((Long) obj).longValue());
            case 16:
                return zzdk.m13952B0(((Integer) obj).intValue());
            case 17:
                return zzdk.m13919i0(((Long) obj).longValue());
            case 18:
                return obj instanceof zzec ? zzdk.m13946E0(((zzec) obj).m13796d()) : zzdk.m13946E0(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: n */
    private static <T extends zzdu<T>> boolean m13843n(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.mo13816j() != zzhh.MESSAGE) {
            return true;
        }
        if (key.mo13813s()) {
            for (zzfh zzfhVar : (List) entry.getValue()) {
                if (!zzfhVar.mo13745b()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof zzfh) {
            return ((zzfh) value).mo13745b();
        }
        if (value instanceof zzei) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: o */
    public static <T extends zzdu<T>> zzds<T> m13842o() {
        return f7988d;
    }

    /* renamed from: q */
    private final void m13840q(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzei) {
            zzei zzeiVar = (zzei) value;
            zzei.m13792e();
            throw null;
        } else if (key.mo13813s()) {
            Object f = m13851f(key);
            Object obj = f;
            if (f == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                ((List) obj).add(m13838s(obj2));
            }
            this.f7989a.put(key, obj);
        } else if (key.mo13816j() == zzhh.MESSAGE) {
            Object f2 = m13851f(key);
            if (f2 == null) {
                this.f7989a.put(key, m13838s(value));
            } else {
                this.f7989a.put(key, f2 instanceof zzfn ? key.mo13815n((zzfn) f2, (zzfn) value) : key.mo13814r(((zzfh) f2).mo13752t(), (zzfh) value).mo13755d0());
            }
        } else {
            this.f7989a.put(key, m13838s(value));
        }
    }

    /* renamed from: r */
    private static int m13839r(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.mo13816j() != zzhh.MESSAGE || key.mo13813s() || key.mo13818c()) ? m13845l(key, value) : value instanceof zzei ? zzdk.m13899y(entry.getKey().mo13817d(), (zzei) value) : zzdk.m13897z(entry.getKey().mo13817d(), (zzfh) value);
    }

    /* renamed from: s */
    private static Object m13838s(Object obj) {
        if (obj instanceof zzfn) {
            return ((zzfn) obj).mo13717e();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Iterator<Map.Entry<T, Object>> m13856a() {
        return this.f7991c ? new zzen(this.f7989a.m13628q().iterator()) : this.f7989a.m13628q().iterator();
    }

    /* renamed from: b */
    public final boolean m13855b() {
        return this.f7990b;
    }

    /* renamed from: c */
    public final boolean m13854c() {
        for (int i = 0; i < this.f7989a.m13630o(); i++) {
            if (!m13843n(this.f7989a.m13635j(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f7989a.m13629p()) {
            if (!m13843n(entry)) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzds zzdsVar = new zzds();
        for (int i = 0; i < this.f7989a.m13630o(); i++) {
            Map.Entry<T, Object> j = this.f7989a.m13635j(i);
            zzdsVar.m13848i(j.getKey(), j.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f7989a.m13629p()) {
            zzdsVar.m13848i(entry.getKey(), entry.getValue());
        }
        zzdsVar.f7991c = this.f7991c;
        return zzdsVar;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<T, Object>> m13853d() {
        return this.f7991c ? new zzen(this.f7989a.entrySet().iterator()) : this.f7989a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzds)) {
            return false;
        }
        return this.f7989a.equals(((zzds) obj).f7989a);
    }

    /* renamed from: h */
    public final void m13849h(zzds<T> zzdsVar) {
        for (int i = 0; i < zzdsVar.f7989a.m13630o(); i++) {
            m13840q(zzdsVar.f7989a.m13635j(i));
        }
        for (Map.Entry<T, Object> entry : zzdsVar.f7989a.m13629p()) {
            m13840q(entry);
        }
    }

    public final int hashCode() {
        return this.f7989a.hashCode();
    }

    /* renamed from: k */
    public final void m13846k() {
        if (!this.f7990b) {
            this.f7989a.mo13636i();
            this.f7990b = true;
        }
    }

    /* renamed from: p */
    public final int m13841p() {
        int i = 0;
        for (int i2 = 0; i2 < this.f7989a.m13630o(); i2++) {
            i += m13839r(this.f7989a.m13635j(i2));
        }
        for (Map.Entry<T, Object> entry : this.f7989a.m13629p()) {
            i += m13839r(entry);
        }
        return i;
    }
}
