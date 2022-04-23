package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import com.google.android.gms.internal.clearcut.zzbk;
import com.google.android.gms.internal.clearcut.zzbn;
import com.google.android.gms.internal.clearcut.zzcb;
import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzck;
import com.google.android.gms.internal.clearcut.zzcn;
import com.google.android.gms.internal.clearcut.zzco;
import com.google.android.gms.internal.clearcut.zzdg;
import com.google.android.gms.internal.clearcut.zzdo;
import com.google.android.gms.internal.clearcut.zzey;
import com.google.android.gms.internal.clearcut.zzfl;
import com.google.android.gms.internal.clearcut.zzfq;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* renamed from: c.d.b.d.g.c.d1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/d1.class */
public final class C4332d1<T> implements AbstractC4391o1<T> {

    /* renamed from: r */
    public static final Unsafe f16487r = C4368k2.m25856d();

    /* renamed from: a */
    public final int[] f16488a;

    /* renamed from: b */
    public final Object[] f16489b;

    /* renamed from: c */
    public final int f16490c;

    /* renamed from: d */
    public final int f16491d;

    /* renamed from: e */
    public final int f16492e;

    /* renamed from: f */
    public final zzdo f16493f;

    /* renamed from: g */
    public final boolean f16494g;

    /* renamed from: h */
    public final boolean f16495h;

    /* renamed from: i */
    public final boolean f16496i;

    /* renamed from: j */
    public final int[] f16497j;

    /* renamed from: k */
    public final int[] f16498k;

    /* renamed from: l */
    public final int[] f16499l;

    /* renamed from: m */
    public final AbstractC4347g1 f16500m;

    /* renamed from: n */
    public final AbstractC4390o0 f16501n;

    /* renamed from: o */
    public final AbstractC4343f2<?, ?> f16502o;

    /* renamed from: p */
    public final AbstractC4321b0<?> f16503p;

    /* renamed from: q */
    public final AbstractC4432x0 f16504q;

    public C4332d1(int[] iArr, Object[] objArr, int i, int i2, int i3, zzdo zzdoVar, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, AbstractC4347g1 g1Var, AbstractC4390o0 o0Var, AbstractC4343f2<?, ?> f2Var, AbstractC4321b0<?> b0Var, AbstractC4432x0 x0Var) {
        this.f16488a = iArr;
        this.f16489b = objArr;
        this.f16490c = i;
        this.f16491d = i2;
        this.f16492e = i3;
        boolean z3 = zzdoVar instanceof zzcg;
        this.f16495h = z;
        this.f16494g = b0Var != null && b0Var.mo25994a(zzdoVar);
        this.f16496i = false;
        this.f16497j = iArr2;
        this.f16498k = iArr3;
        this.f16499l = iArr4;
        this.f16500m = g1Var;
        this.f16501n = o0Var;
        this.f16502o = f2Var;
        this.f16503p = b0Var;
        this.f16493f = zzdoVar;
        this.f16504q = x0Var;
    }

    /* renamed from: a */
    public static int m25980a(int i, byte[] bArr, int i2, int i3, Object obj, C4389o oVar) throws IOException {
        return C4384n.m25763a(i, bArr, i2, i3, m25949e(obj), oVar);
    }

    /* renamed from: a */
    public static <UT, UB> int m25979a(AbstractC4343f2<UT, UB> f2Var, T t) {
        return f2Var.mo25910b(f2Var.mo25907c(t));
    }

