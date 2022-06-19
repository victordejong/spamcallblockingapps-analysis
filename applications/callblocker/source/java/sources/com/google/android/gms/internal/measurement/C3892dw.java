package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3894dy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.dw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dw.class */
public final class C3892dw<T extends AbstractC3894dy<T>> {

    /* renamed from: d */
    private static final C3892dw f18012d = new C3892dw(true);

    /* renamed from: a */
    final C3965gi<T, Object> f18013a;

    /* renamed from: b */
    private boolean f18014b;

    /* renamed from: c */
    private boolean f18015c;

    private C3892dw() {
        this.f18013a = C3965gi.m5362a(16);
    }

    private C3892dw(C3965gi<T, Object> c3965gi) {
        this.f18013a = c3965gi;
        m5668b();
    }

    private C3892dw(boolean z) {
        this(C3965gi.m5362a(0));
        m5668b();
    }

    /* renamed from: a */
    public static int m5674a(AbstractC3894dy<?> abstractC3894dy, Object obj) {
        int m5673a;
        int i = 0;
        int i2 = 0;
        EnumC3999hl mo5622b = abstractC3894dy.mo5622b();
        int mo5625a = abstractC3894dy.mo5625a();
        if (!abstractC3894dy.mo5620d()) {
            m5673a = m5673a(mo5622b, mo5625a, obj);
        } else if (!abstractC3894dy.mo5619e()) {
            Iterator it = ((List) obj).iterator();
            while (true) {
                m5673a = i;
                if (!it.hasNext()) {
                    break;
                }
                i += m5673a(mo5622b, mo5625a, it.next());
            }
        } else {
            for (Object obj2 : (List) obj) {
                i2 += m5666b(mo5622b, obj2);
            }
            m5673a = zzes.m4881l(i2) + zzes.m4903e(mo5625a) + i2;
        }
        return m5673a;
    }

    /* renamed from: a */
    public static int m5673a(EnumC3999hl enumC3999hl, int i, Object obj) {
        int m4903e = zzes.m4903e(i);
        if (enumC3999hl == EnumC3999hl.GROUP) {
            C3908ef.m5613a((AbstractC3943fn) obj);
            m4903e <<= 1;
        }
        return m4903e + m5666b(enumC3999hl, obj);
    }

    /* renamed from: a */
    public static <T extends AbstractC3894dy<T>> C3892dw<T> m5677a() {
        return f18012d;
    }

    /* renamed from: a */
    private final Object m5675a(T t) {
        Object obj = this.f18013a.get(t);
        AbstractC3943fn abstractC3943fn = obj;
        if (obj instanceof C3916en) {
            C3916en c3916en = (C3916en) obj;
            abstractC3943fn = C3916en.m5596a();
        }
        return abstractC3943fn;
    }

