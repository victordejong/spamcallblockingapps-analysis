package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.g.o2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/o2.class */
public final class C7660o2<T> implements AbstractC7554b3<T> {

    /* renamed from: r */
    public static final Unsafe f17984r = C7543a4.m20343d();

    /* renamed from: a */
    public final int[] f17985a;

    /* renamed from: b */
    public final Object[] f17986b;

    /* renamed from: c */
    public final int f17987c;

    /* renamed from: d */
    public final int f17988d;

    /* renamed from: e */
    public final int f17989e;

    /* renamed from: f */
    public final AbstractC7627k2 f17990f;

    /* renamed from: g */
    public final boolean f17991g;

    /* renamed from: h */
    public final boolean f17992h;

    /* renamed from: i */
    public final boolean f17993i;

    /* renamed from: j */
    public final int[] f17994j;

    /* renamed from: k */
    public final int[] f17995k;

    /* renamed from: l */
    public final int[] f17996l;

    /* renamed from: m */
    public final AbstractC7681r2 f17997m;

    /* renamed from: n */
    public final AbstractC7708v1 f17998n;

    /* renamed from: o */
    public final AbstractC7696t3<?, ?> f17999o;

    /* renamed from: p */
    public final AbstractC7686s0<?> f18000p;

    /* renamed from: q */
    public final AbstractC7589f2 f18001q;

    public C7660o2(int[] iArr, Object[] objArr, int i, int i2, int i3, AbstractC7627k2 k2Var, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, AbstractC7681r2 r2Var, AbstractC7708v1 v1Var, AbstractC7696t3<?, ?> t3Var, AbstractC7686s0<?> s0Var, AbstractC7589f2 f2Var) {
        this.f17985a = iArr;
        this.f17986b = objArr;
        this.f17987c = i;
        this.f17988d = i2;
        this.f17989e = i3;
        boolean z3 = k2Var instanceof AbstractC7583f1;
        this.f17992h = z;
        this.f17991g = s0Var != null && s0Var.mo19802a(k2Var);
        this.f17993i = false;
        this.f17994j = iArr2;
        this.f17995k = iArr3;
        this.f17996l = iArr4;
        this.f17997m = r2Var;
        this.f17998n = v1Var;
        this.f17999o = t3Var;
        this.f18000p = s0Var;
        this.f17990f = k2Var;
        this.f18001q = f2Var;
    }

    /* renamed from: a */
    public static int m19956a(int i, byte[] bArr, int i2, int i3, Object obj, C7713w wVar) throws IOException {
        return C7706v.m19768a(i, bArr, i2, i3, m19926e(obj), wVar);
    }

