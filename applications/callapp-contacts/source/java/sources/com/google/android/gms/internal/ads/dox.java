package com.google.android.gms.internal.ads;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dox.class */
public final class dox<T> implements dpp<T> {

    /* renamed from: a */
    private static final int[] f47328a = new int[0];

    /* renamed from: b */
    private static final Unsafe f47329b = dqm.m15978c();

    /* renamed from: c */
    private final int[] f47330c;

    /* renamed from: d */
    private final Object[] f47331d;

    /* renamed from: e */
    private final int f47332e;

    /* renamed from: f */
    private final int f47333f;

    /* renamed from: g */
    private final dot f47334g;

    /* renamed from: h */
    private final boolean f47335h;

    /* renamed from: i */
    private final boolean f47336i;

    /* renamed from: j */
    private final boolean f47337j;

    /* renamed from: k */
    private final boolean f47338k;

    /* renamed from: l */
    private final int[] f47339l;

    /* renamed from: m */
    private final int f47340m;

    /* renamed from: n */
    private final int f47341n;

    /* renamed from: o */
    private final dpb f47342o;

    /* renamed from: p */
    private final doc f47343p;

    /* renamed from: q */
    private final dqh<?, ?> f47344q;

    /* renamed from: r */
    private final dmv<?> f47345r;

    /* renamed from: s */
    private final dom f47346s;

    private dox(int[] iArr, Object[] objArr, int i, int i2, dot dotVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, dpb dpbVar, doc docVar, dqh<?, ?> dqhVar, dmv<?> dmvVar, dom domVar) {
        this.f47330c = iArr;
        this.f47331d = objArr;
        this.f47332e = i;
        this.f47333f = i2;
        this.f47336i = dotVar instanceof dnh;
        this.f47337j = z;
        this.f47335h = dmvVar != null && dmvVar.mo16388a(dotVar);
        this.f47338k = false;
        this.f47339l = iArr2;
        this.f47340m = i3;
        this.f47341n = i4;
        this.f47342o = dpbVar;
        this.f47343p = docVar;
        this.f47344q = dqhVar;
        this.f47345r = dmvVar;
        this.f47334g = dotVar;
        this.f47346s = domVar;
    }

    /* renamed from: a */
    private final int m16246a(int i, int i2) {
        if (i < this.f47332e || i > this.f47333f) {
            return -1;
        }
        return m16224b(i, i2);
    }

    /* renamed from: a */
    private static <UT, UB> int m16242a(dqh<UT, UB> dqhVar, T t) {
        return dqhVar.mo16010f(dqhVar.mo16018b(t));
    }