    /* renamed from: a */
    public static int m25977a(AbstractC4391o1<?> o1Var, int i, byte[] bArr, int i2, int i3, zzcn<?> zzcnVar, C4389o oVar) throws IOException {
        int a = m25975a((AbstractC4391o1) o1Var, bArr, i2, i3, oVar);
        while (true) {
            zzcnVar.add(oVar.f16604c);
            if (a >= i3) {
                break;
            }
            int a2 = C4384n.m25760a(bArr, a, oVar);
            if (i != oVar.f16602a) {
                break;
            }
            a = m25975a((AbstractC4391o1) o1Var, bArr, a2, i3, oVar);
        }
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static int m25976a(AbstractC4391o1 o1Var, byte[] bArr, int i, int i2, int i3, C4389o oVar) throws IOException {
        C4332d1 d1Var = (C4332d1) o1Var;
        Object a = d1Var.mo25745a();
        int a2 = d1Var.m25963a((C4332d1) a, bArr, i, i2, i3, oVar);
        d1Var.mo25744a((C4332d1) a);
        oVar.f16604c = a;
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static int m25975a(AbstractC4391o1 o1Var, byte[] bArr, int i, int i2, C4389o oVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = C4384n.m25762a(b, bArr, i3, oVar);
            i5 = oVar.f16602a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzco.zzbl();
        }
        Object a = o1Var.mo25745a();
        int i6 = i5 + i4;
        o1Var.mo25741a(a, bArr, i4, i6, oVar);
        o1Var.mo25744a(a);
        oVar.f16604c = a;
        return i6;
    }

    /* renamed from: a */
    public static int m25962a(byte[] bArr, int i, int i2, zzfl zzflVar, Class<?> cls, C4389o oVar) throws IOException {
        int i3;
        Object valueOf;
        Object obj;
        Object obj2;
        int i4;
        long j;
        switch (C4337e1.f16508a[zzflVar.ordinal()]) {
            case 1:
                i3 = C4384n.m25757b(bArr, i, oVar);
                valueOf = Boolean.valueOf(oVar.f16603b != 0);
                oVar.f16604c = valueOf;
                break;
            case 2:
                i3 = C4384n.m25752e(bArr, i, oVar);
                break;
            case 3:
                obj = Double.valueOf(C4384n.m25756c(bArr, i));
                oVar.f16604c = obj;
                i3 = i + 8;
                break;
            case 4:
            case 5:
                obj2 = Integer.valueOf(C4384n.m25761a(bArr, i));
                oVar.f16604c = obj2;
                i3 = i + 4;
                break;
            case 6:
            case 7:
                obj = Long.valueOf(C4384n.m25758b(bArr, i));
                oVar.f16604c = obj;
                i3 = i + 8;
                break;
            case 8:
                obj2 = Float.valueOf(C4384n.m25754d(bArr, i));
                oVar.f16604c = obj2;
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = C4384n.m25760a(bArr, i, oVar);
                i4 = oVar.f16602a;
                valueOf = Integer.valueOf(i4);
                oVar.f16604c = valueOf;
                break;
            case 12:
            case 13:
                i3 = C4384n.m25757b(bArr, i, oVar);
                j = oVar.f16603b;
                valueOf = Long.valueOf(j);
                oVar.f16604c = valueOf;
                break;
            case 14:
                i3 = m25975a((AbstractC4391o1) C4362j1.m25894a().m25893a((Class) cls), bArr, i, i2, oVar);
                break;
            case 15:
                i3 = C4384n.m25760a(bArr, i, oVar);
                i4 = zzbk.m10833a(oVar.f16602a);
                valueOf = Integer.valueOf(i4);
                oVar.f16604c = valueOf;
                break;
            case 16:
                i3 = C4384n.m25757b(bArr, i, oVar);
                j = zzbk.m10832a(oVar.f16603b);
                valueOf = Long.valueOf(j);
                oVar.f16604c = valueOf;
                break;
            case 17:
                i3 = C4384n.m25753d(bArr, i, oVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x028a A[EDGE_INSN: B:77:0x028a->B:72:0x028a ?: BREAK  , SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p131c.p161d.p170b.p224d.p252g.p255c.C4332d1<T> m25973a(java.lang.Class<T> r19, p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4317a1 r20, p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4347g1 r21, p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4390o0 r22, p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4343f2<?, ?> r23, p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4321b0<?> r24, p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4432x0 r25) {
        /*
            Method dump skipped, instructions count: 710
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4332d1.m25973a(java.lang.Class, c.d.b.d.g.c.a1, c.d.b.d.g.c.g1, c.d.b.d.g.c.o0, c.d.b.d.g.c.f2, c.d.b.d.g.c.b0, c.d.b.d.g.c.x0):c.d.b.d.g.c.d1");
    }

    /* renamed from: a */
    public static <E> List<E> m25968a(Object obj, long j) {
        return (List) C4368k2.m25848f(obj, j);
    }

    /* renamed from: a */
    public static void m25981a(int i, Object obj, AbstractC4407r2 r2Var) throws IOException {
        if (obj instanceof String) {
            r2Var.mo25617a(i, (String) obj);
        } else {
            r2Var.mo25620a(i, (zzbb) obj);
        }
    }

    /* renamed from: a */
    public static <UT, UB> void m25978a(AbstractC4343f2<UT, UB> f2Var, T t, AbstractC4407r2 r2Var) throws IOException {
        f2Var.mo25913a((AbstractC4343f2<UT, UB>) f2Var.mo25907c(t), r2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static boolean m25969a(Object obj, int i, AbstractC4391o1 o1Var) {
        return o1Var.mo25737d(C4368k2.m25848f(obj, i & 1048575));
    }

    /* renamed from: b */
    public static <T> double m25958b(T t, long j) {
        return ((Double) C4368k2.m25848f(t, j)).doubleValue();
    }

    /* renamed from: c */
    public static <T> float m25954c(T t, long j) {
        return ((Float) C4368k2.m25848f(t, j)).floatValue();
    }

    /* renamed from: d */
    public static <T> int m25951d(T t, long j) {
        return ((Integer) C4368k2.m25848f(t, j)).intValue();
    }

    /* renamed from: e */
    public static <T> long m25948e(T t, long j) {
        return ((Long) C4368k2.m25848f(t, j)).longValue();
    }

    /* renamed from: e */
    public static zzey m25949e(Object obj) {
        zzcg zzcgVar = (zzcg) obj;
        zzey zzeyVar = zzcgVar.zzjp;
        zzey zzeyVar2 = zzeyVar;
        if (zzeyVar == zzey.m10663d()) {
            zzeyVar2 = zzey.m10662e();
            zzcgVar.zzjp = zzeyVar2;
        }
        return zzeyVar2;
    }

    /* renamed from: f */
    public static <T> boolean m25946f(T t, long j) {
        return ((Boolean) C4368k2.m25848f(t, j)).booleanValue();
    }

    /* renamed from: a */
    public final int m25966a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C4389o oVar) throws IOException {
        Object obj;
        Object obj2;
        Object obj3;
        long j2;
        int i9;
        int i10;
        Unsafe unsafe = f16487r;
        long j3 = this.f16488a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    obj = Double.valueOf(C4384n.m25756c(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i += 8;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    obj2 = Float.valueOf(C4384n.m25754d(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i += 4;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = C4384n.m25757b(bArr, i, oVar);
                    j2 = oVar.f16603b;
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = C4384n.m25760a(bArr, i, oVar);
                    i9 = oVar.f16602a;
                    obj3 = Integer.valueOf(i9);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    obj = Long.valueOf(C4384n.m25758b(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i += 8;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    obj2 = Integer.valueOf(C4384n.m25761a(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i += 4;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = C4384n.m25757b(bArr, i, oVar);
                    obj3 = Boolean.valueOf(oVar.f16603b != 0);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = C4384n.m25760a(bArr, i, oVar);
                    i10 = oVar.f16602a;
                    if (i10 == 0) {
                        obj3 = "";
                        unsafe.putObject(t, j, obj3);
                        unsafe.putInt(t, j3, i4);
                        break;
                    } else if ((i6 & 536870912) == 0 || C4382m2.m25771a(bArr, i, i + i10)) {
                        unsafe.putObject(t, j, new String(bArr, i, i10, zzci.f29264a));
                        i += i10;
                        unsafe.putInt(t, j3, i4);
                    } else {
                        throw zzco.zzbp();
                    }
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = m25975a(m25983a(i8), bArr, i, i2, oVar);
                    Object object = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj4 = oVar.f16604c;
                    obj3 = object == null ? obj4 : zzci.m10700a(object, obj4);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = C4384n.m25760a(bArr, i, oVar);
                    i10 = oVar.f16602a;
                    if (i10 == 0) {
                        obj3 = zzbb.zzfi;
                        unsafe.putObject(t, j, obj3);
                        unsafe.putInt(t, j3, i4);
                        break;
                    } else {
                        unsafe.putObject(t, j, zzbb.zzb(bArr, i, i10));
                        i += i10;
                        unsafe.putInt(t, j3, i4);
                    }
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = C4384n.m25760a(bArr, i, oVar);
                    int i11 = oVar.f16602a;
                    zzck<?> c = m25955c(i8);
                    if (c != null && c.zzb(i11) == null) {
                        m25949e(t).m10671a(i3, Long.valueOf(i11));
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i11));
                        unsafe.putInt(t, j3, i4);
                        break;
                    }
                }
                break;
            case 66:
                if (i5 == 0) {
                    i = C4384n.m25760a(bArr, i, oVar);
                    i9 = zzbk.m10833a(oVar.f16602a);
                    obj3 = Integer.valueOf(i9);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = C4384n.m25757b(bArr, i, oVar);
                    j2 = zzbk.m10832a(oVar.f16603b);
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = m25976a(m25983a(i8), bArr, i, i2, (i3 & (-8)) | 4, oVar);
                    Object object2 = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj5 = oVar.f16604c;
                    obj3 = object2 == null ? obj5 : zzci.m10700a(object2, obj5);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0577  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03f5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0471 -> B:107:0x047a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:0x04ab -> B:102:0x0441). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:140:0x0565 -> B:141:0x0568). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:147:0x05a4 -> B:139:0x055f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0317 -> B:74:0x032e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x036f -> B:72:0x0309). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x03de -> B:93:0x03ec). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x041d -> B:90:0x03c1). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m25965a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, p131c.p161d.p170b.p224d.p252g.p255c.C4389o r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4332d1.m25965a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, c.d.b.d.g.c.o):int");
    }

    /* renamed from: a */
    public final <K, V> int m25964a(T t, byte[] bArr, int i, int i2, int i3, int i4, long j, C4389o oVar) throws IOException {
        Unsafe unsafe = f16487r;
        Object b = m25961b(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.f16504q.mo25581c(object)) {
            obj = this.f16504q.mo25579e(b);
            this.f16504q.mo25582b(obj, object);
            unsafe.putObject(t, j, obj);
        }
        C4428w0<?, ?> d = this.f16504q.mo25580d(b);
        Map<?, ?> f = this.f16504q.mo25578f(obj);
        int a = C4384n.m25760a(bArr, i, oVar);
        int i5 = oVar.f16602a;
        if (i5 < 0 || i5 > i2 - a) {
            throw zzco.zzbl();
        }
        int i6 = i5 + a;
        Object obj2 = (K) d.f16652b;
        Object obj3 = (V) d.f16654d;
        while (a < i6) {
            int i7 = a + 1;
            byte b2 = bArr[a];
            int i8 = i7;
            int i9 = b2;
            if (b2 < 0) {
                i8 = C4384n.m25762a(b2, bArr, i7, oVar);
                i9 = oVar.f16602a;
            }
            int i10 = i9 >>> 3;
            int i11 = i9 & 7;
            if (i10 != 1) {
                if (i10 == 2 && i11 == d.f16653c.zzel()) {
                    a = m25962a(bArr, i8, i2, d.f16653c, d.f16654d.getClass(), oVar);
                    obj3 = (V) oVar.f16604c;
                }
                a = C4384n.m25765a(i9, bArr, i8, i2, oVar);
            } else if (i11 == d.f16651a.zzel()) {
                a = m25962a(bArr, i8, i2, d.f16651a, (Class<?>) null, oVar);
                obj2 = (K) oVar.f16604c;
            } else {
                a = C4384n.m25765a(i9, bArr, i8, i2, oVar);
            }
        }
        if (a == i6) {
            f.put(obj2, obj3);
            return i6;
        }
        throw zzco.zzbo();
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x05e8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m25963a(T r17, byte[] r18, int r19, int r20, int r21, p131c.p161d.p170b.p224d.p252g.p255c.C4389o r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1807
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4332d1.m25963a(java.lang.Object, byte[], int, int, int, c.d.b.d.g.c.o):int");
    }

    /* renamed from: a */
    public final AbstractC4391o1 m25983a(int i) {
        int i2 = (i / 4) << 1;
        AbstractC4391o1 o1Var = (AbstractC4391o1) this.f16489b[i2];
        if (o1Var != null) {
            return o1Var;
        }
        AbstractC4391o1<T> a = C4362j1.m25894a().m25893a((Class) ((Class) this.f16489b[i2 + 1]));
        this.f16489b[i2] = a;
        return a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    public final T mo25745a() {
        return (T) this.f16500m.mo25904a(this.f16493f);
    }

    /* renamed from: a */
    public final <K, V, UT, UB> UB m25982a(int i, int i2, Map<K, V> map, zzck<?> zzckVar, UB ub, AbstractC4343f2<UT, UB> f2Var) {
        C4428w0<?, ?> d = this.f16504q.mo25580d(m25961b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (zzckVar.zzb(((Integer) next.getValue()).intValue()) == null) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = f2Var.mo25917a();
                }
                C4414t zzk = zzbb.zzk(zzdg.m10686a(d, next.getKey(), next.getValue()));
                try {
                    zzdg.m10685a(zzk.m25639b(), d, next.getKey(), next.getValue());
                    f2Var.mo25914a((AbstractC4343f2<UT, UB>) ub2, i2, zzk.m25640a());
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
    public final <K, V> void m25974a(AbstractC4407r2 r2Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            r2Var.mo25621a(i, this.f16504q.mo25580d(m25961b(i2)), this.f16504q.mo25584a(obj));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    public final void mo25744a(T t) {
        int[] iArr = this.f16498k;
        if (iArr != null) {
            for (int i : iArr) {
                long d = m25952d(i) & 1048575;
                Object f = C4368k2.m25848f(t, d);
                if (f != null) {
                    C4368k2.m25874a(t, d, this.f16504q.mo25583b(f));
                }
            }
        }
        int[] iArr2 = this.f16499l;
        if (iArr2 != null) {
            for (int i2 : iArr2) {
                this.f16501n.mo25670a(t, i2);
            }
        }
        this.f16502o.mo25916a(t);
        if (this.f16494g) {
            this.f16503p.mo25989c(t);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x09e2  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0a58  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x13e2  */
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo25743a(T r8, p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2 r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5145
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4332d1.mo25743a(java.lang.Object, c.d.b.d.g.c.r2):void");
    }

    /* renamed from: a */
    public final void m25967a(T t, T t2, int i) {
        long d = m25952d(i) & 1048575;
        if (m25972a((C4332d1<T>) t2, i)) {
            Object f = C4368k2.m25848f(t, d);
            Object f2 = C4368k2.m25848f(t2, d);
            if (f != null && f2 != null) {
                C4368k2.m25874a(t, d, zzci.m10700a(f, f2));
                m25960b((C4332d1<T>) t, i);
            } else if (f2 != null) {
                C4368k2.m25874a(t, d, f2);
                m25960b((C4332d1<T>) t, i);
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    public final void mo25741a(T t, byte[] bArr, int i, int i2, C4389o oVar) throws IOException {
        int i3;
        Object a;
        long j;
        int a2;
        if (this.f16495h) {
            Unsafe unsafe = f16487r;
            while (i < i2) {
                int i4 = i + 1;
                byte b = bArr[i];
                int i5 = b;
                if (b < 0) {
                    i4 = C4384n.m25762a(b, bArr, i4, oVar);
                    i5 = oVar.f16602a;
                }
                int i6 = i5 >>> 3;
                int i7 = i5 & 7;
                int f = m25947f(i6);
                if (f >= 0) {
                    int i8 = this.f16488a[f + 1];
                    int i9 = (267386880 & i8) >>> 20;
                    long j2 = 1048575 & i8;
                    if (i9 <= 17) {
                        boolean z = true;
                        switch (i9) {
                            case 0:
                                if (i7 != 1) {
                                    break;
                                } else {
                                    C4368k2.m25878a(t, j2, C4384n.m25756c(bArr, i4));
                                    i = i4 + 8;
                                    break;
                                }
                            case 1:
                                if (i7 != 5) {
                                    break;
                                } else {
                                    C4368k2.m25877a((Object) t, j2, C4384n.m25754d(bArr, i4));
                                    i = i4 + 4;
                                    break;
                                }
                            case 2:
                            case 3:
                                if (i7 != 0) {
                                    break;
                                } else {
                                    i = C4384n.m25757b(bArr, i4, oVar);
                                    j = oVar.f16603b;
                                    unsafe.putLong(t, j2, j);
                                    break;
                                }
                            case 4:
                            case 11:
                                if (i7 != 0) {
                                    break;
                                } else {
                                    i = C4384n.m25760a(bArr, i4, oVar);
                                    a2 = oVar.f16602a;
                                    unsafe.putInt(t, j2, a2);
                                    break;
                                }
                            case 5:
                            case 14:
                                if (i7 != 1) {
                                    break;
                                } else {
                                    unsafe.putLong(t, j2, C4384n.m25758b(bArr, i4));
                                    i = i4 + 8;
                                    break;
                                }
                            case 6:
                            case 13:
                                if (i7 != 5) {
                                    break;
                                } else {
                                    unsafe.putInt(t, j2, C4384n.m25761a(bArr, i4));
                                    i = i4 + 4;
                                    break;
                                }
                            case 7:
                                if (i7 != 0) {
                                    break;
                                } else {
                                    i = C4384n.m25757b(bArr, i4, oVar);
                                    if (oVar.f16603b == 0) {
                                        z = false;
                                    }
                                    C4368k2.m25873a(t, j2, z);
                                    break;
                                }
                            case 8:
                                if (i7 != 2) {
                                    break;
                                } else {
                                    i = (536870912 & i8) == 0 ? C4384n.m25755c(bArr, i4, oVar) : C4384n.m25753d(bArr, i4, oVar);
                                    a = oVar.f16604c;
                                    unsafe.putObject(t, j2, a);
                                    break;
                                }
                            case 9:
                                if (i7 != 2) {
                                    break;
                                } else {
                                    i = m25975a(m25983a(f), bArr, i4, i2, oVar);
                                    Object object = unsafe.getObject(t, j2);
                                    if (object != null) {
                                        a = zzci.m10700a(object, oVar.f16604c);
                                        unsafe.putObject(t, j2, a);
                                        break;
                                    }
                                    a = oVar.f16604c;
                                    unsafe.putObject(t, j2, a);
                                }
                            case 10:
                                if (i7 != 2) {
                                    break;
                                } else {
                                    i = C4384n.m25752e(bArr, i4, oVar);
                                    a = oVar.f16604c;
                                    unsafe.putObject(t, j2, a);
                                    break;
                                }
                            case 12:
                                if (i7 != 0) {
                                    break;
                                } else {
                                    i = C4384n.m25760a(bArr, i4, oVar);
                                    a2 = oVar.f16602a;
                                    unsafe.putInt(t, j2, a2);
                                    break;
                                }
                            case 15:
                                if (i7 != 0) {
                                    break;
                                } else {
                                    i = C4384n.m25760a(bArr, i4, oVar);
                                    a2 = zzbk.m10833a(oVar.f16602a);
                                    unsafe.putInt(t, j2, a2);
                                    break;
                                }
                            case 16:
                                if (i7 != 0) {
                                    break;
                                } else {
                                    i = C4384n.m25757b(bArr, i4, oVar);
                                    j = zzbk.m10832a(oVar.f16603b);
                                    unsafe.putLong(t, j2, j);
                                    break;
                                }
                        }
                    } else if (i9 == 27) {
                        if (i7 == 2) {
                            zzcn zzcnVar = (zzcn) unsafe.getObject(t, j2);
                            zzcn zzcnVar2 = zzcnVar;
                            if (!zzcnVar.mo10694g()) {
                                int size = zzcnVar.size();
                                zzcnVar2 = zzcnVar.mo10687c(size == 0 ? 10 : size << 1);
                                unsafe.putObject(t, j2, zzcnVar2);
                            }
                            i = m25977a(m25983a(f), i5, bArr, i4, i2, zzcnVar2, oVar);
                        }
                    } else if (i9 <= 49) {
                        int a3 = m25965a((C4332d1<T>) t, bArr, i4, i2, i5, i6, i7, f, i8, i9, j2, oVar);
                        i = a3;
                        if (a3 == i4) {
                            i3 = a3;
                        }
                    } else if (i9 != 50) {
                        int a4 = m25966a((C4332d1<T>) t, bArr, i4, i2, i5, i6, i7, i8, i9, j2, f, oVar);
                        i = a4;
                        if (a4 == i4) {
                            i3 = a4;
                        }
                    } else if (i7 == 2) {
                        int a5 = m25964a(t, bArr, i4, i2, f, i6, j2, oVar);
                        i = a5;
                        if (a5 == i4) {
                            i3 = a5;
                        }
                    }
                    i = m25980a(i5, bArr, i3, i2, t, oVar);
                }
                i3 = i4;
                i = m25980a(i5, bArr, i3, i2, t, oVar);
            }
            if (i != i2) {
                throw zzco.zzbo();
            }
            return;
        }
        m25963a((C4332d1<T>) t, bArr, i, i2, 0, oVar);
    }

    /* renamed from: a */
    public final boolean m25972a(T t, int i) {
        if (this.f16495h) {
            int d = m25952d(i);
            long j = d & 1048575;
            switch ((d & 267386880) >>> 20) {
                case 0:
                    return C4368k2.m25851e(t, j) != 0.0d;
                case 1:
                    return C4368k2.m25855d(t, j) != 0.0f;
                case 2:
                    return C4368k2.m25865b(t, j) != 0;
                case 3:
                    return C4368k2.m25865b(t, j) != 0;
                case 4:
                    return C4368k2.m25880a(t, j) != 0;
                case 5:
                    return C4368k2.m25865b(t, j) != 0;
                case 6:
                    return C4368k2.m25880a(t, j) != 0;
                case 7:
                    return C4368k2.m25859c(t, j);
                case 8:
                    Object f = C4368k2.m25848f(t, j);
                    if (f instanceof String) {
                        return !((String) f).isEmpty();
                    }
                    if (f instanceof zzbb) {
                        return !zzbb.zzfi.equals(f);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return C4368k2.m25848f(t, j) != null;
                case 10:
                    return !zzbb.zzfi.equals(C4368k2.m25848f(t, j));
                case 11:
                    return C4368k2.m25880a(t, j) != 0;
                case 12:
                    return C4368k2.m25880a(t, j) != 0;
                case 13:
                    return C4368k2.m25880a(t, j) != 0;
                case 14:
                    return C4368k2.m25865b(t, j) != 0;
                case 15:
                    return C4368k2.m25880a(t, j) != 0;
                case 16:
                    return C4368k2.m25865b(t, j) != 0;
                case 17:
                    return C4368k2.m25848f(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int e = m25950e(i);
            return (C4368k2.m25880a(t, (long) (e & 1048575)) & (1 << (e >>> 20))) != 0;
        }
    }

    /* renamed from: a */
    public final boolean m25971a(T t, int i, int i2) {
        return C4368k2.m25880a(t, (long) (m25950e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    public final boolean m25970a(T t, int i, int i2, int i3) {
        return this.f16495h ? m25972a((C4332d1<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x017e, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4401q1.m25712a(p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r7, r0), p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x01b2, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4401q1.m25712a(p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r7, r0), p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x01d0, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01ed, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x020b, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0228, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0245, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0262, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0282, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4401q1.m25712a(p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r7, r0), p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x02a2, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4401q1.m25712a(p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r7, r0), p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x02c2, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4401q1.m25712a(p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r7, r0), p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25848f(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x02df, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25859c(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25859c(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x02fc, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x031a, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0337, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0355, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0373, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0390, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25880a(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03ae, code lost:
        if (p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r7, r0) == p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m25865b(r8, r0)) goto L_0x03b4;
     */
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo25742a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4332d1.mo25742a(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0307, code lost:
        if (r15 != null) goto L_0x0333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0330, code lost:
        if (r15 != null) goto L_0x0333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0333, code lost:
        r14 = r15.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x033a, code lost:
        r14 = (r0 * 53) + r14;
     */
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo25740b(T r6) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4332d1.mo25740b(java.lang.Object):int");
    }

    /* renamed from: b */
    public final Object m25961b(int i) {
        return this.f16489b[(i / 4) << 1];
    }

    /* renamed from: b */
    public final void m25960b(T t, int i) {
        if (!this.f16495h) {
            int e = m25950e(i);
            long j = e & 1048575;
            C4368k2.m25876a((Object) t, j, C4368k2.m25880a(t, j) | (1 << (e >>> 20)));
        }
    }

    /* renamed from: b */
    public final void m25959b(T t, int i, int i2) {
        C4368k2.m25876a((Object) t, m25950e(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x099a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m25957b(T r9, p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2 r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4332d1.m25957b(java.lang.Object, c.d.b.d.g.c.r2):void");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: b */
    public final void mo25739b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f16488a.length; i += 4) {
                int d = m25952d(i);
                long j = 1048575 & d;
                int i2 = this.f16488a[i];
                switch ((d & 267386880) >>> 20) {
                    case 0:
                        if (m25972a((C4332d1<T>) t2, i)) {
                            C4368k2.m25878a(t, j, C4368k2.m25851e(t2, j));
                            m25960b((C4332d1<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m25972a((C4332d1<T>) t2, i)) {
                            C4368k2.m25877a((Object) t, j, C4368k2.m25855d(t2, j));
                            m25960b((C4332d1<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25875a((Object) t, j, C4368k2.m25865b(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 3:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25875a((Object) t, j, C4368k2.m25865b(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 4:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25876a((Object) t, j, C4368k2.m25880a(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 5:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25875a((Object) t, j, C4368k2.m25865b(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 6:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25876a((Object) t, j, C4368k2.m25880a(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 7:
                        if (m25972a((C4332d1<T>) t2, i)) {
                            C4368k2.m25873a(t, j, C4368k2.m25859c(t2, j));
                            m25960b((C4332d1<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25874a(t, j, C4368k2.m25848f(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 9:
                    case 17:
                        m25967a(t, t2, i);
                        break;
                    case 10:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25874a(t, j, C4368k2.m25848f(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 11:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25876a((Object) t, j, C4368k2.m25880a(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 12:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25876a((Object) t, j, C4368k2.m25880a(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 13:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25876a((Object) t, j, C4368k2.m25880a(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 14:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25875a((Object) t, j, C4368k2.m25865b(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 15:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25876a((Object) t, j, C4368k2.m25880a(t2, j));
                        m25960b((C4332d1<T>) t, i);
                        break;
                    case 16:
                        if (!m25972a((C4332d1<T>) t2, i)) {
                            break;
                        }
                        C4368k2.m25875a((Object) t, j, C4368k2.m25865b(t2, j));
                        m25960b((C4332d1<T>) t, i);
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
                        this.f16501n.mo25669a(t, t2, j);
                        break;
                    case 50:
                        C4401q1.m25714a(this.f16504q, t, t2, j);
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
                        if (!m25971a((C4332d1<T>) t2, i2, i)) {
                            break;
                        }
                        C4368k2.m25874a(t, j, C4368k2.m25848f(t2, j));
                        m25959b((C4332d1<T>) t, i2, i);
                        break;
                    case 60:
                    case 68:
                        m25956b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!m25971a((C4332d1<T>) t2, i2, i)) {
                            break;
                        }
                        C4368k2.m25874a(t, j, C4368k2.m25848f(t2, j));
                        m25959b((C4332d1<T>) t, i2, i);
                        break;
                }
            }
            if (!this.f16495h) {
                C4401q1.m25715a(this.f16502o, t, t2);
                if (this.f16494g) {
                    C4401q1.m25716a(this.f16503p, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: b */
    public final void m25956b(T t, T t2, int i) {
        int d = m25952d(i);
        int i2 = this.f16488a[i];
        long j = d & 1048575;
        if (m25971a((C4332d1<T>) t2, i2, i)) {
            Object f = C4368k2.m25848f(t, j);
            Object f2 = C4368k2.m25848f(t2, j);
            if (f != null && f2 != null) {
                C4368k2.m25874a(t, j, zzci.m10700a(f, f2));
                m25959b((C4332d1<T>) t, i2, i);
            } else if (f2 != null) {
                C4368k2.m25874a(t, j, f2);
                m25959b((C4332d1<T>) t, i2, i);
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: c */
    public final int mo25738c(T t) {
        int i;
        int i2;
        int i3;
        int b;
        String str;
        Object obj;
        int i4;
        int i5;
        int i6;
        int i7;
        long j;
        int i8;
        int b2;
        long j2;
        long j3;
        int i9;
        String str2;
        Object obj2;
        int i10;
        int i11;
        int i12;
        long j4;
        int i13;
        if (this.f16495h) {
            Unsafe unsafe = f16487r;
            int i14 = 0;
            for (int i15 = 0; i15 < this.f16488a.length; i15 += 4) {
                int d = m25952d(i15);
                int i16 = (d & 267386880) >>> 20;
                int i17 = this.f16488a[i15];
                long j5 = d & 1048575;
                int i18 = (i16 < zzcb.DOUBLE_LIST_PACKED.m10732id() || i16 > zzcb.SINT64_LIST_PACKED.m10732id()) ? 0 : this.f16488a[i15 + 2] & 1048575;
                switch (i16) {
                    case 0:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10817b(i17, 0.0d);
                        break;
                    case 1:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10816b(i17, 0.0f);
                        break;
                    case 2:
                        i14 = i14;
                        if (m25972a((C4332d1<T>) t, i15)) {
                            j2 = C4368k2.m25865b(t, j5);
                            b2 = zzbn.m10797d(i17, j2);
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i14 = i14;
                        if (m25972a((C4332d1<T>) t, i15)) {
                            j3 = C4368k2.m25865b(t, j5);
                            b2 = zzbn.m10792e(i17, j3);
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i14 = i14;
                        if (m25972a((C4332d1<T>) t, i15)) {
                            i9 = C4368k2.m25880a(t, j5);
                            b2 = zzbn.m10789f(i17, i9);
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10784g(i17, 0L);
                        break;
                    case 6:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10777i(i17, 0);
                        break;
                    case 7:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10811b(i17, true);
                        break;
                    case 8:
                        i14 = i14;
                        if (m25972a((C4332d1<T>) t, i15)) {
                            Object f = C4368k2.m25848f(t, j5);
                            str2 = f;
                            if (f instanceof zzbb) {
                                obj2 = f;
                                b2 = zzbn.m10802c(i17, (zzbb) obj2);
                                break;
                            }
                            b2 = zzbn.m10812b(i17, str2);
                            break;
                        } else {
                            continue;
                        }
                    case 9:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = C4401q1.m25724a(i17, C4368k2.m25848f(t, j5), m25983a(i15));
                        break;
                    case 10:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        obj2 = C4368k2.m25848f(t, j5);
                        b2 = zzbn.m10802c(i17, (zzbb) obj2);
                        break;
                    case 11:
                        i14 = i14;
                        if (m25972a((C4332d1<T>) t, i15)) {
                            i10 = C4368k2.m25880a(t, j5);
                            b2 = zzbn.m10785g(i17, i10);
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i14 = i14;
                        if (m25972a((C4332d1<T>) t, i15)) {
                            i11 = C4368k2.m25880a(t, j5);
                            b2 = zzbn.m10772k(i17, i11);
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10774j(i17, 0);
                        break;
                    case 14:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10780h(i17, 0L);
                        break;
                    case 15:
                        i14 = i14;
                        if (m25972a((C4332d1<T>) t, i15)) {
                            i12 = C4368k2.m25880a(t, j5);
                            b2 = zzbn.m10781h(i17, i12);
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i14 = i14;
                        if (m25972a((C4332d1<T>) t, i15)) {
                            j4 = C4368k2.m25865b(t, j5);
                            b2 = zzbn.m10788f(i17, j4);
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i14 = i14;
                        if (!m25972a((C4332d1<T>) t, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10800c(i17, (zzdo) C4368k2.m25848f(t, j5), m25983a(i15));
                        break;
                    case 18:
                    case 23:
                    case 32:
                        b2 = C4401q1.m25679i(i17, m25968a(t, j5), false);
                        break;
                    case 19:
                    case 24:
                    case 31:
                        b2 = C4401q1.m25682h(i17, m25968a(t, j5), false);
                        break;
                    case 20:
                        b2 = C4401q1.m25717a(i17, (List<Long>) m25968a(t, j5), false);
                        break;
                    case 21:
                        b2 = C4401q1.m25703b(i17, (List<Long>) m25968a(t, j5), false);
                        break;
                    case 22:
                        b2 = C4401q1.m25691e(i17, m25968a(t, j5), false);
                        break;
                    case 25:
                        b2 = C4401q1.m25676j(i17, m25968a(t, j5), false);
                        break;
                    case 26:
                        b2 = C4401q1.m25723a(i17, m25968a(t, j5));
                        break;
                    case 27:
                        b2 = C4401q1.m25722a(i17, (List<?>) m25968a(t, j5), m25983a(i15));
                        break;
                    case 28:
                        b2 = C4401q1.m25708b(i17, m25968a(t, j5));
                        break;
                    case 29:
                        b2 = C4401q1.m25688f(i17, m25968a(t, j5), false);
                        break;
                    case 30:
                        b2 = C4401q1.m25695d(i17, m25968a(t, j5), false);
                        break;
                    case 33:
                        b2 = C4401q1.m25685g(i17, m25968a(t, j5), false);
                        break;
                    case 34:
                        b2 = C4401q1.m25699c(i17, m25968a(t, j5), false);
                        break;
                    case 35:
                        int i19 = C4401q1.m25678i((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (i19 > 0) {
                            i13 = i19;
                            if (this.f16496i) {
                                i13 = i19;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        int h = C4401q1.m25681h((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (h > 0) {
                            i13 = h;
                            if (this.f16496i) {
                                i13 = h;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        int a = C4401q1.m25711a((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (a > 0) {
                            i13 = a;
                            if (this.f16496i) {
                                i13 = a;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        int b3 = C4401q1.m25702b((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (b3 > 0) {
                            i13 = b3;
                            if (this.f16496i) {
                                i13 = b3;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        int e = C4401q1.m25690e((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (e > 0) {
                            i13 = e;
                            if (this.f16496i) {
                                i13 = e;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        int i20 = C4401q1.m25678i((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (i20 > 0) {
                            i13 = i20;
                            if (this.f16496i) {
                                i13 = i20;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        int h2 = C4401q1.m25681h((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (h2 > 0) {
                            i13 = h2;
                            if (this.f16496i) {
                                i13 = h2;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        int j6 = C4401q1.m25675j((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (j6 > 0) {
                            i13 = j6;
                            if (this.f16496i) {
                                i13 = j6;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        int f2 = C4401q1.m25687f((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (f2 > 0) {
                            i13 = f2;
                            if (this.f16496i) {
                                i13 = f2;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        int d2 = C4401q1.m25694d((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (d2 > 0) {
                            i13 = d2;
                            if (this.f16496i) {
                                i13 = d2;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        int h3 = C4401q1.m25681h((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (h3 > 0) {
                            i13 = h3;
                            if (this.f16496i) {
                                i13 = h3;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        int i21 = C4401q1.m25678i((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (i21 > 0) {
                            i13 = i21;
                            if (this.f16496i) {
                                i13 = i21;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        int g = C4401q1.m25684g((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (g > 0) {
                            i13 = g;
                            if (this.f16496i) {
                                i13 = g;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        int c = C4401q1.m25698c((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (c > 0) {
                            i13 = c;
                            if (this.f16496i) {
                                i13 = c;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = zzbn.m10793e(i17) + zzbn.m10786g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        b2 = C4401q1.m25707b(i17, m25968a(t, j5), m25983a(i15));
                        break;
                    case 50:
                        b2 = this.f16504q.mo25585a(i17, C4368k2.m25848f(t, j5), m25961b(i15));
                        break;
                    case 51:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10817b(i17, 0.0d);
                        break;
                    case 52:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10816b(i17, 0.0f);
                        break;
                    case 53:
                        i14 = i14;
                        if (m25971a((C4332d1<T>) t, i17, i15)) {
                            j2 = m25948e(t, j5);
                            b2 = zzbn.m10797d(i17, j2);
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i14 = i14;
                        if (m25971a((C4332d1<T>) t, i17, i15)) {
                            j3 = m25948e(t, j5);
                            b2 = zzbn.m10792e(i17, j3);
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i14 = i14;
                        if (m25971a((C4332d1<T>) t, i17, i15)) {
                            i9 = m25951d(t, j5);
                            b2 = zzbn.m10789f(i17, i9);
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10784g(i17, 0L);
                        break;
                    case 57:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10777i(i17, 0);
                        break;
                    case 58:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10811b(i17, true);
                        break;
                    case 59:
                        i14 = i14;
                        if (m25971a((C4332d1<T>) t, i17, i15)) {
                            Object f3 = C4368k2.m25848f(t, j5);
                            str2 = f3;
                            if (f3 instanceof zzbb) {
                                obj2 = f3;
                                b2 = zzbn.m10802c(i17, (zzbb) obj2);
                                break;
                            }
                            b2 = zzbn.m10812b(i17, str2);
                            break;
                        } else {
                            continue;
                        }
                    case 60:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = C4401q1.m25724a(i17, C4368k2.m25848f(t, j5), m25983a(i15));
                        break;
                    case 61:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        obj2 = C4368k2.m25848f(t, j5);
                        b2 = zzbn.m10802c(i17, (zzbb) obj2);
                        break;
                    case 62:
                        i14 = i14;
                        if (m25971a((C4332d1<T>) t, i17, i15)) {
                            i10 = m25951d(t, j5);
                            b2 = zzbn.m10785g(i17, i10);
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i14 = i14;
                        if (m25971a((C4332d1<T>) t, i17, i15)) {
                            i11 = m25951d(t, j5);
                            b2 = zzbn.m10772k(i17, i11);
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10774j(i17, 0);
                        break;
                    case 65:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10780h(i17, 0L);
                        break;
                    case 66:
                        i14 = i14;
                        if (m25971a((C4332d1<T>) t, i17, i15)) {
                            i12 = m25951d(t, j5);
                            b2 = zzbn.m10781h(i17, i12);
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i14 = i14;
                        if (m25971a((C4332d1<T>) t, i17, i15)) {
                            j4 = m25948e(t, j5);
                            b2 = zzbn.m10788f(i17, j4);
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i14 = i14;
                        if (!m25971a((C4332d1<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = zzbn.m10800c(i17, (zzdo) C4368k2.m25848f(t, j5), m25983a(i15));
                        break;
                    default:
                        i14 = i14;
                        continue;
                }
                i14 += b2;
            }
            return i14 + m25979a((AbstractC4343f2) this.f16502o, (Object) t);
        }
        Unsafe unsafe2 = f16487r;
        int i22 = -1;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        while (i23 < this.f16488a.length) {
            int d3 = m25952d(i23);
            int[] iArr = this.f16488a;
            int i26 = iArr[i23];
            int i27 = (d3 & 267386880) >>> 20;
            if (i27 <= 17) {
                int i28 = iArr[i23 + 2];
                int i29 = i28 & 1048575;
                i = 1 << (i28 >>> 20);
                i22 = i22;
                if (i29 != i22) {
                    i25 = unsafe2.getInt(t, i29);
                    i22 = i29;
                }
                i2 = i28;
            } else {
                i2 = (!this.f16496i || i27 < zzcb.DOUBLE_LIST_PACKED.m10732id() || i27 > zzcb.SINT64_LIST_PACKED.m10732id()) ? 0 : this.f16488a[i23 + 2] & 1048575;
                i = 0;
                i25 = i25;
            }
            long j7 = d3 & 1048575;
            switch (i27) {
                case 0:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i24 += zzbn.m10817b(i26, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i24 += zzbn.m10816b(i26, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i3 = zzbn.m10797d(i26, unsafe2.getLong(t, j7));
                        i24 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i3 = zzbn.m10792e(i26, unsafe2.getLong(t, j7));
                        i24 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i3 = zzbn.m10789f(i26, unsafe2.getInt(t, j7));
                        i24 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i3 = zzbn.m10784g(i26, 0L);
                        i24 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i24 += zzbn.m10777i(i26, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i24 = i24;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    b = zzbn.m10811b(i26, true);
                    i24 += b;
                    break;
                case 8:
                    i24 = i24;
                    if ((i25 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe2.getObject(t, j7);
                        str = object;
                        if (object instanceof zzbb) {
                            obj = object;
                            b = zzbn.m10802c(i26, (zzbb) obj);
                            i24 += b;
                            break;
                        }
                        b = zzbn.m10812b(i26, str);
                        i24 += b;
                    }
                case 9:
                    i24 = i24;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    b = C4401q1.m25724a(i26, unsafe2.getObject(t, j7), m25983a(i23));
                    i24 += b;
                    break;
                case 10:
                    i24 = i24;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    obj = unsafe2.getObject(t, j7);
                    b = zzbn.m10802c(i26, (zzbb) obj);
                    i24 += b;
                    break;
                case 11:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i4 = unsafe2.getInt(t, j7);
                        b = zzbn.m10785g(i26, i4);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i5 = unsafe2.getInt(t, j7);
                        b = zzbn.m10772k(i26, i5);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i24 = i24;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    i6 = zzbn.m10774j(i26, 0);
                    i24 += i6;
                    break;
                case 14:
                    i24 = i24;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    b = zzbn.m10780h(i26, 0L);
                    i24 += b;
                    break;
                case 15:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        i7 = unsafe2.getInt(t, j7);
                        b = zzbn.m10781h(i26, i7);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i24 = i24;
                    if ((i25 & i) != 0) {
                        j = unsafe2.getLong(t, j7);
                        b = zzbn.m10788f(i26, j);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i24 = i24;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    b = zzbn.m10800c(i26, (zzdo) unsafe2.getObject(t, j7), m25983a(i23));
                    i24 += b;
                    break;
                case 18:
                case 23:
                case 32:
                    b = C4401q1.m25679i(i26, (List) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 19:
                case 24:
                case 31:
                    b = C4401q1.m25682h(i26, (List) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 20:
                    b = C4401q1.m25717a(i26, (List<Long>) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 21:
                    b = C4401q1.m25703b(i26, (List<Long>) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 22:
                    b = C4401q1.m25691e(i26, (List) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 25:
                    b = C4401q1.m25676j(i26, (List) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 26:
                    b = C4401q1.m25723a(i26, (List) unsafe2.getObject(t, j7));
                    i24 += b;
                    break;
                case 27:
                    b = C4401q1.m25722a(i26, (List<?>) unsafe2.getObject(t, j7), m25983a(i23));
                    i24 += b;
                    break;
                case 28:
                    b = C4401q1.m25708b(i26, (List) unsafe2.getObject(t, j7));
                    i24 += b;
                    break;
                case 29:
                    b = C4401q1.m25688f(i26, (List) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 30:
                    b = C4401q1.m25695d(i26, (List) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 33:
                    b = C4401q1.m25685g(i26, (List) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 34:
                    b = C4401q1.m25699c(i26, (List) unsafe2.getObject(t, j7), false);
                    i24 += b;
                    break;
                case 35:
                    int i30 = C4401q1.m25678i((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (i30 > 0) {
                        i8 = i30;
                        if (this.f16496i) {
                            i8 = i30;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int h4 = C4401q1.m25681h((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (h4 > 0) {
                        i8 = h4;
                        if (this.f16496i) {
                            i8 = h4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int a2 = C4401q1.m25711a((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (a2 > 0) {
                        i8 = a2;
                        if (this.f16496i) {
                            i8 = a2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int b4 = C4401q1.m25702b((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (b4 > 0) {
                        i8 = b4;
                        if (this.f16496i) {
                            i8 = b4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int e2 = C4401q1.m25690e((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (e2 > 0) {
                        i8 = e2;
                        if (this.f16496i) {
                            i8 = e2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int i31 = C4401q1.m25678i((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (i31 > 0) {
                        i8 = i31;
                        if (this.f16496i) {
                            i8 = i31;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int h5 = C4401q1.m25681h((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (h5 > 0) {
                        i8 = h5;
                        if (this.f16496i) {
                            i8 = h5;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int j8 = C4401q1.m25675j((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (j8 > 0) {
                        i8 = j8;
                        if (this.f16496i) {
                            i8 = j8;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int f4 = C4401q1.m25687f((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (f4 > 0) {
                        i8 = f4;
                        if (this.f16496i) {
                            i8 = f4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int d4 = C4401q1.m25694d((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (d4 > 0) {
                        i8 = d4;
                        if (this.f16496i) {
                            i8 = d4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int h6 = C4401q1.m25681h((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (h6 > 0) {
                        i8 = h6;
                        if (this.f16496i) {
                            i8 = h6;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int i32 = C4401q1.m25678i((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (i32 > 0) {
                        i8 = i32;
                        if (this.f16496i) {
                            i8 = i32;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int g2 = C4401q1.m25684g((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (g2 > 0) {
                        i8 = g2;
                        if (this.f16496i) {
                            i8 = g2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int c2 = C4401q1.m25698c((List) unsafe2.getObject(t, j7));
                    i24 = i24;
                    if (c2 > 0) {
                        i8 = c2;
                        if (this.f16496i) {
                            i8 = c2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = zzbn.m10793e(i26) + zzbn.m10786g(i8) + i8;
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    b = C4401q1.m25707b(i26, (List) unsafe2.getObject(t, j7), m25983a(i23));
                    i24 += b;
                    break;
                case 50:
                    b = this.f16504q.mo25585a(i26, unsafe2.getObject(t, j7), m25961b(i23));
                    i24 += b;
                    break;
                case 51:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        b = zzbn.m10817b(i26, 0.0d);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        i6 = zzbn.m10816b(i26, 0.0f);
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        b = zzbn.m10797d(i26, m25948e(t, j7));
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        b = zzbn.m10792e(i26, m25948e(t, j7));
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        b = zzbn.m10789f(i26, m25951d(t, j7));
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        b = zzbn.m10784g(i26, 0L);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        i6 = zzbn.m10777i(i26, 0);
                        i24 += i6;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i24 = i24;
                    if (!m25971a((C4332d1<T>) t, i26, i23)) {
                        break;
                    }
                    b = zzbn.m10811b(i26, true);
                    i24 += b;
                    break;
                case 59:
                    i24 = i24;
                    if (!m25971a((C4332d1<T>) t, i26, i23)) {
                        break;
                    } else {
                        Object object2 = unsafe2.getObject(t, j7);
                        str = object2;
                        if (object2 instanceof zzbb) {
                            obj = object2;
                            b = zzbn.m10802c(i26, (zzbb) obj);
                            i24 += b;
                            break;
                        }
                        b = zzbn.m10812b(i26, str);
                        i24 += b;
                    }
                case 60:
                    i24 = i24;
                    if (!m25971a((C4332d1<T>) t, i26, i23)) {
                        break;
                    }
                    b = C4401q1.m25724a(i26, unsafe2.getObject(t, j7), m25983a(i23));
                    i24 += b;
                    break;
                case 61:
                    i24 = i24;
                    if (!m25971a((C4332d1<T>) t, i26, i23)) {
                        break;
                    }
                    obj = unsafe2.getObject(t, j7);
                    b = zzbn.m10802c(i26, (zzbb) obj);
                    i24 += b;
                    break;
                case 62:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        i4 = m25951d(t, j7);
                        b = zzbn.m10785g(i26, i4);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        i5 = m25951d(t, j7);
                        b = zzbn.m10772k(i26, i5);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i24 = i24;
                    if (!m25971a((C4332d1<T>) t, i26, i23)) {
                        break;
                    }
                    i6 = zzbn.m10774j(i26, 0);
                    i24 += i6;
                    break;
                case 65:
                    i24 = i24;
                    if (!m25971a((C4332d1<T>) t, i26, i23)) {
                        break;
                    }
                    b = zzbn.m10780h(i26, 0L);
                    i24 += b;
                    break;
                case 66:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        i7 = m25951d(t, j7);
                        b = zzbn.m10781h(i26, i7);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i24 = i24;
                    if (m25971a((C4332d1<T>) t, i26, i23)) {
                        j = m25948e(t, j7);
                        b = zzbn.m10788f(i26, j);
                        i24 += b;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i24 = i24;
                    if (!m25971a((C4332d1<T>) t, i26, i23)) {
                        break;
                    }
                    b = zzbn.m10800c(i26, (zzdo) unsafe2.getObject(t, j7), m25983a(i23));
                    i24 += b;
                    break;
                default:
                    i24 = i24;
                    break;
            }
            i23 += 4;
            i25 = i25;
        }
        int a3 = i24 + m25979a((AbstractC4343f2) this.f16502o, (Object) t);
        int i33 = a3;
        if (this.f16494g) {
            i33 = a3 + this.f16503p.mo25993a(t).m25923f();
        }
        return i33;
    }

    /* renamed from: c */
    public final zzck<?> m25955c(int i) {
        return (zzck) this.f16489b[((i / 4) << 1) + 1];
    }

    /* renamed from: c */
    public final boolean m25953c(T t, T t2, int i) {
        return m25972a((C4332d1<T>) t, i) == m25972a((C4332d1<T>) t2, i);
    }

    /* renamed from: d */
    public final int m25952d(int i) {
        return this.f16488a[i + 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: d */
    public final boolean mo25737d(T t) {
        int i;
        boolean z;
        boolean z2;
        int[] iArr = this.f16497j;
        if (iArr == null || iArr.length == 0) {
            return true;
        }
        int i2 = -1;
        int i3 = 0;
        for (int i4 : iArr) {
            int f = m25947f(i4);
            int d = m25952d(f);
            if (!this.f16495h) {
                int i5 = this.f16488a[f + 2];
                int i6 = i5 & 1048575;
                i = 1 << (i5 >>> 20);
                if (i6 != i2) {
                    i3 = f16487r.getInt(t, i6);
                    i2 = i6;
                }
            } else {
                i = 0;
            }
            if (((268435456 & d) != 0) && !m25970a((C4332d1<T>) t, f, i3, i)) {
                return false;
            }
            int i7 = (267386880 & d) >>> 20;
            if (i7 != 9 && i7 != 17) {
                if (i7 != 27) {
                    if (i7 == 60 || i7 == 68) {
                        if (m25971a((C4332d1<T>) t, i4, f) && !m25969a(t, d, m25983a(f))) {
                            return false;
                        }
                    } else if (i7 != 49) {
                        if (i7 != 50) {
                            continue;
                        } else {
                            Map<?, ?> a = this.f16504q.mo25584a(C4368k2.m25848f(t, d & 1048575));
                            if (!a.isEmpty()) {
                                if (this.f16504q.mo25580d(m25961b(f)).f16653c.zzek() == zzfq.MESSAGE) {
                                    AbstractC4391o1<T> o1Var = null;
                                    for (Object obj : a.values()) {
                                        AbstractC4391o1<T> o1Var2 = o1Var;
                                        if (o1Var == null) {
                                            o1Var2 = C4362j1.m25894a().m25893a((Class) obj.getClass());
                                        }
                                        o1Var = o1Var2;
                                        if (!o1Var2.mo25737d(obj)) {
                                            z2 = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            z2 = true;
                            if (!z2) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) C4368k2.m25848f(t, d & 1048575);
                if (!list.isEmpty()) {
                    AbstractC4391o1 a2 = m25983a(f);
                    for (int i8 = 0; i8 < list.size(); i8++) {
                        if (!a2.mo25737d(list.get(i8))) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (!z) {
                    return false;
                }
            } else if (m25970a((C4332d1<T>) t, f, i3, i) && !m25969a(t, d, m25983a(f))) {
                return false;
            }
        }
        return !this.f16494g || this.f16503p.mo25993a(t).m25925d();
    }

    /* renamed from: e */
    public final int m25950e(int i) {
        return this.f16488a[i + 2];
    }

    /* renamed from: f */
    public final int m25947f(int i) {
        int i2 = this.f16490c;
        if (i < i2) {
            return -1;
        }
        int i3 = this.f16492e;
        if (i < i3) {
            int i4 = (i - i2) << 2;
            if (this.f16488a[i4] == i) {
                return i4;
            }
            return -1;
        } else if (i > this.f16491d) {
            return -1;
        } else {
            int i5 = i3 - i2;
            int length = (this.f16488a.length / 4) - 1;
            while (i5 <= length) {
                int i6 = (length + i5) >>> 1;
                int i7 = i6 << 2;
                int i8 = this.f16488a[i7];
                if (i == i8) {
                    return i7;
                }
                if (i < i8) {
                    length = i6 - 1;
                } else {
                    i5 = i6 + 1;
                }
            }
            return -1;
        }
    }
}
