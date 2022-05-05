package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhe.class */
public final class zzhe implements zzka {

    /* renamed from: a */
    private final zzhd f8476a;

    /* renamed from: b */
    private int f8477b;

    /* renamed from: c */
    private int f8478c;

    /* renamed from: d */
    private int f8479d = 0;

    private zzhe(zzhd zzhdVar) {
        zzic.m12392f(zzhdVar, "input");
        zzhd zzhdVar2 = zzhdVar;
        this.f8476a = zzhdVar2;
        zzhdVar2.f8475c = this;
    }

    /* renamed from: S */
    private final <T> T m12605S(zzjz<T> zzjzVar, zzhm zzhmVar) throws IOException {
        int i = this.f8478c;
        this.f8478c = ((this.f8477b >>> 3) << 3) | 4;
        try {
            T zza = zzjzVar.zza();
            zzjzVar.mo12254i(zza, this, zzhmVar);
            zzjzVar.mo12259d(zza);
            if (this.f8477b == this.f8478c) {
                return zza;
            }
            throw zzih.m12379g();
        } finally {
            this.f8478c = i;
        }
    }

    /* renamed from: T */
    private final void m12604T(int i) throws IOException {
        if (this.f8476a.mo12596A() != i) {
            throw zzih.m12385a();
        }
    }

    /* renamed from: e */
    public static zzhe m12603e(zzhd zzhdVar) {
        zzhe zzheVar = zzhdVar.f8475c;
        return zzheVar != null ? zzheVar : new zzhe(zzhdVar);
    }

