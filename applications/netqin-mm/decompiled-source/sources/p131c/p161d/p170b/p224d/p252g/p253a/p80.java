package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzeja;
import com.google.android.gms.internal.ads.zzejj;
import com.google.android.gms.internal.ads.zzejt;
import com.google.android.gms.internal.ads.zzeju;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekg;
import com.google.android.gms.internal.ads.zzekj;
import com.google.android.gms.internal.ads.zzelb;
import com.google.android.gms.internal.ads.zzelj;
import com.google.android.gms.internal.ads.zzena;
import com.google.android.gms.internal.ads.zzeno;
import com.google.android.gms.internal.ads.zzenr;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* renamed from: c.d.b.d.g.a.p80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/p80.class */
public final class p80<T> implements f90<T> {

    /* renamed from: r */
    public static final int[] f14396r = new int[0];

    /* renamed from: s */
    public static final Unsafe f14397s = ba0.m27158c();

    /* renamed from: a */
    public final int[] f14398a;

    /* renamed from: b */
    public final Object[] f14399b;

    /* renamed from: c */
    public final int f14400c;

    /* renamed from: d */
    public final int f14401d;

    /* renamed from: e */
    public final zzelj f14402e;

    /* renamed from: f */
    public final boolean f14403f;

    /* renamed from: g */
    public final boolean f14404g;

    /* renamed from: h */
    public final boolean f14405h;

    /* renamed from: i */
    public final boolean f14406i;

    /* renamed from: j */
    public final int[] f14407j;

    /* renamed from: k */
    public final int f14408k;

    /* renamed from: l */
    public final int f14409l;

    /* renamed from: m */
    public final t80 f14410m;

    /* renamed from: n */
    public final a80 f14411n;

    /* renamed from: o */
    public final x90<?, ?> f14412o;

    /* renamed from: p */
    public final n70<?> f14413p;

    /* renamed from: q */
    public final l80 f14414q;

    public p80(int[] iArr, Object[] objArr, int i, int i2, zzelj zzeljVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, t80 t80Var, a80 a80Var, x90<?, ?> x90Var, n70<?> n70Var, l80 l80Var) {
        this.f14398a = iArr;
        this.f14399b = objArr;
        this.f14400c = i;
        this.f14401d = i2;
        this.f14404g = zzeljVar instanceof zzejz;
        this.f14405h = z;
        this.f14403f = n70Var != null && n70Var.mo26590a(zzeljVar);
        this.f14406i = false;
        this.f14407j = iArr2;
        this.f14408k = i3;
        this.f14409l = i4;
        this.f14410m = t80Var;
        this.f14411n = a80Var;
        this.f14412o = x90Var;
        this.f14413p = n70Var;
        this.f14402e = zzeljVar;
        this.f14414q = l80Var;
    }

    /* renamed from: a */
    public static <UT, UB> int m26580a(x90<UT, UB> x90Var, T t) {
        return x90Var.mo26121c(x90Var.mo26119d(t));
    }