    /* renamed from: a */
    private final int m16230a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, dlr dlrVar) throws IOException {
        Unsafe unsafe = f47329b;
        long j2 = this.f47330c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(dls.m16488c(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(dls.m16486d(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = dls.m16489b(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Long.valueOf(dlrVar.f47190b));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = dls.m16492a(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Integer.valueOf(dlrVar.f47189a));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(dls.m16490b(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(dls.m16493a(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = dls.m16489b(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Boolean.valueOf(dlrVar.f47190b != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = dls.m16492a(bArr, i, dlrVar);
                    int i9 = dlrVar.f47189a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !dqp.m15940a(bArr, i, i + i9)) {
                        throw zzenn.m13627i();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, dnj.f47286a));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = dls.m16494a(m16247a(i8), bArr, i, i2, dlrVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, dlrVar.f47191c);
                    } else {
                        unsafe.putObject(t, j, dnj.m16315a(object, dlrVar.f47191c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = dls.m16484e(bArr, i, dlrVar);
                    unsafe.putObject(t, j, dlrVar.f47191c);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = dls.m16492a(bArr, i, dlrVar);
                    int i10 = dlrVar.f47189a;
                    dno m16218c = m16218c(i8);
                    if (m16218c != null && !m16218c.mo14867a(i10)) {
                        m16212e(t).m16008a(i3, Long.valueOf(i10));
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                        break;
                    }
                }
                break;
            case 66:
                if (i5 == 0) {
                    i = dls.m16492a(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Integer.valueOf(dmi.m16454e(dlrVar.f47189a)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = dls.m16489b(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Long.valueOf(dmi.m16456a(dlrVar.f47190b)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = dls.m16495a(m16247a(i8), bArr, i, i2, (i3 & (-8)) | 4, dlrVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, dlrVar.f47191c);
                    } else {
                        unsafe.putObject(t, j, dnj.m16315a(object2, dlrVar.f47191c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0966 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0963 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0370  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x044c -> B:114:0x0451). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0360 -> B:80:0x0366). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m16229a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.ads.dlr r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.m16229a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.dlr):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [int] */
    /* renamed from: a */
    private final <K, V> int m16228a(T t, byte[] bArr, int i, int i2, int i3, long j, dlr dlrVar) throws IOException {
        Unsafe unsafe = f47329b;
        m16225b(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.f47346s.mo16266c(object)) {
            obj = this.f47346s.mo16271a();
            this.f47346s.mo16269a(obj, object);
            unsafe.putObject(t, j, obj);
        }
        dok<?, ?> mo16268b = this.f47346s.mo16268b();
        Map<?, ?> mo16270a = this.f47346s.mo16270a(obj);
        int m16492a = dls.m16492a(bArr, i, dlrVar);
        int i4 = dlrVar.f47189a;
        if (i4 < 0 || i4 > i2 - m16492a) {
            throw zzenn.m13635a();
        }
        int i5 = i4 + m16492a;
        Object obj2 = mo16268b.f47320b;
        Object obj3 = mo16268b.f47322d;
        while (m16492a < i5) {
            int i6 = m16492a + 1;
            byte b = bArr[m16492a];
            int i7 = i6;
            byte b2 = b;
            if (b < 0) {
                i7 = dls.m16497a(b, bArr, i6, dlrVar);
                b2 = dlrVar.f47189a;
            }
            int i8 = b2 >>> 3;
            int i9 = b2 & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == mo16268b.f47321c.zzbmi()) {
                    m16492a = m16226a(bArr, i7, i2, mo16268b.f47321c, mo16268b.f47322d.getClass(), dlrVar);
                    obj3 = dlrVar.f47191c;
                }
                m16492a = dls.m16500a(b2, bArr, i7, i2, dlrVar);
            } else if (i9 == mo16268b.f47319a.zzbmi()) {
                m16492a = m16226a(bArr, i7, i2, mo16268b.f47319a, (Class<?>) null, dlrVar);
                obj2 = dlrVar.f47191c;
            } else {
                m16492a = dls.m16500a(b2, bArr, i7, i2, dlrVar);
            }
        }
        if (m16492a != i5) {
            throw zzenn.m13628h();
        }
        mo16270a.put(obj2, obj3);
        return i5;
    }

    /* renamed from: a */
    private static int m16226a(byte[] bArr, int i, int i2, dqx dqxVar, Class<?> cls, dlr dlrVar) throws IOException {
        int i3;
        switch (dow.f47327a[dqxVar.ordinal()]) {
            case 1:
                i3 = dls.m16489b(bArr, i, dlrVar);
                dlrVar.f47191c = Boolean.valueOf(dlrVar.f47190b != 0);
                break;
            case 2:
                i3 = dls.m16484e(bArr, i, dlrVar);
                break;
            case 3:
                dlrVar.f47191c = Double.valueOf(dls.m16488c(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                dlrVar.f47191c = Integer.valueOf(dls.m16493a(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                dlrVar.f47191c = Long.valueOf(dls.m16490b(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                dlrVar.f47191c = Float.valueOf(dls.m16486d(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = dls.m16492a(bArr, i, dlrVar);
                dlrVar.f47191c = Integer.valueOf(dlrVar.f47189a);
                break;
            case 12:
            case 13:
                i3 = dls.m16489b(bArr, i, dlrVar);
                dlrVar.f47191c = Long.valueOf(dlrVar.f47190b);
                break;
            case 14:
                i3 = dls.m16494a(dpi.m16196a().m16195a((Class) cls), bArr, i, i2, dlrVar);
                break;
            case 15:
                i3 = dls.m16492a(bArr, i, dlrVar);
                dlrVar.f47191c = Integer.valueOf(dmi.m16454e(dlrVar.f47189a));
                break;
            case 16:
                i3 = dls.m16489b(bArr, i, dlrVar);
                dlrVar.f47191c = Long.valueOf(dmi.m16456a(dlrVar.f47190b));
                break;
            case 17:
                i3 = dls.m16485d(bArr, i, dlrVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x086d  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0942  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.ads.dox<T> m16243a(com.google.android.gms.internal.ads.dor r18, com.google.android.gms.internal.ads.dpb r19, com.google.android.gms.internal.ads.doc r20, com.google.android.gms.internal.ads.dqh<?, ?> r21, com.google.android.gms.internal.ads.dmv<?> r22, com.google.android.gms.internal.ads.dom r23) {
        /*
            Method dump skipped, instructions count: 2590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.m16243a(com.google.android.gms.internal.ads.dor, com.google.android.gms.internal.ads.dpb, com.google.android.gms.internal.ads.doc, com.google.android.gms.internal.ads.dqh, com.google.android.gms.internal.ads.dmv, com.google.android.gms.internal.ads.dom):com.google.android.gms.internal.ads.dox");
    }

    /* renamed from: a */
    private final dpp m16247a(int i) {
        int i2 = (i / 3) << 1;
        dpp dppVar = (dpp) this.f47331d[i2];
        if (dppVar != null) {
            return dppVar;
        }
        dpp<T> m16195a = dpi.m16196a().m16195a((Class) ((Class) this.f47331d[i2 + 1]));
        this.f47331d[i2] = m16195a;
        return m16195a;
    }

    /* renamed from: a */
    private final <K, V, UT, UB> UB m16245a(int i, int i2, Map<K, V> map, dno dnoVar, UB ub, dqh<UT, UB> dqhVar) {
        dom domVar = this.f47346s;
        m16225b(i);
        dok<?, ?> mo16268b = domVar.mo16268b();
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (!dnoVar.mo14867a(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = dqhVar.mo16027a();
                }
                dme m16469c = dlw.m16469c(dol.m16280a(mo16268b, next.getKey(), next.getValue()));
                try {
                    dol.m16279a(m16469c.f47205a, mo16268b, next.getKey(), next.getValue());
                    dqhVar.mo16023a((dqh<UT, UB>) ub2, i2, m16469c.m16462a());
                    it2.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* renamed from: a */
    private final <UT, UB> UB m16233a(Object obj, int i, UB ub, dqh<UT, UB> dqhVar) {
        dno m16218c;
        int i2 = this.f47330c[i];
        Object m15966f = dqm.m15966f(obj, m16215d(i) & 1048575);
        if (m15966f != null && (m16218c = m16218c(i)) != null) {
            return (UB) m16245a(i, i2, this.f47346s.mo16270a(m15966f), m16218c, (dno) ub, (dqh<UT, dno>) dqhVar);
        }
        return ub;
    }

    /* renamed from: a */
    private static Field m16239a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    /* renamed from: a */
    private static List<?> m16232a(Object obj, long j) {
        return (List) dqm.m15966f(obj, j);
    }

    /* renamed from: a */
    private static void m16244a(int i, Object obj, drd drdVar) throws IOException {
        if (obj instanceof String) {
            drdVar.mo15912a(i, (String) obj);
        } else {
            drdVar.mo15916a(i, (dlw) obj);
        }
    }

    /* renamed from: a */
    private static <UT, UB> void m16241a(dqh<UT, UB> dqhVar, T t, drd drdVar) throws IOException {
        dqhVar.mo16020a((dqh<UT, UB>) dqhVar.mo16018b(t), drdVar);
    }

    /* renamed from: a */
    private final <K, V> void m16240a(drd drdVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            dom domVar = this.f47346s;
            m16225b(i2);
            drdVar.mo15915a(i, domVar.mo16268b(), this.f47346s.mo16267b(obj));
        }
    }

    /* renamed from: a */
    private final void m16235a(Object obj, int i, dpj dpjVar) throws IOException {
        if (m16210f(i)) {
            dqm.m15987a(obj, i & 1048575, dpjVar.mo16164m());
        } else if (this.f47336i) {
            dqm.m15987a(obj, i & 1048575, dpjVar.mo16166l());
        } else {
            dqm.m15987a(obj, i & 1048575, dpjVar.mo16162n());
        }
    }

    /* renamed from: a */
    private final void m16231a(T t, T t2, int i) {
        long m16215d = m16215d(i) & 1048575;
        if (!m16238a((dox<T>) t2, i)) {
            return;
        }
        Object m15966f = dqm.m15966f(t, m16215d);
        Object m15966f2 = dqm.m15966f(t2, m16215d);
        if (m15966f != null && m15966f2 != null) {
            dqm.m15987a(t, m16215d, dnj.m16315a(m15966f, m15966f2));
            m16223b((dox<T>) t, i);
        } else if (m15966f2 == null) {
        } else {
            dqm.m15987a(t, m16215d, m15966f2);
            m16223b((dox<T>) t, i);
        }
    }

    /* renamed from: a */
    private final boolean m16238a(T t, int i) {
        int m16213e = m16213e(i);
        long j = m16213e & 1048575;
        if (j != 1048575) {
            return (dqm.m15993a(t, j) & (1 << (m16213e >>> 20))) != 0;
        }
        int m16215d = m16215d(i);
        long j2 = m16215d & 1048575;
        switch ((m16215d & 267386880) >>> 20) {
            case 0:
                return dqm.m15968e(t, j2) != 0.0d;
            case 1:
                return dqm.m15971d(t, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return dqm.m15981b(t, j2) != 0;
            case 3:
                return dqm.m15981b(t, j2) != 0;
            case 4:
                return dqm.m15993a(t, j2) != 0;
            case 5:
                return dqm.m15981b(t, j2) != 0;
            case 6:
                return dqm.m15993a(t, j2) != 0;
            case 7:
                return dqm.m15976c(t, j2);
            case 8:
                Object m15966f = dqm.m15966f(t, j2);
                if (m15966f instanceof String) {
                    return !((String) m15966f).isEmpty();
                } else if (!(m15966f instanceof dlw)) {
                    throw new IllegalArgumentException();
                } else {
                    return !dlw.f47199a.equals(m15966f);
                }
            case 9:
                return dqm.m15966f(t, j2) != null;
            case 10:
                return !dlw.f47199a.equals(dqm.m15966f(t, j2));
            case 11:
                return dqm.m15993a(t, j2) != 0;
            case 12:
                return dqm.m15993a(t, j2) != 0;
            case 13:
                return dqm.m15993a(t, j2) != 0;
            case 14:
                return dqm.m15981b(t, j2) != 0;
            case 15:
                return dqm.m15993a(t, j2) != 0;
            case 16:
                return dqm.m15981b(t, j2) != 0;
            case 17:
                return dqm.m15966f(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    private final boolean m16237a(T t, int i, int i2) {
        return dqm.m15993a(t, (long) (m16213e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    private final boolean m16236a(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m16238a((dox<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static boolean m16234a(Object obj, int i, dpp dppVar) {
        return dppVar.mo16115d(dqm.m15966f(obj, i & 1048575));
    }

    /* renamed from: b */
    private static <T> double m16221b(T t, long j) {
        return ((Double) dqm.m15966f(t, j)).doubleValue();
    }

    /* renamed from: b */
    private final int m16224b(int i, int i2) {
        int length = (this.f47330c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f47330c[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* renamed from: b */
    private final Object m16225b(int i) {
        return this.f47331d[(i / 3) << 1];
    }

    /* renamed from: b */
    private final void m16223b(T t, int i) {
        int m16213e = m16213e(i);
        long j = 1048575 & m16213e;
        if (j == 1048575) {
            return;
        }
        dqm.m15989a((Object) t, j, (1 << (m16213e >>> 20)) | dqm.m15993a(t, j));
    }

    /* renamed from: b */
    private final void m16222b(T t, int i, int i2) {
        dqm.m15989a((Object) t, m16213e(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x098b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m16220b(T r9, com.google.android.gms.internal.ads.drd r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.m16220b(java.lang.Object, com.google.android.gms.internal.ads.drd):void");
    }

    /* renamed from: b */
    private final void m16219b(T t, T t2, int i) {
        int m16215d = m16215d(i);
        int i2 = this.f47330c[i];
        long j = m16215d & 1048575;
        if (!m16237a((dox<T>) t2, i2, i)) {
            return;
        }
        Object obj = null;
        if (m16237a((dox<T>) t, i2, i)) {
            obj = dqm.m15966f(t, j);
        }
        Object m15966f = dqm.m15966f(t2, j);
        if (obj != null && m15966f != null) {
            dqm.m15987a(t, j, dnj.m16315a(obj, m15966f));
            m16222b((dox<T>) t, i2, i);
        } else if (m15966f == null) {
        } else {
            dqm.m15987a(t, j, m15966f);
            m16222b((dox<T>) t, i2, i);
        }
    }

    /* renamed from: c */
    private static <T> float m16217c(T t, long j) {
        return ((Float) dqm.m15966f(t, j)).floatValue();
    }

    /* renamed from: c */
    private final dno m16218c(int i) {
        return (dno) this.f47331d[((i / 3) << 1) + 1];
    }

    /* renamed from: c */
    private final boolean m16216c(T t, T t2, int i) {
        return m16238a((dox<T>) t, i) == m16238a((dox<T>) t2, i);
    }

    /* renamed from: d */
    private final int m16215d(int i) {
        return this.f47330c[i + 1];
    }

    /* renamed from: d */
    private static <T> int m16214d(T t, long j) {
        return ((Integer) dqm.m15966f(t, j)).intValue();
    }

    /* renamed from: e */
    private final int m16213e(int i) {
        return this.f47330c[i + 2];
    }

    /* renamed from: e */
    private static <T> long m16211e(T t, long j) {
        return ((Long) dqm.m15966f(t, j)).longValue();
    }

    /* renamed from: e */
    private static dqj m16212e(Object obj) {
        dnh dnhVar = (dnh) obj;
        dqj dqjVar = dnhVar.zzitn;
        dqj dqjVar2 = dqjVar;
        if (dqjVar == dqj.m16009a()) {
            dqjVar2 = dqj.m16003b();
            dnhVar.zzitn = dqjVar2;
        }
        return dqjVar2;
    }

    /* renamed from: f */
    private static boolean m16210f(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: f */
    private static <T> boolean m16209f(T t, long j) {
        return ((Boolean) dqm.m15966f(t, j)).booleanValue();
    }

    /* renamed from: g */
    private final int m16208g(int i) {
        if (i < this.f47332e || i > this.f47333f) {
            return -1;
        }
        return m16224b(i, 0);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    public final int mo16123a(T t) {
        int i;
        int i2;
        int i3;
        int length = this.f47330c.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = (i6 * 53) + this.f47344q.mo16018b(t).hashCode();
                int i7 = hashCode;
                if (this.f47335h) {
                    i7 = (hashCode * 53) + this.f47345r.mo16387a(t).hashCode();
                }
                return i7;
            }
            int m16215d = m16215d(i4);
            int i8 = this.f47330c[i4];
            long j = 1048575 & m16215d;
            int i9 = 37;
            switch ((m16215d & 267386880) >>> 20) {
                case 0:
                    i2 = i6 * 53;
                    i3 = dnj.m16317a(Double.doubleToLongBits(dqm.m15968e(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(dqm.m15971d(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = dnj.m16317a(dqm.m15981b(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = dnj.m16317a(dqm.m15981b(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = dqm.m15993a(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = dnj.m16317a(dqm.m15981b(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = dqm.m15993a(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = dnj.m16313a(dqm.m15976c(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) dqm.m15966f(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object m15966f = dqm.m15966f(t, j);
                    if (m15966f != null) {
                        i9 = m15966f.hashCode();
                    }
                    i = (i6 * 53) + i9;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = dqm.m15966f(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = dqm.m15993a(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = dqm.m15993a(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = dqm.m15993a(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = dnj.m16317a(dqm.m15981b(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = dqm.m15993a(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = dnj.m16317a(dqm.m15981b(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object m15966f2 = dqm.m15966f(t, j);
                    if (m15966f2 != null) {
                        i9 = m15966f2.hashCode();
                    }
                    i = (i6 * 53) + i9;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i6 * 53;
                    i3 = dqm.m15966f(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = dqm.m15966f(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dnj.m16317a(Double.doubleToLongBits(m16221b(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(m16217c(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dnj.m16317a(m16211e(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dnj.m16317a(m16211e(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m16214d(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dnj.m16317a(m16211e(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m16214d(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dnj.m16313a(m16209f(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) dqm.m15966f(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dqm.m15966f(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dqm.m15966f(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m16214d(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m16214d(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m16214d(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dnj.m16317a(m16211e(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m16214d(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dnj.m16317a(m16211e(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!m16237a((dox<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = dqm.m15966f(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                default:
                    i = i6;
                    break;
            }
            i4 += 3;
            i5 = i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x0760, code lost:
        if (r33 == 1048575) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0763, code lost:
        r28.putInt(r17, r33, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x076e, code lost:
        r22 = null;
        r19 = r18.f47340m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x077b, code lost:
        if (r19 >= r18.f47341n) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x077e, code lost:
        r22 = (com.google.android.gms.internal.ads.dqj) r18.m16233a((java.lang.Object) r17, r18.f47339l[r19], (int) r22, (com.google.android.gms.internal.ads.dqh<UT, int>) r18.f47344q);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x079c, code lost:
        if (r22 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x079f, code lost:
        r18.f47344q.mo16015b((java.lang.Object) r17, (T) r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07ab, code lost:
        if (r29 != 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07b2, code lost:
        if (r21 != r20) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x07bb, code lost:
        throw com.google.android.gms.internal.ads.zzenn.m13628h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x07c0, code lost:
        if (r21 > r20) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x07c7, code lost:
        if (r31 != r29) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x07cc, code lost:
        return r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x07d0, code lost:
        throw com.google.android.gms.internal.ads.zzenn.m13628h();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m16227a(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.ads.dlr r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2001
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.m16227a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.dlr):int");
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    public final T mo16124a() {
        return (T) this.f47342o.mo16204a(this.f47334g);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    public final void mo16122a(T t, dpj dpjVar, dmt dmtVar) throws IOException {
        Object obj;
        Objects.requireNonNull(dmtVar);
        dqh dqhVar = this.f47344q;
        dmv<?> dmvVar = this.f47345r;
        Object obj2 = null;
        dmz<?> dmzVar = null;
        while (true) {
            Object obj3 = obj2;
            try {
                int mo16193a = dpjVar.mo16193a();
                Object obj4 = obj2;
                int m16208g = m16208g(mo16193a);
                if (m16208g >= 0) {
                    int m16215d = m16215d(m16208g);
                    switch ((267386880 & m16215d) >>> 20) {
                        case 0:
                            dqm.m15991a(t, m16215d & 1048575, dpjVar.mo16182d());
                            Object obj5 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 1:
                            dqm.m15990a((Object) t, m16215d & 1048575, dpjVar.mo16180e());
                            Object obj6 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 2:
                            dqm.m15988a((Object) t, m16215d & 1048575, dpjVar.mo16176g());
                            Object obj7 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 3:
                            dqm.m15988a((Object) t, m16215d & 1048575, dpjVar.mo16178f());
                            Object obj8 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 4:
                            dqm.m15989a((Object) t, m16215d & 1048575, dpjVar.mo16174h());
                            Object obj9 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 5:
                            dqm.m15988a((Object) t, m16215d & 1048575, dpjVar.mo16172i());
                            Object obj10 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 6:
                            dqm.m15989a((Object) t, m16215d & 1048575, dpjVar.mo16170j());
                            Object obj11 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 7:
                            dqm.m15986a(t, m16215d & 1048575, dpjVar.mo16168k());
                            Object obj12 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 8:
                            m16235a(t, m16215d, dpjVar);
                            Object obj13 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 9:
                            if (!m16238a((dox<T>) t, m16208g)) {
                                dqm.m15987a(t, m16215d & 1048575, dpjVar.mo16192a(m16247a(m16208g), dmtVar));
                                Object obj14 = obj2;
                                m16223b((dox<T>) t, m16208g);
                                break;
                            } else {
                                long j = m16215d & 1048575;
                                dqm.m15987a(t, j, dnj.m16315a(dqm.m15966f(t, j), dpjVar.mo16192a(m16247a(m16208g), dmtVar)));
                                continue;
                            }
                        case 10:
                            dqm.m15987a(t, m16215d & 1048575, dpjVar.mo16162n());
                            Object obj15 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 11:
                            dqm.m15989a((Object) t, m16215d & 1048575, dpjVar.mo16160o());
                            Object obj16 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 12:
                            int mo16158p = dpjVar.mo16158p();
                            Object obj17 = obj2;
                            dno m16218c = m16218c(m16208g);
                            if (m16218c != null && !m16218c.mo14867a(mo16158p)) {
                                obj2 = dpr.m16109a(mo16193a, mo16158p, obj2, dqhVar);
                                continue;
                            }
                            dqm.m15989a((Object) t, m16215d & 1048575, mo16158p);
                            Object obj18 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            break;
                        case 13:
                            dqm.m15989a((Object) t, m16215d & 1048575, dpjVar.mo16156q());
                            Object obj19 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 14:
                            dqm.m15988a((Object) t, m16215d & 1048575, dpjVar.mo16154r());
                            Object obj20 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 15:
                            dqm.m15989a((Object) t, m16215d & 1048575, dpjVar.mo16153s());
                            Object obj21 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 16:
                            dqm.m15988a((Object) t, m16215d & 1048575, dpjVar.mo16152t());
                            Object obj22 = obj2;
                            m16223b((dox<T>) t, m16208g);
                            continue;
                        case 17:
                            if (!m16238a((dox<T>) t, m16208g)) {
                                dqm.m15987a(t, m16215d & 1048575, dpjVar.mo16187b(m16247a(m16208g), dmtVar));
                                Object obj23 = obj2;
                                m16223b((dox<T>) t, m16208g);
                                break;
                            } else {
                                long j2 = m16215d & 1048575;
                                dqm.m15987a(t, j2, dnj.m16315a(dqm.m15966f(t, j2), dpjVar.mo16187b(m16247a(m16208g), dmtVar)));
                                continue;
                            }
                        case 18:
                            dpjVar.mo16191a(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 19:
                            dpjVar.mo16186b(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 20:
                            dpjVar.mo16181d(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 21:
                            dpjVar.mo16183c(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 22:
                            dpjVar.mo16179e(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 23:
                            dpjVar.mo16177f(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 24:
                            dpjVar.mo16175g(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 25:
                            dpjVar.mo16173h(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 26:
                            if (!m16210f(m16215d)) {
                                dpjVar.mo16171i(this.f47343p.mo16293a(t, m16215d & 1048575));
                                break;
                            } else {
                                Object obj24 = obj2;
                                dpjVar.mo16169j(this.f47343p.mo16293a(t, m16215d & 1048575));
                                continue;
                            }
                        case 27:
                            dpjVar.mo16190a(this.f47343p.mo16293a(t, m16215d & 1048575), m16247a(m16208g), dmtVar);
                            continue;
                        case 28:
                            dpjVar.mo16167k(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 29:
                            dpjVar.mo16165l(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 30:
                            List<Integer> mo16293a = this.f47343p.mo16293a(t, m16215d & 1048575);
                            Object obj25 = obj2;
                            dpjVar.mo16163m(mo16293a);
                            Object obj26 = obj2;
                            obj2 = dpr.m16106a(mo16193a, mo16293a, m16218c(m16208g), obj2, dqhVar);
                            continue;
                        case 31:
                            dpjVar.mo16161n(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 32:
                            dpjVar.mo16159o(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 33:
                            dpjVar.mo16157p(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 34:
                            dpjVar.mo16155q(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 35:
                            dpjVar.mo16191a(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 36:
                            dpjVar.mo16186b(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 37:
                            dpjVar.mo16181d(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 38:
                            dpjVar.mo16183c(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 39:
                            dpjVar.mo16179e(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 40:
                            dpjVar.mo16177f(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 41:
                            dpjVar.mo16175g(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 42:
                            dpjVar.mo16173h(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 43:
                            dpjVar.mo16165l(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 44:
                            List<Integer> mo16293a2 = this.f47343p.mo16293a(t, m16215d & 1048575);
                            Object obj27 = obj2;
                            dpjVar.mo16163m(mo16293a2);
                            Object obj28 = obj2;
                            obj2 = dpr.m16106a(mo16193a, mo16293a2, m16218c(m16208g), obj2, dqhVar);
                            continue;
                        case 45:
                            dpjVar.mo16161n(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 46:
                            dpjVar.mo16159o(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 47:
                            dpjVar.mo16157p(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 48:
                            dpjVar.mo16155q(this.f47343p.mo16293a(t, m16215d & 1048575));
                            continue;
                        case 49:
                            long j3 = m16215d & 1048575;
                            dpp<T> m16247a = m16247a(m16208g);
                            Object obj29 = obj2;
                            dpjVar.mo16185b(this.f47343p.mo16293a(t, j3), m16247a, dmtVar);
                            continue;
                        case 50:
                            m16225b(m16208g);
                            Object obj30 = obj2;
                            long m16215d2 = m16215d(m16208g) & 1048575;
                            Object obj31 = obj2;
                            Object m15966f = dqm.m15966f(t, m16215d2);
                            if (m15966f == null) {
                                obj = this.f47346s.mo16271a();
                                Object obj32 = obj2;
                                dqm.m15987a(t, m16215d2, obj);
                            } else {
                                obj = m15966f;
                                if (this.f47346s.mo16266c(m15966f)) {
                                    Object obj33 = obj2;
                                    obj = this.f47346s.mo16271a();
                                    Object obj34 = obj2;
                                    this.f47346s.mo16269a(obj, m15966f);
                                    Object obj35 = obj2;
                                    dqm.m15987a(t, m16215d2, obj);
                                }
                            }
                            Object obj36 = obj2;
                            dpjVar.mo16189a(this.f47346s.mo16270a(obj), this.f47346s.mo16268b(), dmtVar);
                            continue;
                        case 51:
                            dqm.m15987a(t, m16215d & 1048575, Double.valueOf(dpjVar.mo16182d()));
                            Object obj37 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 52:
                            dqm.m15987a(t, m16215d & 1048575, Float.valueOf(dpjVar.mo16180e()));
                            Object obj38 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 53:
                            dqm.m15987a(t, m16215d & 1048575, Long.valueOf(dpjVar.mo16176g()));
                            Object obj39 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 54:
                            dqm.m15987a(t, m16215d & 1048575, Long.valueOf(dpjVar.mo16178f()));
                            Object obj40 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 55:
                            dqm.m15987a(t, m16215d & 1048575, Integer.valueOf(dpjVar.mo16174h()));
                            Object obj41 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 56:
                            dqm.m15987a(t, m16215d & 1048575, Long.valueOf(dpjVar.mo16172i()));
                            Object obj42 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 57:
                            dqm.m15987a(t, m16215d & 1048575, Integer.valueOf(dpjVar.mo16170j()));
                            Object obj43 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 58:
                            dqm.m15987a(t, m16215d & 1048575, Boolean.valueOf(dpjVar.mo16168k()));
                            Object obj44 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 59:
                            m16235a(t, m16215d, dpjVar);
                            Object obj45 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 60:
                            if (m16237a((dox<T>) t, mo16193a, m16208g)) {
                                long j4 = m16215d & 1048575;
                                dqm.m15987a(t, j4, dnj.m16315a(dqm.m15966f(t, j4), dpjVar.mo16192a(m16247a(m16208g), dmtVar)));
                            } else {
                                dqm.m15987a(t, m16215d & 1048575, dpjVar.mo16192a(m16247a(m16208g), dmtVar));
                                Object obj46 = obj2;
                                m16223b((dox<T>) t, m16208g);
                            }
                            Object obj47 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 61:
                            dqm.m15987a(t, m16215d & 1048575, dpjVar.mo16162n());
                            Object obj48 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 62:
                            dqm.m15987a(t, m16215d & 1048575, Integer.valueOf(dpjVar.mo16160o()));
                            Object obj49 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 63:
                            int mo16158p2 = dpjVar.mo16158p();
                            Object obj50 = obj2;
                            dno m16218c2 = m16218c(m16208g);
                            if (m16218c2 != null && !m16218c2.mo14867a(mo16158p2)) {
                                obj2 = dpr.m16109a(mo16193a, mo16158p2, obj2, dqhVar);
                                continue;
                            }
                            dqm.m15987a(t, m16215d & 1048575, Integer.valueOf(mo16158p2));
                            Object obj51 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            break;
                        case 64:
                            dqm.m15987a(t, m16215d & 1048575, Integer.valueOf(dpjVar.mo16156q()));
                            Object obj52 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 65:
                            dqm.m15987a(t, m16215d & 1048575, Long.valueOf(dpjVar.mo16154r()));
                            Object obj53 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 66:
                            dqm.m15987a(t, m16215d & 1048575, Integer.valueOf(dpjVar.mo16153s()));
                            Object obj54 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 67:
                            dqm.m15987a(t, m16215d & 1048575, Long.valueOf(dpjVar.mo16152t()));
                            Object obj55 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        case 68:
                            dqm.m15987a(t, m16215d & 1048575, dpjVar.mo16187b(m16247a(m16208g), dmtVar));
                            Object obj56 = obj2;
                            m16222b((dox<T>) t, mo16193a, m16208g);
                            continue;
                        default:
                            Object obj57 = obj2;
                            if (obj2 == null) {
                                Object obj58 = obj2;
                                obj3 = obj2;
                                try {
                                    obj57 = dqhVar.mo16027a();
                                } catch (zzenm e) {
                                    Object obj59 = obj58;
                                    if (obj58 == null) {
                                        obj59 = dqhVar.mo16014c(t);
                                    }
                                    Object obj60 = obj59;
                                    obj2 = obj59;
                                    if (!dqhVar.m16028a((dqh) obj59, dpjVar)) {
                                        for (int i = this.f47340m; i < this.f47341n; i++) {
                                            obj59 = m16233a((Object) t, this.f47339l[i], (int) obj59, (dqh<UT, int>) dqhVar);
                                        }
                                        if (obj59 == null) {
                                            return;
                                        }
                                        dqhVar.mo16015b((Object) t, (T) obj59);
                                        return;
                                    }
                                    break;
                                }
                            }
                            obj2 = obj57;
                            if (!dqhVar.m16028a((dqh) obj57, dpjVar)) {
                                for (int i2 = this.f47340m; i2 < this.f47341n; i2++) {
                                    obj57 = m16233a((Object) t, this.f47339l[i2], (int) obj57, (dqh<UT, int>) dqhVar);
                                }
                                if (obj57 == null) {
                                    return;
                                }
                                dqhVar.mo16015b((Object) t, (T) obj57);
                                return;
                            }
                            continue;
                    }
                } else if (mo16193a == Integer.MAX_VALUE) {
                    for (int i3 = this.f47340m; i3 < this.f47341n; i3++) {
                        obj2 = m16233a((Object) t, this.f47339l[i3], (int) obj2, (dqh<UT, int>) dqhVar);
                    }
                    if (obj2 == null) {
                        return;
                    }
                    dqhVar.mo16015b((Object) t, (T) obj2);
                    return;
                } else if ((!this.f47335h ? null : dmvVar.mo16389a(dmtVar, this.f47334g, mo16193a)) != null) {
                    dmz<?> dmzVar2 = dmzVar;
                    if (dmzVar == null) {
                        dmzVar2 = dmvVar.mo16384b(t);
                    }
                    Object obj61 = obj2;
                    obj2 = dmvVar.mo16390a();
                    dmzVar = dmzVar2;
                } else {
                    Object obj62 = obj2;
                    if (obj2 == null) {
                        obj62 = dqhVar.mo16014c(t);
                    }
                    Object obj63 = obj62;
                    obj2 = obj62;
                    if (!dqhVar.m16028a((dqh) obj62, dpjVar)) {
                        for (int i4 = this.f47340m; i4 < this.f47341n; i4++) {
                            obj62 = m16233a((Object) t, this.f47339l[i4], (int) obj62, (dqh<UT, int>) dqhVar);
                        }
                        if (obj62 == null) {
                            return;
                        }
                        dqhVar.mo16015b((Object) t, (T) obj62);
                        return;
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.f47340m; i5 < this.f47341n; i5++) {
                    obj3 = m16233a((Object) t, this.f47339l[i5], (int) obj3, (dqh<UT, int>) dqhVar);
                }
                if (obj3 != null) {
                    dqhVar.mo16015b((Object) t, (T) obj3);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x0a3b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0ab3  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x1467  */
    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo16121a(T r8, com.google.android.gms.internal.ads.drd r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.mo16121a(java.lang.Object, com.google.android.gms.internal.ads.drd):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x04b5, code lost:
        if (r32 == r0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x04e2, code lost:
        if (r32 == r0) goto L110;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v215, types: [int] */
    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo16119a(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.ads.dlr r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.mo16119a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.dlr):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.ads.dpr.m16097a(com.google.android.gms.internal.ads.dqm.m15966f(r7, r0), com.google.android.gms.internal.ads.dqm.m15966f(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (com.google.android.gms.internal.ads.dpr.m16097a(com.google.android.gms.internal.ads.dqm.m15966f(r7, r0), com.google.android.gms.internal.ads.dqm.m15966f(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15981b(r7, r0) == com.google.android.gms.internal.ads.dqm.m15981b(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15993a(r7, r0) == com.google.android.gms.internal.ads.dqm.m15993a(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15981b(r7, r0) == com.google.android.gms.internal.ads.dqm.m15981b(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15993a(r7, r0) == com.google.android.gms.internal.ads.dqm.m15993a(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15993a(r7, r0) == com.google.android.gms.internal.ads.dqm.m15993a(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15993a(r7, r0) == com.google.android.gms.internal.ads.dqm.m15993a(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (com.google.android.gms.internal.ads.dpr.m16097a(com.google.android.gms.internal.ads.dqm.m15966f(r7, r0), com.google.android.gms.internal.ads.dqm.m15966f(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (com.google.android.gms.internal.ads.dpr.m16097a(com.google.android.gms.internal.ads.dqm.m15966f(r7, r0), com.google.android.gms.internal.ads.dqm.m15966f(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (com.google.android.gms.internal.ads.dpr.m16097a(com.google.android.gms.internal.ads.dqm.m15966f(r7, r0), com.google.android.gms.internal.ads.dqm.m15966f(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15976c(r7, r0) == com.google.android.gms.internal.ads.dqm.m15976c(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15993a(r7, r0) == com.google.android.gms.internal.ads.dqm.m15993a(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15981b(r7, r0) == com.google.android.gms.internal.ads.dqm.m15981b(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15993a(r7, r0) == com.google.android.gms.internal.ads.dqm.m15993a(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15981b(r7, r0) == com.google.android.gms.internal.ads.dqm.m15981b(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (com.google.android.gms.internal.ads.dqm.m15981b(r7, r0) == com.google.android.gms.internal.ads.dqm.m15981b(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.dqm.m15971d(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.dqm.m15971d(r8, r0))) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.dqm.m15968e(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.dqm.m15968e(r8, r0))) goto L86;
     */
    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo16120a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.mo16120a(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: b */
    public final int mo16118b(T t) {
        int i;
        int i2;
        int i3;
        int m13669j;
        int i4;
        int i5;
        int i6;
        int i7;
        int m13669j2;
        int i8;
        int i9;
        int i10;
        int i11 = 0;
        if (!this.f47337j) {
            Unsafe unsafe = f47329b;
            int i12 = 0;
            int i13 = 0;
            int i14 = 1048575;
            int i15 = 0;
            while (i12 < this.f47330c.length) {
                int m16215d = m16215d(i12);
                int[] iArr = this.f47330c;
                int i16 = iArr[i12];
                int i17 = (m16215d & 267386880) >>> 20;
                if (i17 <= 17) {
                    int i18 = iArr[i12 + 2];
                    int i19 = i18 & 1048575;
                    int i20 = 1 << (i18 >>> 20);
                    i = i14;
                    i2 = i20;
                    if (i19 != i14) {
                        i15 = unsafe.getInt(t, i19);
                        i = i19;
                        i2 = i20;
                    }
                } else {
                    i2 = 0;
                    i = i14;
                }
                long j = m16215d & 1048575;
                switch (i17) {
                    case 0:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13669j(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13672i(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13691d(i16, unsafe.getLong(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13686e(i16, unsafe.getLong(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13682f(i16, unsafe.getInt(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13678g(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13687e(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13668k(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            Object object = unsafe.getObject(t, j);
                            m13669j = object instanceof dlw ? zzemk.m13696c(i16, (dlw) object) : zzemk.m13704b(i16, (String) object);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = dpr.m16108a(i16, unsafe.getObject(t, j), m16247a(i12));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13696c(i16, (dlw) unsafe.getObject(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13677g(i16, unsafe.getInt(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13671i(i16, unsafe.getInt(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13683f(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13675h(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13674h(i16, unsafe.getInt(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13681f(i16, unsafe.getLong(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i3 = i13;
                        if ((i15 & i2) != 0) {
                            m13669j = zzemk.m13695c(i16, (dot) unsafe.getObject(t, j), m16247a(i12));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        m13669j = dpr.m16066i(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 19:
                        m13669j = dpr.m16069h(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 20:
                        m13669j = dpr.m16107a(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 21:
                        m13669j = dpr.m16093b(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 22:
                        m13669j = dpr.m16078e(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 23:
                        m13669j = dpr.m16066i(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 24:
                        m13669j = dpr.m16069h(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 25:
                        m13669j = dpr.m16063j(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 26:
                        m13669j = dpr.m16060k(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 27:
                        m13669j = dpr.m16105a(i16, (List<?>) unsafe.getObject(t, j), m16247a(i12));
                        i3 = i13 + m13669j;
                        break;
                    case 28:
                        m13669j = dpr.m16058l(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 29:
                        m13669j = dpr.m16075f(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 30:
                        m13669j = dpr.m16082d(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 31:
                        m13669j = dpr.m16069h(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 32:
                        m13669j = dpr.m16066i(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 33:
                        m13669j = dpr.m16072g(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 34:
                        m13669j = dpr.m16086c(i16, (List) unsafe.getObject(t, j));
                        i3 = i13 + m13669j;
                        break;
                    case 35:
                        int m16064i = dpr.m16064i((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16064i > 0) {
                            i6 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16064i);
                            i5 = m16064i;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        int m16067h = dpr.m16067h((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16067h > 0) {
                            int m13667l = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16067h);
                            i5 = m16067h;
                            i6 = m13667l;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        int m16096a = dpr.m16096a((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16096a > 0) {
                            int m13667l2 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16096a);
                            i5 = m16096a;
                            i6 = m13667l2;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        int m16088b = dpr.m16088b((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16088b > 0) {
                            int m13667l3 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16088b);
                            i5 = m16088b;
                            i6 = m13667l3;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        int m16076e = dpr.m16076e((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16076e > 0) {
                            int m13667l4 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16076e);
                            i5 = m16076e;
                            i6 = m13667l4;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        int m16064i2 = dpr.m16064i((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16064i2 > 0) {
                            int m13667l5 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16064i2);
                            i5 = m16064i2;
                            i6 = m13667l5;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        int m16067h2 = dpr.m16067h((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16067h2 > 0) {
                            int m13667l6 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16067h2);
                            i5 = m16067h2;
                            i6 = m13667l6;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        int m16061j = dpr.m16061j((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16061j > 0) {
                            int m13667l7 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16061j);
                            i5 = m16061j;
                            i6 = m13667l7;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        int m16073f = dpr.m16073f((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16073f > 0) {
                            int m13667l8 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16073f);
                            i5 = m16073f;
                            i6 = m13667l8;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        int m16080d = dpr.m16080d((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16080d > 0) {
                            int m13667l9 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16080d);
                            i5 = m16080d;
                            i6 = m13667l9;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        int m16067h3 = dpr.m16067h((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16067h3 > 0) {
                            int m13667l10 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16067h3);
                            i5 = m16067h3;
                            i6 = m13667l10;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        int m16064i3 = dpr.m16064i((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16064i3 > 0) {
                            int m13667l11 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16064i3);
                            i5 = m16064i3;
                            i6 = m13667l11;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        int m16070g = dpr.m16070g((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16070g > 0) {
                            int m13667l12 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16070g);
                            i5 = m16070g;
                            i6 = m13667l12;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        int m16084c = dpr.m16084c((List) unsafe.getObject(t, j));
                        i3 = i13;
                        if (m16084c > 0) {
                            int m13667l13 = zzemk.m13667l(i16);
                            i4 = zzemk.m13665n(m16084c);
                            i5 = m16084c;
                            i6 = m13667l13;
                            i3 = i13 + i6 + i4 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        m13669j = dpr.m16092b(i16, (List) unsafe.getObject(t, j), m16247a(i12));
                        i3 = i13 + m13669j;
                        break;
                    case 50:
                        dom domVar = this.f47346s;
                        Object object2 = unsafe.getObject(t, j);
                        m16225b(i12);
                        m13669j = domVar.mo16264e(object2);
                        i3 = i13 + m13669j;
                        break;
                    case 51:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13669j(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13672i(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13691d(i16, m16211e(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13686e(i16, m16211e(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13682f(i16, m16214d(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13678g(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13687e(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13668k(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            Object object3 = unsafe.getObject(t, j);
                            m13669j = object3 instanceof dlw ? zzemk.m13696c(i16, (dlw) object3) : zzemk.m13704b(i16, (String) object3);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = dpr.m16108a(i16, unsafe.getObject(t, j), m16247a(i12));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13696c(i16, (dlw) unsafe.getObject(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13677g(i16, m16214d(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13671i(i16, m16214d(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13683f(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13675h(i16);
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13674h(i16, m16214d(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13681f(i16, m16211e(t, j));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i3 = i13;
                        if (m16237a((dox<T>) t, i16, i12)) {
                            m13669j = zzemk.m13695c(i16, (dot) unsafe.getObject(t, j), m16247a(i12));
                            i3 = i13 + m13669j;
                            break;
                        } else {
                            break;
                        }
                    default:
                        i3 = i13;
                        break;
                }
                i12 += 3;
                i13 = i3;
                i14 = i;
            }
            int m16242a = i13 + m16242a((dqh) this.f47344q, (Object) t);
            int i21 = m16242a;
            if (this.f47335h) {
                dmz<?> mo16387a = this.f47345r.mo16387a(t);
                int i22 = 0;
                for (int i23 = 0; i23 < mo16387a.f47260a.m16044c(); i23++) {
                    Map.Entry<?, Object> m16046b = mo16387a.f47260a.m16046b(i23);
                    i22 += dmz.m16378a((dnb) m16046b.getKey(), m16046b.getValue());
                }
                for (Map.Entry<?, Object> entry : mo16387a.f47260a.m16041d()) {
                    i22 += dmz.m16378a((dnb) entry.getKey(), entry.getValue());
                }
                i21 = m16242a + i22;
            }
            return i21;
        }
        Unsafe unsafe2 = f47329b;
        int i24 = 0;
        while (true) {
            int i25 = i24;
            if (i11 >= this.f47330c.length) {
                return i25 + m16242a((dqh) this.f47344q, (Object) t);
            }
            int m16215d2 = m16215d(i11);
            int i26 = (m16215d2 & 267386880) >>> 20;
            int i27 = this.f47330c[i11];
            long j2 = m16215d2 & 1048575;
            if (i26 >= dna.DOUBLE_LIST_PACKED.m16365id()) {
                dna.SINT64_LIST_PACKED.m16365id();
            }
            switch (i26) {
                case 0:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13669j(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13672i(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13691d(i27, dqm.m15981b(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13686e(i27, dqm.m15981b(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13682f(i27, dqm.m15993a(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13678g(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13687e(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13668k(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        Object m15966f = dqm.m15966f(t, j2);
                        m13669j2 = m15966f instanceof dlw ? zzemk.m13696c(i27, (dlw) m15966f) : zzemk.m13704b(i27, (String) m15966f);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = dpr.m16108a(i27, dqm.m15966f(t, j2), m16247a(i11));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13696c(i27, (dlw) dqm.m15966f(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13677g(i27, dqm.m15993a(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13671i(i27, dqm.m15993a(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13683f(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13675h(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13674h(i27, dqm.m15993a(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13681f(i27, dqm.m15981b(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i7 = i25;
                    if (m16238a((dox<T>) t, i11)) {
                        m13669j2 = zzemk.m13695c(i27, (dot) dqm.m15966f(t, j2), m16247a(i11));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    m13669j2 = dpr.m16066i(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 19:
                    m13669j2 = dpr.m16069h(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 20:
                    m13669j2 = dpr.m16107a(i27, (List<Long>) m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 21:
                    m13669j2 = dpr.m16093b(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 22:
                    m13669j2 = dpr.m16078e(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 23:
                    m13669j2 = dpr.m16066i(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 24:
                    m13669j2 = dpr.m16069h(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 25:
                    m13669j2 = dpr.m16063j(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 26:
                    m13669j2 = dpr.m16060k(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 27:
                    m13669j2 = dpr.m16105a(i27, m16232a(t, j2), m16247a(i11));
                    i7 = i25 + m13669j2;
                    break;
                case 28:
                    m13669j2 = dpr.m16058l(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 29:
                    m13669j2 = dpr.m16075f(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 30:
                    m13669j2 = dpr.m16082d(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 31:
                    m13669j2 = dpr.m16069h(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 32:
                    m13669j2 = dpr.m16066i(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 33:
                    m13669j2 = dpr.m16072g(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 34:
                    m13669j2 = dpr.m16086c(i27, m16232a(t, j2));
                    i7 = i25 + m13669j2;
                    break;
                case 35:
                    int m16064i4 = dpr.m16064i((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16064i4 > 0) {
                        i10 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16064i4);
                        i9 = m16064i4;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int m16067h4 = dpr.m16067h((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16067h4 > 0) {
                        int m13667l14 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16067h4);
                        i9 = m16067h4;
                        i10 = m13667l14;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int m16096a2 = dpr.m16096a((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16096a2 > 0) {
                        int m13667l15 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16096a2);
                        i9 = m16096a2;
                        i10 = m13667l15;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int m16088b2 = dpr.m16088b((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16088b2 > 0) {
                        int m13667l16 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16088b2);
                        i9 = m16088b2;
                        i10 = m13667l16;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int m16076e2 = dpr.m16076e((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16076e2 > 0) {
                        int m13667l17 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16076e2);
                        i9 = m16076e2;
                        i10 = m13667l17;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int m16064i5 = dpr.m16064i((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16064i5 > 0) {
                        int m13667l18 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16064i5);
                        i9 = m16064i5;
                        i10 = m13667l18;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int m16067h5 = dpr.m16067h((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16067h5 > 0) {
                        int m13667l19 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16067h5);
                        i9 = m16067h5;
                        i10 = m13667l19;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int m16061j2 = dpr.m16061j((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16061j2 > 0) {
                        int m13667l20 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16061j2);
                        i9 = m16061j2;
                        i10 = m13667l20;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int m16073f2 = dpr.m16073f((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16073f2 > 0) {
                        int m13667l21 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16073f2);
                        i9 = m16073f2;
                        i10 = m13667l21;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int m16080d2 = dpr.m16080d((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16080d2 > 0) {
                        int m13667l22 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16080d2);
                        i9 = m16080d2;
                        i10 = m13667l22;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int m16067h6 = dpr.m16067h((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16067h6 > 0) {
                        int m13667l23 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16067h6);
                        i9 = m16067h6;
                        i10 = m13667l23;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int m16064i6 = dpr.m16064i((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16064i6 > 0) {
                        int m13667l24 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16064i6);
                        i9 = m16064i6;
                        i10 = m13667l24;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int m16070g2 = dpr.m16070g((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16070g2 > 0) {
                        int m13667l25 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16070g2);
                        i9 = m16070g2;
                        i10 = m13667l25;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int m16084c2 = dpr.m16084c((List) unsafe2.getObject(t, j2));
                    i7 = i25;
                    if (m16084c2 > 0) {
                        int m13667l26 = zzemk.m13667l(i27);
                        i8 = zzemk.m13665n(m16084c2);
                        i9 = m16084c2;
                        i10 = m13667l26;
                        i7 = i25 + i10 + i8 + i9;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    m13669j2 = dpr.m16092b(i27, (List<dot>) m16232a(t, j2), m16247a(i11));
                    i7 = i25 + m13669j2;
                    break;
                case 50:
                    dom domVar2 = this.f47346s;
                    Object m15966f2 = dqm.m15966f(t, j2);
                    m16225b(i11);
                    m13669j2 = domVar2.mo16264e(m15966f2);
                    i7 = i25 + m13669j2;
                    break;
                case 51:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13669j(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13672i(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13691d(i27, m16211e(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13686e(i27, m16211e(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13682f(i27, m16214d(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13678g(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13687e(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13668k(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        Object m15966f3 = dqm.m15966f(t, j2);
                        m13669j2 = m15966f3 instanceof dlw ? zzemk.m13696c(i27, (dlw) m15966f3) : zzemk.m13704b(i27, (String) m15966f3);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = dpr.m16108a(i27, dqm.m15966f(t, j2), m16247a(i11));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13696c(i27, (dlw) dqm.m15966f(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13677g(i27, m16214d(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13671i(i27, m16214d(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13683f(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13675h(i27);
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13674h(i27, m16214d(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13681f(i27, m16211e(t, j2));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i7 = i25;
                    if (m16237a((dox<T>) t, i27, i11)) {
                        m13669j2 = zzemk.m13695c(i27, (dot) dqm.m15966f(t, j2), m16247a(i11));
                        i7 = i25 + m13669j2;
                        break;
                    } else {
                        break;
                    }
                default:
                    i7 = i25;
                    break;
            }
            i11 += 3;
            i24 = i7;
        }
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: b */
    public final void mo16117b(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.f47330c.length; i += 3) {
            int m16215d = m16215d(i);
            long j = 1048575 & m16215d;
            int i2 = this.f47330c[i];
            switch ((m16215d & 267386880) >>> 20) {
                case 0:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15991a(t, j, dqm.m15968e(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15990a((Object) t, j, dqm.m15971d(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15988a((Object) t, j, dqm.m15981b(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15988a((Object) t, j, dqm.m15981b(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15989a((Object) t, j, dqm.m15993a(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15988a((Object) t, j, dqm.m15981b(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15989a((Object) t, j, dqm.m15993a(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15986a(t, j, dqm.m15976c(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15987a(t, j, dqm.m15966f(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m16231a(t, t2, i);
                    break;
                case 10:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15987a(t, j, dqm.m15966f(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15989a((Object) t, j, dqm.m15993a(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15989a((Object) t, j, dqm.m15993a(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15989a((Object) t, j, dqm.m15993a(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15988a((Object) t, j, dqm.m15981b(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15989a((Object) t, j, dqm.m15993a(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m16238a((dox<T>) t2, i)) {
                        dqm.m15988a((Object) t, j, dqm.m15981b(t2, j));
                        m16223b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m16231a(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f47343p.mo16291a(t, t2, j);
                    break;
                case 50:
                    dpr.m16100a(this.f47346s, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (m16237a((dox<T>) t2, i2, i)) {
                        dqm.m15987a(t, j, dqm.m15966f(t2, j));
                        m16222b((dox<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m16219b(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m16237a((dox<T>) t2, i2, i)) {
                        dqm.m15987a(t, j, dqm.m15966f(t2, j));
                        m16222b((dox<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m16219b(t, t2, i);
                    break;
            }
        }
        dpr.m16099a(this.f47344q, t, t2);
        if (this.f47335h) {
            dpr.m16101a(this.f47345r, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: c */
    public final void mo16116c(T t) {
        int i;
        int i2 = this.f47340m;
        while (true) {
            i = this.f47341n;
            if (i2 >= i) {
                break;
            }
            long m16215d = m16215d(this.f47339l[i2]) & 1048575;
            Object m15966f = dqm.m15966f(t, m16215d);
            if (m15966f != null) {
                dqm.m15987a(t, m16215d, this.f47346s.mo16265d(m15966f));
            }
            i2++;
        }
        int length = this.f47339l.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f47343p.mo16290b(t, this.f47339l[i3]);
        }
        this.f47344q.mo16012d(t);
        if (this.f47335h) {
            this.f47345r.mo16381c(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: d */
    public final boolean mo16115d(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f47340m; i3++) {
            int i4 = this.f47339l[i3];
            int i5 = this.f47330c[i4];
            int m16215d = m16215d(i4);
            int i6 = this.f47330c[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f47329b.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & m16215d) != 0) && !m16236a((dox<T>) t, i4, i, i2, i8)) {
                return false;
            }
            int i9 = (267386880 & m16215d) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (m16237a((dox<T>) t, i5, i4) && !m16234a(t, m16215d, m16247a(i4))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> mo16267b = this.f47346s.mo16267b(dqm.m15966f(t, m16215d & 1048575));
                            boolean z = true;
                            if (!mo16267b.isEmpty()) {
                                m16225b(i4);
                                z = true;
                                if (this.f47346s.mo16268b().f47321c.zzbmh() == dra.MESSAGE) {
                                    dpp<T> dppVar = null;
                                    Iterator<?> it2 = mo16267b.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it2.hasNext()) {
                                            break;
                                        }
                                        Object next = it2.next();
                                        dpp<T> dppVar2 = dppVar;
                                        if (dppVar == null) {
                                            dppVar2 = dpi.m16196a().m16195a((Class) next.getClass());
                                        }
                                        dppVar = dppVar2;
                                        if (!dppVar2.mo16115d(next)) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) dqm.m15966f(t, m16215d & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    dpp m16247a = m16247a(i4);
                    int i10 = 0;
                    while (true) {
                        z2 = true;
                        if (i10 >= list.size()) {
                            break;
                        } else if (!m16247a.mo16115d(list.get(i10))) {
                            z2 = false;
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
                if (!z2) {
                    return false;
                }
            } else if (m16236a((dox<T>) t, i4, i, i2, i8) && !m16234a(t, m16215d, m16247a(i4))) {
                return false;
            }
        }
        return !this.f47335h || this.f47345r.mo16387a(t).m16366d();
    }
}