    /* renamed from: h */
    private final Object m12602h(zzli zzliVar, Class<?> cls, zzhm zzhmVar) throws IOException {
        switch (zzhh.f8493a[zzliVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(mo12219v());
            case 2:
                return mo12225m();
            case 3:
                return Double.valueOf(zzd());
            case 4:
                return Integer.valueOf(mo12232b());
            case 5:
                return Integer.valueOf(mo12221s());
            case 6:
                return Long.valueOf(mo12226l());
            case 7:
                return Float.valueOf(zze());
            case 8:
                return Integer.valueOf(mo12227i());
            case 9:
                return Long.valueOf(mo12222q());
            case 10:
                m12601j(2);
                return m12598r(zzjv.m12271a().m12270b(cls), zzhmVar);
            case 11:
                return Integer.valueOf(mo12231c());
            case 12:
                return Long.valueOf(mo12230d());
            case 13:
                return Integer.valueOf(mo12220u());
            case 14:
                return Long.valueOf(mo12228g());
            case 15:
                return mo12229f();
            case 16:
                return Integer.valueOf(mo12223p());
            case 17:
                return Long.valueOf(mo12224n());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* renamed from: j */
    private final void m12601j(int i) throws IOException {
        if ((this.f8477b & 7) != i) {
            throw zzih.m12380f();
        }
    }

    /* renamed from: k */
    private final void m12600k(List<String> list, boolean z) throws IOException {
        int a;
        int a2;
        if ((this.f8477b & 7) != 2) {
            throw zzih.m12380f();
        } else if (!(list instanceof zzis) || z) {
            do {
                list.add(z ? mo12229f() : mo12233a());
                if (!this.f8476a.mo12565z()) {
                    a = this.f8476a.mo12587a();
                } else {
                    return;
                }
            } while (a == this.f8477b);
            this.f8479d = a;
        } else {
            zzis zzisVar = (zzis) list;
            do {
                zzisVar.mo12102K(mo12225m());
                if (!this.f8476a.mo12565z()) {
                    a2 = this.f8476a.mo12587a();
                } else {
                    return;
                }
            } while (a2 == this.f8477b);
            this.f8479d = a2;
        }
    }

    /* renamed from: o */
    private static void m12599o(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzih.m12379g();
        }
    }

    /* renamed from: r */
    private final <T> T m12598r(zzjz<T> zzjzVar, zzhm zzhmVar) throws IOException {
        int t = this.f8476a.mo12571t();
        zzhd zzhdVar = this.f8476a;
        if (zzhdVar.f8473a < zzhdVar.f8474b) {
            int h = zzhdVar.mo12582h(t);
            T zza = zzjzVar.zza();
            this.f8476a.f8473a++;
            zzjzVar.mo12254i(zza, this, zzhmVar);
            zzjzVar.mo12259d(zza);
            this.f8476a.mo12586d(0);
            zzhd zzhdVar2 = this.f8476a;
            zzhdVar2.f8473a--;
            zzhdVar2.mo12580j(h);
            return zza;
        }
        throw new zzih("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: t */
    private static void m12597t(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzih.m12379g();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: A */
    public final void mo12251A(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zziv) {
            zziv zzivVar = (zziv) list;
            int i = this.f8477b & 7;
            if (i == 1) {
                do {
                    zzivVar.m12364d(this.f8476a.mo12577n());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int t = this.f8476a.mo12571t();
                m12599o(t);
                int A = this.f8476a.mo12596A();
                do {
                    zzivVar.m12364d(this.f8476a.mo12577n());
                } while (this.f8476a.mo12596A() < A + t);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f8476a.mo12577n()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int t2 = this.f8476a.mo12571t();
                m12599o(t2);
                int A2 = this.f8476a.mo12596A();
                do {
                    list.add(Long.valueOf(this.f8476a.mo12577n()));
                } while (this.f8476a.mo12596A() < A2 + t2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: B */
    public final <T> T mo12250B(zzjz<T> zzjzVar, zzhm zzhmVar) throws IOException {
        m12601j(2);
        return (T) m12598r(zzjzVar, zzhmVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: C */
    public final <K, V> void mo12249C(Map<K, V> map, zzjc<K, V> zzjcVar, zzhm zzhmVar) throws IOException {
        m12601j(2);
        int h = this.f8476a.mo12582h(this.f8476a.mo12571t());
        Object obj = zzjcVar.f8553b;
        Object obj2 = zzjcVar.f8555d;
        while (true) {
            try {
                int zza = zza();
                if (zza == Integer.MAX_VALUE || this.f8476a.mo12565z()) {
                    break;
                } else if (zza == 1) {
                    obj = m12602h(zzjcVar.f8552a, null, null);
                } else if (zza != 2) {
                    try {
                        if (!zzc()) {
                            throw new zzih("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzik e) {
                        if (!zzc()) {
                            throw new zzih("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = m12602h(zzjcVar.f8554c, zzjcVar.f8555d.getClass(), zzhmVar);
                }
            } finally {
                this.f8476a.mo12580j(h);
            }
        }
        map.put(obj, obj2);
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: D */
    public final void mo12248D(List<String> list) throws IOException {
        m12600k(list, true);
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: E */
    public final void mo12247E(List<Double> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            int i = this.f8477b & 7;
            if (i == 1) {
                do {
                    zzhlVar.m12478d(this.f8476a.mo12585e());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int t = this.f8476a.mo12571t();
                m12599o(t);
                int A = this.f8476a.mo12596A();
                do {
                    zzhlVar.m12478d(this.f8476a.mo12585e());
                } while (this.f8476a.mo12596A() < A + t);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.f8476a.mo12585e()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int t2 = this.f8476a.mo12571t();
                m12599o(t2);
                int A2 = this.f8476a.mo12596A();
                do {
                    list.add(Double.valueOf(this.f8476a.mo12585e()));
                } while (this.f8476a.mo12596A() < A2 + t2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: F */
    public final void mo12246F(List<String> list) throws IOException {
        m12600k(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: G */
    public final void mo12245G(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zziv) {
            zziv zzivVar = (zziv) list;
            int i = this.f8477b & 7;
            if (i == 0) {
                do {
                    zzivVar.m12364d(this.f8476a.mo12566y());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int A = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    zzivVar.m12364d(this.f8476a.mo12566y());
                } while (this.f8476a.mo12596A() < A);
                m12604T(A);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f8476a.mo12566y()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int A2 = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    list.add(Long.valueOf(this.f8476a.mo12566y()));
                } while (this.f8476a.mo12596A() < A2);
                m12604T(A2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: H */
    public final void mo12244H(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzia) {
            zzia zziaVar = (zzia) list;
            int i = this.f8477b & 7;
            if (i == 0) {
                do {
                    zziaVar.m12400f(this.f8476a.mo12571t());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int A = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    zziaVar.m12400f(this.f8476a.mo12571t());
                } while (this.f8476a.mo12596A() < A);
                m12604T(A);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12571t()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int A2 = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12571t()));
                } while (this.f8476a.mo12596A() < A2);
                m12604T(A2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: I */
    public final void mo12243I(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zziv) {
            zziv zzivVar = (zziv) list;
            int i = this.f8477b & 7;
            if (i == 0) {
                do {
                    zzivVar.m12364d(this.f8476a.mo12581i());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int A = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    zzivVar.m12364d(this.f8476a.mo12581i());
                } while (this.f8476a.mo12596A() < A);
                m12604T(A);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f8476a.mo12581i()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int A2 = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    list.add(Long.valueOf(this.f8476a.mo12581i()));
                } while (this.f8476a.mo12596A() < A2);
                m12604T(A2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: J */
    public final <T> T mo12242J(zzjz<T> zzjzVar, zzhm zzhmVar) throws IOException {
        m12601j(3);
        return (T) m12605S(zzjzVar, zzhmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: K */
    public final void mo12241K(List<zzgr> list) throws IOException {
        int a;
        if ((this.f8477b & 7) == 2) {
            do {
                list.add(mo12225m());
                if (!this.f8476a.mo12565z()) {
                    a = this.f8476a.mo12587a();
                } else {
                    return;
                }
            } while (a == this.f8477b);
            this.f8479d = a;
            return;
        }
        throw zzih.m12380f();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: L */
    public final void mo12240L(List<Float> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzhv) {
            zzhv zzhvVar = (zzhv) list;
            int i = this.f8477b & 7;
            if (i == 2) {
                int t = this.f8476a.mo12571t();
                m12597t(t);
                int A = this.f8476a.mo12596A();
                do {
                    zzhvVar.m12440d(this.f8476a.mo12583g());
                } while (this.f8476a.mo12596A() < A + t);
            } else if (i == 5) {
                do {
                    zzhvVar.m12440d(this.f8476a.mo12583g());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 2) {
                int t2 = this.f8476a.mo12571t();
                m12597t(t2);
                int A2 = this.f8476a.mo12596A();
                do {
                    list.add(Float.valueOf(this.f8476a.mo12583g()));
                } while (this.f8476a.mo12596A() < A2 + t2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f8476a.mo12583g()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: M */
    public final void mo12239M(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzia) {
            zzia zziaVar = (zzia) list;
            int i = this.f8477b & 7;
            if (i == 2) {
                int t = this.f8476a.mo12571t();
                m12597t(t);
                int A = this.f8476a.mo12596A();
                do {
                    zziaVar.m12400f(this.f8476a.mo12569v());
                } while (this.f8476a.mo12596A() < A + t);
            } else if (i == 5) {
                do {
                    zziaVar.m12400f(this.f8476a.mo12569v());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 2) {
                int t2 = this.f8476a.mo12571t();
                m12597t(t2);
                int A2 = this.f8476a.mo12596A();
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12569v()));
                } while (this.f8476a.mo12596A() < A2 + t2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12569v()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else {
                throw zzih.m12380f();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: N */
    public final <T> void mo12238N(List<T> list, zzjz<T> zzjzVar, zzhm zzhmVar) throws IOException {
        int a;
        int i = this.f8477b;
        if ((i & 7) == 2) {
            do {
                list.add(m12598r(zzjzVar, zzhmVar));
                if (!this.f8476a.mo12565z() && this.f8479d == 0) {
                    a = this.f8476a.mo12587a();
                } else {
                    return;
                }
            } while (a == i);
            this.f8479d = a;
            return;
        }
        throw zzih.m12380f();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: O */
    public final void mo12237O(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzia) {
            zzia zziaVar = (zzia) list;
            int i = this.f8477b & 7;
            if (i == 0) {
                do {
                    zziaVar.m12400f(this.f8476a.mo12578m());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int A = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    zziaVar.m12400f(this.f8476a.mo12578m());
                } while (this.f8476a.mo12596A() < A);
                m12604T(A);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12578m()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int A2 = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12578m()));
                } while (this.f8476a.mo12596A() < A2);
                m12604T(A2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: P */
    public final void mo12236P(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzia) {
            zzia zziaVar = (zzia) list;
            int i = this.f8477b & 7;
            if (i == 0) {
                do {
                    zziaVar.m12400f(this.f8476a.mo12570u());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int A = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    zziaVar.m12400f(this.f8476a.mo12570u());
                } while (this.f8476a.mo12596A() < A);
                m12604T(A);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12570u()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int A2 = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12570u()));
                } while (this.f8476a.mo12596A() < A2);
                m12604T(A2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: Q */
    public final <T> void mo12235Q(List<T> list, zzjz<T> zzjzVar, zzhm zzhmVar) throws IOException {
        int a;
        int i = this.f8477b;
        if ((i & 7) == 3) {
            do {
                list.add(m12605S(zzjzVar, zzhmVar));
                if (!this.f8476a.mo12565z() && this.f8479d == 0) {
                    a = this.f8476a.mo12587a();
                } else {
                    return;
                }
            } while (a == i);
            this.f8479d = a;
            return;
        }
        throw zzih.m12380f();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: R */
    public final void mo12234R(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zziv) {
            zziv zzivVar = (zziv) list;
            int i = this.f8477b & 7;
            if (i == 0) {
                do {
                    zzivVar.m12364d(this.f8476a.mo12579l());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int A = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    zzivVar.m12364d(this.f8476a.mo12579l());
                } while (this.f8476a.mo12596A() < A);
                m12604T(A);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f8476a.mo12579l()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int A2 = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    list.add(Long.valueOf(this.f8476a.mo12579l()));
                } while (this.f8476a.mo12596A() < A2);
                m12604T(A2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: a */
    public final String mo12233a() throws IOException {
        m12601j(2);
        return this.f8476a.mo12574q();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: b */
    public final int mo12232b() throws IOException {
        m12601j(0);
        return this.f8476a.mo12570u();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: c */
    public final int mo12231c() throws IOException {
        m12601j(5);
        return this.f8476a.mo12569v();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: d */
    public final long mo12230d() throws IOException {
        m12601j(1);
        return this.f8476a.mo12568w();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: f */
    public final String mo12229f() throws IOException {
        m12601j(2);
        return this.f8476a.mo12573r();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: g */
    public final long mo12228g() throws IOException {
        m12601j(0);
        return this.f8476a.mo12566y();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: i */
    public final int mo12227i() throws IOException {
        m12601j(0);
        return this.f8476a.mo12578m();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: l */
    public final long mo12226l() throws IOException {
        m12601j(1);
        return this.f8476a.mo12577n();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: m */
    public final zzgr mo12225m() throws IOException {
        m12601j(2);
        return this.f8476a.mo12572s();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: n */
    public final long mo12224n() throws IOException {
        m12601j(0);
        return this.f8476a.mo12581i();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: p */
    public final int mo12223p() throws IOException {
        m12601j(0);
        return this.f8476a.mo12571t();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: q */
    public final long mo12222q() throws IOException {
        m12601j(0);
        return this.f8476a.mo12579l();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: s */
    public final int mo12221s() throws IOException {
        m12601j(5);
        return this.f8476a.mo12576o();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: u */
    public final int mo12220u() throws IOException {
        m12601j(0);
        return this.f8476a.mo12567x();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: v */
    public final boolean mo12219v() throws IOException {
        m12601j(0);
        return this.f8476a.mo12575p();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: w */
    public final void mo12218w(List<Boolean> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzgp) {
            zzgp zzgpVar = (zzgp) list;
            int i = this.f8477b & 7;
            if (i == 0) {
                do {
                    zzgpVar.m12638d(this.f8476a.mo12575p());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int A = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    zzgpVar.m12638d(this.f8476a.mo12575p());
                } while (this.f8476a.mo12596A() < A);
                m12604T(A);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f8476a.mo12575p()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int A2 = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    list.add(Boolean.valueOf(this.f8476a.mo12575p()));
                } while (this.f8476a.mo12596A() < A2);
                m12604T(A2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: x */
    public final void mo12217x(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzia) {
            zzia zziaVar = (zzia) list;
            int i = this.f8477b & 7;
            if (i == 2) {
                int t = this.f8476a.mo12571t();
                m12597t(t);
                int A = this.f8476a.mo12596A();
                do {
                    zziaVar.m12400f(this.f8476a.mo12576o());
                } while (this.f8476a.mo12596A() < A + t);
            } else if (i == 5) {
                do {
                    zziaVar.m12400f(this.f8476a.mo12576o());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 2) {
                int t2 = this.f8476a.mo12571t();
                m12597t(t2);
                int A2 = this.f8476a.mo12596A();
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12576o()));
                } while (this.f8476a.mo12596A() < A2 + t2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12576o()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: y */
    public final void mo12216y(List<Integer> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zzia) {
            zzia zziaVar = (zzia) list;
            int i = this.f8477b & 7;
            if (i == 0) {
                do {
                    zziaVar.m12400f(this.f8476a.mo12567x());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int A = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    zziaVar.m12400f(this.f8476a.mo12567x());
                } while (this.f8476a.mo12596A() < A);
                m12604T(A);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12567x()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int A2 = this.f8476a.mo12596A() + this.f8476a.mo12571t();
                do {
                    list.add(Integer.valueOf(this.f8476a.mo12567x()));
                } while (this.f8476a.mo12596A() < A2);
                m12604T(A2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    /* renamed from: z */
    public final void mo12215z(List<Long> list) throws IOException {
        int a;
        int a2;
        if (list instanceof zziv) {
            zziv zzivVar = (zziv) list;
            int i = this.f8477b & 7;
            if (i == 1) {
                do {
                    zzivVar.m12364d(this.f8476a.mo12568w());
                    if (!this.f8476a.mo12565z()) {
                        a2 = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a2 == this.f8477b);
                this.f8479d = a2;
            } else if (i == 2) {
                int t = this.f8476a.mo12571t();
                m12599o(t);
                int A = this.f8476a.mo12596A();
                do {
                    zzivVar.m12364d(this.f8476a.mo12568w());
                } while (this.f8476a.mo12596A() < A + t);
            } else {
                throw zzih.m12380f();
            }
        } else {
            int i2 = this.f8477b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f8476a.mo12568w()));
                    if (!this.f8476a.mo12565z()) {
                        a = this.f8476a.mo12587a();
                    } else {
                        return;
                    }
                } while (a == this.f8477b);
                this.f8479d = a;
            } else if (i2 == 2) {
                int t2 = this.f8476a.mo12571t();
                m12599o(t2);
                int A2 = this.f8476a.mo12596A();
                do {
                    list.add(Long.valueOf(this.f8476a.mo12568w()));
                } while (this.f8476a.mo12596A() < A2 + t2);
            } else {
                throw zzih.m12380f();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    public final int zza() throws IOException {
        int i = this.f8479d;
        if (i != 0) {
            this.f8477b = i;
            this.f8479d = 0;
        } else {
            this.f8477b = this.f8476a.mo12587a();
        }
        int i2 = this.f8477b;
        return (i2 == 0 || i2 == this.f8478c) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    public final int zzb() {
        return this.f8477b;
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    public final boolean zzc() throws IOException {
        int i;
        if (this.f8476a.mo12565z() || (i = this.f8477b) == this.f8478c) {
            return false;
        }
        return this.f8476a.mo12584f(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    public final double zzd() throws IOException {
        m12601j(1);
        return this.f8476a.mo12585e();
    }

    @Override // com.google.android.gms.internal.measurement.zzka
    public final float zze() throws IOException {
        m12601j(5);
        return this.f8476a.mo12583g();
    }
}