    /* renamed from: a */
    private static Object m5670a(Object obj) {
        AbstractC3948fs abstractC3948fs;
        if (obj instanceof AbstractC3948fs) {
            abstractC3948fs = ((AbstractC3948fs) obj).mo5492a();
        } else {
            abstractC3948fs = obj;
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                abstractC3948fs = new byte[bArr.length];
                System.arraycopy(bArr, 0, abstractC3948fs, 0, bArr.length);
            }
        }
        return abstractC3948fs;
    }

    /* renamed from: a */
    private static void m5672a(EnumC3999hl enumC3999hl, Object obj) {
        boolean z = false;
        C3908ef.m5612a(obj);
        switch (C3891dv.f18010a[enumC3999hl.m5213a().ordinal()]) {
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
                if ((obj instanceof AbstractC3859ct) || (obj instanceof byte[])) {
                    z = true;
                    break;
                }
                break;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof AbstractC3911ei)) {
                    z = true;
                    break;
                }
                break;
            case 9:
                if ((obj instanceof AbstractC3943fn) || (obj instanceof C3916en)) {
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
    public static void m5671a(zzes zzesVar, EnumC3999hl enumC3999hl, int i, Object obj) {
        if (enumC3999hl == EnumC3999hl.GROUP) {
            C3908ef.m5613a((AbstractC3943fn) obj);
            zzesVar.mo4876a(i, 3);
            ((AbstractC3943fn) obj).mo5543a(zzesVar);
            zzesVar.mo4876a(i, 4);
            return;
        }
        zzesVar.mo4876a(i, enumC3999hl.m5212b());
        switch (C3891dv.f18011b[enumC3999hl.ordinal()]) {
            case 1:
                zzesVar.m4939a(((Double) obj).doubleValue());
                return;
            case 2:
                zzesVar.m4938a(((Float) obj).floatValue());
                return;
            case 3:
                zzesVar.mo4869a(((Long) obj).longValue());
                return;
            case 4:
                zzesVar.mo4869a(((Long) obj).longValue());
                return;
            case 5:
                zzesVar.mo4877a(((Integer) obj).intValue());
                return;
            case 6:
                zzesVar.mo4858c(((Long) obj).longValue());
                return;
            case 7:
                zzesVar.mo4856d(((Integer) obj).intValue());
                return;
            case 8:
                zzesVar.m4931a(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((AbstractC3943fn) obj).mo5543a(zzesVar);
                return;
            case 10:
                zzesVar.mo4867a((AbstractC3943fn) obj);
                return;
            case 11:
                if (obj instanceof AbstractC3859ct) {
                    zzesVar.mo4868a((AbstractC3859ct) obj);
                    return;
                } else {
                    zzesVar.mo4866a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof AbstractC3859ct) {
                    zzesVar.mo4868a((AbstractC3859ct) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzesVar.mo4861b(bArr, 0, bArr.length);
                return;
            case 13:
                zzesVar.mo4864b(((Integer) obj).intValue());
                return;
            case 14:
                zzesVar.mo4856d(((Integer) obj).intValue());
                return;
            case 15:
                zzesVar.mo4858c(((Long) obj).longValue());
                return;
            case 16:
                zzesVar.m4911c(((Integer) obj).intValue());
                return;
            case 17:
                zzesVar.m4918b(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof AbstractC3911ei) {
                    zzesVar.mo4877a(((AbstractC3911ei) obj).mo5600a());
                    return;
                } else {
                    zzesVar.mo4877a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: a */
    private static <T extends AbstractC3894dy<T>> boolean m5669a(Map.Entry<T, Object> entry) {
        boolean z;
        T key = entry.getKey();
        if (key.mo5621c() == EnumC4002ho.MESSAGE) {
            if (key.mo5620d()) {
                for (AbstractC3943fn abstractC3943fn : (List) entry.getValue()) {
                    if (!abstractC3943fn.mo5534al()) {
                        z = false;
                        break;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof AbstractC3943fn) {
                    if (!((AbstractC3943fn) value).mo5534al()) {
                        z = false;
                    }
                } else if (!(value instanceof C3916en)) {
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
    private static int m5666b(EnumC3999hl enumC3999hl, Object obj) {
        int m4883k;
        switch (C3891dv.f18011b[enumC3999hl.ordinal()]) {
            case 1:
                m4883k = zzes.m4928b(((Double) obj).doubleValue());
                break;
            case 2:
                m4883k = zzes.m4927b(((Float) obj).floatValue());
                break;
            case 3:
                m4883k = zzes.m4904d(((Long) obj).longValue());
                break;
            case 4:
                m4883k = zzes.m4901e(((Long) obj).longValue());
                break;
            case 5:
                m4883k = zzes.m4900f(((Integer) obj).intValue());
                break;
            case 6:
                m4883k = zzes.m4893g(((Long) obj).longValue());
                break;
            case 7:
                m4883k = zzes.m4888i(((Integer) obj).intValue());
                break;
            case 8:
                m4883k = zzes.m4914b(((Boolean) obj).booleanValue());
                break;
            case 9:
                m4883k = zzes.m4908c((AbstractC3943fn) obj);
                break;
            case 10:
                if (!(obj instanceof C3916en)) {
                    m4883k = zzes.m4916b((AbstractC3943fn) obj);
                    break;
                } else {
                    m4883k = zzes.m4934a((C3916en) obj);
                    break;
                }
            case 11:
                if (!(obj instanceof AbstractC3859ct)) {
                    m4883k = zzes.m4915b((String) obj);
                    break;
                } else {
                    m4883k = zzes.m4917b((AbstractC3859ct) obj);
                    break;
                }
            case 12:
                if (!(obj instanceof AbstractC3859ct)) {
                    m4883k = zzes.m4913b((byte[]) obj);
                    break;
                } else {
                    m4883k = zzes.m4917b((AbstractC3859ct) obj);
                    break;
                }
            case 13:
                m4883k = zzes.m4896g(((Integer) obj).intValue());
                break;
            case 14:
                m4883k = zzes.m4885j(((Integer) obj).intValue());
                break;
            case 15:
                m4883k = zzes.m4889h(((Long) obj).longValue());
                break;
            case 16:
                m4883k = zzes.m4892h(((Integer) obj).intValue());
                break;
            case 17:
                m4883k = zzes.m4897f(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof AbstractC3911ei)) {
                    m4883k = zzes.m4883k(((Integer) obj).intValue());
                    break;
                } else {
                    m4883k = zzes.m4883k(((AbstractC3911ei) obj).mo5600a());
                    break;
                }
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return m4883k;
    }

    /* renamed from: b */
    private final void m5667b(T t, Object obj) {
        if (!t.mo5620d()) {
            m5672a(t.mo5622b(), obj);
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
                m5672a(t.mo5622b(), obj2);
            }
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof C3916en) {
            this.f18015c = true;
        }
        this.f18013a.m5358a((C3965gi<T, Object>) t, (T) obj);
    }

    /* renamed from: b */
    private final void m5665b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        AbstractC3943fn abstractC3943fn = value;
        if (value instanceof C3916en) {
            C3916en c3916en = (C3916en) value;
            abstractC3943fn = C3916en.m5596a();
        }
        if (key.mo5620d()) {
            Object m5675a = m5675a((C3892dw<T>) key);
            ArrayList arrayList = m5675a;
            if (m5675a == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) abstractC3943fn) {
                ((List) arrayList).add(m5670a(obj));
            }
            this.f18013a.m5358a((C3965gi<T, Object>) key, (T) arrayList);
        } else if (key.mo5621c() != EnumC4002ho.MESSAGE) {
            this.f18013a.m5358a((C3965gi<T, Object>) key, (T) m5670a(abstractC3943fn));
        } else {
            Object m5675a2 = m5675a((C3892dw<T>) key);
            if (m5675a2 == null) {
                this.f18013a.m5358a((C3965gi<T, Object>) key, (T) m5670a(abstractC3943fn));
            } else {
                this.f18013a.m5358a((C3965gi<T, Object>) key, (T) (m5675a2 instanceof AbstractC3948fs ? key.mo5623a((AbstractC3948fs) m5675a2, (AbstractC3948fs) abstractC3943fn) : key.mo5624a(((AbstractC3943fn) m5675a2).mo5540ar(), (AbstractC3943fn) abstractC3943fn).mo5544u()));
            }
        }
    }

    /* renamed from: c */
    private static int m5663c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.mo5621c() != EnumC4002ho.MESSAGE || key.mo5620d() || key.mo5619e()) ? m5674a((AbstractC3894dy<?>) key, value) : value instanceof C3916en ? zzes.m4923b(entry.getKey().mo5625a(), (C3916en) value) : zzes.m4922b(entry.getKey().mo5625a(), (AbstractC3943fn) value);
    }

    /* renamed from: a */
    public final void m5676a(C3892dw<T> c3892dw) {
        for (int i = 0; i < c3892dw.f18013a.m5354c(); i++) {
            m5665b(c3892dw.f18013a.m5356b(i));
        }
        for (Map.Entry<T, Object> entry : c3892dw.f18013a.m5351d()) {
            m5665b(entry);
        }
    }

    /* renamed from: b */
    public final void m5668b() {
        if (this.f18014b) {
            return;
        }
        this.f18013a.mo5363a();
        this.f18014b = true;
    }

    /* renamed from: c */
    public final boolean m5664c() {
        return this.f18014b;
    }

    public final /* synthetic */ Object clone() {
        C3892dw c3892dw = new C3892dw();
        for (int i = 0; i < this.f18013a.m5354c(); i++) {
            Map.Entry<T, Object> m5356b = this.f18013a.m5356b(i);
            c3892dw.m5667b((C3892dw) m5356b.getKey(), m5356b.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f18013a.m5351d()) {
            c3892dw.m5667b((C3892dw) entry.getKey(), entry.getValue());
        }
        c3892dw.f18015c = this.f18015c;
        return c3892dw;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<T, Object>> m5662d() {
        return this.f18015c ? new C3921es(this.f18013a.entrySet().iterator()) : this.f18013a.entrySet().iterator();
    }

    /* renamed from: e */
    public final Iterator<Map.Entry<T, Object>> m5661e() {
        return this.f18015c ? new C3921es(this.f18013a.m5349e().iterator()) : this.f18013a.m5349e().iterator();
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof C3892dw) ? false : this.f18013a.equals(((C3892dw) obj).f18013a);
    }

    /* renamed from: f */
    public final boolean m5660f() {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= this.f18013a.m5354c()) {
                Iterator<Map.Entry<T, Object>> it = this.f18013a.m5351d().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    } else if (!m5669a((Map.Entry) it.next())) {
                        break;
                    }
                }
            } else if (!m5669a((Map.Entry) this.f18013a.m5356b(i))) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: g */
    public final int m5659g() {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= this.f18013a.m5354c()) {
                break;
            }
            i2++;
            i3 = m5663c(this.f18013a.m5356b(i2)) + i;
        }
        for (Map.Entry<T, Object> entry : this.f18013a.m5351d()) {
            i += m5663c(entry);
        }
        return i;
    }

    public final int hashCode() {
        return this.f18013a.hashCode();
    }
}