    /* renamed from: a */
    public static int m26563a(byte[] bArr, int i, int i2, zzeno zzenoVar, Class<?> cls, u60 u60Var) throws IOException {
        int i3;
        switch (s80.f15086a[zzenoVar.ordinal()]) {
            case 1:
                i3 = v60.m26218b(bArr, i, u60Var);
                u60Var.f15452c = Boolean.valueOf(u60Var.f15451b != 0);
                break;
            case 2:
                i3 = v60.m26213e(bArr, i, u60Var);
                break;
            case 3:
                u60Var.f15452c = Double.valueOf(v60.m26217c(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                u60Var.f15452c = Integer.valueOf(v60.m26222a(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                u60Var.f15452c = Long.valueOf(v60.m26219b(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                u60Var.f15452c = Float.valueOf(v60.m26215d(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = v60.m26221a(bArr, i, u60Var);
                u60Var.f15452c = Integer.valueOf(u60Var.f15450a);
                break;
            case 12:
            case 13:
                i3 = v60.m26218b(bArr, i, u60Var);
                u60Var.f15452c = Long.valueOf(u60Var.f15451b);
                break;
            case 14:
                i3 = v60.m26223a(y80.m26138a().m26137a((Class) cls), bArr, i, i2, u60Var);
                break;
            case 15:
                i3 = v60.m26221a(bArr, i, u60Var);
                u60Var.f15452c = Integer.valueOf(zzeja.m12520e(u60Var.f15450a));
                break;
            case 16:
                i3 = v60.m26218b(bArr, i, u60Var);
                u60Var.f15452c = Long.valueOf(zzeja.m12529a(u60Var.f15451b));
                break;
            case 17:
                i3 = v60.m26214d(bArr, i, u60Var);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x092e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p131c.p161d.p170b.p224d.p252g.p253a.p80<T> m26578a(java.lang.Class<T> r18, p131c.p161d.p170b.p224d.p252g.p253a.m80 r19, p131c.p161d.p170b.p224d.p252g.p253a.t80 r20, p131c.p161d.p170b.p224d.p252g.p253a.a80 r21, p131c.p161d.p170b.p224d.p252g.p253a.x90<?, ?> r22, p131c.p161d.p170b.p224d.p252g.p253a.n70<?> r23, p131c.p161d.p170b.p224d.p252g.p253a.l80 r24) {
        /*
            Method dump skipped, instructions count: 2557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.p80.m26578a(java.lang.Class, c.d.b.d.g.a.m80, c.d.b.d.g.a.t80, c.d.b.d.g.a.a80, c.d.b.d.g.a.x90, c.d.b.d.g.a.n70, c.d.b.d.g.a.l80):c.d.b.d.g.a.p80");
    }

    /* renamed from: a */
    public static zzena m26576a(Object obj) {
        zzejz zzejzVar = (zzejz) obj;
        zzena zzenaVar = zzejzVar.zzijc;
        zzena zzenaVar2 = zzenaVar;
        if (zzenaVar == zzena.m12330d()) {
            zzenaVar2 = zzena.m12329e();
            zzejzVar.zzijc = zzenaVar2;
        }
        return zzenaVar2;
    }

    /* renamed from: a */
    public static Field m26577a(Class<?> cls, String str) {
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
    public static List<?> m26569a(Object obj, long j) {
        return (List) ba0.m27144f(obj, j);
    }

    /* renamed from: a */
    public static void m26582a(int i, Object obj, ka0 ka0Var) throws IOException {
        if (obj instanceof String) {
            ka0Var.mo26679a(i, (String) obj);
        } else {
            ka0Var.mo26682a(i, (zzeip) obj);
        }
    }

    /* renamed from: a */
    public static <UT, UB> void m26579a(x90<UT, UB> x90Var, T t, ka0 ka0Var) throws IOException {
        x90Var.mo26128a((x90<UT, UB>) x90Var.mo26119d(t), ka0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static boolean m26572a(Object obj, int i, f90 f90Var) {
        return f90Var.mo26415e(ba0.m27144f(obj, i & 1048575));
    }

    /* renamed from: b */
    public static <T> double m26558b(T t, long j) {
        return ((Double) ba0.m27144f(t, j)).doubleValue();
    }

    /* renamed from: c */
    public static <T> float m26554c(T t, long j) {
        return ((Float) ba0.m27144f(t, j)).floatValue();
    }

    /* renamed from: d */
    public static <T> int m26551d(T t, long j) {
        return ((Integer) ba0.m27144f(t, j)).intValue();
    }

    /* renamed from: e */
    public static <T> long m26549e(T t, long j) {
        return ((Long) ba0.m27144f(t, j)).longValue();
    }

    /* renamed from: f */
    public static <T> boolean m26547f(T t, long j) {
        return ((Boolean) ba0.m27144f(t, j)).booleanValue();
    }

    /* renamed from: g */
    public static boolean m26546g(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: a */
    public final int m26584a(int i, int i2) {
        if (i < this.f14400c || i > this.f14401d) {
            return -1;
        }
        return m26561b(i, i2);
    }

    /* renamed from: a */
    public final int m26567a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, u60 u60Var) throws IOException {
        Unsafe unsafe = f14397s;
        long j2 = this.f14398a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(v60.m26217c(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(v60.m26215d(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = v60.m26218b(bArr, i, u60Var);
                    unsafe.putObject(t, j, Long.valueOf(u60Var.f15451b));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = v60.m26221a(bArr, i, u60Var);
                    unsafe.putObject(t, j, Integer.valueOf(u60Var.f15450a));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(v60.m26219b(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(v60.m26222a(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = v60.m26218b(bArr, i, u60Var);
                    unsafe.putObject(t, j, Boolean.valueOf(u60Var.f15451b != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = v60.m26221a(bArr, i, u60Var);
                    int i9 = u60Var.f15450a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || ea0.m27040a(bArr, i, i + i9)) {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzekb.f28088a));
                        i += i9;
                    } else {
                        throw zzekj.zzbhf();
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = v60.m26223a(m26585a(i8), bArr, i, i2, u60Var);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, u60Var.f15452c);
                    } else {
                        unsafe.putObject(t, j, zzekb.m12371a(object, u60Var.f15452c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = v60.m26213e(bArr, i, u60Var);
                    unsafe.putObject(t, j, u60Var.f15452c);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = v60.m26221a(bArr, i, u60Var);
                    int i10 = u60Var.f15450a;
                    zzekg c = m26555c(i8);
                    if (c != null && !c.mo12363c(i10)) {
                        m26576a(t).m12338a(i3, Long.valueOf(i10));
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
                    i = v60.m26221a(bArr, i, u60Var);
                    unsafe.putObject(t, j, Integer.valueOf(zzeja.m12520e(u60Var.f15450a)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = v60.m26218b(bArr, i, u60Var);
                    unsafe.putObject(t, j, Long.valueOf(zzeja.m12529a(u60Var.f15451b)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = v60.m26224a(m26585a(i8), bArr, i, i2, (i3 & (-8)) | 4, u60Var);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, u60Var.f15452c);
                    } else {
                        unsafe.putObject(t, j, zzekb.m12371a(object2, u60Var.f15452c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x095d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x095a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x036c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0448 -> B:114:0x044d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x035c -> B:80:0x0362). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m26566a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, p131c.p161d.p170b.p224d.p252g.p253a.u60 r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.p80.m26566a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, c.d.b.d.g.a.u60):int");
    }

    /* renamed from: a */
    public final <K, V> int m26565a(T t, byte[] bArr, int i, int i2, int i3, long j, u60 u60Var) throws IOException {
        Unsafe unsafe = f14397s;
        Object b = m26562b(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.f14414q.mo26697c(object)) {
            obj = this.f14414q.mo26695e(b);
            this.f14414q.mo26699a(obj, object);
            unsafe.putObject(t, j, obj);
        }
        j80<?, ?> a = this.f14414q.mo26700a(b);
        Map<?, ?> f = this.f14414q.mo26694f(obj);
        int a2 = v60.m26221a(bArr, i, u60Var);
        int i4 = u60Var.f15450a;
        if (i4 < 0 || i4 > i2 - a2) {
            throw zzekj.zzbgx();
        }
        int i5 = i4 + a2;
        Object obj2 = (K) a.f13595b;
        Object obj3 = (V) a.f13597d;
        while (a2 < i5) {
            int i6 = a2 + 1;
            byte b2 = bArr[a2];
            int i7 = i6;
            int i8 = b2;
            if (b2 < 0) {
                i7 = v60.m26226a(b2, bArr, i6, u60Var);
                i8 = u60Var.f15450a;
            }
            int i9 = i8 >>> 3;
            int i10 = i8 & 7;
            if (i9 != 1) {
                if (i9 == 2 && i10 == a.f13596c.zzbjf()) {
                    a2 = m26563a(bArr, i7, i2, a.f13596c, a.f13597d.getClass(), u60Var);
                    obj3 = (V) u60Var.f15452c;
                }
                a2 = v60.m26229a(i8, bArr, i7, i2, u60Var);
            } else if (i10 == a.f13594a.zzbjf()) {
                a2 = m26563a(bArr, i7, i2, a.f13594a, (Class<?>) null, u60Var);
                obj2 = (K) u60Var.f15452c;
            } else {
                a2 = v60.m26229a(i8, bArr, i7, i2, u60Var);
            }
        }
        if (a2 == i5) {
            f.put(obj2, obj3);
            return i5;
        }
        throw zzekj.zzbhe();
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x0781, code lost:
        if (r33 == 1048575) goto L_0x078f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0784, code lost:
        r28.putInt(r18, r33, r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x078f, code lost:
        r22 = null;
        r19 = r17.f14408k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x079c, code lost:
        if (r19 >= r17.f14409l) goto L_0x07bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x079f, code lost:
        r22 = (com.google.android.gms.internal.ads.zzena) r17.m26570a((java.lang.Object) r18, r17.f14407j[r19], (int) r22, (p131c.p161d.p170b.p224d.p252g.p253a.x90<UT, int>) r17.f14412o);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x07bd, code lost:
        if (r22 == null) goto L_0x07ca;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x07c0, code lost:
        r17.f14412o.mo26122b((java.lang.Object) r18, (T) r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07cc, code lost:
        if (r21 != 0) goto L_0x07dd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07d3, code lost:
        if (r32 != r20) goto L_0x07d9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x07dc, code lost:
        throw com.google.android.gms.internal.ads.zzekj.zzbhe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x07e1, code lost:
        if (r32 > r20) goto L_0x07ee;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x07e8, code lost:
        if (r31 != r21) goto L_0x07ee;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x07ed, code lost:
        return r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x07f6, code lost:
        throw com.google.android.gms.internal.ads.zzekj.zzbhe();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m26564a(T r17, byte[] r18, int r19, int r20, int r21, p131c.p161d.p170b.p224d.p252g.p253a.u60 r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.p80.m26564a(java.lang.Object, byte[], int, int, int, c.d.b.d.g.a.u60):int");
    }

    /* renamed from: a */
    public final f90 m26585a(int i) {
        int i2 = (i / 3) << 1;
        f90 f90Var = (f90) this.f14399b[i2];
        if (f90Var != null) {
            return f90Var;
        }
        f90<T> a = y80.m26138a().m26137a((Class) ((Class) this.f14399b[i2 + 1]));
        this.f14399b[i2] = a;
        return a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    public final T mo26425a() {
        return (T) this.f14410m.mo26209a(this.f14402e);
    }

    /* renamed from: a */
    public final <K, V, UT, UB> UB m26583a(int i, int i2, Map<K, V> map, zzekg zzekgVar, UB ub, x90<UT, UB> x90Var) {
        j80<?, ?> a = this.f14414q.mo26700a(m26562b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzekgVar.mo12363c(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = x90Var.mo26135a();
                }
                c70 zzfw = zzeip.zzfw(zzelb.m12352a(a, next.getKey(), next.getValue()));
                try {
                    zzelb.m12351a(zzfw.m27101b(), a, next.getKey(), next.getValue());
                    x90Var.mo26130a((x90<UT, UB>) ub2, i2, zzfw.m27102a());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* renamed from: a */
    public final <UT, UB> UB m26570a(Object obj, int i, UB ub, x90<UT, UB> x90Var) {
        zzekg c;
        int i2 = this.f14398a[i];
        Object f = ba0.m27144f(obj, m26552d(i) & 1048575);
        if (!(f == null || (c = m26555c(i)) == null)) {
            return (UB) m26583a(i, i2, this.f14414q.mo26694f(f), c, (zzekg) ub, (x90<UT, zzekg>) x90Var);
        }
        return ub;
    }

    /* renamed from: a */
    public final <K, V> void m26581a(ka0 ka0Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            ka0Var.mo26683a(i, this.f14414q.mo26700a(m26562b(i2)), this.f14414q.mo26698b(obj));
        }
    }

    /* renamed from: a */
    public final void m26571a(Object obj, int i, z80 z80Var) throws IOException {
        if (m26546g(i)) {
            ba0.m27167a(obj, i & 1048575, z80Var.mo26087d());
        } else if (this.f14404g) {
            ba0.m27167a(obj, i & 1048575, z80Var.mo26092b());
        } else {
            ba0.m27167a(obj, i & 1048575, z80Var.mo26083f());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x09a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x09a2  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x09f1  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x1341  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x134b  */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo26423a(T r8, p131c.p161d.p170b.p224d.p252g.p253a.ka0 r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.p80.mo26423a(java.lang.Object, c.d.b.d.g.a.ka0):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:388:0x105c A[LOOP:5: B:386:0x1053->B:388:0x105c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:391:0x1079  */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo26422a(T r9, p131c.p161d.p170b.p224d.p252g.p253a.z80 r10, com.google.android.gms.internal.ads.zzejm r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.p80.mo26422a(java.lang.Object, c.d.b.d.g.a.z80, com.google.android.gms.internal.ads.zzejm):void");
    }

    /* renamed from: a */
    public final void m26568a(T t, T t2, int i) {
        long d = m26552d(i) & 1048575;
        if (m26575a((p80<T>) t2, i)) {
            Object f = ba0.m27144f(t, d);
            Object f2 = ba0.m27144f(t2, d);
            if (f != null && f2 != null) {
                ba0.m27167a(t, d, zzekb.m12371a(f, f2));
                m26560b((p80<T>) t, i);
            } else if (f2 != null) {
                ba0.m27167a(t, d, f2);
                m26560b((p80<T>) t, i);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x04c2, code lost:
        if (r28 == r28) goto L_0x04f5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x04ef, code lost:
        if (r28 == r28) goto L_0x04f5;
     */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo26420a(T r17, byte[] r18, int r19, int r20, p131c.p161d.p170b.p224d.p252g.p253a.u60 r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.p80.mo26420a(java.lang.Object, byte[], int, int, c.d.b.d.g.a.u60):void");
    }

    /* renamed from: a */
    public final boolean m26575a(T t, int i) {
        int e = m26550e(i);
        long j = e & 1048575;
        if (j != 1048575) {
            return (ba0.m27173a(t, j) & (1 << (e >>> 20))) != 0;
        }
        int d = m26552d(i);
        long j2 = d & 1048575;
        switch ((d & 267386880) >>> 20) {
            case 0:
                return ba0.m27147e(t, j2) != 0.0d;
            case 1:
                return ba0.m27151d(t, j2) != 0.0f;
            case 2:
                return ba0.m27161b(t, j2) != 0;
            case 3:
                return ba0.m27161b(t, j2) != 0;
            case 4:
                return ba0.m27173a(t, j2) != 0;
            case 5:
                return ba0.m27161b(t, j2) != 0;
            case 6:
                return ba0.m27173a(t, j2) != 0;
            case 7:
                return ba0.m27156c(t, j2);
            case 8:
                Object f = ba0.m27144f(t, j2);
                if (f instanceof String) {
                    return !((String) f).isEmpty();
                }
                if (f instanceof zzeip) {
                    return !zzeip.zzier.equals(f);
                }
                throw new IllegalArgumentException();
            case 9:
                return ba0.m27144f(t, j2) != null;
            case 10:
                return !zzeip.zzier.equals(ba0.m27144f(t, j2));
            case 11:
                return ba0.m27173a(t, j2) != 0;
            case 12:
                return ba0.m27173a(t, j2) != 0;
            case 13:
                return ba0.m27173a(t, j2) != 0;
            case 14:
                return ba0.m27161b(t, j2) != 0;
            case 15:
                return ba0.m27173a(t, j2) != 0;
            case 16:
                return ba0.m27161b(t, j2) != 0;
            case 17:
                return ba0.m27144f(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public final boolean m26574a(T t, int i, int i2) {
        return ba0.m27173a(t, (long) (m26550e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    public final boolean m26573a(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m26575a((p80<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.h90.m26904a(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r7, r0), p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.h90.m26904a(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r7, r0), p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.h90.m26904a(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r7, r0), p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.h90.m26904a(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r7, r0), p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.h90.m26904a(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r7, r0), p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27144f(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27156c(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27156c(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27173a(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27161b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27151d(r7, r0)) == java.lang.Float.floatToIntBits(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27151d(r8, r0))) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27147e(r7, r0)) == java.lang.Double.doubleToLongBits(p131c.p161d.p170b.p224d.p252g.p253a.ba0.m27147e(r8, r0))) goto L_0x03cf;
     */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo26421a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.p80.mo26421a(java.lang.Object, java.lang.Object):boolean");
    }

    /* renamed from: b */
    public final int m26561b(int i, int i2) {
        int length = (this.f14398a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f14398a[i4];
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

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: b */
    public final int mo26419b(T t) {
        int i;
        int i2;
        int length = this.f14398a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d = m26552d(i4);
            int i5 = this.f14398a[i4];
            long j = 1048575 & d;
            int i6 = 37;
            switch ((d & 267386880) >>> 20) {
                case 0:
                    i = i3 * 53;
                    i2 = zzekb.m12374a(Double.doubleToLongBits(ba0.m27147e(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(ba0.m27151d(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = zzekb.m12374a(ba0.m27161b(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = zzekb.m12374a(ba0.m27161b(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = ba0.m27173a(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = zzekb.m12374a(ba0.m27161b(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = ba0.m27173a(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = zzekb.m12369a(ba0.m27156c(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) ba0.m27144f(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object f = ba0.m27144f(t, j);
                    if (f != null) {
                        i6 = f.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = ba0.m27144f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = ba0.m27173a(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = ba0.m27173a(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = ba0.m27173a(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = zzekb.m12374a(ba0.m27161b(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = ba0.m27173a(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = zzekb.m12374a(ba0.m27161b(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object f2 = ba0.m27144f(t, j);
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
                    i2 = ba0.m27144f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = ba0.m27144f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzekb.m12374a(Double.doubleToLongBits(m26558b(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(m26554c(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzekb.m12374a(m26549e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzekb.m12374a(m26549e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m26551d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzekb.m12374a(m26549e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m26551d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzekb.m12369a(m26547f(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) ba0.m27144f(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ba0.m27144f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ba0.m27144f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m26551d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m26551d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m26551d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzekb.m12374a(m26549e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m26551d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzekb.m12374a(m26549e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (m26574a((p80<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ba0.m27144f(t, j).hashCode();
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
        int hashCode = (i3 * 53) + this.f14412o.mo26119d(t).hashCode();
        int i7 = hashCode;
        if (this.f14403f) {
            i7 = (hashCode * 53) + this.f14413p.mo26589a(t).hashCode();
        }
        return i7;
    }

    /* renamed from: b */
    public final Object m26562b(int i) {
        return this.f14399b[(i / 3) << 1];
    }

    /* renamed from: b */
    public final void m26560b(T t, int i) {
        int e = m26550e(i);
        long j = 1048575 & e;
        if (j != 1048575) {
            ba0.m27169a((Object) t, j, (1 << (e >>> 20)) | ba0.m27173a(t, j));
        }
    }

    /* renamed from: b */
    public final void m26559b(T t, int i, int i2) {
        ba0.m27169a((Object) t, m26550e(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0961  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x096b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m26557b(T r9, p131c.p161d.p170b.p224d.p252g.p253a.ka0 r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.p80.m26557b(java.lang.Object, c.d.b.d.g.a.ka0):void");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: b */
    public final void mo26418b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f14398a.length; i += 3) {
                int d = m26552d(i);
                long j = 1048575 & d;
                int i2 = this.f14398a[i];
                switch ((d & 267386880) >>> 20) {
                    case 0:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27171a(t, j, ba0.m27147e(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27170a((Object) t, j, ba0.m27151d(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27168a((Object) t, j, ba0.m27161b(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27168a((Object) t, j, ba0.m27161b(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27169a((Object) t, j, ba0.m27173a(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27168a((Object) t, j, ba0.m27161b(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27169a((Object) t, j, ba0.m27173a(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27166a(t, j, ba0.m27156c(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27167a(t, j, ba0.m27144f(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        m26568a(t, t2, i);
                        break;
                    case 10:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27167a(t, j, ba0.m27144f(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27169a((Object) t, j, ba0.m27173a(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27169a((Object) t, j, ba0.m27173a(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27169a((Object) t, j, ba0.m27173a(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27168a((Object) t, j, ba0.m27161b(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27169a((Object) t, j, ba0.m27173a(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m26575a((p80<T>) t2, i)) {
                            ba0.m27168a((Object) t, j, ba0.m27161b(t2, j));
                            m26560b((p80<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        m26568a(t, t2, i);
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
                        this.f14411n.mo27054a(t, t2, j);
                        break;
                    case 50:
                        h90.m26908a(this.f14414q, t, t2, j);
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
                        if (m26574a((p80<T>) t2, i2, i)) {
                            ba0.m27167a(t, j, ba0.m27144f(t2, j));
                            m26559b((p80<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        m26556b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (m26574a((p80<T>) t2, i2, i)) {
                            ba0.m27167a(t, j, ba0.m27144f(t2, j));
                            m26559b((p80<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        m26556b(t, t2, i);
                        break;
                }
            }
            h90.m26906a(this.f14412o, t, t2);
            if (this.f14403f) {
                h90.m26907a(this.f14413p, t, t2);
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: b */
    public final void m26556b(T t, T t2, int i) {
        int d = m26552d(i);
        int i2 = this.f14398a[i];
        long j = d & 1048575;
        if (m26574a((p80<T>) t2, i2, i)) {
            Object f = ba0.m27144f(t, j);
            Object f2 = ba0.m27144f(t2, j);
            if (f != null && f2 != null) {
                ba0.m27167a(t, j, zzekb.m12371a(f, f2));
                m26559b((p80<T>) t, i2, i);
            } else if (f2 != null) {
                ba0.m27167a(t, j, f2);
                m26559b((p80<T>) t, i2, i);
            }
        }
    }

    /* renamed from: c */
    public final zzekg m26555c(int i) {
        return (zzekg) this.f14399b[((i / 3) << 1) + 1];
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: c */
    public final void mo26417c(T t) {
        int i;
        int i2 = this.f14408k;
        while (true) {
            i = this.f14409l;
            if (i2 >= i) {
                break;
            }
            long d = m26552d(this.f14407j[i2]) & 1048575;
            Object f = ba0.m27144f(t, d);
            if (f != null) {
                ba0.m27167a(t, d, this.f14414q.mo26696d(f));
            }
            i2++;
        }
        int length = this.f14407j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f14411n.mo27053b(t, this.f14407j[i3]);
        }
        this.f14412o.mo26133a(t);
        if (this.f14403f) {
            this.f14413p.mo26586c(t);
        }
    }

    /* renamed from: c */
    public final boolean m26553c(T t, T t2, int i) {
        return m26575a((p80<T>) t, i) == m26575a((p80<T>) t2, i);
    }

    /* renamed from: d */
    public final int m26552d(int i) {
        return this.f14398a[i + 1];
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: d */
    public final int mo26416d(T t) {
        int i;
        int i2;
        int i3;
        int b;
        int i4;
        int i5;
        int i6;
        int i7;
        int b2;
        int i8;
        int i9;
        int i10;
        if (this.f14405h) {
            Unsafe unsafe = f14397s;
            int i11 = 0;
            for (int i12 = 0; i12 < this.f14398a.length; i12 += 3) {
                int d = m26552d(i12);
                int i13 = (d & 267386880) >>> 20;
                int i14 = this.f14398a[i12];
                long j = d & 1048575;
                int i15 = (i13 < zzejt.DOUBLE_LIST_PACKED.m12416id() || i13 > zzejt.SINT64_LIST_PACKED.m12416id()) ? 0 : this.f14398a[i12 + 2] & 1048575;
                switch (i13) {
                    case 0:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12491b(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 1:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12490b(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12471d(i14, ba0.m27161b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12467e(i14, ba0.m27161b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12464f(i14, ba0.m27173a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12459g(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12452i(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12484b(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            Object f = ba0.m27144f(t, j);
                            if (f instanceof zzeip) {
                                b2 = zzejj.m12475c(i14, (zzeip) f);
                                break;
                            } else {
                                b2 = zzejj.m12485b(i14, (String) f);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 9:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = h90.m26916a(i14, ba0.m27144f(t, j), m26585a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12475c(i14, (zzeip) ba0.m27144f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12460g(i14, ba0.m27173a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12447k(i14, ba0.m27173a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12449j(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12455h(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12456h(i14, ba0.m27173a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12463f(i14, ba0.m27161b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i11 = i11;
                        if (m26575a((p80<T>) t, i12)) {
                            b2 = zzejj.m12474c(i14, (zzelj) ba0.m27144f(t, j), m26585a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        b2 = h90.m26871i(i14, m26569a(t, j), false);
                        break;
                    case 19:
                        b2 = h90.m26874h(i14, m26569a(t, j), false);
                        break;
                    case 20:
                        b2 = h90.m26909a(i14, (List<Long>) m26569a(t, j), false);
                        break;
                    case 21:
                        b2 = h90.m26895b(i14, (List<Long>) m26569a(t, j), false);
                        break;
                    case 22:
                        b2 = h90.m26883e(i14, m26569a(t, j), false);
                        break;
                    case 23:
                        b2 = h90.m26871i(i14, m26569a(t, j), false);
                        break;
                    case 24:
                        b2 = h90.m26874h(i14, m26569a(t, j), false);
                        break;
                    case 25:
                        b2 = h90.m26868j(i14, m26569a(t, j), false);
                        break;
                    case 26:
                        b2 = h90.m26915a(i14, m26569a(t, j));
                        break;
                    case 27:
                        b2 = h90.m26914a(i14, m26569a(t, j), m26585a(i12));
                        break;
                    case 28:
                        b2 = h90.m26900b(i14, m26569a(t, j));
                        break;
                    case 29:
                        b2 = h90.m26880f(i14, m26569a(t, j), false);
                        break;
                    case 30:
                        b2 = h90.m26887d(i14, m26569a(t, j), false);
                        break;
                    case 31:
                        b2 = h90.m26874h(i14, m26569a(t, j), false);
                        break;
                    case 32:
                        b2 = h90.m26871i(i14, m26569a(t, j), false);
                        break;
                    case 33:
                        b2 = h90.m26877g(i14, m26569a(t, j), false);
                        break;
                    case 34:
                        b2 = h90.m26891c(i14, m26569a(t, j), false);
                        break;
                    case 35:
                        int i16 = h90.m26870i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i16 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, i16);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(i16);
                            i10 = i16;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        int h = h90.m26873h((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (h > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, h);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(h);
                            i10 = h;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        int a = h90.m26903a((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (a > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, a);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(a);
                            i10 = a;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        int b3 = h90.m26894b((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (b3 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, b3);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(b3);
                            i10 = b3;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        int e = h90.m26882e((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (e > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, e);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(e);
                            i10 = e;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        int i17 = h90.m26870i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i17 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, i17);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(i17);
                            i10 = i17;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        int h2 = h90.m26873h((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (h2 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, h2);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(h2);
                            i10 = h2;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        int j2 = h90.m26867j((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (j2 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, j2);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(j2);
                            i10 = j2;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        int f2 = h90.m26879f((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (f2 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, f2);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(f2);
                            i10 = f2;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        int d2 = h90.m26886d((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (d2 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, d2);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(d2);
                            i10 = d2;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        int h3 = h90.m26873h((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (h3 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, h3);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(h3);
                            i10 = h3;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        int i18 = h90.m26870i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i18 > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, i18);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(i18);
                            i10 = i18;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        int g = h90.m26876g((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (g > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, g);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(g);
                            i10 = g;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        int c = h90.m26890c((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (c > 0) {
                            if (this.f14406i) {
                                unsafe.putInt(t, i15, c);
                            }
                            i9 = zzejj.m12468e(i14);
                            i8 = zzejj.m12461g(c);
                            i10 = c;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        b2 = h90.m26899b(i14, (List<zzelj>) m26569a(t, j), m26585a(i12));
                        break;
                    case 50:
                        b2 = this.f14414q.mo26701a(i14, ba0.m27144f(t, j), m26562b(i12));
                        break;
                    case 51:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12491b(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 52:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12490b(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 53:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12471d(i14, m26549e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12467e(i14, m26549e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12464f(i14, m26551d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12459g(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 57:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12452i(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 58:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12484b(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 59:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            Object f3 = ba0.m27144f(t, j);
                            if (f3 instanceof zzeip) {
                                b2 = zzejj.m12475c(i14, (zzeip) f3);
                                break;
                            } else {
                                b2 = zzejj.m12485b(i14, (String) f3);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 60:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = h90.m26916a(i14, ba0.m27144f(t, j), m26585a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 61:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12475c(i14, (zzeip) ba0.m27144f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 62:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12460g(i14, m26551d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12447k(i14, m26551d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12449j(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 65:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12455h(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 66:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12456h(i14, m26551d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12463f(i14, m26549e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i11 = i11;
                        if (m26574a((p80<T>) t, i14, i12)) {
                            b2 = zzejj.m12474c(i14, (zzelj) ba0.m27144f(t, j), m26585a(i12));
                            break;
                        } else {
                            continue;
                        }
                    default:
                        i11 = i11;
                        continue;
                }
                i11 += b2;
            }
            return i11 + m26580a((x90) this.f14412o, (Object) t);
        }
        Unsafe unsafe2 = f14397s;
        int i19 = 0;
        int i20 = 0;
        int i21 = 1048575;
        int i22 = 0;
        while (i19 < this.f14398a.length) {
            int d3 = m26552d(i19);
            int[] iArr = this.f14398a;
            int i23 = iArr[i19];
            int i24 = (d3 & 267386880) >>> 20;
            if (i24 <= 17) {
                int i25 = iArr[i19 + 2];
                int i26 = i25 & 1048575;
                i = 1 << (i25 >>> 20);
                i21 = i21;
                if (i26 != i21) {
                    i22 = unsafe2.getInt(t, i26);
                    i21 = i26;
                }
                i2 = i25;
            } else {
                i2 = (!this.f14406i || i24 < zzejt.DOUBLE_LIST_PACKED.m12416id() || i24 > zzejt.SINT64_LIST_PACKED.m12416id()) ? 0 : this.f14398a[i19 + 2] & 1048575;
                i = 0;
                i22 = i22;
                i21 = i21;
            }
            long j3 = d3 & 1048575;
            switch (i24) {
                case 0:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i20 += zzejj.m12491b(i23, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i20 += zzejj.m12490b(i23, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i3 = zzejj.m12471d(i23, unsafe2.getLong(t, j3));
                        i20 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i3 = zzejj.m12467e(i23, unsafe2.getLong(t, j3));
                        i20 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i3 = zzejj.m12464f(i23, unsafe2.getInt(t, j3));
                        i20 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i3 = zzejj.m12459g(i23, 0L);
                        i20 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i20 += zzejj.m12452i(i23, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = zzejj.m12484b(i23, true);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        b = object instanceof zzeip ? zzejj.m12475c(i23, (zzeip) object) : zzejj.m12485b(i23, (String) object);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = h90.m26916a(i23, unsafe2.getObject(t, j3), m26585a(i19));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = zzejj.m12475c(i23, (zzeip) unsafe2.getObject(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = zzejj.m12460g(i23, unsafe2.getInt(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = zzejj.m12447k(i23, unsafe2.getInt(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i4 = zzejj.m12449j(i23, 0);
                        i20 += i4;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = zzejj.m12455h(i23, 0L);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = zzejj.m12456h(i23, unsafe2.getInt(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = zzejj.m12463f(i23, unsafe2.getLong(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = zzejj.m12474c(i23, (zzelj) unsafe2.getObject(t, j3), m26585a(i19));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    b = h90.m26871i(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 19:
                    b = h90.m26874h(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 20:
                    b = h90.m26909a(i23, (List<Long>) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 21:
                    b = h90.m26895b(i23, (List<Long>) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 22:
                    b = h90.m26883e(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 23:
                    b = h90.m26871i(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 24:
                    b = h90.m26874h(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 25:
                    b = h90.m26868j(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 26:
                    b = h90.m26915a(i23, (List) unsafe2.getObject(t, j3));
                    i20 += b;
                    break;
                case 27:
                    b = h90.m26914a(i23, (List<?>) unsafe2.getObject(t, j3), m26585a(i19));
                    i20 += b;
                    break;
                case 28:
                    b = h90.m26900b(i23, (List) unsafe2.getObject(t, j3));
                    i20 += b;
                    break;
                case 29:
                    b = h90.m26880f(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 30:
                    b = h90.m26887d(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 31:
                    b = h90.m26874h(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 32:
                    b = h90.m26871i(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 33:
                    b = h90.m26877g(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 34:
                    b = h90.m26891c(i23, (List) unsafe2.getObject(t, j3), false);
                    i20 += b;
                    break;
                case 35:
                    int i27 = h90.m26870i((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (i27 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, i27);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(i27);
                        i6 = i27;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 36:
                    int h4 = h90.m26873h((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (h4 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, h4);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(h4);
                        i6 = h4;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 37:
                    int a2 = h90.m26903a((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (a2 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, a2);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(a2);
                        i6 = a2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 38:
                    int b4 = h90.m26894b((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (b4 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, b4);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(b4);
                        i6 = b4;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 39:
                    int e2 = h90.m26882e((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (e2 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, e2);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(e2);
                        i6 = e2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 40:
                    int i28 = h90.m26870i((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (i28 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, i28);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(i28);
                        i6 = i28;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 41:
                    int h5 = h90.m26873h((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (h5 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, h5);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(h5);
                        i6 = h5;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 42:
                    int j4 = h90.m26867j((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (j4 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, j4);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(j4);
                        i6 = j4;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 43:
                    int f4 = h90.m26879f((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (f4 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, f4);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(f4);
                        i6 = f4;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 44:
                    int d4 = h90.m26886d((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (d4 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, d4);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(d4);
                        i6 = d4;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 45:
                    int h6 = h90.m26873h((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (h6 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, h6);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(h6);
                        i6 = h6;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 46:
                    int i29 = h90.m26870i((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (i29 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, i29);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(i29);
                        i6 = i29;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 47:
                    int g2 = h90.m26876g((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (g2 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, g2);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(g2);
                        i6 = g2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 48:
                    int c2 = h90.m26890c((List) unsafe2.getObject(t, j3));
                    i20 = i20;
                    if (c2 <= 0) {
                        break;
                    } else {
                        if (this.f14406i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        i7 = zzejj.m12468e(i23);
                        i5 = zzejj.m12461g(c2);
                        i6 = c2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 49:
                    b = h90.m26899b(i23, (List) unsafe2.getObject(t, j3), m26585a(i19));
                    i20 += b;
                    break;
                case 50:
                    b = this.f14414q.mo26701a(i23, unsafe2.getObject(t, j3), m26562b(i19));
                    i20 += b;
                    break;
                case 51:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12491b(i23, 0.0d);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        i4 = zzejj.m12490b(i23, 0.0f);
                        i20 += i4;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12471d(i23, m26549e(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12467e(i23, m26549e(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12464f(i23, m26551d(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12459g(i23, 0L);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        i4 = zzejj.m12452i(i23, 0);
                        i20 += i4;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12484b(i23, true);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        b = object2 instanceof zzeip ? zzejj.m12475c(i23, (zzeip) object2) : zzejj.m12485b(i23, (String) object2);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = h90.m26916a(i23, unsafe2.getObject(t, j3), m26585a(i19));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12475c(i23, (zzeip) unsafe2.getObject(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12460g(i23, m26551d(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12447k(i23, m26551d(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        i4 = zzejj.m12449j(i23, 0);
                        i20 += i4;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12455h(i23, 0L);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12456h(i23, m26551d(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12463f(i23, m26549e(t, j3));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i20 = i20;
                    if (m26574a((p80<T>) t, i23, i19)) {
                        b = zzejj.m12474c(i23, (zzelj) unsafe2.getObject(t, j3), m26585a(i19));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                default:
                    i20 = i20;
                    break;
            }
            i19 += 3;
            i22 = i22;
        }
        int i30 = 0;
        int a3 = i20 + m26580a((x90) this.f14412o, (Object) t);
        int i31 = a3;
        if (this.f14403f) {
            r70<?> a4 = this.f14413p.mo26589a(t);
            for (int i32 = 0; i32 < a4.f14877a.m26723c(); i32++) {
                Map.Entry<?, Object> a5 = a4.f14877a.m26731a(i32);
                i30 += r70.m26434b((zzeju) a5.getKey(), a5.getValue());
            }
            for (Map.Entry<?, Object> entry : a4.f14877a.m26720d()) {
                i30 += r70.m26434b((zzeju) entry.getKey(), entry.getValue());
            }
            i31 = a3 + i30;
        }
        return i31;
    }

    /* renamed from: e */
    public final int m26550e(int i) {
        return this.f14398a[i + 2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: e */
    public final boolean mo26415e(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f14408k; i3++) {
            int i4 = this.f14407j[i3];
            int i5 = this.f14398a[i4];
            int d = m26552d(i4);
            int i6 = this.f14398a[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f14397s.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & d) != 0) && !m26573a((p80<T>) t, i4, i, i2, i8)) {
                return false;
            }
            int i9 = (267386880 & d) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (m26574a((p80<T>) t, i5, i4) && !m26572a(t, d, m26585a(i4))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> b = this.f14414q.mo26698b(ba0.m27144f(t, d & 1048575));
                            boolean z = true;
                            if (!b.isEmpty()) {
                                z = true;
                                if (this.f14414q.mo26700a(m26562b(i4)).f13596c.zzbje() == zzenr.MESSAGE) {
                                    f90<T> f90Var = null;
                                    Iterator<?> it = b.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        f90<T> f90Var2 = f90Var;
                                        if (f90Var == null) {
                                            f90Var2 = y80.m26138a().m26137a((Class) next.getClass());
                                        }
                                        f90Var = f90Var2;
                                        if (!f90Var2.mo26415e(next)) {
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
                List list = (List) ba0.m27144f(t, d & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    f90 a = m26585a(i4);
                    int i10 = 0;
                    while (true) {
                        z2 = true;
                        if (i10 >= list.size()) {
                            break;
                        } else if (!a.mo26415e(list.get(i10))) {
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
            } else if (m26573a((p80<T>) t, i4, i, i2, i8) && !m26572a(t, d, m26585a(i4))) {
                return false;
            }
        }
        return !this.f14403f || this.f14413p.mo26589a(t).m26431c();
    }

    /* renamed from: f */
    public final int m26548f(int i) {
        if (i < this.f14400c || i > this.f14401d) {
            return -1;
        }
        return m26561b(i, 0);
    }
}
