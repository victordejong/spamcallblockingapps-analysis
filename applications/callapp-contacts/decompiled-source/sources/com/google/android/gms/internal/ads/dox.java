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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dox.class */
public final class dox<T> implements dpp<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f27042a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    private static final Unsafe f27043b = dqm.c();

    /* renamed from: c  reason: collision with root package name */
    private final int[] f27044c;

    /* renamed from: d  reason: collision with root package name */
    private final Object[] f27045d;
    private final int e;
    private final int f;
    private final dot g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final int[] l;
    private final int m;
    private final int n;
    private final dpb o;
    private final doc p;
    private final dqh<?, ?> q;
    private final dmv<?> r;
    private final dom s;

    private dox(int[] iArr, Object[] objArr, int i, int i2, dot dotVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, dpb dpbVar, doc docVar, dqh<?, ?> dqhVar, dmv<?> dmvVar, dom domVar) {
        this.f27044c = iArr;
        this.f27045d = objArr;
        this.e = i;
        this.f = i2;
        this.i = dotVar instanceof dnh;
        this.j = z;
        this.h = dmvVar != null && dmvVar.a(dotVar);
        this.k = false;
        this.l = iArr2;
        this.m = i3;
        this.n = i4;
        this.o = dpbVar;
        this.p = docVar;
        this.q = dqhVar;
        this.r = dmvVar;
        this.g = dotVar;
        this.s = domVar;
    }

    private final int a(int i, int i2) {
        if (i < this.e || i > this.f) {
            return -1;
        }
        return b(i, i2);
    }

    private static <UT, UB> int a(dqh<UT, UB> dqhVar, T t) {
        return dqhVar.f(dqhVar.b(t));
    }

    private final int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, dlr dlrVar) throws IOException {
        Unsafe unsafe = f27043b;
        long j2 = this.f27044c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(dls.c(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(dls.d(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = dls.b(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Long.valueOf(dlrVar.f26932b));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = dls.a(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Integer.valueOf(dlrVar.f26931a));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(dls.b(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(dls.a(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = dls.b(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Boolean.valueOf(dlrVar.f26932b != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = dls.a(bArr, i, dlrVar);
                    int i9 = dlrVar.f26931a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || dqp.a(bArr, i, i + i9)) {
                        unsafe.putObject(t, j, new String(bArr, i, i9, dnj.f27001a));
                        i += i9;
                    } else {
                        throw zzenn.i();
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = dls.a(a(i8), bArr, i, i2, dlrVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, dlrVar.f26933c);
                    } else {
                        unsafe.putObject(t, j, dnj.a(object, dlrVar.f26933c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = dls.e(bArr, i, dlrVar);
                    unsafe.putObject(t, j, dlrVar.f26933c);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = dls.a(bArr, i, dlrVar);
                    int i10 = dlrVar.f26931a;
                    dno c2 = c(i8);
                    if (c2 != null && !c2.a(i10)) {
                        e(t).a(i3, Long.valueOf(i10));
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
                    i = dls.a(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Integer.valueOf(dmi.e(dlrVar.f26931a)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = dls.b(bArr, i, dlrVar);
                    unsafe.putObject(t, j, Long.valueOf(dmi.a(dlrVar.f26932b)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = dls.a(a(i8), bArr, i, i2, (i3 & (-8)) | 4, dlrVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, dlrVar.f26933c);
                    } else {
                        unsafe.putObject(t, j, dnj.a(object2, dlrVar.f26933c));
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.ads.dlr r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.dlr):int");
    }

    private final <K, V> int a(T t, byte[] bArr, int i, int i2, int i3, long j, dlr dlrVar) throws IOException {
        Unsafe unsafe = f27043b;
        b(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.s.c(object)) {
            obj = this.s.a();
            this.s.a(obj, object);
            unsafe.putObject(t, j, obj);
        }
        dok<?, ?> b2 = this.s.b();
        Map<?, ?> a2 = this.s.a(obj);
        int a3 = dls.a(bArr, i, dlrVar);
        int i4 = dlrVar.f26931a;
        if (i4 < 0 || i4 > i2 - a3) {
            throw zzenn.a();
        }
        int i5 = i4 + a3;
        Object obj2 = (K) b2.f27034b;
        Object obj3 = (V) b2.f27036d;
        while (a3 < i5) {
            int i6 = a3 + 1;
            byte b3 = bArr[a3];
            int i7 = i6;
            int i8 = b3;
            if (b3 < 0) {
                i7 = dls.a(b3, bArr, i6, dlrVar);
                i8 = dlrVar.f26931a;
            }
            int i9 = i8 >>> 3;
            int i10 = i8 & 7;
            if (i9 != 1) {
                if (i9 == 2 && i10 == b2.f27035c.zzbmi()) {
                    a3 = a(bArr, i7, i2, b2.f27035c, b2.f27036d.getClass(), dlrVar);
                    obj3 = (V) dlrVar.f26933c;
                }
                a3 = dls.a(i8, bArr, i7, i2, dlrVar);
            } else if (i10 == b2.f27033a.zzbmi()) {
                a3 = a(bArr, i7, i2, b2.f27033a, (Class<?>) null, dlrVar);
                obj2 = (K) dlrVar.f26933c;
            } else {
                a3 = dls.a(i8, bArr, i7, i2, dlrVar);
            }
        }
        if (a3 == i5) {
            a2.put(obj2, obj3);
            return i5;
        }
        throw zzenn.h();
    }

    private static int a(byte[] bArr, int i, int i2, dqx dqxVar, Class<?> cls, dlr dlrVar) throws IOException {
        int i3;
        switch (dow.f27041a[dqxVar.ordinal()]) {
            case 1:
                i3 = dls.b(bArr, i, dlrVar);
                dlrVar.f26933c = Boolean.valueOf(dlrVar.f26932b != 0);
                break;
            case 2:
                i3 = dls.e(bArr, i, dlrVar);
                break;
            case 3:
                dlrVar.f26933c = Double.valueOf(dls.c(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                dlrVar.f26933c = Integer.valueOf(dls.a(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                dlrVar.f26933c = Long.valueOf(dls.b(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                dlrVar.f26933c = Float.valueOf(dls.d(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = dls.a(bArr, i, dlrVar);
                dlrVar.f26933c = Integer.valueOf(dlrVar.f26931a);
                break;
            case 12:
            case 13:
                i3 = dls.b(bArr, i, dlrVar);
                dlrVar.f26933c = Long.valueOf(dlrVar.f26932b);
                break;
            case 14:
                i3 = dls.a(dpi.a().a((Class) cls), bArr, i, i2, dlrVar);
                break;
            case 15:
                i3 = dls.a(bArr, i, dlrVar);
                dlrVar.f26933c = Integer.valueOf(dmi.e(dlrVar.f26931a));
                break;
            case 16:
                i3 = dls.b(bArr, i, dlrVar);
                dlrVar.f26933c = Long.valueOf(dmi.a(dlrVar.f26932b));
                break;
            case 17:
                i3 = dls.d(bArr, i, dlrVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:162:0x086d  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0942  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.ads.dox<T> a(com.google.android.gms.internal.ads.dor r18, com.google.android.gms.internal.ads.dpb r19, com.google.android.gms.internal.ads.doc r20, com.google.android.gms.internal.ads.dqh<?, ?> r21, com.google.android.gms.internal.ads.dmv<?> r22, com.google.android.gms.internal.ads.dom r23) {
        /*
            Method dump skipped, instructions count: 2590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.a(com.google.android.gms.internal.ads.dor, com.google.android.gms.internal.ads.dpb, com.google.android.gms.internal.ads.doc, com.google.android.gms.internal.ads.dqh, com.google.android.gms.internal.ads.dmv, com.google.android.gms.internal.ads.dom):com.google.android.gms.internal.ads.dox");
    }

    private final dpp a(int i) {
        int i2 = (i / 3) << 1;
        dpp dppVar = (dpp) this.f27045d[i2];
        if (dppVar != null) {
            return dppVar;
        }
        dpp<T> a2 = dpi.a().a((Class) ((Class) this.f27045d[i2 + 1]));
        this.f27045d[i2] = a2;
        return a2;
    }

    private final <K, V, UT, UB> UB a(int i, int i2, Map<K, V> map, dno dnoVar, UB ub, dqh<UT, UB> dqhVar) {
        dom domVar = this.s;
        b(i);
        dok<?, ?> b2 = domVar.b();
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (!dnoVar.a(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = dqhVar.a();
                }
                dme c2 = dlw.c(dol.a(b2, next.getKey(), next.getValue()));
                try {
                    dol.a(c2.f26947a, b2, next.getKey(), next.getValue());
                    dqhVar.a((dqh<UT, UB>) ub2, i2, c2.a());
                    it2.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB a(Object obj, int i, UB ub, dqh<UT, UB> dqhVar) {
        dno c2;
        int i2 = this.f27044c[i];
        Object f = dqm.f(obj, d(i) & 1048575);
        if (!(f == null || (c2 = c(i)) == null)) {
            return (UB) a(i, i2, this.s.a(f), c2, (dno) ub, (dqh<UT, dno>) dqhVar);
        }
        return ub;
    }

    private static Field a(Class<?> cls, String str) {
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

    private static List<?> a(Object obj, long j) {
        return (List) dqm.f(obj, j);
    }

    private static void a(int i, Object obj, drd drdVar) throws IOException {
        if (obj instanceof String) {
            drdVar.a(i, (String) obj);
        } else {
            drdVar.a(i, (dlw) obj);
        }
    }

    private static <UT, UB> void a(dqh<UT, UB> dqhVar, T t, drd drdVar) throws IOException {
        dqhVar.a((dqh<UT, UB>) dqhVar.b(t), drdVar);
    }

    private final <K, V> void a(drd drdVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            dom domVar = this.s;
            b(i2);
            drdVar.a(i, domVar.b(), this.s.b(obj));
        }
    }

    private final void a(Object obj, int i, dpj dpjVar) throws IOException {
        if (f(i)) {
            dqm.a(obj, i & 1048575, dpjVar.m());
        } else if (this.i) {
            dqm.a(obj, i & 1048575, dpjVar.l());
        } else {
            dqm.a(obj, i & 1048575, dpjVar.n());
        }
    }

    private final void a(T t, T t2, int i) {
        long d2 = d(i) & 1048575;
        if (a((dox<T>) t2, i)) {
            Object f = dqm.f(t, d2);
            Object f2 = dqm.f(t2, d2);
            if (f != null && f2 != null) {
                dqm.a(t, d2, dnj.a(f, f2));
                b((dox<T>) t, i);
            } else if (f2 != null) {
                dqm.a(t, d2, f2);
                b((dox<T>) t, i);
            }
        }
    }

    private final boolean a(T t, int i) {
        int e = e(i);
        long j = e & 1048575;
        if (j != 1048575) {
            return (dqm.a(t, j) & (1 << (e >>> 20))) != 0;
        }
        int d2 = d(i);
        long j2 = d2 & 1048575;
        switch ((d2 & 267386880) >>> 20) {
            case 0:
                return dqm.e(t, j2) != 0.0d;
            case 1:
                return dqm.d(t, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return dqm.b(t, j2) != 0;
            case 3:
                return dqm.b(t, j2) != 0;
            case 4:
                return dqm.a(t, j2) != 0;
            case 5:
                return dqm.b(t, j2) != 0;
            case 6:
                return dqm.a(t, j2) != 0;
            case 7:
                return dqm.c(t, j2);
            case 8:
                Object f = dqm.f(t, j2);
                if (f instanceof String) {
                    return !((String) f).isEmpty();
                }
                if (f instanceof dlw) {
                    return !dlw.f26941a.equals(f);
                }
                throw new IllegalArgumentException();
            case 9:
                return dqm.f(t, j2) != null;
            case 10:
                return !dlw.f26941a.equals(dqm.f(t, j2));
            case 11:
                return dqm.a(t, j2) != 0;
            case 12:
                return dqm.a(t, j2) != 0;
            case 13:
                return dqm.a(t, j2) != 0;
            case 14:
                return dqm.b(t, j2) != 0;
            case 15:
                return dqm.a(t, j2) != 0;
            case 16:
                return dqm.b(t, j2) != 0;
            case 17:
                return dqm.f(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean a(T t, int i, int i2) {
        return dqm.a(t, (long) (e(i2) & 1048575)) == i;
    }

    private final boolean a(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? a((dox<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i, dpp dppVar) {
        return dppVar.d(dqm.f(obj, i & 1048575));
    }

    private static <T> double b(T t, long j) {
        return ((Double) dqm.f(t, j)).doubleValue();
    }

    private final int b(int i, int i2) {
        int length = (this.f27044c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f27044c[i4];
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

    private final Object b(int i) {
        return this.f27045d[(i / 3) << 1];
    }

    private final void b(T t, int i) {
        int e = e(i);
        long j = 1048575 & e;
        if (j != 1048575) {
            dqm.a((Object) t, j, (1 << (e >>> 20)) | dqm.a(t, j));
        }
    }

    private final void b(T t, int i, int i2) {
        dqm.a((Object) t, e(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x098b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(T r9, com.google.android.gms.internal.ads.drd r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.b(java.lang.Object, com.google.android.gms.internal.ads.drd):void");
    }

    private final void b(T t, T t2, int i) {
        int d2 = d(i);
        int i2 = this.f27044c[i];
        long j = d2 & 1048575;
        if (a((dox<T>) t2, i2, i)) {
            Object obj = null;
            if (a((dox<T>) t, i2, i)) {
                obj = dqm.f(t, j);
            }
            Object f = dqm.f(t2, j);
            if (obj != null && f != null) {
                dqm.a(t, j, dnj.a(obj, f));
                b((dox<T>) t, i2, i);
            } else if (f != null) {
                dqm.a(t, j, f);
                b((dox<T>) t, i2, i);
            }
        }
    }

    private static <T> float c(T t, long j) {
        return ((Float) dqm.f(t, j)).floatValue();
    }

    private final dno c(int i) {
        return (dno) this.f27045d[((i / 3) << 1) + 1];
    }

    private final boolean c(T t, T t2, int i) {
        return a((dox<T>) t, i) == a((dox<T>) t2, i);
    }

    private final int d(int i) {
        return this.f27044c[i + 1];
    }

    private static <T> int d(T t, long j) {
        return ((Integer) dqm.f(t, j)).intValue();
    }

    private final int e(int i) {
        return this.f27044c[i + 2];
    }

    private static <T> long e(T t, long j) {
        return ((Long) dqm.f(t, j)).longValue();
    }

    private static dqj e(Object obj) {
        dnh dnhVar = (dnh) obj;
        dqj dqjVar = dnhVar.zzitn;
        dqj dqjVar2 = dqjVar;
        if (dqjVar == dqj.a()) {
            dqjVar2 = dqj.b();
            dnhVar.zzitn = dqjVar2;
        }
        return dqjVar2;
    }

    private static boolean f(int i) {
        return (i & 536870912) != 0;
    }

    private static <T> boolean f(T t, long j) {
        return ((Boolean) dqm.f(t, j)).booleanValue();
    }

    private final int g(int i) {
        if (i < this.e || i > this.f) {
            return -1;
        }
        return b(i, 0);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final int a(T t) {
        int i;
        int i2;
        int length = this.f27044c.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d2 = d(i4);
            int i5 = this.f27044c[i4];
            long j = 1048575 & d2;
            int i6 = 37;
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    i = i3 * 53;
                    i2 = dnj.a(Double.doubleToLongBits(dqm.e(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(dqm.d(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = dnj.a(dqm.b(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = dnj.a(dqm.b(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = dqm.a(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = dnj.a(dqm.b(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = dqm.a(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = dnj.a(dqm.c(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) dqm.f(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object f = dqm.f(t, j);
                    if (f != null) {
                        i6 = f.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = dqm.f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = dqm.a(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = dqm.a(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = dqm.a(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = dnj.a(dqm.b(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = dqm.a(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = dnj.a(dqm.b(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object f2 = dqm.f(t, j);
                    if (f2 != null) {
                        i6 = f2.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
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
                    i = i3 * 53;
                    i2 = dqm.f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = dqm.f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dnj.a(Double.doubleToLongBits(b(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(c(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dnj.a(e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dnj.a(e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dnj.a(e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dnj.a(f(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) dqm.f(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dqm.f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dqm.f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dnj.a(e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dnj.a(e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (a((dox<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = dqm.f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                default:
                    i3 = i3;
                    break;
            }
        }
        int hashCode = (i3 * 53) + this.q.b(t).hashCode();
        int i7 = hashCode;
        if (this.h) {
            i7 = (hashCode * 53) + this.r.a(t).hashCode();
        }
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0760, code lost:
        if (r33 == 1048575) goto L_0x076e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0763, code lost:
        r28.putInt(r17, r33, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x076e, code lost:
        r22 = null;
        r19 = r18.m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x077b, code lost:
        if (r19 >= r18.n) goto L_0x079a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x077e, code lost:
        r22 = (com.google.android.gms.internal.ads.dqj) r18.a((java.lang.Object) r17, r18.l[r19], (int) r22, (com.google.android.gms.internal.ads.dqh<UT, int>) r18.q);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x079c, code lost:
        if (r22 == null) goto L_0x07a9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x079f, code lost:
        r18.q.b((java.lang.Object) r17, (T) r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07ab, code lost:
        if (r29 != 0) goto L_0x07bc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07b2, code lost:
        if (r21 != r20) goto L_0x07b8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x07bb, code lost:
        throw com.google.android.gms.internal.ads.zzenn.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x07c0, code lost:
        if (r21 > r20) goto L_0x07cd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x07c7, code lost:
        if (r31 != r29) goto L_0x07cd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x07cc, code lost:
        return r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x07d0, code lost:
        throw com.google.android.gms.internal.ads.zzenn.h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.ads.dlr r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2001
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.dlr):int");
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final T a() {
        return (T) this.o.a(this.g);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final void a(T t, dpj dpjVar, dmt dmtVar) throws IOException {
        Object obj;
        Objects.requireNonNull(dmtVar);
        dqh dqhVar = this.q;
        dmv<?> dmvVar = this.r;
        Object obj2 = null;
        dmz<?> dmzVar = null;
        while (true) {
            Object obj3 = obj2;
            try {
                int a2 = dpjVar.a();
                int g = g(a2);
                if (g >= 0) {
                    int d2 = d(g);
                    switch ((267386880 & d2) >>> 20) {
                        case 0:
                            dqm.a(t, d2 & 1048575, dpjVar.d());
                            b((dox<T>) t, g);
                            continue;
                        case 1:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.e());
                            b((dox<T>) t, g);
                            continue;
                        case 2:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.g());
                            b((dox<T>) t, g);
                            continue;
                        case 3:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.f());
                            b((dox<T>) t, g);
                            continue;
                        case 4:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.h());
                            b((dox<T>) t, g);
                            continue;
                        case 5:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.i());
                            b((dox<T>) t, g);
                            continue;
                        case 6:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.j());
                            b((dox<T>) t, g);
                            continue;
                        case 7:
                            dqm.a(t, d2 & 1048575, dpjVar.k());
                            b((dox<T>) t, g);
                            continue;
                        case 8:
                            a(t, d2, dpjVar);
                            b((dox<T>) t, g);
                            continue;
                        case 9:
                            if (!a((dox<T>) t, g)) {
                                dqm.a(t, d2 & 1048575, dpjVar.a(a(g), dmtVar));
                                b((dox<T>) t, g);
                                break;
                            } else {
                                long j = d2 & 1048575;
                                dqm.a(t, j, dnj.a(dqm.f(t, j), dpjVar.a(a(g), dmtVar)));
                                continue;
                            }
                        case 10:
                            dqm.a(t, d2 & 1048575, dpjVar.n());
                            b((dox<T>) t, g);
                            continue;
                        case 11:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.o());
                            b((dox<T>) t, g);
                            continue;
                        case 12:
                            int p = dpjVar.p();
                            dno c2 = c(g);
                            if (c2 != null && !c2.a(p)) {
                                obj2 = dpr.a(a2, p, obj2, dqhVar);
                                continue;
                            }
                            dqm.a((Object) t, d2 & 1048575, p);
                            b((dox<T>) t, g);
                            break;
                        case 13:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.q());
                            b((dox<T>) t, g);
                            continue;
                        case 14:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.r());
                            b((dox<T>) t, g);
                            continue;
                        case 15:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.s());
                            b((dox<T>) t, g);
                            continue;
                        case 16:
                            dqm.a((Object) t, d2 & 1048575, dpjVar.t());
                            b((dox<T>) t, g);
                            continue;
                        case 17:
                            if (!a((dox<T>) t, g)) {
                                dqm.a(t, d2 & 1048575, dpjVar.b(a(g), dmtVar));
                                b((dox<T>) t, g);
                                break;
                            } else {
                                long j2 = d2 & 1048575;
                                dqm.a(t, j2, dnj.a(dqm.f(t, j2), dpjVar.b(a(g), dmtVar)));
                                continue;
                            }
                        case 18:
                            dpjVar.a(this.p.a(t, d2 & 1048575));
                            continue;
                        case 19:
                            dpjVar.b(this.p.a(t, d2 & 1048575));
                            continue;
                        case 20:
                            dpjVar.d(this.p.a(t, d2 & 1048575));
                            continue;
                        case 21:
                            dpjVar.c(this.p.a(t, d2 & 1048575));
                            continue;
                        case 22:
                            dpjVar.e(this.p.a(t, d2 & 1048575));
                            continue;
                        case 23:
                            dpjVar.f(this.p.a(t, d2 & 1048575));
                            continue;
                        case 24:
                            dpjVar.g(this.p.a(t, d2 & 1048575));
                            continue;
                        case 25:
                            dpjVar.h(this.p.a(t, d2 & 1048575));
                            continue;
                        case 26:
                            if (!f(d2)) {
                                dpjVar.i(this.p.a(t, d2 & 1048575));
                                break;
                            } else {
                                dpjVar.j(this.p.a(t, d2 & 1048575));
                                continue;
                            }
                        case 27:
                            dpjVar.a(this.p.a(t, d2 & 1048575), a(g), dmtVar);
                            continue;
                        case 28:
                            dpjVar.k(this.p.a(t, d2 & 1048575));
                            continue;
                        case 29:
                            dpjVar.l(this.p.a(t, d2 & 1048575));
                            continue;
                        case 30:
                            List<Integer> a3 = this.p.a(t, d2 & 1048575);
                            dpjVar.m(a3);
                            obj2 = dpr.a(a2, a3, c(g), obj2, dqhVar);
                            continue;
                        case 31:
                            dpjVar.n(this.p.a(t, d2 & 1048575));
                            continue;
                        case 32:
                            dpjVar.o(this.p.a(t, d2 & 1048575));
                            continue;
                        case 33:
                            dpjVar.p(this.p.a(t, d2 & 1048575));
                            continue;
                        case 34:
                            dpjVar.q(this.p.a(t, d2 & 1048575));
                            continue;
                        case 35:
                            dpjVar.a(this.p.a(t, d2 & 1048575));
                            continue;
                        case 36:
                            dpjVar.b(this.p.a(t, d2 & 1048575));
                            continue;
                        case 37:
                            dpjVar.d(this.p.a(t, d2 & 1048575));
                            continue;
                        case 38:
                            dpjVar.c(this.p.a(t, d2 & 1048575));
                            continue;
                        case 39:
                            dpjVar.e(this.p.a(t, d2 & 1048575));
                            continue;
                        case 40:
                            dpjVar.f(this.p.a(t, d2 & 1048575));
                            continue;
                        case 41:
                            dpjVar.g(this.p.a(t, d2 & 1048575));
                            continue;
                        case 42:
                            dpjVar.h(this.p.a(t, d2 & 1048575));
                            continue;
                        case 43:
                            dpjVar.l(this.p.a(t, d2 & 1048575));
                            continue;
                        case 44:
                            List<Integer> a4 = this.p.a(t, d2 & 1048575);
                            dpjVar.m(a4);
                            obj2 = dpr.a(a2, a4, c(g), obj2, dqhVar);
                            continue;
                        case 45:
                            dpjVar.n(this.p.a(t, d2 & 1048575));
                            continue;
                        case 46:
                            dpjVar.o(this.p.a(t, d2 & 1048575));
                            continue;
                        case 47:
                            dpjVar.p(this.p.a(t, d2 & 1048575));
                            continue;
                        case 48:
                            dpjVar.q(this.p.a(t, d2 & 1048575));
                            continue;
                        case 49:
                            dpjVar.b(this.p.a(t, d2 & 1048575), a(g), dmtVar);
                            continue;
                        case 50:
                            b(g);
                            long d3 = d(g) & 1048575;
                            Object f = dqm.f(t, d3);
                            if (f == null) {
                                obj = this.s.a();
                                dqm.a(t, d3, obj);
                            } else {
                                obj = f;
                                if (this.s.c(f)) {
                                    obj = this.s.a();
                                    this.s.a(obj, f);
                                    dqm.a(t, d3, obj);
                                }
                            }
                            dpjVar.a(this.s.a(obj), this.s.b(), dmtVar);
                            continue;
                        case 51:
                            dqm.a(t, d2 & 1048575, Double.valueOf(dpjVar.d()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 52:
                            dqm.a(t, d2 & 1048575, Float.valueOf(dpjVar.e()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 53:
                            dqm.a(t, d2 & 1048575, Long.valueOf(dpjVar.g()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 54:
                            dqm.a(t, d2 & 1048575, Long.valueOf(dpjVar.f()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 55:
                            dqm.a(t, d2 & 1048575, Integer.valueOf(dpjVar.h()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 56:
                            dqm.a(t, d2 & 1048575, Long.valueOf(dpjVar.i()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 57:
                            dqm.a(t, d2 & 1048575, Integer.valueOf(dpjVar.j()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 58:
                            dqm.a(t, d2 & 1048575, Boolean.valueOf(dpjVar.k()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 59:
                            a(t, d2, dpjVar);
                            b((dox<T>) t, a2, g);
                            continue;
                        case 60:
                            if (a((dox<T>) t, a2, g)) {
                                long j3 = d2 & 1048575;
                                dqm.a(t, j3, dnj.a(dqm.f(t, j3), dpjVar.a(a(g), dmtVar)));
                            } else {
                                dqm.a(t, d2 & 1048575, dpjVar.a(a(g), dmtVar));
                                b((dox<T>) t, g);
                            }
                            b((dox<T>) t, a2, g);
                            continue;
                        case 61:
                            dqm.a(t, d2 & 1048575, dpjVar.n());
                            b((dox<T>) t, a2, g);
                            continue;
                        case 62:
                            dqm.a(t, d2 & 1048575, Integer.valueOf(dpjVar.o()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 63:
                            int p2 = dpjVar.p();
                            dno c3 = c(g);
                            if (c3 != null && !c3.a(p2)) {
                                obj2 = dpr.a(a2, p2, obj2, dqhVar);
                                continue;
                            }
                            dqm.a(t, d2 & 1048575, Integer.valueOf(p2));
                            b((dox<T>) t, a2, g);
                            break;
                        case 64:
                            dqm.a(t, d2 & 1048575, Integer.valueOf(dpjVar.q()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 65:
                            dqm.a(t, d2 & 1048575, Long.valueOf(dpjVar.r()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 66:
                            dqm.a(t, d2 & 1048575, Integer.valueOf(dpjVar.s()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 67:
                            dqm.a(t, d2 & 1048575, Long.valueOf(dpjVar.t()));
                            b((dox<T>) t, a2, g);
                            continue;
                        case 68:
                            dqm.a(t, d2 & 1048575, dpjVar.b(a(g), dmtVar));
                            b((dox<T>) t, a2, g);
                            continue;
                        default:
                            Object obj4 = obj2;
                            if (obj2 == null) {
                                obj3 = obj2;
                                try {
                                    obj4 = dqhVar.a();
                                } catch (zzenm e) {
                                    Object obj5 = obj2;
                                    if (obj2 == null) {
                                        obj5 = dqhVar.c(t);
                                    }
                                    obj2 = obj5;
                                    if (dqhVar.a((dqh) obj5, dpjVar)) {
                                        break;
                                    } else {
                                        for (int i = this.m; i < this.n; i++) {
                                            obj5 = a((Object) t, this.l[i], (int) obj5, (dqh<UT, int>) dqhVar);
                                        }
                                        if (obj5 != null) {
                                            dqhVar.b((Object) t, (T) obj5);
                                            return;
                                        }
                                        return;
                                    }
                                }
                            }
                            obj2 = obj4;
                            if (!dqhVar.a((dqh) obj4, dpjVar)) {
                                for (int i2 = this.m; i2 < this.n; i2++) {
                                    obj4 = a((Object) t, this.l[i2], (int) obj4, (dqh<UT, int>) dqhVar);
                                }
                                if (obj4 != null) {
                                    dqhVar.b((Object) t, (T) obj4);
                                    return;
                                }
                                return;
                            }
                            continue;
                    }
                } else if (a2 == Integer.MAX_VALUE) {
                    for (int i3 = this.m; i3 < this.n; i3++) {
                        obj2 = a((Object) t, this.l[i3], (int) obj2, (dqh<UT, int>) dqhVar);
                    }
                    if (obj2 != null) {
                        dqhVar.b((Object) t, (T) obj2);
                        return;
                    }
                    return;
                } else if ((!this.h ? null : dmvVar.a(dmtVar, this.g, a2)) != null) {
                    dmzVar = dmzVar;
                    if (dmzVar == null) {
                        dmzVar = dmvVar.b(t);
                    }
                    obj2 = dmvVar.a();
                } else {
                    Object obj6 = obj2;
                    if (obj2 == null) {
                        obj6 = dqhVar.c(t);
                    }
                    obj2 = obj6;
                    if (!dqhVar.a((dqh) obj6, dpjVar)) {
                        for (int i4 = this.m; i4 < this.n; i4++) {
                            obj6 = a((Object) t, this.l[i4], (int) obj6, (dqh<UT, int>) dqhVar);
                        }
                        if (obj6 != null) {
                            dqhVar.b((Object) t, (T) obj6);
                            return;
                        }
                        return;
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.m; i5 < this.n; i5++) {
                    obj3 = a((Object) t, this.l[i5], (int) obj3, (dqh<UT, int>) dqhVar);
                }
                if (obj3 != null) {
                    dqhVar.b((Object) t, (T) obj3);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r8, com.google.android.gms.internal.ads.drd r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.a(java.lang.Object, com.google.android.gms.internal.ads.drd):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x04b5, code lost:
        if (r32 == r32) goto L_0x04e8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x04e2, code lost:
        if (r32 == r32) goto L_0x04e8;
     */
    @Override // com.google.android.gms.internal.ads.dpp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.ads.dlr r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.dlr):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.ads.dpr.a(com.google.android.gms.internal.ads.dqm.f(r7, r0), com.google.android.gms.internal.ads.dqm.f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (com.google.android.gms.internal.ads.dpr.a(com.google.android.gms.internal.ads.dqm.f(r7, r0), com.google.android.gms.internal.ads.dqm.f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (com.google.android.gms.internal.ads.dqm.b(r7, r0) == com.google.android.gms.internal.ads.dqm.b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (com.google.android.gms.internal.ads.dqm.a(r7, r0) == com.google.android.gms.internal.ads.dqm.a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (com.google.android.gms.internal.ads.dqm.b(r7, r0) == com.google.android.gms.internal.ads.dqm.b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (com.google.android.gms.internal.ads.dqm.a(r7, r0) == com.google.android.gms.internal.ads.dqm.a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (com.google.android.gms.internal.ads.dqm.a(r7, r0) == com.google.android.gms.internal.ads.dqm.a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (com.google.android.gms.internal.ads.dqm.a(r7, r0) == com.google.android.gms.internal.ads.dqm.a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (com.google.android.gms.internal.ads.dpr.a(com.google.android.gms.internal.ads.dqm.f(r7, r0), com.google.android.gms.internal.ads.dqm.f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (com.google.android.gms.internal.ads.dpr.a(com.google.android.gms.internal.ads.dqm.f(r7, r0), com.google.android.gms.internal.ads.dqm.f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (com.google.android.gms.internal.ads.dpr.a(com.google.android.gms.internal.ads.dqm.f(r7, r0), com.google.android.gms.internal.ads.dqm.f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (com.google.android.gms.internal.ads.dqm.c(r7, r0) == com.google.android.gms.internal.ads.dqm.c(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (com.google.android.gms.internal.ads.dqm.a(r7, r0) == com.google.android.gms.internal.ads.dqm.a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (com.google.android.gms.internal.ads.dqm.b(r7, r0) == com.google.android.gms.internal.ads.dqm.b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (com.google.android.gms.internal.ads.dqm.a(r7, r0) == com.google.android.gms.internal.ads.dqm.a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (com.google.android.gms.internal.ads.dqm.b(r7, r0) == com.google.android.gms.internal.ads.dqm.b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (com.google.android.gms.internal.ads.dqm.b(r7, r0) == com.google.android.gms.internal.ads.dqm.b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.dqm.d(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.dqm.d(r8, r0))) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.dqm.e(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.dqm.e(r8, r0))) goto L_0x03cf;
     */
    @Override // com.google.android.gms.internal.ads.dpp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dox.a(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final int b(T t) {
        int i;
        int j;
        int i2;
        int i3;
        int i4;
        int j2;
        int i5;
        int i6;
        int i7;
        if (this.j) {
            Unsafe unsafe = f27043b;
            int i8 = 0;
            for (int i9 = 0; i9 < this.f27044c.length; i9 += 3) {
                int d2 = d(i9);
                int i10 = (d2 & 267386880) >>> 20;
                int i11 = this.f27044c[i9];
                long j3 = d2 & 1048575;
                if (i10 >= dna.DOUBLE_LIST_PACKED.id()) {
                    dna.SINT64_LIST_PACKED.id();
                }
                switch (i10) {
                    case 0:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.j(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.i(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.d(i11, dqm.b(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.e(i11, dqm.b(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.f(i11, dqm.a(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.g(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.e(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.k(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            Object f = dqm.f(t, j3);
                            j2 = f instanceof dlw ? zzemk.c(i11, (dlw) f) : zzemk.b(i11, (String) f);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = dpr.a(i11, dqm.f(t, j3), a(i9));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.c(i11, (dlw) dqm.f(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.g(i11, dqm.a(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.i(i11, dqm.a(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.f(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.h(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.h(i11, dqm.a(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.f(i11, dqm.b(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i8 = i8;
                        if (a((dox<T>) t, i9)) {
                            j2 = zzemk.c(i11, (dot) dqm.f(t, j3), a(i9));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        j2 = dpr.i(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 19:
                        j2 = dpr.h(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 20:
                        j2 = dpr.a(i11, (List<Long>) a(t, j3));
                        i8 += j2;
                        break;
                    case 21:
                        j2 = dpr.b(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 22:
                        j2 = dpr.e(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 23:
                        j2 = dpr.i(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 24:
                        j2 = dpr.h(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 25:
                        j2 = dpr.j(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 26:
                        j2 = dpr.k(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 27:
                        j2 = dpr.a(i11, a(t, j3), a(i9));
                        i8 += j2;
                        break;
                    case 28:
                        j2 = dpr.l(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 29:
                        j2 = dpr.f(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 30:
                        j2 = dpr.d(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 31:
                        j2 = dpr.h(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 32:
                        j2 = dpr.i(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 33:
                        j2 = dpr.g(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 34:
                        j2 = dpr.c(i11, a(t, j3));
                        i8 += j2;
                        break;
                    case 35:
                        int i12 = dpr.i((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (i12 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(i12);
                            i6 = i12;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        int h = dpr.h((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (h > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(h);
                            i6 = h;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        int a2 = dpr.a((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (a2 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(a2);
                            i6 = a2;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        int b2 = dpr.b((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (b2 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(b2);
                            i6 = b2;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        int e = dpr.e((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (e > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(e);
                            i6 = e;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        int i13 = dpr.i((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (i13 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(i13);
                            i6 = i13;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        int h2 = dpr.h((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (h2 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(h2);
                            i6 = h2;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        int j4 = dpr.j((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (j4 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(j4);
                            i6 = j4;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        int f2 = dpr.f((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (f2 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(f2);
                            i6 = f2;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        int d3 = dpr.d((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (d3 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(d3);
                            i6 = d3;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        int h3 = dpr.h((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (h3 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(h3);
                            i6 = h3;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        int i14 = dpr.i((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (i14 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(i14);
                            i6 = i14;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        int g = dpr.g((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (g > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(g);
                            i6 = g;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        int c2 = dpr.c((List) unsafe.getObject(t, j3));
                        i8 = i8;
                        if (c2 > 0) {
                            i7 = zzemk.l(i11);
                            i5 = zzemk.n(c2);
                            i6 = c2;
                            i8 += i7 + i5 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        j2 = dpr.b(i11, (List<dot>) a(t, j3), a(i9));
                        i8 += j2;
                        break;
                    case 50:
                        dom domVar = this.s;
                        Object f3 = dqm.f(t, j3);
                        b(i9);
                        j2 = domVar.e(f3);
                        i8 += j2;
                        break;
                    case 51:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.j(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.i(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.d(i11, e(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.e(i11, e(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.f(i11, d(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.g(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.e(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.k(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            Object f4 = dqm.f(t, j3);
                            j2 = f4 instanceof dlw ? zzemk.c(i11, (dlw) f4) : zzemk.b(i11, (String) f4);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = dpr.a(i11, dqm.f(t, j3), a(i9));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.c(i11, (dlw) dqm.f(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.g(i11, d(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.i(i11, d(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.f(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.h(i11);
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.h(i11, d(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.f(i11, e(t, j3));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i8 = i8;
                        if (a((dox<T>) t, i11, i9)) {
                            j2 = zzemk.c(i11, (dot) dqm.f(t, j3), a(i9));
                            i8 += j2;
                            break;
                        } else {
                            break;
                        }
                    default:
                        i8 = i8;
                        break;
                }
            }
            return i8 + a((dqh) this.q, (Object) t);
        }
        Unsafe unsafe2 = f27043b;
        int i15 = 0;
        int i16 = 1048575;
        int i17 = 0;
        for (int i18 = 0; i18 < this.f27044c.length; i18 += 3) {
            int d4 = d(i18);
            int[] iArr = this.f27044c;
            int i19 = iArr[i18];
            int i20 = (d4 & 267386880) >>> 20;
            if (i20 <= 17) {
                int i21 = iArr[i18 + 2];
                int i22 = i21 & 1048575;
                int i23 = 1 << (i21 >>> 20);
                i16 = i16;
                i = i23;
                if (i22 != i16) {
                    i17 = unsafe2.getInt(t, i22);
                    i16 = i22;
                    i = i23;
                }
            } else {
                i = 0;
                i16 = i16;
            }
            long j5 = d4 & 1048575;
            switch (i20) {
                case 0:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.j(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.i(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.d(i19, unsafe2.getLong(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.e(i19, unsafe2.getLong(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.f(i19, unsafe2.getInt(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.g(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.e(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.k(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        Object object = unsafe2.getObject(t, j5);
                        j = object instanceof dlw ? zzemk.c(i19, (dlw) object) : zzemk.b(i19, (String) object);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = dpr.a(i19, unsafe2.getObject(t, j5), a(i18));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.c(i19, (dlw) unsafe2.getObject(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.g(i19, unsafe2.getInt(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.i(i19, unsafe2.getInt(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.f(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.h(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.h(i19, unsafe2.getInt(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.f(i19, unsafe2.getLong(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i15 = i15;
                    if ((i17 & i) != 0) {
                        j = zzemk.c(i19, (dot) unsafe2.getObject(t, j5), a(i18));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    j = dpr.i(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 19:
                    j = dpr.h(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 20:
                    j = dpr.a(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 21:
                    j = dpr.b(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 22:
                    j = dpr.e(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 23:
                    j = dpr.i(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 24:
                    j = dpr.h(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 25:
                    j = dpr.j(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 26:
                    j = dpr.k(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 27:
                    j = dpr.a(i19, (List<?>) unsafe2.getObject(t, j5), a(i18));
                    i15 += j;
                    break;
                case 28:
                    j = dpr.l(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 29:
                    j = dpr.f(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 30:
                    j = dpr.d(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 31:
                    j = dpr.h(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 32:
                    j = dpr.i(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 33:
                    j = dpr.g(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 34:
                    j = dpr.c(i19, (List) unsafe2.getObject(t, j5));
                    i15 += j;
                    break;
                case 35:
                    int i24 = dpr.i((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (i24 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(i24);
                        i3 = i24;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int h4 = dpr.h((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (h4 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(h4);
                        i3 = h4;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int a3 = dpr.a((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (a3 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(a3);
                        i3 = a3;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int b3 = dpr.b((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (b3 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(b3);
                        i3 = b3;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int e2 = dpr.e((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (e2 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(e2);
                        i3 = e2;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int i25 = dpr.i((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (i25 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(i25);
                        i3 = i25;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int h5 = dpr.h((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (h5 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(h5);
                        i3 = h5;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int j6 = dpr.j((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (j6 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(j6);
                        i3 = j6;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int f5 = dpr.f((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (f5 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(f5);
                        i3 = f5;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int d5 = dpr.d((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (d5 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(d5);
                        i3 = d5;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int h6 = dpr.h((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (h6 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(h6);
                        i3 = h6;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int i26 = dpr.i((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (i26 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(i26);
                        i3 = i26;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int g2 = dpr.g((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (g2 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(g2);
                        i3 = g2;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int c3 = dpr.c((List) unsafe2.getObject(t, j5));
                    i15 = i15;
                    if (c3 > 0) {
                        i4 = zzemk.l(i19);
                        i2 = zzemk.n(c3);
                        i3 = c3;
                        i15 += i4 + i2 + i3;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    j = dpr.b(i19, (List) unsafe2.getObject(t, j5), a(i18));
                    i15 += j;
                    break;
                case 50:
                    dom domVar2 = this.s;
                    Object object2 = unsafe2.getObject(t, j5);
                    b(i18);
                    j = domVar2.e(object2);
                    i15 += j;
                    break;
                case 51:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.j(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.i(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.d(i19, e(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.e(i19, e(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.f(i19, d(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.g(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.e(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.k(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        Object object3 = unsafe2.getObject(t, j5);
                        j = object3 instanceof dlw ? zzemk.c(i19, (dlw) object3) : zzemk.b(i19, (String) object3);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = dpr.a(i19, unsafe2.getObject(t, j5), a(i18));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.c(i19, (dlw) unsafe2.getObject(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.g(i19, d(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.i(i19, d(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.f(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.h(i19);
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.h(i19, d(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.f(i19, e(t, j5));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i15 = i15;
                    if (a((dox<T>) t, i19, i18)) {
                        j = zzemk.c(i19, (dot) unsafe2.getObject(t, j5), a(i18));
                        i15 += j;
                        break;
                    } else {
                        break;
                    }
                default:
                    i15 = i15;
                    break;
            }
        }
        int a4 = i15 + a((dqh) this.q, (Object) t);
        int i27 = a4;
        if (this.h) {
            dmz<?> a5 = this.r.a(t);
            int i28 = 0;
            for (int i29 = 0; i29 < a5.f26980a.c(); i29++) {
                Map.Entry<?, Object> b4 = a5.f26980a.b(i29);
                i28 += dmz.a((dnb) b4.getKey(), b4.getValue());
            }
            for (Map.Entry<?, Object> entry : a5.f26980a.d()) {
                i28 += dmz.a((dnb) entry.getKey(), entry.getValue());
            }
            i27 = a4 + i28;
        }
        return i27;
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final void b(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.f27044c.length; i += 3) {
            int d2 = d(i);
            long j = 1048575 & d2;
            int i2 = this.f27044c[i];
            switch ((d2 & 267386880) >>> 20) {
                case 0:
                    if (a((dox<T>) t2, i)) {
                        dqm.a(t, j, dqm.e(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.d(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.b(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.b(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.a(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.b(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.a(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (a((dox<T>) t2, i)) {
                        dqm.a(t, j, dqm.c(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (a((dox<T>) t2, i)) {
                        dqm.a(t, j, dqm.f(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    a(t, t2, i);
                    break;
                case 10:
                    if (a((dox<T>) t2, i)) {
                        dqm.a(t, j, dqm.f(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.a(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.a(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.a(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.b(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.a(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (a((dox<T>) t2, i)) {
                        dqm.a((Object) t, j, dqm.b(t2, j));
                        b((dox<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    a(t, t2, i);
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
                    this.p.a(t, t2, j);
                    break;
                case 50:
                    dpr.a(this.s, t, t2, j);
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
                    if (a((dox<T>) t2, i2, i)) {
                        dqm.a(t, j, dqm.f(t2, j));
                        b((dox<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    b(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (a((dox<T>) t2, i2, i)) {
                        dqm.a(t, j, dqm.f(t2, j));
                        b((dox<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    b(t, t2, i);
                    break;
            }
        }
        dpr.a(this.q, t, t2);
        if (this.h) {
            dpr.a(this.r, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final void c(T t) {
        int i;
        int i2 = this.m;
        while (true) {
            i = this.n;
            if (i2 >= i) {
                break;
            }
            long d2 = d(this.l[i2]) & 1048575;
            Object f = dqm.f(t, d2);
            if (f != null) {
                dqm.a(t, d2, this.s.d(f));
            }
            i2++;
        }
        int length = this.l.length;
        for (int i3 = i; i3 < length; i3++) {
            this.p.b(t, this.l[i3]);
        }
        this.q.d(t);
        if (this.h) {
            this.r.c(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dpp
    public final boolean d(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.m; i3++) {
            int i4 = this.l[i3];
            int i5 = this.f27044c[i4];
            int d2 = d(i4);
            int i6 = this.f27044c[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f27043b.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & d2) != 0) && !a((dox<T>) t, i4, i, i2, i8)) {
                return false;
            }
            int i9 = (267386880 & d2) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (a((dox<T>) t, i5, i4) && !a(t, d2, a(i4))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> b2 = this.s.b(dqm.f(t, d2 & 1048575));
                            boolean z = true;
                            if (!b2.isEmpty()) {
                                b(i4);
                                z = true;
                                if (this.s.b().f27035c.zzbmh() == dra.MESSAGE) {
                                    dpp<T> dppVar = null;
                                    Iterator<?> it2 = b2.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it2.hasNext()) {
                                            break;
                                        }
                                        Object next = it2.next();
                                        dpp<T> dppVar2 = dppVar;
                                        if (dppVar == null) {
                                            dppVar2 = dpi.a().a((Class) next.getClass());
                                        }
                                        dppVar = dppVar2;
                                        if (!dppVar2.d(next)) {
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
                List list = (List) dqm.f(t, d2 & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    dpp a2 = a(i4);
                    int i10 = 0;
                    while (true) {
                        z2 = true;
                        if (i10 >= list.size()) {
                            break;
                        } else if (!a2.d(list.get(i10))) {
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
            } else if (a((dox<T>) t, i4, i, i2, i8) && !a(t, d2, a(i4))) {
                return false;
            }
        }
        return !this.h || this.r.a(t).d();
    }
}
