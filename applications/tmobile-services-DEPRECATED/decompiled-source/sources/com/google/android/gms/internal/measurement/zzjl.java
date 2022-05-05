package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjl.class */
public final class zzjl<T> implements zzjz<T> {

    /* renamed from: q */
    private static final int[] f8558q = new int[0];

    /* renamed from: r */
    private static final Unsafe f8559r = zzkx.m12065t();

    /* renamed from: a */
    private final int[] f8560a;

    /* renamed from: b */
    private final Object[] f8561b;

    /* renamed from: c */
    private final int f8562c;

    /* renamed from: d */
    private final int f8563d;

    /* renamed from: e */
    private final zzjh f8564e;

    /* renamed from: f */
    private final boolean f8565f;

    /* renamed from: g */
    private final boolean f8566g;

    /* renamed from: h */
    private final boolean f8567h;

    /* renamed from: i */
    private final int[] f8568i;

    /* renamed from: j */
    private final int f8569j;

    /* renamed from: k */
    private final int f8570k;

    /* renamed from: l */
    private final zzjp f8571l;

    /* renamed from: m */
    private final zzir f8572m;

    /* renamed from: n */
    private final zzkr<?, ?> f8573n;

    /* renamed from: o */
    private final zzho<?> f8574o;

    /* renamed from: p */
    private final zzje f8575p;

    private zzjl(int[] iArr, Object[] objArr, int i, int i2, zzjh zzjhVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzjp zzjpVar, zzir zzirVar, zzkr<?, ?> zzkrVar, zzho<?> zzhoVar, zzje zzjeVar) {
        this.f8560a = iArr;
        this.f8561b = objArr;
        this.f8562c = i;
        this.f8563d = i2;
        this.f8566g = zzjhVar instanceof zzhz;
        this.f8567h = z;
        this.f8565f = zzhoVar != null && zzhoVar.mo12465h(zzjhVar);
        this.f8568i = iArr2;
        this.f8569j = i3;
        this.f8570k = i4;
        this.f8571l = zzjpVar;
        this.f8572m = zzirVar;
        this.f8573n = zzkrVar;
        this.f8574o = zzhoVar;
        this.f8564e = zzjhVar;
        this.f8575p = zzjeVar;
    }

    /* renamed from: A */
    private final void m12320A(T t, T t2, int i) {
        long P = m12305P(i) & 1048575;
        if (m12319B(t2, i)) {
            Object F = zzkx.m12094F(t, P);
            Object F2 = zzkx.m12094F(t2, P);
            if (F != null && F2 != null) {
                zzkx.m12075j(t, P, zzic.m12393e(F, F2));
                m12312I(t, i);
            } else if (F2 != null) {
                zzkx.m12075j(t, P, F2);
                m12312I(t, i);
            }
        }
    }

