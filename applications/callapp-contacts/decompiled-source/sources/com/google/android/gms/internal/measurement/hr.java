package com.google.android.gms.internal.measurement;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hr.class */
public final class hr<T> implements ia<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f29090a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    private static final Unsafe f29091b = ix.c();

    /* renamed from: c  reason: collision with root package name */
    private final int[] f29092c;

    /* renamed from: d  reason: collision with root package name */
    private final Object[] f29093d;
    private final int e;
    private final int f;
    private final ho g;
    private final boolean h;
    private final boolean i;
    private final int[] j;
    private final int k;
    private final int l;
    private final hd m;
    private final im<?, ?> n;
    private final fz<?> o;
    private final hu p;
    private final hj q;

    /* JADX WARN: Multi-variable type inference failed */
    private hr(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, ho hoVar, boolean z, boolean z2, int[] iArr3, int i3, int i4, hu huVar, hd hdVar, im<?, ?> imVar, fz<?> fzVar, hj hjVar) {
        this.f29092c = iArr;
        this.f29093d = iArr2;
        this.e = objArr;
        this.f = i;
        this.i = hoVar;
        boolean z3 = false;
        if (imVar != 0) {
            z3 = false;
            if (imVar.a((ho) i2)) {
                z3 = true;
            }
        }
        this.h = z3;
        this.j = z2;
        this.k = iArr3;
        this.l = i3;
        this.p = i4;
        this.m = huVar;
        this.n = hdVar;
        this.o = imVar;
        this.g = i2;
        this.q = fzVar;
    }

    private static <T> double a(T t, long j) {
        return ((Double) ix.f(t, j)).doubleValue();
    }

    private final int a(int i, int i2) {
        if (i < this.e || i > this.f) {
            return -1;
        }
        return b(i, i2);
    }

    private final <K, V> int a(T t, int i, long j) throws IOException {
        Unsafe unsafe = f29091b;
        b(i);
        Object object = unsafe.getObject(t, j);
        if (!((hi) object).f29087a) {
            hi<K, V> b2 = hi.a().b();
            hj.a(b2, object);
            unsafe.putObject(t, j, b2);
        }
        throw null;
    }

    private final int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, fa faVar) throws IOException {
        Unsafe unsafe = f29091b;
        long j2 = this.f29092c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(fb.b(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(fb.a(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int b2 = fb.b(bArr, i, faVar);
                    unsafe.putObject(t, j, Long.valueOf(faVar.f29006b));
                    unsafe.putInt(t, j2, i4);
                    return b2;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int a2 = fb.a(bArr, i, faVar);
                    unsafe.putObject(t, j, Integer.valueOf(faVar.f29005a));
                    unsafe.putInt(t, j2, i4);
                    return a2;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(fb.b(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(fb.a(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int b3 = fb.b(bArr, i, faVar);
                    unsafe.putObject(t, j, Boolean.valueOf(faVar.f29006b != 0));
                    unsafe.putInt(t, j2, i4);
                    return b3;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = fb.a(bArr, i, faVar);
                    int i9 = faVar.f29005a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || jc.a(bArr, i, i + i9)) {
                        unsafe.putObject(t, j, new String(bArr, i, i9, gt.f29065a));
                        i += i9;
                    } else {
                        throw zzib.f();
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = fb.a(a(i8), bArr, i, i2, faVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, faVar.f29007c);
                    } else {
                        unsafe.putObject(t, j, gt.a(object, faVar.f29007c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int e = fb.e(bArr, i, faVar);
                    unsafe.putObject(t, j, faVar.f29007c);
                    unsafe.putInt(t, j2, i4);
                    return e;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = fb.a(bArr, i, faVar);
                    int i10 = faVar.f29005a;
                    gp c2 = c(i8);
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
                    int a3 = fb.a(bArr, i, faVar);
                    unsafe.putObject(t, j, Integer.valueOf(fp.a(faVar.f29005a)));
                    unsafe.putInt(t, j2, i4);
                    return a3;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int b4 = fb.b(bArr, i, faVar);
                    unsafe.putObject(t, j, Long.valueOf(fp.a(faVar.f29006b)));
                    unsafe.putInt(t, j2, i4);
                    return b4;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = fb.a(a(i8), bArr, i, i2, (i3 & (-8)) | 4, faVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, faVar.f29007c);
                    } else {
                        unsafe.putObject(t, j, gt.a(object2, faVar.f29007c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0941 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0318  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x03fa -> B:115:0x03ff). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x030d -> B:78:0x0312). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.fa r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.hr.a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.fa):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x06ad, code lost:
        if (r28 == false) goto L_0x06b0;
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06eb  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x071a  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0724  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.measurement.hr<T> a(com.google.android.gms.internal.measurement.hl r19, com.google.android.gms.internal.measurement.hu r20, com.google.android.gms.internal.measurement.hd r21, com.google.android.gms.internal.measurement.im<?, ?> r22, com.google.android.gms.internal.measurement.fz<?> r23, com.google.android.gms.internal.measurement.hj r24) {
        /*
            Method dump skipped, instructions count: 2665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.hr.a(com.google.android.gms.internal.measurement.hl, com.google.android.gms.internal.measurement.hu, com.google.android.gms.internal.measurement.hd, com.google.android.gms.internal.measurement.im, com.google.android.gms.internal.measurement.fz, com.google.android.gms.internal.measurement.hj):com.google.android.gms.internal.measurement.hr");
    }

    private final ia a(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        ia iaVar = (ia) this.f29093d[i3];
        if (iaVar != null) {
            return iaVar;
        }
        ia<T> a2 = hx.a().a((Class) this.f29093d[i3 + 1]);
        this.f29093d[i3] = a2;
        return a2;
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

    private static final void a(int i, Object obj, ft ftVar) throws IOException {
        if (obj instanceof String) {
            ftVar.a(i, (String) obj);
        } else {
            ftVar.a(i, (fm) obj);
        }
    }

    private final void a(T t, T t2, int i) {
        long d2 = d(i) & 1048575;
        if (a((hr<T>) t2, i)) {
            Object f = ix.f(t, d2);
            Object f2 = ix.f(t2, d2);
            if (f != null && f2 != null) {
                ix.a(t, d2, gt.a(f, f2));
                b((hr<T>) t, i);
            } else if (f2 != null) {
                ix.a(t, d2, f2);
                b((hr<T>) t, i);
            }
        }
    }

    private final boolean a(T t, int i) {
        int e = e(i);
        long j = e & 1048575;
        if (j != 1048575) {
            return (ix.a(t, j) & (1 << (e >>> 20))) != 0;
        }
        int d2 = d(i);
        long j2 = d2 & 1048575;
        switch (f(d2)) {
            case 0:
                return ix.e(t, j2) != 0.0d;
            case 1:
                return ix.d(t, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return ix.b(t, j2) != 0;
            case 3:
                return ix.b(t, j2) != 0;
            case 4:
                return ix.a(t, j2) != 0;
            case 5:
                return ix.b(t, j2) != 0;
            case 6:
                return ix.a(t, j2) != 0;
            case 7:
                return ix.c(t, j2);
            case 8:
                Object f = ix.f(t, j2);
                if (f instanceof String) {
                    return !((String) f).isEmpty();
                }
                if (f instanceof fm) {
                    return !fm.f29017b.equals(f);
                }
                throw new IllegalArgumentException();
            case 9:
                return ix.f(t, j2) != null;
            case 10:
                return !fm.f29017b.equals(ix.f(t, j2));
            case 11:
                return ix.a(t, j2) != 0;
            case 12:
                return ix.a(t, j2) != 0;
            case 13:
                return ix.a(t, j2) != 0;
            case 14:
                return ix.b(t, j2) != 0;
            case 15:
                return ix.a(t, j2) != 0;
            case 16:
                return ix.b(t, j2) != 0;
            case 17:
                return ix.f(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean a(T t, int i, int i2) {
        return ix.a(t, (long) (e(i2) & 1048575)) == i;
    }

    private final boolean a(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? a((hr<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i, ia iaVar) {
        return iaVar.d(ix.f(obj, i & 1048575));
    }

    private static <T> float b(T t, long j) {
        return ((Float) ix.f(t, j)).floatValue();
    }

    private final int b(int i, int i2) {
        int length = (this.f29092c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f29092c[i4];
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
        int i2 = i / 3;
        return this.f29093d[i2 + i2];
    }

    private final void b(T t, int i) {
        int e = e(i);
        long j = 1048575 & e;
        if (j != 1048575) {
            ix.a((Object) t, j, (1 << (e >>> 20)) | ix.a(t, j));
        }
    }

    private final void b(T t, int i, int i2) {
        ix.a((Object) t, e(i2) & 1048575, i);
    }

    private final void b(T t, T t2, int i) {
        int d2 = d(i);
        int i2 = this.f29092c[i];
        long j = d2 & 1048575;
        if (a((hr<T>) t2, i2, i)) {
            Object f = a((hr<T>) t, i2, i) ? ix.f(t, j) : null;
            Object f2 = ix.f(t2, j);
            if (f != null && f2 != null) {
                ix.a(t, j, gt.a(f, f2));
                b((hr<T>) t, i2, i);
            } else if (f2 != null) {
                ix.a(t, j, f2);
                b((hr<T>) t, i2, i);
            }
        }
    }

    private static <T> int c(T t, long j) {
        return ((Integer) ix.f(t, j)).intValue();
    }

    private final gp c(int i) {
        int i2 = i / 3;
        return (gp) this.f29093d[i2 + i2 + 1];
    }

    private final <K, V> void c(Object obj, int i) throws IOException {
        if (obj != null) {
            b(i);
            throw null;
        }
    }

    private final boolean c(T t, T t2, int i) {
        return a((hr<T>) t, i) == a((hr<T>) t2, i);
    }

    private final int d(int i) {
        return this.f29092c[i + 1];
    }

    private static <T> long d(T t, long j) {
        return ((Long) ix.f(t, j)).longValue();
    }

    private final int e(int i) {
        return this.f29092c[i + 2];
    }

    private static in e(Object obj) {
        gl glVar = (gl) obj;
        in inVar = glVar.zzc;
        in inVar2 = inVar;
        if (inVar == in.a()) {
            inVar2 = in.b();
            glVar.zzc = inVar2;
        }
        return inVar2;
    }

    private static <T> boolean e(T t, long j) {
        return ((Boolean) ix.f(t, j)).booleanValue();
    }

    private static int f(int i) {
        return (i >>> 20) & 255;
    }

    private final int g(int i) {
        if (i < this.e || i > this.f) {
            return -1;
        }
        return b(i, 0);
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final int a(T t) {
        int i;
        int i2;
        int length = this.f29092c.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d2 = d(i4);
            int i5 = this.f29092c[i4];
            long j = 1048575 & d2;
            int i6 = 37;
            switch (f(d2)) {
                case 0:
                    i = i3 * 53;
                    i2 = gt.a(Double.doubleToLongBits(ix.e(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(ix.d(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = gt.a(ix.b(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = gt.a(ix.b(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = ix.a(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = gt.a(ix.b(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = ix.a(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = gt.a(ix.c(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) ix.f(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object f = ix.f(t, j);
                    if (f != null) {
                        i6 = f.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = ix.f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = ix.a(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = ix.a(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = ix.a(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = gt.a(ix.b(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = ix.a(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = gt.a(ix.b(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object f2 = ix.f(t, j);
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
                    i2 = ix.f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = ix.f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = gt.a(Double.doubleToLongBits(a(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(b(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = gt.a(d(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = gt.a(d(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = c(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = gt.a(d(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = c(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = gt.a(e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) ix.f(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ix.f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ix.f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = c(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = c(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = c(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = gt.a(d(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = c(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = gt.a(d(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (a((hr<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ix.f(t, j).hashCode();
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
        int hashCode = this.n.a(t).hashCode();
        if (!this.h) {
            return (i3 * 53) + hashCode;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x06cf, code lost:
        if (r31 == 1048575) goto L_0x06e0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x06d2, code lost:
        r26.putInt(r17, r31, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x06e0, code lost:
        r19 = r23.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x06ec, code lost:
        if (r19 >= r23.l) goto L_0x0727;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x06ef, code lost:
        r0 = r23.j[r19];
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0707, code lost:
        if (com.google.android.gms.internal.measurement.ix.f(r17, r23.d(r0) & 1048575) != null) goto L_0x070d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0714, code lost:
        if (r23.c(r0) != null) goto L_0x071d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0717, code lost:
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x071d, code lost:
        r23.b(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0726, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0729, code lost:
        if (r21 != 0) goto L_0x073a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0730, code lost:
        if (r27 != r20) goto L_0x0736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0739, code lost:
        throw com.google.android.gms.internal.measurement.zzib.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x073e, code lost:
        if (r27 > r20) goto L_0x074b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0745, code lost:
        if (r28 != r21) goto L_0x074b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x074a, code lost:
        return r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x074e, code lost:
        throw com.google.android.gms.internal.measurement.zzib.e();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.fa r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.hr.a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.fa):int");
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final T a() {
        return (T) ((gl) this.g).a(4);
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final void a(T t, ft ftVar) throws IOException {
        int i;
        int i2;
        if (this.i) {
            if (!this.h) {
                int length = this.f29092c.length;
                for (int i3 = 0; i3 < length; i3 += 3) {
                    int d2 = d(i3);
                    int i4 = this.f29092c[i3];
                    switch (f(d2)) {
                        case 0:
                            if (a((hr<T>) t, i3)) {
                                ftVar.a(i4, ix.e(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (a((hr<T>) t, i3)) {
                                ftVar.a(i4, ix.d(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (a((hr<T>) t, i3)) {
                                ftVar.a(i4, ix.b(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (a((hr<T>) t, i3)) {
                                ftVar.c(i4, ix.b(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (a((hr<T>) t, i3)) {
                                ftVar.c(i4, ix.a(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (a((hr<T>) t, i3)) {
                                ftVar.d(i4, ix.b(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 6:
                            if (a((hr<T>) t, i3)) {
                                ftVar.d(i4, ix.a(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 7:
                            if (a((hr<T>) t, i3)) {
                                ftVar.a(i4, ix.c(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 8:
                            if (a((hr<T>) t, i3)) {
                                a(i4, ix.f(t, d2 & 1048575), ftVar);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            if (a((hr<T>) t, i3)) {
                                ftVar.a(i4, ix.f(t, d2 & 1048575), a(i3));
                                break;
                            } else {
                                break;
                            }
                        case 10:
                            if (a((hr<T>) t, i3)) {
                                ftVar.a(i4, (fm) ix.f(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if (a((hr<T>) t, i3)) {
                                ftVar.e(i4, ix.a(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 12:
                            if (a((hr<T>) t, i3)) {
                                ftVar.b(i4, ix.a(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 13:
                            if (a((hr<T>) t, i3)) {
                                ftVar.a(i4, ix.a(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 14:
                            if (a((hr<T>) t, i3)) {
                                ftVar.b(i4, ix.b(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 15:
                            if (a((hr<T>) t, i3)) {
                                ftVar.f(i4, ix.a(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 16:
                            if (a((hr<T>) t, i3)) {
                                ftVar.e(i4, ix.b(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 17:
                            if (a((hr<T>) t, i3)) {
                                ftVar.b(i4, ix.f(t, d2 & 1048575), a(i3));
                                break;
                            } else {
                                break;
                            }
                        case 18:
                            ic.a(this.f29092c[i3], (List<Double>) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 19:
                            ic.b(this.f29092c[i3], (List<Float>) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 20:
                            ic.c(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 21:
                            ic.d(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 22:
                            ic.h(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 23:
                            ic.f(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 24:
                            ic.k(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 25:
                            ic.n(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 26:
                            ic.a(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar);
                            break;
                        case 27:
                            ic.a(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, a(i3));
                            break;
                        case 28:
                            ic.b(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar);
                            break;
                        case 29:
                            ic.i(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 30:
                            ic.m(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 31:
                            ic.l(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 32:
                            ic.g(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 33:
                            ic.j(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 34:
                            ic.e(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, false);
                            break;
                        case 35:
                            ic.a(this.f29092c[i3], (List<Double>) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 36:
                            ic.b(this.f29092c[i3], (List<Float>) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 37:
                            ic.c(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 38:
                            ic.d(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 39:
                            ic.h(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 40:
                            ic.f(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 41:
                            ic.k(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 42:
                            ic.n(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 43:
                            ic.i(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 44:
                            ic.m(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 45:
                            ic.l(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 46:
                            ic.g(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 47:
                            ic.j(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 48:
                            ic.e(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, true);
                            break;
                        case 49:
                            ic.b(this.f29092c[i3], (List) ix.f(t, d2 & 1048575), ftVar, a(i3));
                            break;
                        case 50:
                            c(ix.f(t, d2 & 1048575), i3);
                            break;
                        case 51:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.a(i4, a(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 52:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.a(i4, b(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.a(i4, d(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.c(i4, d(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 55:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.c(i4, c(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 56:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.d(i4, d(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 57:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.d(i4, c(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 58:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.a(i4, e(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 59:
                            if (a((hr<T>) t, i4, i3)) {
                                a(i4, ix.f(t, d2 & 1048575), ftVar);
                                break;
                            } else {
                                break;
                            }
                        case 60:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.a(i4, ix.f(t, d2 & 1048575), a(i3));
                                break;
                            } else {
                                break;
                            }
                        case 61:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.a(i4, (fm) ix.f(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 62:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.e(i4, c(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 63:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.b(i4, c(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 64:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.a(i4, c(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 65:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.b(i4, d(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 66:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.f(i4, c(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 67:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.e(i4, d(t, d2 & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 68:
                            if (a((hr<T>) t, i4, i3)) {
                                ftVar.b(i4, ix.f(t, d2 & 1048575), a(i3));
                                break;
                            } else {
                                break;
                            }
                    }
                }
                im<?, ?> imVar = this.n;
                imVar.a((im<?, ?>) imVar.a(t), ftVar);
                return;
            }
            throw null;
        } else if (!this.h) {
            int length2 = this.f29092c.length;
            Unsafe unsafe = f29091b;
            int i5 = 0;
            int i6 = 0;
            int i7 = 1048575;
            while (i5 < length2) {
                int d3 = d(i5);
                int i8 = this.f29092c[i5];
                int f = f(d3);
                if (f <= 17) {
                    int i9 = this.f29092c[i5 + 2];
                    int i10 = i9 & 1048575;
                    i2 = i6;
                    i7 = i7;
                    if (i10 != i7) {
                        i2 = unsafe.getInt(t, i10);
                        i7 = i10;
                    }
                    i = 1 << (i9 >>> 20);
                } else {
                    i = 0;
                    i2 = i6;
                }
                long j = d3 & 1048575;
                switch (f) {
                    case 0:
                        if ((i2 & i) != 0) {
                            ftVar.a(i8, ix.e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if ((i2 & i) != 0) {
                            ftVar.a(i8, ix.d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if ((i2 & i) != 0) {
                            ftVar.a(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if ((i2 & i) != 0) {
                            ftVar.c(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if ((i2 & i) != 0) {
                            ftVar.c(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if ((i2 & i) != 0) {
                            ftVar.d(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if ((i2 & i) != 0) {
                            ftVar.d(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if ((i2 & i) != 0) {
                            ftVar.a(i8, ix.c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if ((i2 & i) != 0) {
                            a(i8, unsafe.getObject(t, j), ftVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if ((i2 & i) != 0) {
                            ftVar.a(i8, unsafe.getObject(t, j), a(i5));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if ((i2 & i) != 0) {
                            ftVar.a(i8, (fm) unsafe.getObject(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if ((i2 & i) != 0) {
                            ftVar.e(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if ((i2 & i) != 0) {
                            ftVar.b(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if ((i2 & i) != 0) {
                            ftVar.a(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if ((i2 & i) != 0) {
                            ftVar.b(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if ((i2 & i) != 0) {
                            ftVar.f(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if ((i2 & i) != 0) {
                            ftVar.e(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if ((i2 & i) != 0) {
                            ftVar.b(i8, unsafe.getObject(t, j), a(i5));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        ic.a(this.f29092c[i5], (List<Double>) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 19:
                        ic.b(this.f29092c[i5], (List<Float>) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 20:
                        ic.c(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 21:
                        ic.d(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 22:
                        ic.h(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 23:
                        ic.f(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 24:
                        ic.k(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 25:
                        ic.n(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 26:
                        ic.a(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar);
                        break;
                    case 27:
                        ic.a(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, a(i5));
                        break;
                    case 28:
                        ic.b(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar);
                        break;
                    case 29:
                        ic.i(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 30:
                        ic.m(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 31:
                        ic.l(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 32:
                        ic.g(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 33:
                        ic.j(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 34:
                        ic.e(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, false);
                        break;
                    case 35:
                        ic.a(this.f29092c[i5], (List<Double>) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 36:
                        ic.b(this.f29092c[i5], (List<Float>) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 37:
                        ic.c(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 38:
                        ic.d(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 39:
                        ic.h(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 40:
                        ic.f(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 41:
                        ic.k(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 42:
                        ic.n(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 43:
                        ic.i(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 44:
                        ic.m(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 45:
                        ic.l(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 46:
                        ic.g(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 47:
                        ic.j(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 48:
                        ic.e(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, true);
                        break;
                    case 49:
                        ic.b(this.f29092c[i5], (List) unsafe.getObject(t, j), ftVar, a(i5));
                        break;
                    case 50:
                        c(unsafe.getObject(t, j), i5);
                        break;
                    case 51:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.a(i8, a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.a(i8, b(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.a(i8, d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.c(i8, d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.c(i8, c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.d(i8, d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.d(i8, c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.a(i8, e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (a((hr<T>) t, i8, i5)) {
                            a(i8, unsafe.getObject(t, j), ftVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.a(i8, unsafe.getObject(t, j), a(i5));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.a(i8, (fm) unsafe.getObject(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.e(i8, c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.b(i8, c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.a(i8, c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.b(i8, d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.f(i8, c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.e(i8, d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (a((hr<T>) t, i8, i5)) {
                            ftVar.b(i8, unsafe.getObject(t, j), a(i5));
                            break;
                        } else {
                            break;
                        }
                }
                i5 += 3;
                i6 = i2;
            }
            im<?, ?> imVar2 = this.n;
            imVar2.a((im<?, ?>) imVar2.a(t), ftVar);
        } else {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final void a(T t, byte[] bArr, int i, int i2, fa faVar) throws IOException {
        int i3;
        int i4;
        int i5;
        hr<T> hrVar = this;
        T t2 = t;
        byte[] bArr2 = bArr;
        int i6 = i2;
        fa faVar2 = faVar;
        if (hrVar.i) {
            Unsafe unsafe = f29091b;
            int i7 = i;
            int i8 = -1;
            int i9 = 0;
            int i10 = 0;
            int i11 = 1048575;
            while (i7 < i6) {
                int i12 = i7 + 1;
                byte b2 = bArr2[i7];
                if (b2 < 0) {
                    i4 = fb.a(b2, bArr2, i12, faVar2);
                    i3 = faVar2.f29005a;
                } else {
                    i4 = i12;
                    i3 = b2;
                }
                int i13 = i3 >>> 3;
                int i14 = i3 & 7;
                int a2 = i13 > i8 ? hrVar.a(i13, i9 / 3) : hrVar.g(i13);
                if (a2 == -1) {
                    i9 = 0;
                    unsafe = unsafe;
                } else {
                    int i15 = hrVar.f29092c[a2 + 1];
                    int f = f(i15);
                    long j = i15 & 1048575;
                    if (f <= 17) {
                        int i16 = hrVar.f29092c[a2 + 2];
                        boolean z = true;
                        int i17 = 1 << (i16 >>> 20);
                        int i18 = i16 & 1048575;
                        if (i18 != i11) {
                            if (i11 != 1048575) {
                                unsafe.putInt(t2, i11, i10);
                            }
                            if (i18 != 1048575) {
                                i10 = unsafe.getInt(t2, i18);
                            }
                            i11 = i18;
                        } else {
                            i10 = i10;
                        }
                        i9 = a2;
                        switch (f) {
                            case 0:
                                if (i14 == 1) {
                                    ix.a(t2, j, Double.longBitsToDouble(fb.b(bArr2, i4)));
                                    i7 = i4 + 8;
                                    i9 = i9;
                                    i10 |= i17;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            case 1:
                                if (i14 == 5) {
                                    ix.a((Object) t2, j, Float.intBitsToFloat(fb.a(bArr2, i4)));
                                    i7 = i4 + 4;
                                    i9 = i9;
                                    i10 |= i17;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            case 2:
                            case 3:
                                if (i14 == 0) {
                                    i7 = fb.b(bArr2, i4, faVar2);
                                    unsafe.putLong(t, j, faVar2.f29006b);
                                    i10 |= i17;
                                    i9 = i9;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            case 4:
                            case 11:
                                if (i14 == 0) {
                                    i7 = fb.a(bArr2, i4, faVar2);
                                    unsafe.putInt(t2, j, faVar2.f29005a);
                                    i9 = i9;
                                    i10 |= i17;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            case 5:
                            case 14:
                                if (i14 == 1) {
                                    unsafe.putLong(t, j, fb.b(bArr2, i4));
                                    i7 = i4 + 8;
                                    i9 = i9;
                                    i10 |= i17;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            case 6:
                            case 13:
                                if (i14 != 5) {
                                    i10 = i10;
                                    unsafe = unsafe;
                                    break;
                                } else {
                                    unsafe.putInt(t2, j, fb.a(bArr2, i4));
                                    i7 = i4 + 4;
                                    i10 |= i17;
                                    i6 = i2;
                                    i9 = i9;
                                    i8 = i13;
                                    break;
                                }
                            case 7:
                                if (i14 != 0) {
                                    i10 = i10;
                                    unsafe = unsafe;
                                    break;
                                } else {
                                    i7 = fb.b(bArr2, i4, faVar2);
                                    if (faVar2.f29006b == 0) {
                                        z = false;
                                    }
                                    ix.a(t2, j, z);
                                    i10 |= i17;
                                    i6 = i2;
                                    i9 = i9;
                                    i8 = i13;
                                    break;
                                }
                            case 8:
                                if (i14 != 2) {
                                    i10 = i10;
                                    unsafe = unsafe;
                                    break;
                                } else {
                                    i7 = (i15 & 536870912) == 0 ? fb.c(bArr2, i4, faVar2) : fb.d(bArr2, i4, faVar2);
                                    unsafe.putObject(t2, j, faVar2.f29007c);
                                    i10 |= i17;
                                    i6 = i2;
                                    i9 = i9;
                                    i8 = i13;
                                    break;
                                }
                            case 9:
                                if (i14 != 2) {
                                    i10 = i10;
                                    unsafe = unsafe;
                                    break;
                                } else {
                                    i7 = fb.a(hrVar.a(i9), bArr2, i4, i2, faVar2);
                                    Object object = unsafe.getObject(t2, j);
                                    if (object == null) {
                                        unsafe.putObject(t2, j, faVar2.f29007c);
                                    } else {
                                        unsafe.putObject(t2, j, gt.a(object, faVar2.f29007c));
                                    }
                                    i10 |= i17;
                                    i6 = i2;
                                    i9 = i9;
                                    i8 = i13;
                                    break;
                                }
                            case 10:
                                if (i14 == 2) {
                                    i7 = fb.e(bArr2, i4, faVar2);
                                    unsafe.putObject(t2, j, faVar2.f29007c);
                                    i9 = i9;
                                    i10 |= i17;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            case 12:
                                if (i14 == 0) {
                                    i7 = fb.a(bArr2, i4, faVar2);
                                    unsafe.putInt(t2, j, faVar2.f29005a);
                                    i9 = i9;
                                    i10 |= i17;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            case 15:
                                if (i14 == 0) {
                                    i7 = fb.a(bArr2, i4, faVar2);
                                    unsafe.putInt(t2, j, fp.a(faVar2.f29005a));
                                    i9 = i9;
                                    i10 |= i17;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            case 16:
                                if (i14 == 0) {
                                    i7 = fb.b(bArr2, i4, faVar2);
                                    unsafe.putLong(t, j, fp.a(faVar2.f29006b));
                                    i10 |= i17;
                                    i9 = i9;
                                    break;
                                }
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                            default:
                                i10 = i10;
                                unsafe = unsafe;
                                break;
                        }
                    } else {
                        i9 = a2;
                        if (f == 27) {
                            if (i14 == 2) {
                                gs gsVar = (gs) unsafe.getObject(t2, j);
                                gs gsVar2 = gsVar;
                                if (!gsVar.a()) {
                                    int size = gsVar.size();
                                    gsVar2 = gsVar.a(size == 0 ? 10 : size + size);
                                    unsafe.putObject(t2, j, gsVar2);
                                }
                                i7 = fb.a(hrVar.a(i9), i3, bArr, i4, i2, gsVar2, faVar);
                                i9 = i9;
                                unsafe = unsafe;
                            }
                        } else if (f <= 49) {
                            unsafe = unsafe;
                            i5 = a((hr<T>) t, bArr, i4, i2, i3, i13, i14, i9, i15, f, j, faVar);
                            if (i5 != i4) {
                                hrVar = this;
                                bArr2 = bArr;
                                i6 = i2;
                                faVar2 = faVar;
                                unsafe = unsafe;
                                i7 = i5;
                                i8 = i13;
                                i9 = i9;
                                i10 = i10;
                                t2 = t;
                            } else {
                                t2 = t;
                                i7 = fb.a(i3, bArr, i5, i2, e(t), faVar);
                                bArr2 = bArr;
                                faVar2 = faVar;
                                hrVar = this;
                            }
                        } else {
                            if (f != 50) {
                                t2 = t;
                                int a3 = a((hr<T>) t, bArr, i4, i2, i3, i13, i14, i15, f, j, i9, faVar);
                                if (a3 != i4) {
                                    bArr2 = bArr;
                                    i6 = i2;
                                    faVar2 = faVar;
                                    i9 = i9;
                                    i8 = i13;
                                    i10 = i10;
                                    i11 = i11;
                                    unsafe = unsafe;
                                    hrVar = this;
                                    i7 = a3;
                                } else {
                                    i5 = a3;
                                    i9 = a2;
                                    unsafe = unsafe;
                                }
                            } else if (i14 == 2) {
                                t2 = t;
                                i5 = a((hr<T>) t2, i9, j);
                                if (i5 != i4) {
                                    bArr2 = bArr;
                                    faVar2 = faVar;
                                    i9 = i9;
                                    i10 = i10;
                                    i11 = i11;
                                    unsafe = unsafe;
                                    i6 = i2;
                                    hrVar = this;
                                    i7 = i5;
                                    i8 = i13;
                                } else {
                                    i9 = a2;
                                    unsafe = unsafe;
                                }
                            } else {
                                t2 = t;
                            }
                            i7 = fb.a(i3, bArr, i5, i2, e(t), faVar);
                            bArr2 = bArr;
                            faVar2 = faVar;
                            hrVar = this;
                        }
                        i5 = i4;
                        i9 = a2;
                        unsafe = unsafe;
                        i7 = fb.a(i3, bArr, i5, i2, e(t), faVar);
                        bArr2 = bArr;
                        faVar2 = faVar;
                        hrVar = this;
                    }
                    i8 = i13;
                    i6 = i2;
                }
                t2 = t2;
                i5 = i4;
                i7 = fb.a(i3, bArr, i5, i2, e(t), faVar);
                bArr2 = bArr;
                faVar2 = faVar;
                hrVar = this;
                i8 = i13;
                i6 = i2;
            }
            if (i11 != 1048575) {
                unsafe.putInt(t2, i11, i10);
            }
            if (i7 != i2) {
                throw zzib.e();
            }
            return;
        }
        a((hr<T>) t, bArr, i, i2, 0, faVar);
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final boolean a(T t, T t2) {
        boolean z;
        int length = this.f29092c.length;
        for (int i = 0; i < length; i += 3) {
            int d2 = d(i);
            long j = d2 & 1048575;
            switch (f(d2)) {
                case 0:
                    if (!c(t, t2, i) || Double.doubleToLongBits(ix.e(t, j)) != Double.doubleToLongBits(ix.e(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!c(t, t2, i) || Float.floatToIntBits(ix.d(t, j)) != Float.floatToIntBits(ix.d(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!c(t, t2, i) || ix.b(t, j) != ix.b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!c(t, t2, i) || ix.b(t, j) != ix.b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!c(t, t2, i) || ix.a(t, j) != ix.a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!c(t, t2, i) || ix.b(t, j) != ix.b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!c(t, t2, i) || ix.a(t, j) != ix.a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!c(t, t2, i) || ix.c(t, j) != ix.c(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!c(t, t2, i) || !ic.a(ix.f(t, j), ix.f(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!c(t, t2, i) || !ic.a(ix.f(t, j), ix.f(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!c(t, t2, i) || !ic.a(ix.f(t, j), ix.f(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!c(t, t2, i) || ix.a(t, j) != ix.a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!c(t, t2, i) || ix.a(t, j) != ix.a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!c(t, t2, i) || ix.a(t, j) != ix.a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!c(t, t2, i) || ix.b(t, j) != ix.b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!c(t, t2, i) || ix.a(t, j) != ix.a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!c(t, t2, i) || ix.b(t, j) != ix.b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!c(t, t2, i) || !ic.a(ix.f(t, j), ix.f(t2, j))) {
                        return false;
                    }
                    continue;
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
                    z = ic.a(ix.f(t, j), ix.f(t2, j));
                    break;
                case 50:
                    z = ic.a(ix.f(t, j), ix.f(t2, j));
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
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long e = e(i) & 1048575;
                    if (ix.a(t, e) != ix.a(t2, e) || !ic.a(ix.f(t, j), ix.f(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                default:
            }
            if (!z) {
                return false;
            }
        }
        if (!this.n.a(t).equals(this.n.a(t2))) {
            return false;
        }
        if (!this.h) {
            return true;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final int b(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int f;
        int a2;
        int f2;
        int a3;
        int f3;
        int a4;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int f4;
        int a5;
        int f5;
        int i24;
        int i25;
        if (this.i) {
            Unsafe unsafe = f29091b;
            int i26 = 0;
            for (int i27 = 0; i27 < this.f29092c.length; i27 += 3) {
                int d2 = d(i27);
                int f6 = f(d2);
                int i28 = this.f29092c[i27];
                long j = d2 & 1048575;
                if (f6 >= ge.DOUBLE_LIST_PACKED.zza()) {
                    ge.SINT64_LIST_PACKED.zza();
                }
                switch (f6) {
                    case 0:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i15 = fs.f(i28 << 3);
                            i16 = i15 + 8;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i17 = fs.f(i28 << 3);
                            i16 = i17 + 4;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            long b2 = ix.b(t, j);
                            i18 = fs.f(i28 << 3);
                            i19 = fs.c(b2);
                            i26 += i18 + i19;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            long b3 = ix.b(t, j);
                            i18 = fs.f(i28 << 3);
                            i19 = fs.c(b3);
                            i26 += i18 + i19;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            int a6 = ix.a(t, j);
                            i21 = fs.f(i28 << 3);
                            i22 = fs.e(a6);
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i15 = fs.f(i28 << 3);
                            i16 = i15 + 8;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i17 = fs.f(i28 << 3);
                            i16 = i17 + 4;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i23 = fs.f(i28 << 3);
                            i16 = i23 + 1;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i26 = i26;
                        if (!a((hr<T>) t, i27)) {
                            break;
                        } else {
                            Object f7 = ix.f(t, j);
                            if (f7 instanceof fm) {
                                f4 = fs.f(i28 << 3);
                                a5 = ((fm) f7).a();
                                f5 = fs.f(a5);
                                i20 = f4 + f5 + a5;
                                i26 += i20;
                                break;
                            } else {
                                i21 = fs.f(i28 << 3);
                                i22 = fs.a((String) f7);
                                i20 = i21 + i22;
                                i26 += i20;
                            }
                        }
                    case 9:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i16 = ic.a(i28, ix.f(t, j), a(i27));
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            fm fmVar = (fm) ix.f(t, j);
                            f4 = fs.f(i28 << 3);
                            a5 = fmVar.a();
                            f5 = fs.f(a5);
                            i20 = f4 + f5 + a5;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            int a7 = ix.a(t, j);
                            i21 = fs.f(i28 << 3);
                            i22 = fs.f(a7);
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            int a8 = ix.a(t, j);
                            i21 = fs.f(i28 << 3);
                            i22 = fs.e(a8);
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i17 = fs.f(i28 << 3);
                            i16 = i17 + 4;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i15 = fs.f(i28 << 3);
                            i16 = i15 + 8;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            int a9 = ix.a(t, j);
                            i21 = fs.f(i28 << 3);
                            i22 = fs.f((a9 >> 31) ^ (a9 + a9));
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            long b4 = ix.b(t, j);
                            i18 = fs.f(i28 << 3);
                            i19 = fs.c((b4 >> 63) ^ (b4 + b4));
                            i26 += i18 + i19;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i26 = i26;
                        if (a((hr<T>) t, i27)) {
                            i16 = fs.a(i28, (ho) ix.f(t, j), a(i27));
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i16 = ic.i(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 19:
                        i16 = ic.h(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 20:
                        i16 = ic.a(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 21:
                        i16 = ic.b(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 22:
                        i16 = ic.e(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 23:
                        i16 = ic.i(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 24:
                        i16 = ic.h(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 25:
                        i16 = ic.j(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 26:
                        i16 = ic.k(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 27:
                        i16 = ic.a(i28, (List<?>) ix.f(t, j), a(i27));
                        i26 += i16;
                        break;
                    case 28:
                        i16 = ic.l(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 29:
                        i16 = ic.f(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 30:
                        i16 = ic.d(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 31:
                        i16 = ic.h(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 32:
                        i16 = ic.i(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 33:
                        i16 = ic.g(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 34:
                        i16 = ic.c(i28, (List) ix.f(t, j));
                        i26 += i16;
                        break;
                    case 35:
                        int i29 = ic.i((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (i29 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(i29);
                            i22 = i29;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        int h = ic.h((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (h > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(h);
                            i22 = h;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        int a10 = ic.a((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (a10 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(a10);
                            i22 = a10;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        int b5 = ic.b((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (b5 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(b5);
                            i22 = b5;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        int e = ic.e((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (e > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(e);
                            i22 = e;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        int i30 = ic.i((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (i30 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(i30);
                            i22 = i30;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        int h2 = ic.h((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (h2 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(h2);
                            i22 = h2;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        int j2 = ic.j((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (j2 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(j2);
                            i22 = j2;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        int f8 = ic.f((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (f8 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(f8);
                            i22 = f8;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        int d3 = ic.d((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (d3 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(d3);
                            i22 = d3;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        int h3 = ic.h((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (h3 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(h3);
                            i22 = h3;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        int i31 = ic.i((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (i31 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(i31);
                            i22 = i31;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        int g = ic.g((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (g > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(g);
                            i22 = g;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        int c2 = ic.c((List) unsafe.getObject(t, j));
                        i26 = i26;
                        if (c2 > 0) {
                            i25 = fs.d(i28);
                            i24 = fs.f(c2);
                            i22 = c2;
                            i21 = i25 + i24;
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        i16 = ic.b(i28, (List) ix.f(t, j), a(i27));
                        i26 += i16;
                        break;
                    case 50:
                        Object f9 = ix.f(t, j);
                        b(i27);
                        hj.a(f9);
                        i26 = i26;
                        break;
                    case 51:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i15 = fs.f(i28 << 3);
                            i16 = i15 + 8;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i17 = fs.f(i28 << 3);
                            i16 = i17 + 4;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            long d4 = d(t, j);
                            i18 = fs.f(i28 << 3);
                            i19 = fs.c(d4);
                            i26 += i18 + i19;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            long d5 = d(t, j);
                            i18 = fs.f(i28 << 3);
                            i19 = fs.c(d5);
                            i26 += i18 + i19;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            int c3 = c(t, j);
                            i21 = fs.f(i28 << 3);
                            i22 = fs.e(c3);
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i15 = fs.f(i28 << 3);
                            i16 = i15 + 8;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i17 = fs.f(i28 << 3);
                            i16 = i17 + 4;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i23 = fs.f(i28 << 3);
                            i16 = i23 + 1;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i26 = i26;
                        if (!a((hr<T>) t, i28, i27)) {
                            break;
                        } else {
                            Object f10 = ix.f(t, j);
                            if (f10 instanceof fm) {
                                f4 = fs.f(i28 << 3);
                                a5 = ((fm) f10).a();
                                f5 = fs.f(a5);
                                i20 = f4 + f5 + a5;
                                i26 += i20;
                                break;
                            } else {
                                i21 = fs.f(i28 << 3);
                                i22 = fs.a((String) f10);
                                i20 = i21 + i22;
                                i26 += i20;
                            }
                        }
                    case 60:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i16 = ic.a(i28, ix.f(t, j), a(i27));
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            fm fmVar2 = (fm) ix.f(t, j);
                            f4 = fs.f(i28 << 3);
                            a5 = fmVar2.a();
                            f5 = fs.f(a5);
                            i20 = f4 + f5 + a5;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            int c4 = c(t, j);
                            i21 = fs.f(i28 << 3);
                            i22 = fs.f(c4);
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            int c5 = c(t, j);
                            i21 = fs.f(i28 << 3);
                            i22 = fs.e(c5);
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i17 = fs.f(i28 << 3);
                            i16 = i17 + 4;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i15 = fs.f(i28 << 3);
                            i16 = i15 + 8;
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            int c6 = c(t, j);
                            i21 = fs.f(i28 << 3);
                            i22 = fs.f((c6 >> 31) ^ (c6 + c6));
                            i20 = i21 + i22;
                            i26 += i20;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            long d6 = d(t, j);
                            i18 = fs.f(i28 << 3);
                            i19 = fs.c((d6 >> 63) ^ (d6 + d6));
                            i26 += i18 + i19;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i26 = i26;
                        if (a((hr<T>) t, i28, i27)) {
                            i16 = fs.a(i28, (ho) ix.f(t, j), a(i27));
                            i26 += i16;
                            break;
                        } else {
                            break;
                        }
                    default:
                        i26 = i26;
                        break;
                }
            }
            im<?, ?> imVar = this.n;
            i = i26 + imVar.d(imVar.a(t));
        } else {
            Unsafe unsafe2 = f29091b;
            int i32 = 0;
            int i33 = 0;
            int i34 = 1048575;
            for (int i35 = 0; i35 < this.f29092c.length; i35 += 3) {
                int d7 = d(i35);
                int i36 = this.f29092c[i35];
                int f11 = f(d7);
                if (f11 <= 17) {
                    int i37 = this.f29092c[i35 + 2];
                    int i38 = i37 & 1048575;
                    int i39 = 1 << (i37 >>> 20);
                    i34 = i34;
                    i2 = i39;
                    if (i38 != i34) {
                        i33 = unsafe2.getInt(t, i38);
                        i34 = i38;
                        i2 = i39;
                    }
                } else {
                    i2 = 0;
                    i34 = i34;
                }
                long j3 = d7 & 1048575;
                switch (f11) {
                    case 0:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            i4 = fs.f(i36 << 3);
                            i3 = i4 + 8;
                            i32 += i3;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            i5 = fs.f(i36 << 3);
                            i3 = i5 + 4;
                            i32 += i3;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            long j4 = unsafe2.getLong(t, j3);
                            i6 = fs.f(i36 << 3);
                            i7 = fs.c(j4);
                            i32 += i6 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            long j5 = unsafe2.getLong(t, j3);
                            i6 = fs.f(i36 << 3);
                            i7 = fs.c(j5);
                            i32 += i6 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            i32 += fs.f(i36 << 3) + fs.e(unsafe2.getInt(t, j3));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            i4 = fs.f(i36 << 3);
                            i3 = i4 + 8;
                            i32 += i3;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            i5 = fs.f(i36 << 3);
                            i3 = i5 + 4;
                            i32 += i3;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            i3 = fs.f(i36 << 3) + 1;
                            i32 += i3;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i32 = i32;
                        if ((i33 & i2) == 0) {
                            break;
                        } else {
                            Object object = unsafe2.getObject(t, j3);
                            if (object instanceof fm) {
                                f2 = fs.f(i36 << 3);
                                a3 = ((fm) object).a();
                                f3 = fs.f(a3);
                                i8 = f2 + f3 + a3;
                                i32 += i8;
                                break;
                            } else {
                                f = fs.f(i36 << 3);
                                a2 = fs.a((String) object);
                                i8 = f + a2;
                                i32 += i8;
                            }
                        }
                    case 9:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            a4 = ic.a(i36, unsafe2.getObject(t, j3), a(i35));
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            fm fmVar3 = (fm) unsafe2.getObject(t, j3);
                            f2 = fs.f(i36 << 3);
                            a3 = fmVar3.a();
                            f3 = fs.f(a3);
                            i8 = f2 + f3 + a3;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            int i40 = unsafe2.getInt(t, j3);
                            f = fs.f(i36 << 3);
                            a2 = fs.f(i40);
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            int i41 = unsafe2.getInt(t, j3);
                            f = fs.f(i36 << 3);
                            a2 = fs.e(i41);
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            i9 = fs.f(i36 << 3);
                            a4 = i9 + 4;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            i10 = fs.f(i36 << 3);
                            a4 = i10 + 8;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            int i42 = unsafe2.getInt(t, j3);
                            f = fs.f(i36 << 3);
                            a2 = fs.f((i42 >> 31) ^ (i42 + i42));
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            long j6 = unsafe2.getLong(t, j3);
                            i11 = fs.f(i36 << 3);
                            i12 = fs.c((j6 >> 63) ^ (j6 + j6));
                            i32 += i11 + i12;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i32 = i32;
                        if ((i33 & i2) != 0) {
                            a4 = fs.a(i36, (ho) unsafe2.getObject(t, j3), a(i35));
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        a4 = ic.i(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 19:
                        a4 = ic.h(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 20:
                        a4 = ic.a(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 21:
                        a4 = ic.b(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 22:
                        a4 = ic.e(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 23:
                        a4 = ic.i(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 24:
                        a4 = ic.h(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 25:
                        a4 = ic.j(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 26:
                        a4 = ic.k(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 27:
                        a4 = ic.a(i36, (List<?>) unsafe2.getObject(t, j3), a(i35));
                        i32 += a4;
                        break;
                    case 28:
                        a4 = ic.l(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 29:
                        a4 = ic.f(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 30:
                        a4 = ic.d(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 31:
                        a4 = ic.h(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 32:
                        a4 = ic.i(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 33:
                        a4 = ic.g(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 34:
                        a4 = ic.c(i36, (List) unsafe2.getObject(t, j3));
                        i32 += a4;
                        break;
                    case 35:
                        int i43 = ic.i((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (i43 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(i43);
                            a2 = i43;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        int h4 = ic.h((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (h4 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(h4);
                            a2 = h4;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        int a11 = ic.a((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (a11 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(a11);
                            a2 = a11;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        int b6 = ic.b((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (b6 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(b6);
                            a2 = b6;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        int e2 = ic.e((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (e2 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(e2);
                            a2 = e2;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        int i44 = ic.i((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (i44 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(i44);
                            a2 = i44;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        int h5 = ic.h((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (h5 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(h5);
                            a2 = h5;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        int j7 = ic.j((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (j7 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(j7);
                            a2 = j7;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        int f12 = ic.f((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (f12 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(f12);
                            a2 = f12;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        int d8 = ic.d((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (d8 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(d8);
                            a2 = d8;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        int h6 = ic.h((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (h6 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(h6);
                            a2 = h6;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        int i45 = ic.i((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (i45 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(i45);
                            a2 = i45;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        int g2 = ic.g((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (g2 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(g2);
                            a2 = g2;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        int c7 = ic.c((List) unsafe2.getObject(t, j3));
                        i32 = i32;
                        if (c7 > 0) {
                            i14 = fs.d(i36);
                            i13 = fs.f(c7);
                            a2 = c7;
                            f = i14 + i13;
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        a4 = ic.b(i36, (List) unsafe2.getObject(t, j3), a(i35));
                        i32 += a4;
                        break;
                    case 50:
                        Object object2 = unsafe2.getObject(t, j3);
                        b(i35);
                        hj.a(object2);
                        i32 = i32;
                        break;
                    case 51:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            i10 = fs.f(i36 << 3);
                            a4 = i10 + 8;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            i9 = fs.f(i36 << 3);
                            a4 = i9 + 4;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            long d9 = d(t, j3);
                            i11 = fs.f(i36 << 3);
                            i12 = fs.c(d9);
                            i32 += i11 + i12;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            long d10 = d(t, j3);
                            i11 = fs.f(i36 << 3);
                            i12 = fs.c(d10);
                            i32 += i11 + i12;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            int c8 = c(t, j3);
                            f = fs.f(i36 << 3);
                            a2 = fs.e(c8);
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            i10 = fs.f(i36 << 3);
                            a4 = i10 + 8;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            i9 = fs.f(i36 << 3);
                            a4 = i9 + 4;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            a4 = fs.f(i36 << 3) + 1;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i32 = i32;
                        if (!a((hr<T>) t, i36, i35)) {
                            break;
                        } else {
                            Object object3 = unsafe2.getObject(t, j3);
                            if (object3 instanceof fm) {
                                f2 = fs.f(i36 << 3);
                                a3 = ((fm) object3).a();
                                f3 = fs.f(a3);
                                i8 = f2 + f3 + a3;
                                i32 += i8;
                                break;
                            } else {
                                f = fs.f(i36 << 3);
                                a2 = fs.a((String) object3);
                                i8 = f + a2;
                                i32 += i8;
                            }
                        }
                    case 60:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            a4 = ic.a(i36, unsafe2.getObject(t, j3), a(i35));
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            fm fmVar4 = (fm) unsafe2.getObject(t, j3);
                            f2 = fs.f(i36 << 3);
                            a3 = fmVar4.a();
                            f3 = fs.f(a3);
                            i8 = f2 + f3 + a3;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            int c9 = c(t, j3);
                            f = fs.f(i36 << 3);
                            a2 = fs.f(c9);
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            int c10 = c(t, j3);
                            f = fs.f(i36 << 3);
                            a2 = fs.e(c10);
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            i9 = fs.f(i36 << 3);
                            a4 = i9 + 4;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            i10 = fs.f(i36 << 3);
                            a4 = i10 + 8;
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            int c11 = c(t, j3);
                            f = fs.f(i36 << 3);
                            a2 = fs.f((c11 >> 31) ^ (c11 + c11));
                            i8 = f + a2;
                            i32 += i8;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            long d11 = d(t, j3);
                            i11 = fs.f(i36 << 3);
                            i12 = fs.c((d11 >> 63) ^ (d11 + d11));
                            i32 += i11 + i12;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i32 = i32;
                        if (a((hr<T>) t, i36, i35)) {
                            a4 = fs.a(i36, (ho) unsafe2.getObject(t, j3), a(i35));
                            i32 += a4;
                            break;
                        } else {
                            break;
                        }
                    default:
                        i32 = i32;
                        break;
                }
            }
            im<?, ?> imVar2 = this.n;
            i = i32 + imVar2.d(imVar2.a(t));
            if (this.h) {
                throw null;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final void b(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.f29092c.length; i += 3) {
            int d2 = d(i);
            long j = 1048575 & d2;
            int i2 = this.f29092c[i];
            switch (f(d2)) {
                case 0:
                    if (a((hr<T>) t2, i)) {
                        ix.a(t, j, ix.e(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.d(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.b(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.b(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.a(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.b(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.a(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (a((hr<T>) t2, i)) {
                        ix.a(t, j, ix.c(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (a((hr<T>) t2, i)) {
                        ix.a(t, j, ix.f(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    a(t, t2, i);
                    break;
                case 10:
                    if (a((hr<T>) t2, i)) {
                        ix.a(t, j, ix.f(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.a(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.a(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.a(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.b(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.a(t2, j));
                        b((hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (a((hr<T>) t2, i)) {
                        ix.a((Object) t, j, ix.b(t2, j));
                        b((hr<T>) t, i);
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
                    this.m.a(t, t2, j);
                    break;
                case 50:
                    ic.a(t, t2, j);
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
                    if (a((hr<T>) t2, i2, i)) {
                        ix.a(t, j, ix.f(t2, j));
                        b((hr<T>) t, i2, i);
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
                    if (a((hr<T>) t2, i2, i)) {
                        ix.a(t, j, ix.f(t2, j));
                        b((hr<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    b(t, t2, i);
                    break;
            }
        }
        ic.a(this.n, t, t2);
        if (this.h) {
            ic.d();
        }
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final void c(T t) {
        int i;
        int i2 = this.k;
        while (true) {
            i = this.l;
            if (i2 >= i) {
                break;
            }
            long d2 = d(this.j[i2]) & 1048575;
            Object f = ix.f(t, d2);
            if (f != null) {
                ((hi) f).f29087a = false;
                ix.a(t, d2, f);
            }
            i2++;
        }
        int length = this.j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.m.a(t, this.j[i3]);
        }
        this.n.b(t);
        if (this.h) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.ia
    public final boolean d(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.k; i3++) {
            int i4 = this.j[i3];
            int i5 = this.f29092c[i4];
            int d2 = d(i4);
            int i6 = this.f29092c[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f29091b.getInt(t, i7);
                }
                i = i7;
            }
            if (!((268435456 & d2) == 0 || a((hr<T>) t, i4, i, i2, i8))) {
                return false;
            }
            int f = f(d2);
            if (f != 9 && f != 17) {
                if (f != 27) {
                    if (f == 60 || f == 68) {
                        if (a((hr<T>) t, i5, i4) && !a(t, d2, a(i4))) {
                            return false;
                        }
                    } else if (f != 49) {
                        if (f == 50 && !((hi) ix.f(t, d2 & 1048575)).isEmpty()) {
                            b(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) ix.f(t, d2 & 1048575);
                if (!list.isEmpty()) {
                    ia a2 = a(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!a2.d(list.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (a((hr<T>) t, i4, i, i2, i8) && !a(t, d2, a(i4))) {
                return false;
            }
        }
        if (!this.h) {
            return true;
        }
        throw null;
    }
}