    /* renamed from: a */
    public static int m19955a(AbstractC7554b3<?> b3Var, int i, byte[] bArr, int i2, int i3, AbstractC7626k1<?> k1Var, C7713w wVar) throws IOException {
        int a = m19953a((AbstractC7554b3) b3Var, bArr, i2, i3, wVar);
        while (true) {
            k1Var.add(wVar.f18063c);
            if (a >= i3) {
                break;
            }
            int a2 = C7706v.m19763a(bArr, a, wVar);
            if (i != wVar.f18061a) {
                break;
            }
            a = m19953a((AbstractC7554b3) b3Var, bArr, a2, i3, wVar);
        }
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static int m19954a(AbstractC7554b3 b3Var, byte[] bArr, int i, int i2, int i3, C7713w wVar) throws IOException {
        C7660o2 o2Var = (C7660o2) b3Var;
        Object a = o2Var.mo19867a();
        int a2 = o2Var.m19939a((C7660o2) a, bArr, i, i2, i3, wVar);
        o2Var.mo19861b((C7660o2) a);
        wVar.f18063c = a;
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static int m19953a(AbstractC7554b3 b3Var, byte[] bArr, int i, int i2, C7713w wVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = C7706v.m19766a(b, bArr, i3, wVar);
            i5 = wVar.f18061a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw C7633l1.m20080a();
        }
        Object a = b3Var.mo19867a();
        int i6 = i5 + i4;
        b3Var.mo19862a(a, bArr, i4, i6, wVar);
        b3Var.mo19861b(a);
        wVar.f18063c = a;
        return i6;
    }

    /* renamed from: a */
    public static <UT, UB> int m19951a(AbstractC7696t3<UT, UB> t3Var, T t) {
        return t3Var.mo19742b(t3Var.mo19739c(t));
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0287 A[EDGE_INSN: B:76:0x0287->B:72:0x0287 ?: BREAK  , SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> p081h.p203i.p204a.p224e.p259j.p266g.C7660o2<T> m19949a(java.lang.Class<T> r19, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7613i2 r20, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7681r2 r21, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7708v1 r22, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7696t3<?, ?> r23, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7686s0<?> r24, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7589f2 r25) {
        /*
            Method dump skipped, instructions count: 701
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7660o2.m19949a(java.lang.Class, h.i.a.e.j.g.i2, h.i.a.e.j.g.r2, h.i.a.e.j.g.v1, h.i.a.e.j.g.t3, h.i.a.e.j.g.s0, h.i.a.e.j.g.f2):h.i.a.e.j.g.o2");
    }

    /* renamed from: a */
    public static <E> List<E> m19944a(Object obj, long j) {
        return (List) C7543a4.m20335f(obj, j);
    }

    /* renamed from: a */
    public static void m19957a(int i, Object obj, AbstractC7662o4 o4Var) throws IOException {
        if (obj instanceof String) {
            o4Var.mo19914a(i, (String) obj);
        } else {
            o4Var.mo19917a(i, (AbstractC7539a0) obj);
        }
    }

    /* renamed from: a */
    public static <UT, UB> void m19950a(AbstractC7696t3<UT, UB> t3Var, T t, AbstractC7662o4 o4Var) throws IOException {
        t3Var.mo19745a((AbstractC7696t3<UT, UB>) t3Var.mo19739c(t), o4Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static boolean m19945a(Object obj, int i, AbstractC7554b3 b3Var) {
        return b3Var.mo19858d(C7543a4.m20335f(obj, i & 1048575));
    }

    /* renamed from: b */
    public static <T> double m19935b(T t, long j) {
        return ((Double) C7543a4.m20335f(t, j)).doubleValue();
    }

    /* renamed from: c */
    public static <T> float m19931c(T t, long j) {
        return ((Float) C7543a4.m20335f(t, j)).floatValue();
    }

    /* renamed from: d */
    public static <T> int m19928d(T t, long j) {
        return ((Integer) C7543a4.m20335f(t, j)).intValue();
    }

    /* renamed from: e */
    public static <T> long m19925e(T t, long j) {
        return ((Long) C7543a4.m20335f(t, j)).longValue();
    }

    /* renamed from: e */
    public static C7703u3 m19926e(Object obj) {
        AbstractC7583f1 f1Var = (AbstractC7583f1) obj;
        C7703u3 u3Var = f1Var.zzjp;
        C7703u3 u3Var2 = u3Var;
        if (u3Var == C7703u3.m19776d()) {
            u3Var2 = C7703u3.m19775e();
            f1Var.zzjp = u3Var2;
        }
        return u3Var2;
    }

    /* renamed from: f */
    public static <T> boolean m19923f(T t, long j) {
        return ((Boolean) C7543a4.m20335f(t, j)).booleanValue();
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
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo19865a(T r6) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7660o2.mo19865a(java.lang.Object):int");
    }

    /* renamed from: a */
    public final int m19942a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C7713w wVar) throws IOException {
        Object obj;
        Object obj2;
        Object obj3;
        long j2;
        int i9;
        int i10;
        Unsafe unsafe = f17984r;
        long j3 = this.f17985a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    obj = Double.valueOf(C7706v.m19760c(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i += 8;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    obj2 = Float.valueOf(C7706v.m19758d(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i += 4;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = C7706v.m19761b(bArr, i, wVar);
                    j2 = wVar.f18062b;
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = C7706v.m19763a(bArr, i, wVar);
                    i9 = wVar.f18061a;
                    obj3 = Integer.valueOf(i9);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    obj = Long.valueOf(C7706v.m19762b(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i += 8;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    obj2 = Integer.valueOf(C7706v.m19765a(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i += 4;
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = C7706v.m19761b(bArr, i, wVar);
                    obj3 = Boolean.valueOf(wVar.f18062b != 0);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = C7706v.m19763a(bArr, i, wVar);
                    i10 = wVar.f18061a;
                    if (i10 == 0) {
                        obj3 = "";
                        unsafe.putObject(t, j, obj3);
                        unsafe.putInt(t, j3, i4);
                        break;
                    } else if ((i6 & 536870912) == 0 || C7565c4.m20286a(bArr, i, i + i10)) {
                        unsafe.putObject(t, j, new String(bArr, i, i10, C7602h1.f17862a));
                        i += i10;
                        unsafe.putInt(t, j3, i4);
                    } else {
                        throw C7633l1.m20075e();
                    }
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = m19953a(m19959a(i8), bArr, i, i2, wVar);
                    Object object = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj4 = wVar.f18063c;
                    obj3 = object == null ? obj4 : C7602h1.m20131a(object, obj4);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = C7706v.m19763a(bArr, i, wVar);
                    i10 = wVar.f18061a;
                    if (i10 == 0) {
                        obj3 = AbstractC7539a0.f17655b;
                        unsafe.putObject(t, j, obj3);
                        unsafe.putInt(t, j3, i4);
                        break;
                    } else {
                        unsafe.putObject(t, j, AbstractC7539a0.m20381a(bArr, i, i10));
                        i += i10;
                        unsafe.putInt(t, j3, i4);
                    }
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = C7706v.m19763a(bArr, i, wVar);
                    int i11 = wVar.f18061a;
                    AbstractC7619j1<?> c = m19932c(i8);
                    if (c != null && c.mo20093a(i11) == null) {
                        m19926e(t).m19784a(i3, Long.valueOf(i11));
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
                    i = C7706v.m19763a(bArr, i, wVar);
                    i9 = AbstractC7618j0.m20096a(wVar.f18061a);
                    obj3 = Integer.valueOf(i9);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = C7706v.m19761b(bArr, i, wVar);
                    j2 = AbstractC7618j0.m20095a(wVar.f18062b);
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = m19954a(m19959a(i8), bArr, i, i2, (i3 & (-8)) | 4, wVar);
                    Object object2 = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj5 = wVar.f18063c;
                    obj3 = object2 == null ? obj5 : C7602h1.m20131a(object2, obj5);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0584  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03f5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x047b -> B:108:0x0484). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x04b9 -> B:103:0x0444). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:142:0x0572 -> B:143:0x0575). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:149:0x05b1 -> B:141:0x056c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0317 -> B:74:0x032e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x036f -> B:72:0x0309). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x03de -> B:93:0x03ec). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x041d -> B:90:0x03c1). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m19941a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, p081h.p203i.p204a.p224e.p259j.p266g.C7713w r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7660o2.m19941a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, h.i.a.e.j.g.w):int");
    }

    /* renamed from: a */
    public final <K, V> int m19940a(T t, byte[] bArr, int i, int i2, int i3, int i4, long j, C7713w wVar) throws IOException {
        Unsafe unsafe = f17984r;
        Object b = m19938b(i3);
        Object object = unsafe.getObject(t, j);
        if (this.f18001q.mo20151d(object)) {
            Object b2 = this.f18001q.mo20153b(b);
            this.f18001q.mo20154a(b2, object);
            unsafe.putObject(t, j, b2);
        }
        this.f18001q.mo20155a(b);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x05ea  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m19939a(T r17, byte[] r18, int r19, int r20, int r21, p081h.p203i.p204a.p224e.p259j.p266g.C7713w r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7660o2.m19939a(java.lang.Object, byte[], int, int, int, h.i.a.e.j.g.w):int");
    }

    /* renamed from: a */
    public final AbstractC7554b3 m19959a(int i) {
        int i2 = (i / 4) << 1;
        AbstractC7554b3 b3Var = (AbstractC7554b3) this.f17986b[i2];
        if (b3Var != null) {
            return b3Var;
        }
        AbstractC7554b3<T> a = C7716w2.m19701a().m19700a((Class) ((Class) this.f17986b[i2 + 1]));
        this.f17986b[i2] = a;
        return a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    public final T mo19867a() {
        return (T) this.f17997m.mo19806a(this.f17990f);
    }

    /* renamed from: a */
    public final <K, V, UT, UB> UB m19958a(int i, int i2, Map<K, V> map, AbstractC7619j1<?> j1Var, UB ub, AbstractC7696t3<UT, UB> t3Var) {
        this.f18001q.mo20155a(m19938b(i));
        throw null;
    }

    /* renamed from: a */
    public final <K, V> void m19952a(AbstractC7662o4 o4Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            this.f18001q.mo20155a(m19938b(i2));
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x099e  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0a14  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x135a  */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo19864a(T r8, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4 r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5012
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7660o2.mo19864a(java.lang.Object, h.i.a.e.j.g.o4):void");
    }

    /* renamed from: a */
    public final void m19943a(T t, T t2, int i) {
        long d = m19929d(i) & 1048575;
        if (m19948a((C7660o2<T>) t2, i)) {
            Object f = C7543a4.m20335f(t, d);
            Object f2 = C7543a4.m20335f(t2, d);
            if (f != null && f2 != null) {
                C7543a4.m20361a(t, d, C7602h1.m20131a(f, f2));
                m19937b((C7660o2<T>) t, i);
            } else if (f2 != null) {
                C7543a4.m20361a(t, d, f2);
                m19937b((C7660o2<T>) t, i);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x0367, code lost:
        if (r19 == r19) goto L_0x036d;
     */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo19862a(T r17, byte[] r18, int r19, int r20, p081h.p203i.p204a.p224e.p259j.p266g.C7713w r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 922
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7660o2.mo19862a(java.lang.Object, byte[], int, int, h.i.a.e.j.g.w):void");
    }

    /* renamed from: a */
    public final boolean m19948a(T t, int i) {
        if (this.f17992h) {
            int d = m19929d(i);
            long j = d & 1048575;
            switch ((d & 267386880) >>> 20) {
                case 0:
                    return C7543a4.m20338e(t, j) != 0.0d;
                case 1:
                    return C7543a4.m20342d(t, j) != 0.0f;
                case 2:
                    return C7543a4.m20352b(t, j) != 0;
                case 3:
                    return C7543a4.m20352b(t, j) != 0;
                case 4:
                    return C7543a4.m20367a(t, j) != 0;
                case 5:
                    return C7543a4.m20352b(t, j) != 0;
                case 6:
                    return C7543a4.m20367a(t, j) != 0;
                case 7:
                    return C7543a4.m20346c(t, j);
                case 8:
                    Object f = C7543a4.m20335f(t, j);
                    if (f instanceof String) {
                        return !((String) f).isEmpty();
                    }
                    if (f instanceof AbstractC7539a0) {
                        return !AbstractC7539a0.f17655b.equals(f);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return C7543a4.m20335f(t, j) != null;
                case 10:
                    return !AbstractC7539a0.f17655b.equals(C7543a4.m20335f(t, j));
                case 11:
                    return C7543a4.m20367a(t, j) != 0;
                case 12:
                    return C7543a4.m20367a(t, j) != 0;
                case 13:
                    return C7543a4.m20367a(t, j) != 0;
                case 14:
                    return C7543a4.m20352b(t, j) != 0;
                case 15:
                    return C7543a4.m20367a(t, j) != 0;
                case 16:
                    return C7543a4.m20352b(t, j) != 0;
                case 17:
                    return C7543a4.m20335f(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int e = m19927e(i);
            return (C7543a4.m20367a(t, (long) (e & 1048575)) & (1 << (e >>> 20))) != 0;
        }
    }

    /* renamed from: a */
    public final boolean m19947a(T t, int i, int i2) {
        return C7543a4.m20367a(t, (long) (m19927e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    public final boolean m19946a(T t, int i, int i2, int i3) {
        return this.f17992h ? m19948a((C7660o2<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7571d3.m20260a(p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r7, r0), p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r8, r0)) != false) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x01ad, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7571d3.m20260a(p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r7, r0), p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r8, r0)) != false) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x01cb, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01e8, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0206, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0223, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0240, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x025d, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x027d, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7571d3.m20260a(p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r7, r0), p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r8, r0)) != false) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x029d, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7571d3.m20260a(p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r7, r0), p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r8, r0)) != false) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x02bd, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7571d3.m20260a(p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r7, r0), p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20335f(r8, r0)) != false) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x02da, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20346c(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20346c(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x02f7, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0315, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0332, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0350, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x036e, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x038b, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20367a(r8, r0)) goto L_0x03af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03a9, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m20352b(r8, r0)) goto L_0x03af;
     */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo19863a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7660o2.mo19863a(java.lang.Object, java.lang.Object):boolean");
    }

    /* renamed from: b */
    public final Object m19938b(int i) {
        return this.f17986b[(i / 4) << 1];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: b */
    public final void mo19861b(T t) {
        int[] iArr = this.f17995k;
        if (iArr != null) {
            for (int i : iArr) {
                long d = m19929d(i) & 1048575;
                Object f = C7543a4.m20335f(t, d);
                if (f != null) {
                    this.f18001q.mo20152c(f);
                    C7543a4.m20361a(t, d, f);
                }
            }
        }
        int[] iArr2 = this.f17996l;
        if (iArr2 != null) {
            for (int i2 : iArr2) {
                this.f17998n.mo19669a(t, i2);
            }
        }
        this.f17999o.mo19747a(t);
        if (this.f17991g) {
            this.f18000p.mo19796c(t);
        }
    }

    /* renamed from: b */
    public final void m19937b(T t, int i) {
        if (!this.f17992h) {
            int e = m19927e(i);
            long j = e & 1048575;
            C7543a4.m20363a((Object) t, j, C7543a4.m20367a(t, j) | (1 << (e >>> 20)));
        }
    }

    /* renamed from: b */
    public final void m19936b(T t, int i, int i2) {
        C7543a4.m20363a((Object) t, m19927e(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0985  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m19934b(T r9, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4 r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7660o2.m19934b(java.lang.Object, h.i.a.e.j.g.o4):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: b */
    public final void mo19860b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f17985a.length; i += 4) {
                int d = m19929d(i);
                long j = 1048575 & d;
                int i2 = this.f17985a[i];
                switch ((d & 267386880) >>> 20) {
                    case 0:
                        if (m19948a((C7660o2<T>) t2, i)) {
                            C7543a4.m20365a(t, j, C7543a4.m20338e(t2, j));
                            m19937b((C7660o2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m19948a((C7660o2<T>) t2, i)) {
                            C7543a4.m20364a((Object) t, j, C7543a4.m20342d(t2, j));
                            m19937b((C7660o2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20362a((Object) t, j, C7543a4.m20352b(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 3:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20362a((Object) t, j, C7543a4.m20352b(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 4:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20363a((Object) t, j, C7543a4.m20367a(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 5:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20362a((Object) t, j, C7543a4.m20352b(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 6:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20363a((Object) t, j, C7543a4.m20367a(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 7:
                        if (m19948a((C7660o2<T>) t2, i)) {
                            C7543a4.m20360a(t, j, C7543a4.m20346c(t2, j));
                            m19937b((C7660o2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20361a(t, j, C7543a4.m20335f(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 9:
                    case 17:
                        m19943a(t, t2, i);
                        break;
                    case 10:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20361a(t, j, C7543a4.m20335f(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 11:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20363a((Object) t, j, C7543a4.m20367a(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 12:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20363a((Object) t, j, C7543a4.m20367a(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 13:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20363a((Object) t, j, C7543a4.m20367a(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 14:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20362a((Object) t, j, C7543a4.m20352b(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 15:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20363a((Object) t, j, C7543a4.m20367a(t2, j));
                        m19937b((C7660o2<T>) t, i);
                        break;
                    case 16:
                        if (!m19948a((C7660o2<T>) t2, i)) {
                            break;
                        }
                        C7543a4.m20362a((Object) t, j, C7543a4.m20352b(t2, j));
                        m19937b((C7660o2<T>) t, i);
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
                        this.f17998n.mo19668a(t, t2, j);
                        break;
                    case 50:
                        C7571d3.m20264a(this.f18001q, t, t2, j);
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
                        if (!m19947a((C7660o2<T>) t2, i2, i)) {
                            break;
                        }
                        C7543a4.m20361a(t, j, C7543a4.m20335f(t2, j));
                        m19936b((C7660o2<T>) t, i2, i);
                        break;
                    case 60:
                    case 68:
                        m19933b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!m19947a((C7660o2<T>) t2, i2, i)) {
                            break;
                        }
                        C7543a4.m20361a(t, j, C7543a4.m20335f(t2, j));
                        m19936b((C7660o2<T>) t, i2, i);
                        break;
                }
            }
            if (!this.f17992h) {
                C7571d3.m20262a(this.f17999o, t, t2);
                if (this.f17991g) {
                    C7571d3.m20263a(this.f18000p, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: b */
    public final void m19933b(T t, T t2, int i) {
        int d = m19929d(i);
        int i2 = this.f17985a[i];
        long j = d & 1048575;
        if (m19947a((C7660o2<T>) t2, i2, i)) {
            Object f = C7543a4.m20335f(t, j);
            Object f2 = C7543a4.m20335f(t2, j);
            if (f != null && f2 != null) {
                C7543a4.m20361a(t, j, C7602h1.m20131a(f, f2));
                m19936b((C7660o2<T>) t, i2, i);
            } else if (f2 != null) {
                C7543a4.m20361a(t, j, f2);
                m19936b((C7660o2<T>) t, i2, i);
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: c */
    public final int mo19859c(T t) {
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
        if (this.f17992h) {
            Unsafe unsafe = f17984r;
            int i14 = 0;
            for (int i15 = 0; i15 < this.f17985a.length; i15 += 4) {
                int d = m19929d(i15);
                int i16 = (d & 267386880) >>> 20;
                int i17 = this.f17985a[i15];
                long j5 = d & 1048575;
                int i18 = (i16 < EnumC7540a1.DOUBLE_LIST_PACKED.m20376a() || i16 > EnumC7540a1.SINT64_LIST_PACKED.m20376a()) ? 0 : this.f17985a[i15 + 2] & 1048575;
                switch (i16) {
                    case 0:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20053b(i17, 0.0d);
                        break;
                    case 1:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20052b(i17, 0.0f);
                        break;
                    case 2:
                        i14 = i14;
                        if (m19948a((C7660o2<T>) t, i15)) {
                            j2 = C7543a4.m20352b(t, j5);
                            b2 = AbstractC7639m0.m20036d(i17, j2);
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i14 = i14;
                        if (m19948a((C7660o2<T>) t, i15)) {
                            j3 = C7543a4.m20352b(t, j5);
                            b2 = AbstractC7639m0.m20031e(i17, j3);
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i14 = i14;
                        if (m19948a((C7660o2<T>) t, i15)) {
                            i9 = C7543a4.m20367a(t, j5);
                            b2 = AbstractC7639m0.m20028f(i17, i9);
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20023g(i17, 0L);
                        break;
                    case 6:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20016i(i17, 0);
                        break;
                    case 7:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20047b(i17, true);
                        break;
                    case 8:
                        i14 = i14;
                        if (m19948a((C7660o2<T>) t, i15)) {
                            Object f = C7543a4.m20335f(t, j5);
                            str2 = f;
                            if (f instanceof AbstractC7539a0) {
                                obj2 = f;
                                b2 = AbstractC7639m0.m20040c(i17, (AbstractC7539a0) obj2);
                                break;
                            }
                            b2 = AbstractC7639m0.m20048b(i17, str2);
                            break;
                        } else {
                            continue;
                        }
                    case 9:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = C7571d3.m20272a(i17, C7543a4.m20335f(t, j5), m19959a(i15));
                        break;
                    case 10:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        obj2 = C7543a4.m20335f(t, j5);
                        b2 = AbstractC7639m0.m20040c(i17, (AbstractC7539a0) obj2);
                        break;
                    case 11:
                        i14 = i14;
                        if (m19948a((C7660o2<T>) t, i15)) {
                            i10 = C7543a4.m20367a(t, j5);
                            b2 = AbstractC7639m0.m20024g(i17, i10);
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i14 = i14;
                        if (m19948a((C7660o2<T>) t, i15)) {
                            i11 = C7543a4.m20367a(t, j5);
                            b2 = AbstractC7639m0.m20011k(i17, i11);
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20013j(i17, 0);
                        break;
                    case 14:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20019h(i17, 0L);
                        break;
                    case 15:
                        i14 = i14;
                        if (m19948a((C7660o2<T>) t, i15)) {
                            i12 = C7543a4.m20367a(t, j5);
                            b2 = AbstractC7639m0.m20020h(i17, i12);
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i14 = i14;
                        if (m19948a((C7660o2<T>) t, i15)) {
                            j4 = C7543a4.m20352b(t, j5);
                            b2 = AbstractC7639m0.m20027f(i17, j4);
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i14 = i14;
                        if (!m19948a((C7660o2<T>) t, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20038c(i17, (AbstractC7627k2) C7543a4.m20335f(t, j5), m19959a(i15));
                        break;
                    case 18:
                    case 23:
                    case 32:
                        b2 = C7571d3.m20227i(i17, m19944a(t, j5), false);
                        break;
                    case 19:
                    case 24:
                    case 31:
                        b2 = C7571d3.m20230h(i17, m19944a(t, j5), false);
                        break;
                    case 20:
                        b2 = C7571d3.m20265a(i17, (List<Long>) m19944a(t, j5), false);
                        break;
                    case 21:
                        b2 = C7571d3.m20251b(i17, (List<Long>) m19944a(t, j5), false);
                        break;
                    case 22:
                        b2 = C7571d3.m20239e(i17, m19944a(t, j5), false);
                        break;
                    case 25:
                        b2 = C7571d3.m20224j(i17, m19944a(t, j5), false);
                        break;
                    case 26:
                        b2 = C7571d3.m20271a(i17, m19944a(t, j5));
                        break;
                    case 27:
                        b2 = C7571d3.m20270a(i17, (List<?>) m19944a(t, j5), m19959a(i15));
                        break;
                    case 28:
                        b2 = C7571d3.m20256b(i17, m19944a(t, j5));
                        break;
                    case 29:
                        b2 = C7571d3.m20236f(i17, m19944a(t, j5), false);
                        break;
                    case 30:
                        b2 = C7571d3.m20243d(i17, m19944a(t, j5), false);
                        break;
                    case 33:
                        b2 = C7571d3.m20233g(i17, m19944a(t, j5), false);
                        break;
                    case 34:
                        b2 = C7571d3.m20247c(i17, m19944a(t, j5), false);
                        break;
                    case 35:
                        int i19 = C7571d3.m20226i((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (i19 > 0) {
                            i13 = i19;
                            if (this.f17993i) {
                                i13 = i19;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        int h = C7571d3.m20229h((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (h > 0) {
                            i13 = h;
                            if (this.f17993i) {
                                i13 = h;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        int a = C7571d3.m20259a((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (a > 0) {
                            i13 = a;
                            if (this.f17993i) {
                                i13 = a;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        int b3 = C7571d3.m20250b((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (b3 > 0) {
                            i13 = b3;
                            if (this.f17993i) {
                                i13 = b3;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        int e = C7571d3.m20238e((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (e > 0) {
                            i13 = e;
                            if (this.f17993i) {
                                i13 = e;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        int i20 = C7571d3.m20226i((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (i20 > 0) {
                            i13 = i20;
                            if (this.f17993i) {
                                i13 = i20;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        int h2 = C7571d3.m20229h((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (h2 > 0) {
                            i13 = h2;
                            if (this.f17993i) {
                                i13 = h2;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        int j6 = C7571d3.m20223j((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (j6 > 0) {
                            i13 = j6;
                            if (this.f17993i) {
                                i13 = j6;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        int f2 = C7571d3.m20235f((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (f2 > 0) {
                            i13 = f2;
                            if (this.f17993i) {
                                i13 = f2;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        int d2 = C7571d3.m20242d((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (d2 > 0) {
                            i13 = d2;
                            if (this.f17993i) {
                                i13 = d2;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        int h3 = C7571d3.m20229h((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (h3 > 0) {
                            i13 = h3;
                            if (this.f17993i) {
                                i13 = h3;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        int i21 = C7571d3.m20226i((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (i21 > 0) {
                            i13 = i21;
                            if (this.f17993i) {
                                i13 = i21;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        int g = C7571d3.m20232g((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (g > 0) {
                            i13 = g;
                            if (this.f17993i) {
                                i13 = g;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        int c = C7571d3.m20246c((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (c > 0) {
                            i13 = c;
                            if (this.f17993i) {
                                i13 = c;
                                unsafe.putInt(t, i18, i13);
                            }
                            b2 = AbstractC7639m0.m20032e(i17) + AbstractC7639m0.m20025g(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        b2 = C7571d3.m20255b(i17, m19944a(t, j5), m19959a(i15));
                        break;
                    case 50:
                        b2 = this.f18001q.mo20156a(i17, C7543a4.m20335f(t, j5), m19938b(i15));
                        break;
                    case 51:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20053b(i17, 0.0d);
                        break;
                    case 52:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20052b(i17, 0.0f);
                        break;
                    case 53:
                        i14 = i14;
                        if (m19947a((C7660o2<T>) t, i17, i15)) {
                            j2 = m19925e(t, j5);
                            b2 = AbstractC7639m0.m20036d(i17, j2);
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i14 = i14;
                        if (m19947a((C7660o2<T>) t, i17, i15)) {
                            j3 = m19925e(t, j5);
                            b2 = AbstractC7639m0.m20031e(i17, j3);
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i14 = i14;
                        if (m19947a((C7660o2<T>) t, i17, i15)) {
                            i9 = m19928d(t, j5);
                            b2 = AbstractC7639m0.m20028f(i17, i9);
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20023g(i17, 0L);
                        break;
                    case 57:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20016i(i17, 0);
                        break;
                    case 58:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20047b(i17, true);
                        break;
                    case 59:
                        i14 = i14;
                        if (m19947a((C7660o2<T>) t, i17, i15)) {
                            Object f3 = C7543a4.m20335f(t, j5);
                            str2 = f3;
                            if (f3 instanceof AbstractC7539a0) {
                                obj2 = f3;
                                b2 = AbstractC7639m0.m20040c(i17, (AbstractC7539a0) obj2);
                                break;
                            }
                            b2 = AbstractC7639m0.m20048b(i17, str2);
                            break;
                        } else {
                            continue;
                        }
                    case 60:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = C7571d3.m20272a(i17, C7543a4.m20335f(t, j5), m19959a(i15));
                        break;
                    case 61:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        obj2 = C7543a4.m20335f(t, j5);
                        b2 = AbstractC7639m0.m20040c(i17, (AbstractC7539a0) obj2);
                        break;
                    case 62:
                        i14 = i14;
                        if (m19947a((C7660o2<T>) t, i17, i15)) {
                            i10 = m19928d(t, j5);
                            b2 = AbstractC7639m0.m20024g(i17, i10);
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i14 = i14;
                        if (m19947a((C7660o2<T>) t, i17, i15)) {
                            i11 = m19928d(t, j5);
                            b2 = AbstractC7639m0.m20011k(i17, i11);
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20013j(i17, 0);
                        break;
                    case 65:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20019h(i17, 0L);
                        break;
                    case 66:
                        i14 = i14;
                        if (m19947a((C7660o2<T>) t, i17, i15)) {
                            i12 = m19928d(t, j5);
                            b2 = AbstractC7639m0.m20020h(i17, i12);
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i14 = i14;
                        if (m19947a((C7660o2<T>) t, i17, i15)) {
                            j4 = m19925e(t, j5);
                            b2 = AbstractC7639m0.m20027f(i17, j4);
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i14 = i14;
                        if (!m19947a((C7660o2<T>) t, i17, i15)) {
                            continue;
                        }
                        b2 = AbstractC7639m0.m20038c(i17, (AbstractC7627k2) C7543a4.m20335f(t, j5), m19959a(i15));
                        break;
                    default:
                        i14 = i14;
                        continue;
                }
                i14 += b2;
            }
            return i14 + m19951a((AbstractC7696t3) this.f17999o, (Object) t);
        }
        Unsafe unsafe2 = f17984r;
        int i22 = 0;
        int i23 = 0;
        int i24 = -1;
        int i25 = 0;
        while (i22 < this.f17985a.length) {
            int d3 = m19929d(i22);
            int[] iArr = this.f17985a;
            int i26 = iArr[i22];
            int i27 = (d3 & 267386880) >>> 20;
            if (i27 <= 17) {
                i2 = iArr[i22 + 2];
                int i28 = i2 & 1048575;
                i = 1 << (i2 >>> 20);
                if (i28 != i24) {
                    i25 = unsafe2.getInt(t, i28);
                    i24 = i28;
                }
            } else {
                i2 = (!this.f17993i || i27 < EnumC7540a1.DOUBLE_LIST_PACKED.m20376a() || i27 > EnumC7540a1.SINT64_LIST_PACKED.m20376a()) ? 0 : this.f17985a[i22 + 2] & 1048575;
                i = 0;
                i25 = i25;
            }
            long j7 = d3 & 1048575;
            switch (i27) {
                case 0:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i23 += AbstractC7639m0.m20053b(i26, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i23 += AbstractC7639m0.m20052b(i26, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i3 = AbstractC7639m0.m20036d(i26, unsafe2.getLong(t, j7));
                        i23 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i3 = AbstractC7639m0.m20031e(i26, unsafe2.getLong(t, j7));
                        i23 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i3 = AbstractC7639m0.m20028f(i26, unsafe2.getInt(t, j7));
                        i23 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i3 = AbstractC7639m0.m20023g(i26, 0L);
                        i23 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i23 += AbstractC7639m0.m20016i(i26, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i23 = i23;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    b = AbstractC7639m0.m20047b(i26, true);
                    i23 += b;
                    break;
                case 8:
                    i23 = i23;
                    if ((i25 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe2.getObject(t, j7);
                        str = object;
                        if (object instanceof AbstractC7539a0) {
                            obj = object;
                            b = AbstractC7639m0.m20040c(i26, (AbstractC7539a0) obj);
                            i23 += b;
                            break;
                        }
                        b = AbstractC7639m0.m20048b(i26, str);
                        i23 += b;
                    }
                case 9:
                    i23 = i23;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    b = C7571d3.m20272a(i26, unsafe2.getObject(t, j7), m19959a(i22));
                    i23 += b;
                    break;
                case 10:
                    i23 = i23;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    obj = unsafe2.getObject(t, j7);
                    b = AbstractC7639m0.m20040c(i26, (AbstractC7539a0) obj);
                    i23 += b;
                    break;
                case 11:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i4 = unsafe2.getInt(t, j7);
                        b = AbstractC7639m0.m20024g(i26, i4);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i5 = unsafe2.getInt(t, j7);
                        b = AbstractC7639m0.m20011k(i26, i5);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i23 = i23;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    i6 = AbstractC7639m0.m20013j(i26, 0);
                    i23 += i6;
                    break;
                case 14:
                    i23 = i23;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    b = AbstractC7639m0.m20019h(i26, 0L);
                    i23 += b;
                    break;
                case 15:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        i7 = unsafe2.getInt(t, j7);
                        b = AbstractC7639m0.m20020h(i26, i7);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i23 = i23;
                    if ((i25 & i) != 0) {
                        j = unsafe2.getLong(t, j7);
                        b = AbstractC7639m0.m20027f(i26, j);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i23 = i23;
                    if ((i25 & i) == 0) {
                        break;
                    }
                    b = AbstractC7639m0.m20038c(i26, (AbstractC7627k2) unsafe2.getObject(t, j7), m19959a(i22));
                    i23 += b;
                    break;
                case 18:
                case 23:
                case 32:
                    b = C7571d3.m20227i(i26, (List) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 19:
                case 24:
                case 31:
                    b = C7571d3.m20230h(i26, (List) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 20:
                    b = C7571d3.m20265a(i26, (List<Long>) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 21:
                    b = C7571d3.m20251b(i26, (List<Long>) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 22:
                    b = C7571d3.m20239e(i26, (List) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 25:
                    b = C7571d3.m20224j(i26, (List) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 26:
                    b = C7571d3.m20271a(i26, (List) unsafe2.getObject(t, j7));
                    i23 += b;
                    break;
                case 27:
                    b = C7571d3.m20270a(i26, (List<?>) unsafe2.getObject(t, j7), m19959a(i22));
                    i23 += b;
                    break;
                case 28:
                    b = C7571d3.m20256b(i26, (List) unsafe2.getObject(t, j7));
                    i23 += b;
                    break;
                case 29:
                    b = C7571d3.m20236f(i26, (List) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 30:
                    b = C7571d3.m20243d(i26, (List) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 33:
                    b = C7571d3.m20233g(i26, (List) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 34:
                    b = C7571d3.m20247c(i26, (List) unsafe2.getObject(t, j7), false);
                    i23 += b;
                    break;
                case 35:
                    int i29 = C7571d3.m20226i((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (i29 > 0) {
                        i8 = i29;
                        if (this.f17993i) {
                            i8 = i29;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int h4 = C7571d3.m20229h((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (h4 > 0) {
                        i8 = h4;
                        if (this.f17993i) {
                            i8 = h4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int a2 = C7571d3.m20259a((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (a2 > 0) {
                        i8 = a2;
                        if (this.f17993i) {
                            i8 = a2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int b4 = C7571d3.m20250b((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (b4 > 0) {
                        i8 = b4;
                        if (this.f17993i) {
                            i8 = b4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int e2 = C7571d3.m20238e((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (e2 > 0) {
                        i8 = e2;
                        if (this.f17993i) {
                            i8 = e2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int i30 = C7571d3.m20226i((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (i30 > 0) {
                        i8 = i30;
                        if (this.f17993i) {
                            i8 = i30;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int h5 = C7571d3.m20229h((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (h5 > 0) {
                        i8 = h5;
                        if (this.f17993i) {
                            i8 = h5;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int j8 = C7571d3.m20223j((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (j8 > 0) {
                        i8 = j8;
                        if (this.f17993i) {
                            i8 = j8;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int f4 = C7571d3.m20235f((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (f4 > 0) {
                        i8 = f4;
                        if (this.f17993i) {
                            i8 = f4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int d4 = C7571d3.m20242d((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (d4 > 0) {
                        i8 = d4;
                        if (this.f17993i) {
                            i8 = d4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int h6 = C7571d3.m20229h((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (h6 > 0) {
                        i8 = h6;
                        if (this.f17993i) {
                            i8 = h6;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int i31 = C7571d3.m20226i((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (i31 > 0) {
                        i8 = i31;
                        if (this.f17993i) {
                            i8 = i31;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int g2 = C7571d3.m20232g((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (g2 > 0) {
                        i8 = g2;
                        if (this.f17993i) {
                            i8 = g2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int c2 = C7571d3.m20246c((List) unsafe2.getObject(t, j7));
                    i23 = i23;
                    if (c2 > 0) {
                        i8 = c2;
                        if (this.f17993i) {
                            i8 = c2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        i6 = AbstractC7639m0.m20032e(i26) + AbstractC7639m0.m20025g(i8) + i8;
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    b = C7571d3.m20255b(i26, (List) unsafe2.getObject(t, j7), m19959a(i22));
                    i23 += b;
                    break;
                case 50:
                    b = this.f18001q.mo20156a(i26, unsafe2.getObject(t, j7), m19938b(i22));
                    i23 += b;
                    break;
                case 51:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        b = AbstractC7639m0.m20053b(i26, 0.0d);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        i6 = AbstractC7639m0.m20052b(i26, 0.0f);
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        b = AbstractC7639m0.m20036d(i26, m19925e(t, j7));
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        b = AbstractC7639m0.m20031e(i26, m19925e(t, j7));
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        b = AbstractC7639m0.m20028f(i26, m19928d(t, j7));
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        b = AbstractC7639m0.m20023g(i26, 0L);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        i6 = AbstractC7639m0.m20016i(i26, 0);
                        i23 += i6;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i23 = i23;
                    if (!m19947a((C7660o2<T>) t, i26, i22)) {
                        break;
                    }
                    b = AbstractC7639m0.m20047b(i26, true);
                    i23 += b;
                    break;
                case 59:
                    i23 = i23;
                    if (!m19947a((C7660o2<T>) t, i26, i22)) {
                        break;
                    } else {
                        Object object2 = unsafe2.getObject(t, j7);
                        str = object2;
                        if (object2 instanceof AbstractC7539a0) {
                            obj = object2;
                            b = AbstractC7639m0.m20040c(i26, (AbstractC7539a0) obj);
                            i23 += b;
                            break;
                        }
                        b = AbstractC7639m0.m20048b(i26, str);
                        i23 += b;
                    }
                case 60:
                    i23 = i23;
                    if (!m19947a((C7660o2<T>) t, i26, i22)) {
                        break;
                    }
                    b = C7571d3.m20272a(i26, unsafe2.getObject(t, j7), m19959a(i22));
                    i23 += b;
                    break;
                case 61:
                    i23 = i23;
                    if (!m19947a((C7660o2<T>) t, i26, i22)) {
                        break;
                    }
                    obj = unsafe2.getObject(t, j7);
                    b = AbstractC7639m0.m20040c(i26, (AbstractC7539a0) obj);
                    i23 += b;
                    break;
                case 62:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        i4 = m19928d(t, j7);
                        b = AbstractC7639m0.m20024g(i26, i4);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        i5 = m19928d(t, j7);
                        b = AbstractC7639m0.m20011k(i26, i5);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i23 = i23;
                    if (!m19947a((C7660o2<T>) t, i26, i22)) {
                        break;
                    }
                    i6 = AbstractC7639m0.m20013j(i26, 0);
                    i23 += i6;
                    break;
                case 65:
                    i23 = i23;
                    if (!m19947a((C7660o2<T>) t, i26, i22)) {
                        break;
                    }
                    b = AbstractC7639m0.m20019h(i26, 0L);
                    i23 += b;
                    break;
                case 66:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        i7 = m19928d(t, j7);
                        b = AbstractC7639m0.m20020h(i26, i7);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i23 = i23;
                    if (m19947a((C7660o2<T>) t, i26, i22)) {
                        j = m19925e(t, j7);
                        b = AbstractC7639m0.m20027f(i26, j);
                        i23 += b;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i23 = i23;
                    if (!m19947a((C7660o2<T>) t, i26, i22)) {
                        break;
                    }
                    b = AbstractC7639m0.m20038c(i26, (AbstractC7627k2) unsafe2.getObject(t, j7), m19959a(i22));
                    i23 += b;
                    break;
                default:
                    i23 = i23;
                    break;
            }
            i22 += 4;
            i25 = i25;
        }
        int a3 = i23 + m19951a((AbstractC7696t3) this.f17999o, (Object) t);
        int i32 = a3;
        if (this.f17991g) {
            i32 = a3 + this.f18000p.mo19800a(t).m19705f();
        }
        return i32;
    }

    /* renamed from: c */
    public final AbstractC7619j1<?> m19932c(int i) {
        return (AbstractC7619j1) this.f17986b[((i / 4) << 1) + 1];
    }

    /* renamed from: c */
    public final boolean m19930c(T t, T t2, int i) {
        return m19948a((C7660o2<T>) t, i) == m19948a((C7660o2<T>) t2, i);
    }

    /* renamed from: d */
    public final int m19929d(int i) {
        return this.f17985a[i + 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: d */
    public final boolean mo19858d(T t) {
        int i;
        boolean z;
        int[] iArr = this.f17994j;
        if (iArr == null || iArr.length == 0) {
            return true;
        }
        int i2 = -1;
        int i3 = 0;
        for (int i4 : iArr) {
            int f = m19924f(i4);
            int d = m19929d(f);
            if (!this.f17992h) {
                int i5 = this.f17985a[f + 2];
                int i6 = i5 & 1048575;
                i = 1 << (i5 >>> 20);
                if (i6 != i2) {
                    i3 = f17984r.getInt(t, i6);
                    i2 = i6;
                }
            } else {
                i = 0;
            }
            if (((268435456 & d) != 0) && !m19946a((C7660o2<T>) t, f, i3, i)) {
                return false;
            }
            int i7 = (267386880 & d) >>> 20;
            if (i7 != 9 && i7 != 17) {
                if (i7 != 27) {
                    if (i7 == 60 || i7 == 68) {
                        if (m19947a((C7660o2<T>) t, i4, f) && !m19945a(t, d, m19959a(f))) {
                            return false;
                        }
                    } else if (i7 != 49) {
                        if (i7 == 50 && !this.f18001q.mo20150e(C7543a4.m20335f(t, d & 1048575)).isEmpty()) {
                            this.f18001q.mo20155a(m19938b(f));
                            throw null;
                        }
                    }
                }
                List list = (List) C7543a4.m20335f(t, d & 1048575);
                if (!list.isEmpty()) {
                    AbstractC7554b3 a = m19959a(f);
                    for (int i8 = 0; i8 < list.size(); i8++) {
                        if (!a.mo19858d(list.get(i8))) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (!z) {
                    return false;
                }
            } else if (m19946a((C7660o2<T>) t, f, i3, i) && !m19945a(t, d, m19959a(f))) {
                return false;
            }
        }
        return !this.f17991g || this.f18000p.mo19800a(t).m19707d();
    }

    /* renamed from: e */
    public final int m19927e(int i) {
        return this.f17985a[i + 2];
    }

    /* renamed from: f */
    public final int m19924f(int i) {
        int i2 = this.f17987c;
        if (i < i2) {
            return -1;
        }
        int i3 = this.f17989e;
        if (i < i3) {
            int i4 = (i - i2) << 2;
            if (this.f17985a[i4] == i) {
                return i4;
            }
            return -1;
        } else if (i > this.f17988d) {
            return -1;
        } else {
            int i5 = i3 - i2;
            int length = (this.f17985a.length / 4) - 1;
            while (i5 <= length) {
                int i6 = (length + i5) >>> 1;
                int i7 = i6 << 2;
                int i8 = this.f17985a[i7];
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
