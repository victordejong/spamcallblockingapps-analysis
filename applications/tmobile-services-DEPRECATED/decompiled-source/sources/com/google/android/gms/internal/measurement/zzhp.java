package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhr;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhp.class */
public final class zzhp<T extends zzhr<T>> {

    /* renamed from: d */
    private static final zzhp f8503d = new zzhp(true);

    /* renamed from: a */
    final zzke<T, Object> f8504a;

    /* renamed from: b */
    private boolean f8505b;

    /* renamed from: c */
    private boolean f8506c;

    private zzhp() {
        this.f8504a = zzke.m12156b(16);
    }

    private zzhp(zzke<T, Object> zzkeVar) {
        this.f8504a = zzkeVar;
        m12452k();
    }

    private zzhp(boolean z) {
        this(zzke.m12156b(0));
        m12452k();
    }

    /* renamed from: a */
    public static int m12462a(zzhr<?> zzhrVar, Object obj) {
        zzli zzb = zzhrVar.zzb();
        int zza = zzhrVar.zza();
        if (!zzhrVar.zzd()) {
            return m12461b(zzb, zza, obj);
        }
        int i = 0;
        int i2 = 0;
        if (zzhrVar.zze()) {
            for (Object obj2 : (List) obj) {
                i2 += m12453j(zzb, obj2);
            }
            return zzhg.m12528h0(zza) + i2 + zzhg.m12555E0(i2);
        }
        for (Object obj3 : (List) obj) {
            i += m12461b(zzb, zza, obj3);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m12461b(zzli zzliVar, int i, Object obj) {
        int h0 = zzhg.m12528h0(i);
        int i2 = h0;
        if (zzliVar == zzli.GROUP) {
            zzic.m12391g((zzjh) obj);
            i2 = h0 << 1;
        }
        return i2 + m12453j(zzliVar, obj);
    }

    /* renamed from: c */
    public static <T extends zzhr<T>> zzhp<T> m12460c() {
        return f8503d;
    }

    /* renamed from: d */
    private final Object m12459d(T t) {
        Object obj = this.f8504a.get(t);
        if (!(obj instanceof zzim)) {
            return obj;
        }
        zzim zzimVar = (zzim) obj;
        zzim.m12377e();
        throw null;
    }

    /* renamed from: e */
    private static Object m12458e(Object obj) {
        if (obj instanceof zzjq) {
            return ((zzjq) obj).zza();
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
    /* renamed from: f */
    public static void m12457f(zzhg zzhgVar, zzli zzliVar, int i, Object obj) throws IOException {
        if (zzliVar == zzli.GROUP) {
            zzjh zzjhVar = (zzjh) obj;
            zzic.m12391g(zzjhVar);
            zzhgVar.mo12490m(i, 3);
            zzjhVar.mo12330f(zzhgVar);
            zzhgVar.mo12490m(i, 4);
            return;
        }
        zzhgVar.mo12490m(i, zzliVar.zzb());
        switch (zzhs.f8510b[zzliVar.ordinal()]) {
            case 1:
                zzhgVar.m12529h(((Double) obj).doubleValue());
                return;
            case 2:
                zzhgVar.m12527i(((Float) obj).floatValue());
                return;
            case 3:
                zzhgVar.mo12483t(((Long) obj).longValue());
                return;
            case 4:
                zzhgVar.mo12483t(((Long) obj).longValue());
                return;
            case 5:
                zzhgVar.mo12492j(((Integer) obj).intValue());
                return;
            case 6:
                zzhgVar.mo12496a0(((Long) obj).longValue());
                return;
            case 7:
                zzhgVar.mo12494f0(((Integer) obj).intValue());
                return;
            case 8:
                zzhgVar.m12508y(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzjh) obj).mo12330f(zzhgVar);
                return;
            case 10:
                zzhgVar.mo12481v((zzjh) obj);
                return;
            case 11:
                if (obj instanceof zzgr) {
                    zzhgVar.mo12482u((zzgr) obj);
                    return;
                } else {
                    zzhgVar.mo12480w((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzgr) {
                    zzhgVar.mo12482u((zzgr) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzhgVar.mo12500T(bArr, 0, bArr.length);
                return;
            case 13:
                zzhgVar.mo12503O(((Integer) obj).intValue());
                return;
            case 14:
                zzhgVar.mo12494f0(((Integer) obj).intValue());
                return;
            case 15:
                zzhgVar.mo12496a0(((Long) obj).longValue());
                return;
            case 16:
                zzhgVar.m12539X(((Integer) obj).intValue());
                return;
            case 17:
                zzhgVar.m12543S(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzib) {
                    zzhgVar.mo12492j(((zzib) obj).zza());
                    return;
                } else {
                    zzhgVar.mo12492j(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: h */
    private static void m12455h(zzli zzliVar, Object obj) {
        boolean z;
        zzic.m12394d(obj);
        switch (zzhs.f8509a[zzliVar.zza().ordinal()]) {
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
                if (!(obj instanceof zzgr)) {
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
                    if (obj instanceof zzib) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzjh)) {
                    if (obj instanceof zzim) {
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

    /* renamed from: i */
    private static <T extends zzhr<T>> boolean m12454i(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zzll.MESSAGE) {
            return true;
        }
        if (key.zzd()) {
            for (zzjh zzjhVar : (List) entry.getValue()) {
                if (!zzjhVar.mo12326u()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof zzjh) {
            return ((zzjh) value).mo12326u();
        }
        if (value instanceof zzim) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: j */
    private static int m12453j(zzli zzliVar, Object obj) {
        switch (zzhs.f8510b[zzliVar.ordinal()]) {
            case 1:
                return zzhg.m12506z(((Double) obj).doubleValue());
            case 2:
                return zzhg.m12564A(((Float) obj).floatValue());
            case 3:
                return zzhg.m12532e0(((Long) obj).longValue());
            case 4:
                return zzhg.m12525j0(((Long) obj).longValue());
            case 5:
                return zzhg.m12522l0(((Integer) obj).intValue());
            case 6:
                return zzhg.m12515s0(((Long) obj).longValue());
            case 7:
                return zzhg.m12509x0(((Integer) obj).intValue());
            case 8:
                return zzhg.m12547L(((Boolean) obj).booleanValue());
            case 9:
                return zzhg.m12540W((zzjh) obj);
            case 10:
                return obj instanceof zzim ? zzhg.m12535d((zzim) obj) : zzhg.m12549J((zzjh) obj);
            case 11:
                return obj instanceof zzgr ? zzhg.m12550I((zzgr) obj) : zzhg.m12548K((String) obj);
            case 12:
                return obj instanceof zzgr ? zzhg.m12550I((zzgr) obj) : zzhg.m12546M((byte[]) obj);
            case 13:
                return zzhg.m12518p0(((Integer) obj).intValue());
            case 14:
                return zzhg.m12563A0(((Integer) obj).intValue());
            case 15:
                return zzhg.m12511w0(((Long) obj).longValue());
            case 16:
                return zzhg.m12514t0(((Integer) obj).intValue());
            case 17:
                return zzhg.m12519o0(((Long) obj).longValue());
            case 18:
                return obj instanceof zzib ? zzhg.m12559C0(((zzib) obj).zza()) : zzhg.m12559C0(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: l */
    private final void m12451l(T t, Object obj) {
        if (!t.zzd()) {
            m12455h(t.zzb(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                m12455h(t.zzb(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzim) {
            this.f8506c = true;
        }
        this.f8504a.put(t, obj);
    }

    /* renamed from: m */
    private final void m12450m(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzim) {
            zzim zzimVar = (zzim) value;
            zzim.m12377e();
            throw null;
        } else if (key.zzd()) {
            Object d = m12459d(key);
            Object obj = d;
            if (d == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                ((List) obj).add(m12458e(obj2));
            }
            this.f8504a.put(key, obj);
        } else if (key.zzc() == zzll.MESSAGE) {
            Object d2 = m12459d(key);
            if (d2 == null) {
                this.f8504a.put(key, m12458e(value));
            } else {
                this.f8504a.put(key, d2 instanceof zzjq ? key.mo12406f((zzjq) d2, (zzjq) value) : key.mo12405u(((zzjh) d2).mo12334a(), (zzjh) value).mo12321k());
            }
        } else {
            this.f8504a.put(key, m12458e(value));
        }
    }

    /* renamed from: n */
    private static int m12449n(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzc() != zzll.MESSAGE || key.zzd() || key.zze()) ? m12462a(key, value) : value instanceof zzim ? zzhg.m12558D(entry.getKey().zza(), (zzim) value) : zzhg.m12556E(entry.getKey().zza(), (zzjh) value);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzhp zzhpVar = new zzhp();
        for (int i = 0; i < this.f8504a.m12148l(); i++) {
            Map.Entry<T, Object> j = this.f8504a.m12150j(i);
            zzhpVar.m12451l(j.getKey(), j.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f8504a.m12145o()) {
            zzhpVar.m12451l(entry.getKey(), entry.getValue());
        }
        zzhpVar.f8506c = this.f8506c;
        return zzhpVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhp)) {
            return false;
        }
        return this.f8504a.equals(((zzhp) obj).f8504a);
    }

    /* renamed from: g */
    public final void m12456g(zzhp<T> zzhpVar) {
        for (int i = 0; i < zzhpVar.f8504a.m12148l(); i++) {
            m12450m(zzhpVar.f8504a.m12150j(i));
        }
        for (Map.Entry<T, Object> entry : zzhpVar.f8504a.m12145o()) {
            m12450m(entry);
        }
    }

    public final int hashCode() {
        return this.f8504a.hashCode();
    }

    /* renamed from: k */
    public final void m12452k() {
        if (!this.f8505b) {
            this.f8504a.mo12153g();
            this.f8505b = true;
        }
    }

    /* renamed from: o */
    public final boolean m12448o() {
        return this.f8505b;
    }

    /* renamed from: p */
    public final Iterator<Map.Entry<T, Object>> m12447p() {
        return this.f8506c ? new zzin(this.f8504a.entrySet().iterator()) : this.f8504a.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public final Iterator<Map.Entry<T, Object>> m12446q() {
        return this.f8506c ? new zzin(this.f8504a.m12143q().iterator()) : this.f8504a.m12143q().iterator();
    }

    /* renamed from: r */
    public final boolean m12445r() {
        for (int i = 0; i < this.f8504a.m12148l(); i++) {
            if (!m12454i(this.f8504a.m12150j(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f8504a.m12145o()) {
            if (!m12454i(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: s */
    public final int m12444s() {
        int i = 0;
        for (int i2 = 0; i2 < this.f8504a.m12148l(); i2++) {
            i += m12449n(this.f8504a.m12150j(i2));
        }
        for (Map.Entry<T, Object> entry : this.f8504a.m12145o()) {
            i += m12449n(entry);
        }
        return i;
    }
}