    /* renamed from: B */
    private final boolean m12319B(T t, int i) {
        int R = m12303R(i);
        long j = R & 1048575;
        if (j != 1048575) {
            return (zzkx.m12083b(t, j) & (1 << (R >>> 20))) != 0;
        }
        int P = m12305P(i);
        long j2 = P & 1048575;
        switch ((P & 267386880) >>> 20) {
            case 0:
                return zzkx.m12097C(t, j2) != 0.0d;
            case 1:
                return zzkx.m12061x(t, j2) != 0.0f;
            case 2:
                return zzkx.m12070o(t, j2) != 0;
            case 3:
                return zzkx.m12070o(t, j2) != 0;
            case 4:
                return zzkx.m12083b(t, j2) != 0;
            case 5:
                return zzkx.m12070o(t, j2) != 0;
            case 6:
                return zzkx.m12083b(t, j2) != 0;
            case 7:
                return zzkx.m12062w(t, j2);
            case 8:
                Object F = zzkx.m12094F(t, j2);
                if (F instanceof String) {
                    return !((String) F).isEmpty();
                }
                if (F instanceof zzgr) {
                    return !zzgr.f8462g.equals(F);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzkx.m12094F(t, j2) != null;
            case 10:
                return !zzgr.f8462g.equals(zzkx.m12094F(t, j2));
            case 11:
                return zzkx.m12083b(t, j2) != 0;
            case 12:
                return zzkx.m12083b(t, j2) != 0;
            case 13:
                return zzkx.m12083b(t, j2) != 0;
            case 14:
                return zzkx.m12070o(t, j2) != 0;
            case 15:
                return zzkx.m12083b(t, j2) != 0;
            case 16:
                return zzkx.m12070o(t, j2) != 0;
            case 17:
                return zzkx.m12094F(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: C */
    private final boolean m12318C(T t, int i, int i2) {
        return zzkx.m12083b(t, (long) (m12303R(i2) & 1048575)) == i;
    }

    /* renamed from: D */
    private final boolean m12317D(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m12319B(t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: E */
    private static boolean m12316E(Object obj, int i, zzjz zzjzVar) {
        return zzjzVar.mo12260c(zzkx.m12094F(obj, i & 1048575));
    }

    /* renamed from: F */
    private static <T> double m12315F(T t, long j) {
        return ((Double) zzkx.m12094F(t, j)).doubleValue();
    }

    /* renamed from: G */
    private final int m12314G(int i, int i2) {
        int length = (this.f8560a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f8560a[i4];
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

    /* renamed from: H */
    private final Object m12313H(int i) {
        return this.f8561b[(i / 3) << 1];
    }

    /* renamed from: I */
    private final void m12312I(T t, int i) {
        int R = m12303R(i);
        long j = 1048575 & R;
        if (j != 1048575) {
            zzkx.m12077h(t, j, (1 << (R >>> 20)) | zzkx.m12083b(t, j));
        }
    }

    /* renamed from: J */
    private final void m12311J(T t, int i, int i2) {
        zzkx.m12077h(t, m12303R(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0959  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0963  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m12310K(T r9, com.google.android.gms.internal.measurement.zzlo r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjl.m12310K(java.lang.Object, com.google.android.gms.internal.measurement.zzlo):void");
    }

    /* renamed from: L */
    private final void m12309L(T t, T t2, int i) {
        int P = m12305P(i);
        int i2 = this.f8560a[i];
        long j = P & 1048575;
        if (m12318C(t2, i2, i)) {
            Object obj = null;
            if (m12318C(t, i2, i)) {
                obj = zzkx.m12094F(t, j);
            }
            Object F = zzkx.m12094F(t2, j);
            if (obj != null && F != null) {
                zzkx.m12075j(t, j, zzic.m12393e(obj, F));
                m12311J(t, i2, i);
            } else if (F != null) {
                zzkx.m12075j(t, j, F);
                m12311J(t, i2, i);
            }
        }
    }

    /* renamed from: M */
    private static <T> float m12308M(T t, long j) {
        return ((Float) zzkx.m12094F(t, j)).floatValue();
    }

    /* renamed from: N */
    private final zzid m12307N(int i) {
        return (zzid) this.f8561b[((i / 3) << 1) + 1];
    }

    /* renamed from: O */
    private final boolean m12306O(T t, T t2, int i) {
        return m12319B(t, i) == m12319B(t2, i);
    }

    /* renamed from: P */
    private final int m12305P(int i) {
        return this.f8560a[i + 1];
    }

    /* renamed from: Q */
    private static <T> int m12304Q(T t, long j) {
        return ((Integer) zzkx.m12094F(t, j)).intValue();
    }

    /* renamed from: R */
    private final int m12303R(int i) {
        return this.f8560a[i + 2];
    }

    /* renamed from: S */
    private static <T> long m12302S(T t, long j) {
        return ((Long) zzkx.m12094F(t, j)).longValue();
    }

    /* renamed from: T */
    private static zzku m12301T(Object obj) {
        zzhz zzhzVar = (zzhz) obj;
        zzku zzkuVar = zzhzVar.zzb;
        zzku zzkuVar2 = zzkuVar;
        if (zzkuVar == zzku.m12113a()) {
            zzkuVar2 = zzku.m12107g();
            zzhzVar.zzb = zzkuVar2;
        }
        return zzkuVar2;
    }

    /* renamed from: U */
    private static boolean m12300U(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: V */
    private static <T> boolean m12299V(T t, long j) {
        return ((Boolean) zzkx.m12094F(t, j)).booleanValue();
    }

    /* renamed from: W */
    private final int m12298W(int i) {
        if (i < this.f8562c || i > this.f8563d) {
            return -1;
        }
        return m12314G(i, 0);
    }

    /* renamed from: j */
    private final int m12297j(int i, int i2) {
        if (i < this.f8562c || i > this.f8563d) {
            return -1;
        }
        return m12314G(i, i2);
    }

    /* renamed from: k */
    private static <UT, UB> int m12296k(zzkr<UT, UB> zzkrVar, T t) {
        return zzkrVar.mo12115s(zzkrVar.mo12123k(t));
    }

    /* renamed from: l */
    private final int m12295l(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzgm zzgmVar) throws IOException {
        Unsafe unsafe = f8559r;
        long j2 = this.f8560a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzgn.m12643m(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzgn.m12641o(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = zzgn.m12645k(bArr, i, zzgmVar);
                    unsafe.putObject(t, j, Long.valueOf(zzgmVar.f8454b));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = zzgn.m12647i(bArr, i, zzgmVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzgmVar.f8453a));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzgn.m12644l(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzgn.m12648h(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = zzgn.m12645k(bArr, i, zzgmVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzgmVar.f8454b != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = zzgn.m12647i(bArr, i, zzgmVar);
                    int i9 = zzgmVar.f8453a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || zzla.m12040g(bArr, i, i + i9)) {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzic.f8533a));
                        i += i9;
                    } else {
                        throw zzih.m12378h();
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = zzgn.m12649g(m12289r(i8), bArr, i, i2, zzgmVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzgmVar.f8455c);
                    } else {
                        unsafe.putObject(t, j, zzic.m12393e(object, zzgmVar.f8455c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = zzgn.m12639q(bArr, i, zzgmVar);
                    unsafe.putObject(t, j, zzgmVar.f8455c);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzgn.m12647i(bArr, i, zzgmVar);
                    int i10 = zzgmVar.f8453a;
                    zzid N = m12307N(i8);
                    if (N != null && !N.mo12387a(i10)) {
                        m12301T(t).m12111c(i3, Long.valueOf(i10));
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
                    i = zzgn.m12647i(bArr, i, zzgmVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzhd.m12606k(zzgmVar.f8453a)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = zzgn.m12645k(bArr, i, zzgmVar);
                    unsafe.putObject(t, j, Long.valueOf(zzhd.m12608b(zzgmVar.f8454b)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = zzgn.m12650f(m12289r(i8), bArr, i, i2, (i3 & (-8)) | 4, zzgmVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzgmVar.f8455c);
                    } else {
                        unsafe.putObject(t, j, zzic.m12393e(object2, zzgmVar.f8455c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x095f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x095c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x036c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0448 -> B:114:0x044d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x035c -> B:80:0x0362). Please submit an issue!!! */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m12294m(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.zzgm r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjl.m12294m(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.zzgm):int");
    }

    /* renamed from: n */
    private final <K, V> int m12293n(T t, byte[] bArr, int i, int i2, int i3, long j, zzgm zzgmVar) throws IOException {
        Unsafe unsafe = f8559r;
        Object H = m12313H(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.f8575p.mo12343c(object)) {
            obj = this.f8575p.mo12344b(H);
            this.f8575p.mo12340f(obj, object);
            unsafe.putObject(t, j, obj);
        }
        zzjc<?, ?> e = this.f8575p.mo12341e(H);
        Map<?, ?> a = this.f8575p.mo12345a(obj);
        int i4 = zzgn.m12647i(bArr, i, zzgmVar);
        int i5 = zzgmVar.f8453a;
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzih.m12385a();
        }
        int i6 = i5 + i4;
        Object obj2 = (K) e.f8553b;
        Object obj3 = (V) e.f8555d;
        while (i4 < i6) {
            int i7 = i4 + 1;
            byte b = bArr[i4];
            int i8 = i7;
            int i9 = b;
            if (b < 0) {
                i8 = zzgn.m12652d(b, bArr, i7, zzgmVar);
                i9 = zzgmVar.f8453a;
            }
            int i10 = i9 >>> 3;
            int i11 = i9 & 7;
            if (i10 != 1) {
                if (i10 == 2 && i11 == e.f8554c.zzb()) {
                    i4 = m12291p(bArr, i8, i2, e.f8554c, e.f8555d.getClass(), zzgmVar);
                    obj3 = (V) zzgmVar.f8455c;
                }
                i4 = zzgn.m12655a(i9, bArr, i8, i2, zzgmVar);
            } else if (i11 == e.f8552a.zzb()) {
                i4 = m12291p(bArr, i8, i2, e.f8552a, null, zzgmVar);
                obj2 = (K) zzgmVar.f8455c;
            } else {
                i4 = zzgn.m12655a(i9, bArr, i8, i2, zzgmVar);
            }
        }
        if (i4 == i6) {
            a.put(obj2, obj3);
            return i6;
        }
        throw zzih.m12379g();
    }

    /* renamed from: p */
    private static int m12291p(byte[] bArr, int i, int i2, zzli zzliVar, Class<?> cls, zzgm zzgmVar) throws IOException {
        int i3;
        switch (zzjo.f8580a[zzliVar.ordinal()]) {
            case 1:
                i3 = zzgn.m12645k(bArr, i, zzgmVar);
                zzgmVar.f8455c = Boolean.valueOf(zzgmVar.f8454b != 0);
                break;
            case 2:
                i3 = zzgn.m12639q(bArr, i, zzgmVar);
                break;
            case 3:
                zzgmVar.f8455c = Double.valueOf(zzgn.m12643m(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                zzgmVar.f8455c = Integer.valueOf(zzgn.m12648h(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                zzgmVar.f8455c = Long.valueOf(zzgn.m12644l(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                zzgmVar.f8455c = Float.valueOf(zzgn.m12641o(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = zzgn.m12647i(bArr, i, zzgmVar);
                zzgmVar.f8455c = Integer.valueOf(zzgmVar.f8453a);
                break;
            case 12:
            case 13:
                i3 = zzgn.m12645k(bArr, i, zzgmVar);
                zzgmVar.f8455c = Long.valueOf(zzgmVar.f8454b);
                break;
            case 14:
                i3 = zzgn.m12649g(zzjv.m12271a().m12270b(cls), bArr, i, i2, zzgmVar);
                break;
            case 15:
                i3 = zzgn.m12647i(bArr, i, zzgmVar);
                zzgmVar.f8455c = Integer.valueOf(zzhd.m12606k(zzgmVar.f8453a));
                break;
            case 16:
                i3 = zzgn.m12645k(bArr, i, zzgmVar);
                zzgmVar.f8455c = Long.valueOf(zzhd.m12608b(zzgmVar.f8454b));
                break;
            case 17:
                i3 = zzgn.m12640p(bArr, i, zzgmVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0948  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.measurement.zzjl<T> m12290q(java.lang.Class<T> r18, com.google.android.gms.internal.measurement.zzjf r19, com.google.android.gms.internal.measurement.zzjp r20, com.google.android.gms.internal.measurement.zzir r21, com.google.android.gms.internal.measurement.zzkr<?, ?> r22, com.google.android.gms.internal.measurement.zzho<?> r23, com.google.android.gms.internal.measurement.zzje r24) {
        /*
            Method dump skipped, instructions count: 2577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjl.m12290q(java.lang.Class, com.google.android.gms.internal.measurement.zzjf, com.google.android.gms.internal.measurement.zzjp, com.google.android.gms.internal.measurement.zzir, com.google.android.gms.internal.measurement.zzkr, com.google.android.gms.internal.measurement.zzho, com.google.android.gms.internal.measurement.zzje):com.google.android.gms.internal.measurement.zzjl");
    }

    /* renamed from: r */
    private final zzjz m12289r(int i) {
        int i2 = (i / 3) << 1;
        zzjz zzjzVar = (zzjz) this.f8561b[i2];
        if (zzjzVar != null) {
            return zzjzVar;
        }
        zzjz<T> b = zzjv.m12271a().m12270b((Class) this.f8561b[i2 + 1]);
        this.f8561b[i2] = b;
        return b;
    }

    /* renamed from: s */
    private final <K, V, UT, UB> UB m12288s(int i, int i2, Map<K, V> map, zzid zzidVar, UB ub, zzkr<UT, UB> zzkrVar) {
        zzjc<?, ?> e = this.f8575p.mo12341e(m12313H(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzidVar.mo12387a(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = zzkrVar.mo12132a();
                }
                zzgz v = zzgr.m12628v(zziz.m12354a(e, next.getKey(), next.getValue()));
                try {
                    zziz.m12353b(v.m12625b(), e, next.getKey(), next.getValue());
                    zzkrVar.mo12128e(ub2, i2, v.m12626a());
                    it.remove();
                    ub = ub2;
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        return ub;
    }

    /* renamed from: t */
    private final <UT, UB> UB m12287t(Object obj, int i, UB ub, zzkr<UT, UB> zzkrVar) {
        zzid N;
        int i2 = this.f8560a[i];
        Object F = zzkx.m12094F(obj, m12305P(i) & 1048575);
        if (!(F == null || (N = m12307N(i)) == null)) {
            return (UB) m12288s(i, i2, this.f8575p.mo12345a(F), N, ub, zzkrVar);
        }
        return ub;
    }

    /* renamed from: u */
    private static Field m12286u(Class<?> cls, String str) {
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

    /* renamed from: v */
    private static List<?> m12285v(Object obj, long j) {
        return (List) zzkx.m12094F(obj, j);
    }

    /* renamed from: w */
    private static void m12284w(int i, Object obj, zzlo zzloVar) throws IOException {
        if (obj instanceof String) {
            zzloVar.mo11986n(i, (String) obj);
        } else {
            zzloVar.mo12004J(i, (zzgr) obj);
        }
    }

    /* renamed from: x */
    private static <UT, UB> void m12283x(zzkr<UT, UB> zzkrVar, T t, zzlo zzloVar) throws IOException {
        zzkrVar.mo12126g(zzkrVar.mo12123k(t), zzloVar);
    }

    /* renamed from: y */
    private final <K, V> void m12282y(zzlo zzloVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzloVar.mo12002L(i, this.f8575p.mo12341e(m12313H(i2)), this.f8575p.mo12342d(obj));
        }
    }

    /* renamed from: z */
    private final void m12281z(Object obj, int i, zzka zzkaVar) throws IOException {
        if (m12300U(i)) {
            zzkx.m12075j(obj, i & 1048575, zzkaVar.mo12229f());
        } else if (this.f8566g) {
            zzkx.m12075j(obj, i & 1048575, zzkaVar.mo12233a());
        } else {
            zzkx.m12075j(obj, i & 1048575, zzkaVar.mo12225m());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: a */
    public final int mo12262a(T t) {
        int i;
        int i2;
        int length = this.f8560a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int P = m12305P(i4);
            int i5 = this.f8560a[i4];
            long j = 1048575 & P;
            int i6 = 37;
            switch ((P & 267386880) >>> 20) {
                case 0:
                    i = i3 * 53;
                    i2 = zzic.m12396b(Double.doubleToLongBits(zzkx.m12097C(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(zzkx.m12061x(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = zzic.m12396b(zzkx.m12070o(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = zzic.m12396b(zzkx.m12070o(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = zzkx.m12083b(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = zzic.m12396b(zzkx.m12070o(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = zzkx.m12083b(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = zzic.m12395c(zzkx.m12062w(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) zzkx.m12094F(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object F = zzkx.m12094F(t, j);
                    if (F != null) {
                        i6 = F.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = zzkx.m12094F(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = zzkx.m12083b(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = zzkx.m12083b(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = zzkx.m12083b(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = zzic.m12396b(zzkx.m12070o(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = zzkx.m12083b(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = zzic.m12396b(zzkx.m12070o(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object F2 = zzkx.m12094F(t, j);
                    if (F2 != null) {
                        i6 = F2.hashCode();
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
                    i2 = zzkx.m12094F(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = zzkx.m12094F(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzic.m12396b(Double.doubleToLongBits(m12315F(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(m12308M(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzic.m12396b(m12302S(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzic.m12396b(m12302S(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m12304Q(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzic.m12396b(m12302S(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m12304Q(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzic.m12395c(m12299V(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) zzkx.m12094F(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzkx.m12094F(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzkx.m12094F(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m12304Q(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m12304Q(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m12304Q(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzic.m12396b(m12302S(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m12304Q(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzic.m12396b(m12302S(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (m12318C(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzkx.m12094F(t, j).hashCode();
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
        int hashCode = (i3 * 53) + this.f8573n.mo12123k(t).hashCode();
        int i7 = hashCode;
        if (this.f8565f) {
            i7 = (hashCode * 53) + this.f8574o.mo12471b(t).hashCode();
        }
        return i7;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: b */
    public final void mo12261b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f8560a.length; i += 3) {
                int P = m12305P(i);
                long j = 1048575 & P;
                int i2 = this.f8560a[i];
                switch ((P & 267386880) >>> 20) {
                    case 0:
                        if (m12319B(t2, i)) {
                            zzkx.m12079f(t, j, zzkx.m12097C(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m12319B(t2, i)) {
                            zzkx.m12078g(t, j, zzkx.m12061x(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m12319B(t2, i)) {
                            zzkx.m12076i(t, j, zzkx.m12070o(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m12319B(t2, i)) {
                            zzkx.m12076i(t, j, zzkx.m12070o(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m12319B(t2, i)) {
                            zzkx.m12077h(t, j, zzkx.m12083b(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m12319B(t2, i)) {
                            zzkx.m12076i(t, j, zzkx.m12070o(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m12319B(t2, i)) {
                            zzkx.m12077h(t, j, zzkx.m12083b(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m12319B(t2, i)) {
                            zzkx.m12074k(t, j, zzkx.m12062w(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m12319B(t2, i)) {
                            zzkx.m12075j(t, j, zzkx.m12094F(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        m12320A(t, t2, i);
                        break;
                    case 10:
                        if (m12319B(t2, i)) {
                            zzkx.m12075j(t, j, zzkx.m12094F(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m12319B(t2, i)) {
                            zzkx.m12077h(t, j, zzkx.m12083b(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m12319B(t2, i)) {
                            zzkx.m12077h(t, j, zzkx.m12083b(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m12319B(t2, i)) {
                            zzkx.m12077h(t, j, zzkx.m12083b(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m12319B(t2, i)) {
                            zzkx.m12076i(t, j, zzkx.m12070o(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m12319B(t2, i)) {
                            zzkx.m12077h(t, j, zzkx.m12083b(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m12319B(t2, i)) {
                            zzkx.m12076i(t, j, zzkx.m12070o(t2, j));
                            m12312I(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        m12320A(t, t2, i);
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
                        this.f8572m.mo12359c(t, t2, j);
                        break;
                    case 50:
                        zzkb.m12171n(this.f8575p, t, t2, j);
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
                        if (m12318C(t2, i2, i)) {
                            zzkx.m12075j(t, j, zzkx.m12094F(t2, j));
                            m12311J(t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        m12309L(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (m12318C(t2, i2, i)) {
                            zzkx.m12075j(t, j, zzkx.m12094F(t2, j));
                            m12311J(t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        m12309L(t, t2, i);
                        break;
                }
            }
            zzkb.m12170o(this.f8573n, t, t2);
            if (this.f8565f) {
                zzkb.m12172m(this.f8574o, t, t2);
                return;
            }
            return;
        }
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: c */
    public final boolean mo12260c(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f8569j; i3++) {
            int i4 = this.f8568i[i3];
            int i5 = this.f8560a[i4];
            int P = m12305P(i4);
            int i6 = this.f8560a[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f8559r.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & P) != 0) && !m12317D(t, i4, i, i2, i8)) {
                return false;
            }
            int i9 = (267386880 & P) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (m12318C(t, i5, i4) && !m12316E(t, P, m12289r(i4))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> d = this.f8575p.mo12342d(zzkx.m12094F(t, P & 1048575));
                            boolean z = true;
                            if (!d.isEmpty()) {
                                z = true;
                                if (this.f8575p.mo12341e(m12313H(i4)).f8554c.zza() == zzll.MESSAGE) {
                                    zzjz<T> zzjzVar = null;
                                    Iterator<?> it = d.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        zzjz<T> zzjzVar2 = zzjzVar;
                                        if (zzjzVar == null) {
                                            zzjzVar2 = zzjv.m12271a().m12270b(next.getClass());
                                        }
                                        zzjzVar = zzjzVar2;
                                        if (!zzjzVar2.mo12260c(next)) {
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
                List list = (List) zzkx.m12094F(t, P & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    zzjz r = m12289r(i4);
                    int i10 = 0;
                    while (true) {
                        z2 = true;
                        if (i10 >= list.size()) {
                            break;
                        } else if (!r.mo12260c(list.get(i10))) {
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
            } else if (m12317D(t, i4, i, i2, i8) && !m12316E(t, P, m12289r(i4))) {
                return false;
            }
        }
        return !this.f8565f || this.f8574o.mo12471b(t).m12445r();
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: d */
    public final void mo12259d(T t) {
        int i;
        int i2 = this.f8569j;
        while (true) {
            i = this.f8570k;
            if (i2 >= i) {
                break;
            }
            long P = m12305P(this.f8568i[i2]) & 1048575;
            Object F = zzkx.m12094F(t, P);
            if (F != null) {
                zzkx.m12075j(t, P, this.f8575p.mo12339g(F));
            }
            i2++;
        }
        int length = this.f8568i.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f8572m.mo12358e(t, this.f8568i[i3]);
        }
        this.f8573n.mo12117q(t);
        if (this.f8565f) {
            this.f8574o.mo12463j(t);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: e */
    public final int mo12258e(T t) {
        int i;
        int i2;
        int U;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int B;
        int i8;
        int i9;
        int i10;
        if (this.f8567h) {
            Unsafe unsafe = f8559r;
            int i11 = 0;
            for (int i12 = 0; i12 < this.f8560a.length; i12 += 3) {
                int P = m12305P(i12);
                int i13 = (P & 267386880) >>> 20;
                int i14 = this.f8560a[i12];
                long j = P & 1048575;
                if (i13 >= zzhu.DOUBLE_LIST_PACKED.zza() && i13 <= zzhu.SINT64_LIST_PACKED.zza()) {
                    int i15 = this.f8560a[i12 + 2];
                }
                switch (i13) {
                    case 0:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12562B(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 1:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12560C(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12536c0(i14, zzkx.m12070o(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12526i0(i14, zzkx.m12070o(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12521m0(i14, zzkx.m12083b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12516r0(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12507y0(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12551H(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            Object F = zzkx.m12094F(t, j);
                            if (F instanceof zzgr) {
                                B = zzhg.m12542U(i14, (zzgr) F);
                                break;
                            } else {
                                B = zzhg.m12552G(i14, (String) F);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 9:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzkb.m12188a(i14, zzkx.m12094F(t, j), m12289r(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12542U(i14, (zzgr) zzkx.m12094F(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12517q0(i14, zzkx.m12083b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12557D0(i14, zzkx.m12083b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12561B0(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12512v0(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12513u0(i14, zzkx.m12083b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12520n0(i14, zzkx.m12070o(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i11 = i11;
                        if (m12319B(t, i12)) {
                            B = zzhg.m12541V(i14, (zzjh) zzkx.m12094F(t, j), m12289r(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        B = zzkb.m12194U(i14, m12285v(t, j), false);
                        break;
                    case 19:
                        B = zzkb.m12197R(i14, m12285v(t, j), false);
                        break;
                    case 20:
                        B = zzkb.m12182d(i14, m12285v(t, j), false);
                        break;
                    case 21:
                        B = zzkb.m12165t(i14, m12285v(t, j), false);
                        break;
                    case 22:
                        B = zzkb.m12207H(i14, m12285v(t, j), false);
                        break;
                    case 23:
                        B = zzkb.m12194U(i14, m12285v(t, j), false);
                        break;
                    case 24:
                        B = zzkb.m12197R(i14, m12285v(t, j), false);
                        break;
                    case 25:
                        B = zzkb.m12191X(i14, m12285v(t, j), false);
                        break;
                    case 26:
                        B = zzkb.m12186b(i14, m12285v(t, j));
                        break;
                    case 27:
                        B = zzkb.m12184c(i14, m12285v(t, j), m12289r(i12));
                        break;
                    case 28:
                        B = zzkb.m12167r(i14, m12285v(t, j));
                        break;
                    case 29:
                        B = zzkb.m12203L(i14, m12285v(t, j), false);
                        break;
                    case 30:
                        B = zzkb.m12211D(i14, m12285v(t, j), false);
                        break;
                    case 31:
                        B = zzkb.m12197R(i14, m12285v(t, j), false);
                        break;
                    case 32:
                        B = zzkb.m12194U(i14, m12285v(t, j), false);
                        break;
                    case 33:
                        B = zzkb.m12200O(i14, m12285v(t, j), false);
                        break;
                    case 34:
                        B = zzkb.m12159z(i14, m12285v(t, j), false);
                        break;
                    case 35:
                        i10 = zzkb.m12193V((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        i10 = zzkb.m12196S((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        i10 = zzkb.m12180e((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        i10 = zzkb.m12164u((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        i10 = zzkb.m12206I((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        i10 = zzkb.m12193V((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        i10 = zzkb.m12196S((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        i10 = zzkb.m12190Y((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        i10 = zzkb.m12202M((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        i10 = zzkb.m12210E((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        i10 = zzkb.m12196S((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        i10 = zzkb.m12193V((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        i10 = zzkb.m12199P((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        i10 = zzkb.m12214A((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i10 > 0) {
                            i9 = zzhg.m12528h0(i14);
                            i8 = zzhg.m12518p0(i10);
                            B = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        B = zzkb.m12166s(i14, m12285v(t, j), m12289r(i12));
                        break;
                    case 50:
                        B = this.f8575p.mo12338h(i14, zzkx.m12094F(t, j), m12313H(i12));
                        break;
                    case 51:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12562B(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 52:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12560C(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 53:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12536c0(i14, m12302S(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12526i0(i14, m12302S(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12521m0(i14, m12304Q(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12516r0(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 57:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12507y0(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 58:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12551H(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 59:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            Object F2 = zzkx.m12094F(t, j);
                            if (F2 instanceof zzgr) {
                                B = zzhg.m12542U(i14, (zzgr) F2);
                                break;
                            } else {
                                B = zzhg.m12552G(i14, (String) F2);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 60:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzkb.m12188a(i14, zzkx.m12094F(t, j), m12289r(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 61:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12542U(i14, (zzgr) zzkx.m12094F(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 62:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12517q0(i14, m12304Q(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12557D0(i14, m12304Q(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12561B0(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 65:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12512v0(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 66:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12513u0(i14, m12304Q(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12520n0(i14, m12302S(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i11 = i11;
                        if (m12318C(t, i14, i12)) {
                            B = zzhg.m12541V(i14, (zzjh) zzkx.m12094F(t, j), m12289r(i12));
                            break;
                        } else {
                            continue;
                        }
                    default:
                        i11 = i11;
                        continue;
                }
                i11 += B;
            }
            return i11 + m12296k(this.f8573n, t);
        }
        Unsafe unsafe2 = f8559r;
        int i16 = 0;
        int i17 = 1048575;
        int i18 = 0;
        for (int i19 = 0; i19 < this.f8560a.length; i19 += 3) {
            int P2 = m12305P(i19);
            int[] iArr = this.f8560a;
            int i20 = iArr[i19];
            int i21 = (P2 & 267386880) >>> 20;
            if (i21 <= 17) {
                int i22 = iArr[i19 + 2];
                int i23 = i22 & 1048575;
                int i24 = 1 << (i22 >>> 20);
                i17 = i17;
                i = i24;
                if (i23 != i17) {
                    i18 = unsafe2.getInt(t, i23);
                    i17 = i23;
                    i = i24;
                }
            } else {
                i = 0;
                i17 = i17;
            }
            long j2 = P2 & 1048575;
            switch (i21) {
                case 0:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += zzhg.m12562B(i20, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += zzhg.m12560C(i20, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i16 = i16;
                    if ((i & i18) != 0) {
                        i2 = zzhg.m12536c0(i20, unsafe2.getLong(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i16 = i16;
                    if ((i & i18) != 0) {
                        i2 = zzhg.m12526i0(i20, unsafe2.getLong(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i16 = i16;
                    if ((i & i18) != 0) {
                        i2 = zzhg.m12521m0(i20, unsafe2.getInt(t, j2));
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i2 = zzhg.m12516r0(i20, 0L);
                        i16 += i2;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += zzhg.m12507y0(i20, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i16 += zzhg.m12551H(i20, true);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        U = object instanceof zzgr ? zzhg.m12542U(i20, (zzgr) object) : zzhg.m12552G(i20, (String) object);
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        U = zzkb.m12188a(i20, unsafe2.getObject(t, j2), m12289r(i19));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        U = zzhg.m12542U(i20, (zzgr) unsafe2.getObject(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        U = zzhg.m12517q0(i20, unsafe2.getInt(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        U = zzhg.m12557D0(i20, unsafe2.getInt(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        i3 = zzhg.m12561B0(i20, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        U = zzhg.m12512v0(i20, 0L);
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        U = zzhg.m12513u0(i20, unsafe2.getInt(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        U = zzhg.m12520n0(i20, unsafe2.getLong(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i16 = i16;
                    if ((i18 & i) != 0) {
                        U = zzhg.m12541V(i20, (zzjh) unsafe2.getObject(t, j2), m12289r(i19));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    U = zzkb.m12194U(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += U;
                    break;
                case 19:
                    i4 = zzkb.m12197R(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 20:
                    i4 = zzkb.m12182d(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 21:
                    i4 = zzkb.m12165t(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 22:
                    i4 = zzkb.m12207H(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 23:
                    i4 = zzkb.m12194U(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 24:
                    i4 = zzkb.m12197R(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 25:
                    i4 = zzkb.m12191X(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 26:
                    U = zzkb.m12186b(i20, (List) unsafe2.getObject(t, j2));
                    i16 += U;
                    break;
                case 27:
                    U = zzkb.m12184c(i20, (List) unsafe2.getObject(t, j2), m12289r(i19));
                    i16 += U;
                    break;
                case 28:
                    U = zzkb.m12167r(i20, (List) unsafe2.getObject(t, j2));
                    i16 += U;
                    break;
                case 29:
                    U = zzkb.m12203L(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += U;
                    break;
                case 30:
                    i4 = zzkb.m12211D(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 31:
                    i4 = zzkb.m12197R(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 32:
                    i4 = zzkb.m12194U(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 33:
                    i4 = zzkb.m12200O(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 34:
                    i4 = zzkb.m12159z(i20, (List) unsafe2.getObject(t, j2), false);
                    i16 += i4;
                    break;
                case 35:
                    int V = zzkb.m12193V((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (V > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(V);
                        i6 = V;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int S = zzkb.m12196S((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (S > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(S);
                        i6 = S;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int e = zzkb.m12180e((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (e > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(e);
                        i6 = e;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int u = zzkb.m12164u((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (u > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(u);
                        i6 = u;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int I = zzkb.m12206I((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (I > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(I);
                        i6 = I;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int V2 = zzkb.m12193V((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (V2 > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(V2);
                        i6 = V2;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int S2 = zzkb.m12196S((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (S2 > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(S2);
                        i6 = S2;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int Y = zzkb.m12190Y((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (Y > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(Y);
                        i6 = Y;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int M = zzkb.m12202M((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (M > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(M);
                        i6 = M;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int E = zzkb.m12210E((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (E > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(E);
                        i6 = E;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int S3 = zzkb.m12196S((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (S3 > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(S3);
                        i6 = S3;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int V3 = zzkb.m12193V((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (V3 > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(V3);
                        i6 = V3;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int P3 = zzkb.m12199P((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (P3 > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(P3);
                        i6 = P3;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int A = zzkb.m12214A((List) unsafe2.getObject(t, j2));
                    i16 = i16;
                    if (A > 0) {
                        i7 = zzhg.m12528h0(i20);
                        i5 = zzhg.m12518p0(A);
                        i6 = A;
                        i3 = i7 + i5 + i6;
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    U = zzkb.m12166s(i20, (List) unsafe2.getObject(t, j2), m12289r(i19));
                    i16 += U;
                    break;
                case 50:
                    U = this.f8575p.mo12338h(i20, unsafe2.getObject(t, j2), m12313H(i19));
                    i16 += U;
                    break;
                case 51:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12562B(i20, 0.0d);
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        i3 = zzhg.m12560C(i20, 0.0f);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12536c0(i20, m12302S(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12526i0(i20, m12302S(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12521m0(i20, m12304Q(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12516r0(i20, 0L);
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        i3 = zzhg.m12507y0(i20, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        i3 = zzhg.m12551H(i20, true);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        U = object2 instanceof zzgr ? zzhg.m12542U(i20, (zzgr) object2) : zzhg.m12552G(i20, (String) object2);
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzkb.m12188a(i20, unsafe2.getObject(t, j2), m12289r(i19));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12542U(i20, (zzgr) unsafe2.getObject(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12517q0(i20, m12304Q(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12557D0(i20, m12304Q(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        i3 = zzhg.m12561B0(i20, 0);
                        i16 += i3;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12512v0(i20, 0L);
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12513u0(i20, m12304Q(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12520n0(i20, m12302S(t, j2));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i16 = i16;
                    if (m12318C(t, i20, i19)) {
                        U = zzhg.m12541V(i20, (zzjh) unsafe2.getObject(t, j2), m12289r(i19));
                        i16 += U;
                        break;
                    } else {
                        break;
                    }
                default:
                    i16 = i16;
                    break;
            }
        }
        int i25 = 0;
        int k = i16 + m12296k(this.f8573n, t);
        int i26 = k;
        if (this.f8565f) {
            zzhp<?> b = this.f8574o.mo12471b(t);
            for (int i27 = 0; i27 < b.f8504a.m12148l(); i27++) {
                Map.Entry<?, Object> j3 = b.f8504a.m12150j(i27);
                i25 += zzhp.m12462a((zzhr) j3.getKey(), j3.getValue());
            }
            for (Map.Entry<?, Object> entry : b.f8504a.m12145o()) {
                i25 += zzhp.m12462a((zzhr) entry.getKey(), entry.getValue());
            }
            i26 = k + i25;
        }
        return i26;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.measurement.zzkb.m12168q(com.google.android.gms.internal.measurement.zzkx.m12094F(r7, r0), com.google.android.gms.internal.measurement.zzkx.m12094F(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (com.google.android.gms.internal.measurement.zzkb.m12168q(com.google.android.gms.internal.measurement.zzkx.m12094F(r7, r0), com.google.android.gms.internal.measurement.zzkx.m12094F(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12070o(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12070o(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12083b(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12083b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12070o(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12070o(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12083b(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12083b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12083b(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12083b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12083b(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12083b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (com.google.android.gms.internal.measurement.zzkb.m12168q(com.google.android.gms.internal.measurement.zzkx.m12094F(r7, r0), com.google.android.gms.internal.measurement.zzkx.m12094F(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (com.google.android.gms.internal.measurement.zzkb.m12168q(com.google.android.gms.internal.measurement.zzkx.m12094F(r7, r0), com.google.android.gms.internal.measurement.zzkx.m12094F(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (com.google.android.gms.internal.measurement.zzkb.m12168q(com.google.android.gms.internal.measurement.zzkx.m12094F(r7, r0), com.google.android.gms.internal.measurement.zzkx.m12094F(r8, r0)) != false) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12062w(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12062w(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12083b(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12083b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12070o(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12070o(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12083b(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12083b(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12070o(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12070o(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (com.google.android.gms.internal.measurement.zzkx.m12070o(r7, r0) == com.google.android.gms.internal.measurement.zzkx.m12070o(r8, r0)) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.zzkx.m12061x(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.zzkx.m12061x(r8, r0))) goto L_0x03cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.zzkx.m12097C(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.zzkx.m12097C(r8, r0))) goto L_0x03cf;
     */
    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo12257f(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjl.mo12257f(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x04b3, code lost:
        if (r28 == r28) goto L_0x04b9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x04ec, code lost:
        if (r28 == r28) goto L_0x04b9;
     */
    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo12256g(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.measurement.zzgm r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjl.mo12256g(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzgm):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x09a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x09a2  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x09f1  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x1341  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x134b  */
    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo12255h(T r8, com.google.android.gms.internal.measurement.zzlo r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjl.mo12255h(java.lang.Object, com.google.android.gms.internal.measurement.zzlo):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:388:0x1058 A[LOOP:5: B:386:0x104f->B:388:0x1058, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:391:0x1075  */
    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo12254i(T r9, com.google.android.gms.internal.measurement.zzka r10, com.google.android.gms.internal.measurement.zzhm r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjl.mo12254i(java.lang.Object, com.google.android.gms.internal.measurement.zzka, com.google.android.gms.internal.measurement.zzhm):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0774, code lost:
        if (r33 == 1048575) goto L_0x0782;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0777, code lost:
        r28.putInt(r17, r33, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0782, code lost:
        r22 = null;
        r19 = r18.f8569j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x078f, code lost:
        if (r19 >= r18.f8570k) goto L_0x07ae;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0792, code lost:
        r22 = (com.google.android.gms.internal.measurement.zzku) r18.m12287t(r17, r18.f8568i[r19], r22, r18.f8573n);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x07b0, code lost:
        if (r22 == null) goto L_0x07bd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x07b3, code lost:
        r18.f8573n.mo12120n(r17, r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07bf, code lost:
        if (r29 != 0) goto L_0x07d0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07c6, code lost:
        if (r21 != r20) goto L_0x07cc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x07cf, code lost:
        throw com.google.android.gms.internal.measurement.zzih.m12379g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x07d4, code lost:
        if (r21 > r20) goto L_0x07e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x07db, code lost:
        if (r31 != r29) goto L_0x07e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x07e0, code lost:
        return r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x07e4, code lost:
        throw com.google.android.gms.internal.measurement.zzih.m12379g();
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m12292o(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.zzgm r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjl.m12292o(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzgm):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final T zza() {
        return (T) this.f8571l.mo12272a(this.f8564e);
    }
}
