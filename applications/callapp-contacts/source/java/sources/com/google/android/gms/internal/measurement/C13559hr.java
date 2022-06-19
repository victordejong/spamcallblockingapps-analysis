package com.google.android.gms.internal.measurement;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.hr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hr.class */
public final class C13559hr<T> implements AbstractC13569ia<T> {

    /* renamed from: a */
    private static final int[] f50791a = new int[0];

    /* renamed from: b */
    private static final Unsafe f50792b = C13592ix.m12522c();

    /* renamed from: c */
    private final int[] f50793c;

    /* renamed from: d */
    private final Object[] f50794d;

    /* renamed from: e */
    private final int f50795e;

    /* renamed from: f */
    private final int f50796f;

    /* renamed from: g */
    private final AbstractC13556ho f50797g;

    /* renamed from: h */
    private final boolean f50798h;

    /* renamed from: i */
    private final boolean f50799i;

    /* renamed from: j */
    private final int[] f50800j;

    /* renamed from: k */
    private final int f50801k;

    /* renamed from: l */
    private final int f50802l;

    /* renamed from: m */
    private final AbstractC13545hd f50803m;

    /* renamed from: n */
    private final AbstractC13581im<?, ?> f50804n;

    /* renamed from: o */
    private final AbstractC13513fz<?> f50805o;

    /* renamed from: p */
    private final C13562hu f50806p;

    /* renamed from: q */
    private final C13551hj f50807q;

    /* JADX WARN: Multi-variable type inference failed */
    private C13559hr(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, AbstractC13556ho abstractC13556ho, boolean z, boolean z2, int[] iArr3, int i3, int i4, C13562hu c13562hu, AbstractC13545hd abstractC13545hd, AbstractC13581im<?, ?> abstractC13581im, AbstractC13513fz<?> abstractC13513fz, C13551hj c13551hj) {
        this.f50793c = iArr;
        this.f50794d = iArr2;
        this.f50795e = objArr;
        this.f50796f = i;
        this.f50799i = abstractC13556ho;
        boolean z3 = false;
        if (abstractC13581im != 0) {
            z3 = false;
            if (abstractC13581im.mo12795a((AbstractC13556ho) i2)) {
                z3 = true;
            }
        }
        this.f50798h = z3;
        this.f50800j = z2;
        this.f50801k = iArr3;
        this.f50802l = i3;
        this.f50806p = i4;
        this.f50803m = c13562hu;
        this.f50804n = abstractC13545hd;
        this.f50805o = abstractC13581im;
        this.f50797g = i2;
        this.f50807q = abstractC13513fz;
    }

    /* renamed from: a */
    private static <T> double m12690a(T t, long j) {
        return ((Double) C13592ix.m12512f(t, j)).doubleValue();
    }

    /* renamed from: a */
    private final int m12699a(int i, int i2) {
        if (i < this.f50795e || i > this.f50796f) {
            return -1;
        }
        return m12684b(i, i2);
    }

    /* renamed from: a */
    private final <K, V> int m12692a(T t, int i, long j) throws IOException {
        Unsafe unsafe = f50792b;
        m12685b(i);
        Object object = unsafe.getObject(t, j);
        if (!((C13550hi) object).f50788a) {
            C13550hi<K, V> m12721b = C13550hi.m12723a().m12721b();
            C13551hj.m12718a(m12721b, object);
            unsafe.putObject(t, j, m12721b);
        }
        throw null;
    }

    /* renamed from: a */
    private final int m12688a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C13488fa c13488fa) throws IOException {
        Unsafe unsafe = f50792b;
        long j2 = this.f50793c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(C13489fb.m12875b(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(C13489fb.m12878a(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int m12874b = C13489fb.m12874b(bArr, i, c13488fa);
                    unsafe.putObject(t, j, Long.valueOf(c13488fa.f50705b));
                    unsafe.putInt(t, j2, i4);
                    return m12874b;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int m12877a = C13489fb.m12877a(bArr, i, c13488fa);
                    unsafe.putObject(t, j, Integer.valueOf(c13488fa.f50704a));
                    unsafe.putInt(t, j2, i4);
                    return m12877a;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(C13489fb.m12875b(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(C13489fb.m12878a(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int m12874b2 = C13489fb.m12874b(bArr, i, c13488fa);
                    unsafe.putObject(t, j, Boolean.valueOf(c13488fa.f50705b != 0));
                    unsafe.putInt(t, j2, i4);
                    return m12874b2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = C13489fb.m12877a(bArr, i, c13488fa);
                    int i9 = c13488fa.f50704a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !C13598jc.m12503a(bArr, i, i + i9)) {
                        throw zzib.m12284f();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, C13534gt.f50765a));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = C13489fb.m12879a(m12700a(i8), bArr, i, i2, c13488fa);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, c13488fa.f50706c);
                    } else {
                        unsafe.putObject(t, j, C13534gt.m12745a(object, c13488fa.f50706c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int m12871e = C13489fb.m12871e(bArr, i, c13488fa);
                    unsafe.putObject(t, j, c13488fa.f50706c);
                    unsafe.putInt(t, j2, i4);
                    return m12871e;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = C13489fb.m12877a(bArr, i, c13488fa);
                    int i10 = c13488fa.f50704a;
                    AbstractC13530gp m12679c = m12679c(i8);
                    if (m12679c != null && !m12679c.mo12752a(i10)) {
                        m12672e(t).m12572a(i3, Long.valueOf(i10));
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
                    int m12877a2 = C13489fb.m12877a(bArr, i, c13488fa);
                    unsafe.putObject(t, j, Integer.valueOf(C13503fp.m12853a(c13488fa.f50704a)));
                    unsafe.putInt(t, j2, i4);
                    return m12877a2;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int m12874b3 = C13489fb.m12874b(bArr, i, c13488fa);
                    unsafe.putObject(t, j, Long.valueOf(C13503fp.m12852a(c13488fa.f50705b)));
                    unsafe.putInt(t, j2, i4);
                    return m12874b3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = C13489fb.m12880a(m12700a(i8), bArr, i, i2, (i3 & (-8)) | 4, c13488fa);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, c13488fa.f50706c);
                    } else {
                        unsafe.putObject(t, j, C13534gt.m12745a(object2, c13488fa.f50706c));
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m12687a(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.C13488fa r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13559hr.m12687a(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.fa):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x06ad, code lost:
        if (r28 == false) goto L121;
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06eb  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x071a  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0724  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.measurement.C13559hr<T> m12697a(com.google.android.gms.internal.measurement.AbstractC13553hl r19, com.google.android.gms.internal.measurement.C13562hu r20, com.google.android.gms.internal.measurement.AbstractC13545hd r21, com.google.android.gms.internal.measurement.AbstractC13581im<?, ?> r22, com.google.android.gms.internal.measurement.AbstractC13513fz<?> r23, com.google.android.gms.internal.measurement.C13551hj r24) {
        /*
            Method dump skipped, instructions count: 2665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13559hr.m12697a(com.google.android.gms.internal.measurement.hl, com.google.android.gms.internal.measurement.hu, com.google.android.gms.internal.measurement.hd, com.google.android.gms.internal.measurement.im, com.google.android.gms.internal.measurement.fz, com.google.android.gms.internal.measurement.hj):com.google.android.gms.internal.measurement.hr");
    }

    /* renamed from: a */
    private final AbstractC13569ia m12700a(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        AbstractC13569ia abstractC13569ia = (AbstractC13569ia) this.f50794d[i3];
        if (abstractC13569ia != null) {
            return abstractC13569ia;
        }
        AbstractC13569ia<T> m12664a = C13565hx.m12665a().m12664a((Class) this.f50794d[i3 + 1]);
        this.f50794d[i3] = m12664a;
        return m12664a;
    }

    /* renamed from: a */
    private static Field m12696a(Class<?> cls, String str) {
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
    private static final void m12698a(int i, Object obj, C13507ft c13507ft) throws IOException {
        if (obj instanceof String) {
            c13507ft.m12814a(i, (String) obj);
        } else {
            c13507ft.m12816a(i, (AbstractC13500fm) obj);
        }
    }

    /* renamed from: a */
    private final void m12689a(T t, T t2, int i) {
        long m12675d = m12675d(i) & 1048575;
        if (!m12695a((C13559hr<T>) t2, i)) {
            return;
        }
        Object m12512f = C13592ix.m12512f(t, m12675d);
        Object m12512f2 = C13592ix.m12512f(t2, m12675d);
        if (m12512f != null && m12512f2 != null) {
            C13592ix.m12531a(t, m12675d, C13534gt.m12745a(m12512f, m12512f2));
            m12683b((C13559hr<T>) t, i);
        } else if (m12512f2 == null) {
        } else {
            C13592ix.m12531a(t, m12675d, m12512f2);
            m12683b((C13559hr<T>) t, i);
        }
    }

    /* renamed from: a */
    private final boolean m12695a(T t, int i) {
        int m12673e = m12673e(i);
        long j = m12673e & 1048575;
        if (j != 1048575) {
            return (C13592ix.m12537a(t, j) & (1 << (m12673e >>> 20))) != 0;
        }
        int m12675d = m12675d(i);
        long j2 = m12675d & 1048575;
        switch (m12670f(m12675d)) {
            case 0:
                return C13592ix.m12513e(t, j2) != 0.0d;
            case 1:
                return C13592ix.m12515d(t, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return C13592ix.m12525b(t, j2) != 0;
            case 3:
                return C13592ix.m12525b(t, j2) != 0;
            case 4:
                return C13592ix.m12537a(t, j2) != 0;
            case 5:
                return C13592ix.m12525b(t, j2) != 0;
            case 6:
                return C13592ix.m12537a(t, j2) != 0;
            case 7:
                return C13592ix.m12520c(t, j2);
            case 8:
                Object m12512f = C13592ix.m12512f(t, j2);
                if (m12512f instanceof String) {
                    return !((String) m12512f).isEmpty();
                } else if (!(m12512f instanceof AbstractC13500fm)) {
                    throw new IllegalArgumentException();
                } else {
                    return !AbstractC13500fm.f50716b.equals(m12512f);
                }
            case 9:
                return C13592ix.m12512f(t, j2) != null;
            case 10:
                return !AbstractC13500fm.f50716b.equals(C13592ix.m12512f(t, j2));
            case 11:
                return C13592ix.m12537a(t, j2) != 0;
            case 12:
                return C13592ix.m12537a(t, j2) != 0;
            case 13:
                return C13592ix.m12537a(t, j2) != 0;
            case 14:
                return C13592ix.m12525b(t, j2) != 0;
            case 15:
                return C13592ix.m12537a(t, j2) != 0;
            case 16:
                return C13592ix.m12525b(t, j2) != 0;
            case 17:
                return C13592ix.m12512f(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    private final boolean m12694a(T t, int i, int i2) {
        return C13592ix.m12537a(t, (long) (m12673e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    private final boolean m12693a(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m12695a((C13559hr<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static boolean m12691a(Object obj, int i, AbstractC13569ia abstractC13569ia) {
        return abstractC13569ia.mo12648d(C13592ix.m12512f(obj, i & 1048575));
    }

    /* renamed from: b */
    private static <T> float m12681b(T t, long j) {
        return ((Float) C13592ix.m12512f(t, j)).floatValue();
    }

    /* renamed from: b */
    private final int m12684b(int i, int i2) {
        int length = (this.f50793c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f50793c[i4];
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
    private final Object m12685b(int i) {
        int i2 = i / 3;
        return this.f50794d[i2 + i2];
    }

    /* renamed from: b */
    private final void m12683b(T t, int i) {
        int m12673e = m12673e(i);
        long j = 1048575 & m12673e;
        if (j == 1048575) {
            return;
        }
        C13592ix.m12533a((Object) t, j, (1 << (m12673e >>> 20)) | C13592ix.m12537a(t, j));
    }

    /* renamed from: b */
    private final void m12682b(T t, int i, int i2) {
        C13592ix.m12533a((Object) t, m12673e(i2) & 1048575, i);
    }

    /* renamed from: b */
    private final void m12680b(T t, T t2, int i) {
        int m12675d = m12675d(i);
        int i2 = this.f50793c[i];
        long j = m12675d & 1048575;
        if (!m12694a((C13559hr<T>) t2, i2, i)) {
            return;
        }
        Object m12512f = m12694a((C13559hr<T>) t, i2, i) ? C13592ix.m12512f(t, j) : null;
        Object m12512f2 = C13592ix.m12512f(t2, j);
        if (m12512f != null && m12512f2 != null) {
            C13592ix.m12531a(t, j, C13534gt.m12745a(m12512f, m12512f2));
            m12682b((C13559hr<T>) t, i2, i);
        } else if (m12512f2 == null) {
        } else {
            C13592ix.m12531a(t, j, m12512f2);
            m12682b((C13559hr<T>) t, i2, i);
        }
    }

    /* renamed from: c */
    private static <T> int m12677c(T t, long j) {
        return ((Integer) C13592ix.m12512f(t, j)).intValue();
    }

    /* renamed from: c */
    private final AbstractC13530gp m12679c(int i) {
        int i2 = i / 3;
        return (AbstractC13530gp) this.f50794d[i2 + i2 + 1];
    }

    /* renamed from: c */
    private final <K, V> void m12678c(Object obj, int i) throws IOException {
        if (obj == null) {
            return;
        }
        m12685b(i);
        throw null;
    }

    /* renamed from: c */
    private final boolean m12676c(T t, T t2, int i) {
        return m12695a((C13559hr<T>) t, i) == m12695a((C13559hr<T>) t2, i);
    }

    /* renamed from: d */
    private final int m12675d(int i) {
        return this.f50793c[i + 1];
    }

    /* renamed from: d */
    private static <T> long m12674d(T t, long j) {
        return ((Long) C13592ix.m12512f(t, j)).longValue();
    }

    /* renamed from: e */
    private final int m12673e(int i) {
        return this.f50793c[i + 2];
    }

    /* renamed from: e */
    private static C13582in m12672e(Object obj) {
        AbstractC13526gl abstractC13526gl = (AbstractC13526gl) obj;
        C13582in c13582in = abstractC13526gl.zzc;
        C13582in c13582in2 = c13582in;
        if (c13582in == C13582in.m12573a()) {
            c13582in2 = C13582in.m12568b();
            abstractC13526gl.zzc = c13582in2;
        }
        return c13582in2;
    }

    /* renamed from: e */
    private static <T> boolean m12671e(T t, long j) {
        return ((Boolean) C13592ix.m12512f(t, j)).booleanValue();
    }

    /* renamed from: f */
    private static int m12670f(int i) {
        return (i >>> 20) & 255;
    }

    /* renamed from: g */
    private final int m12669g(int i) {
        if (i < this.f50795e || i > this.f50796f) {
            return -1;
        }
        return m12684b(i, 0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final int mo12655a(T t) {
        int i;
        int i2;
        int i3;
        int length = this.f50793c.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = this.f50804n.mo12565a(t).hashCode();
                if (this.f50798h) {
                    throw null;
                }
                return (i6 * 53) + hashCode;
            }
            int m12675d = m12675d(i4);
            int i7 = this.f50793c[i4];
            long j = 1048575 & m12675d;
            int i8 = 37;
            switch (m12670f(m12675d)) {
                case 0:
                    i2 = i6 * 53;
                    i3 = C13534gt.m12747a(Double.doubleToLongBits(C13592ix.m12513e(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(C13592ix.m12515d(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = C13534gt.m12747a(C13592ix.m12525b(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = C13534gt.m12747a(C13592ix.m12525b(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = C13592ix.m12537a(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = C13534gt.m12747a(C13592ix.m12525b(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = C13592ix.m12537a(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = C13534gt.m12743a(C13592ix.m12520c(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) C13592ix.m12512f(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object m12512f = C13592ix.m12512f(t, j);
                    if (m12512f != null) {
                        i8 = m12512f.hashCode();
                    }
                    i = (i6 * 53) + i8;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = C13592ix.m12512f(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = C13592ix.m12537a(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = C13592ix.m12537a(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = C13592ix.m12537a(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = C13534gt.m12747a(C13592ix.m12525b(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = C13592ix.m12537a(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = C13534gt.m12747a(C13592ix.m12525b(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object m12512f2 = C13592ix.m12512f(t, j);
                    if (m12512f2 != null) {
                        i8 = m12512f2.hashCode();
                    }
                    i = (i6 * 53) + i8;
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
                    i3 = C13592ix.m12512f(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = C13592ix.m12512f(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13534gt.m12747a(Double.doubleToLongBits(m12690a(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(m12681b(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13534gt.m12747a(m12674d(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13534gt.m12747a(m12674d(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12677c(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13534gt.m12747a(m12674d(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12677c(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13534gt.m12743a(m12671e(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) C13592ix.m12512f(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13592ix.m12512f(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13592ix.m12512f(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12677c(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12677c(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12677c(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13534gt.m12747a(m12674d(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12677c(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13534gt.m12747a(m12674d(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!m12694a((C13559hr<T>) t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C13592ix.m12512f(t, j).hashCode();
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

    /* JADX WARN: Code restructure failed: missing block: B:143:0x06cf, code lost:
        if (r31 == 1048575) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x06d2, code lost:
        r26.putInt(r17, r31, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x06e0, code lost:
        r19 = r23.f50801k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x06ec, code lost:
        if (r19 >= r23.f50802l) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x06ef, code lost:
        r0 = r23.f50800j[r19];
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0707, code lost:
        if (com.google.android.gms.internal.measurement.C13592ix.m12512f(r17, r23.m12675d(r0) & 1048575) != null) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0714, code lost:
        if (r23.m12679c(r0) != null) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0717, code lost:
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x071d, code lost:
        r23.m12685b(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0726, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0729, code lost:
        if (r21 != 0) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0730, code lost:
        if (r27 != r20) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0739, code lost:
        throw com.google.android.gms.internal.measurement.zzib.m12285e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x073e, code lost:
        if (r27 > r20) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0745, code lost:
        if (r28 != r21) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x074a, code lost:
        return r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x074e, code lost:
        throw com.google.android.gms.internal.measurement.zzib.m12285e();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m12686a(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.C13488fa r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13559hr.m12686a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.fa):int");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final T mo12656a() {
        return (T) ((AbstractC13526gl) this.f50797g).mo12768a(4);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final void mo12654a(T t, C13507ft c13507ft) throws IOException {
        int i;
        int i2;
        if (this.f50799i) {
            if (this.f50798h) {
                throw null;
            }
            int length = this.f50793c.length;
            for (int i3 = 0; i3 < length; i3 += 3) {
                int m12675d = m12675d(i3);
                int i4 = this.f50793c[i3];
                switch (m12670f(m12675d)) {
                    case 0:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12820a(i4, C13592ix.m12513e(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12819a(i4, C13592ix.m12515d(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12817a(i4, C13592ix.m12525b(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12808c(i4, C13592ix.m12525b(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12809c(i4, C13592ix.m12537a(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12806d(i4, C13592ix.m12525b(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12807d(i4, C13592ix.m12537a(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12813a(i4, C13592ix.m12520c(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            m12698a(i4, C13592ix.m12512f(t, m12675d & 1048575), c13507ft);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12815a(i4, C13592ix.m12512f(t, m12675d & 1048575), m12700a(i3));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12816a(i4, (AbstractC13500fm) C13592ix.m12512f(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12805e(i4, C13592ix.m12537a(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12812b(i4, C13592ix.m12537a(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12818a(i4, C13592ix.m12537a(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12811b(i4, C13592ix.m12525b(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12803f(i4, C13592ix.m12537a(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12804e(i4, C13592ix.m12525b(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (m12695a((C13559hr<T>) t, i3)) {
                            c13507ft.m12810b(i4, C13592ix.m12512f(t, m12675d & 1048575), m12700a(i3));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        C13571ic.m12640a(this.f50793c[i3], (List<Double>) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 19:
                        C13571ic.m12627b(this.f50793c[i3], (List<Float>) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 20:
                        C13571ic.m12622c(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 21:
                        C13571ic.m12618d(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 22:
                        C13571ic.m12606h(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 23:
                        C13571ic.m12612f(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 24:
                        C13571ic.m12597k(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 25:
                        C13571ic.m12593n(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 26:
                        C13571ic.m12642a(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft);
                        break;
                    case 27:
                        C13571ic.m12641a(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, m12700a(i3));
                        break;
                    case 28:
                        C13571ic.m12629b(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft);
                        break;
                    case 29:
                        C13571ic.m12603i(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 30:
                        C13571ic.m12594m(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 31:
                        C13571ic.m12595l(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 32:
                        C13571ic.m12609g(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 33:
                        C13571ic.m12600j(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 34:
                        C13571ic.m12615e(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, false);
                        break;
                    case 35:
                        C13571ic.m12640a(this.f50793c[i3], (List<Double>) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 36:
                        C13571ic.m12627b(this.f50793c[i3], (List<Float>) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 37:
                        C13571ic.m12622c(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 38:
                        C13571ic.m12618d(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 39:
                        C13571ic.m12606h(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 40:
                        C13571ic.m12612f(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 41:
                        C13571ic.m12597k(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 42:
                        C13571ic.m12593n(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 43:
                        C13571ic.m12603i(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 44:
                        C13571ic.m12594m(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 45:
                        C13571ic.m12595l(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 46:
                        C13571ic.m12609g(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 47:
                        C13571ic.m12600j(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 48:
                        C13571ic.m12615e(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, true);
                        break;
                    case 49:
                        C13571ic.m12628b(this.f50793c[i3], (List) C13592ix.m12512f(t, m12675d & 1048575), c13507ft, m12700a(i3));
                        break;
                    case 50:
                        m12678c(C13592ix.m12512f(t, m12675d & 1048575), i3);
                        break;
                    case 51:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12820a(i4, m12690a(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12819a(i4, m12681b(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12817a(i4, m12674d(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12808c(i4, m12674d(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12809c(i4, m12677c(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12806d(i4, m12674d(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12807d(i4, m12677c(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12813a(i4, m12671e(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            m12698a(i4, C13592ix.m12512f(t, m12675d & 1048575), c13507ft);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12815a(i4, C13592ix.m12512f(t, m12675d & 1048575), m12700a(i3));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12816a(i4, (AbstractC13500fm) C13592ix.m12512f(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12805e(i4, m12677c(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12812b(i4, m12677c(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12818a(i4, m12677c(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12811b(i4, m12674d(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12803f(i4, m12677c(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12804e(i4, m12674d(t, m12675d & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (m12694a((C13559hr<T>) t, i4, i3)) {
                            c13507ft.m12810b(i4, C13592ix.m12512f(t, m12675d & 1048575), m12700a(i3));
                            break;
                        } else {
                            break;
                        }
                }
            }
            AbstractC13581im<?, ?> abstractC13581im = this.f50804n;
            abstractC13581im.mo12563a((AbstractC13581im<?, ?>) abstractC13581im.mo12565a(t), c13507ft);
        } else if (this.f50798h) {
            throw null;
        } else {
            int length2 = this.f50793c.length;
            Unsafe unsafe = f50792b;
            int i5 = 0;
            int i6 = 0;
            int i7 = 1048575;
            while (i5 < length2) {
                int m12675d2 = m12675d(i5);
                int i8 = this.f50793c[i5];
                int m12670f = m12670f(m12675d2);
                if (m12670f <= 17) {
                    int i9 = this.f50793c[i5 + 2];
                    int i10 = i9 & 1048575;
                    i2 = i6;
                    int i11 = i7;
                    if (i10 != i7) {
                        i2 = unsafe.getInt(t, i10);
                        i11 = i10;
                    }
                    i = 1 << (i9 >>> 20);
                    i7 = i11;
                } else {
                    i = 0;
                    i2 = i6;
                }
                long j = m12675d2 & 1048575;
                switch (m12670f) {
                    case 0:
                        if ((i2 & i) != 0) {
                            c13507ft.m12820a(i8, C13592ix.m12513e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if ((i2 & i) != 0) {
                            c13507ft.m12819a(i8, C13592ix.m12515d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if ((i2 & i) != 0) {
                            c13507ft.m12817a(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if ((i2 & i) != 0) {
                            c13507ft.m12808c(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if ((i2 & i) != 0) {
                            c13507ft.m12809c(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if ((i2 & i) != 0) {
                            c13507ft.m12806d(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if ((i2 & i) != 0) {
                            c13507ft.m12807d(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if ((i2 & i) != 0) {
                            c13507ft.m12813a(i8, C13592ix.m12520c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if ((i2 & i) != 0) {
                            m12698a(i8, unsafe.getObject(t, j), c13507ft);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if ((i2 & i) != 0) {
                            c13507ft.m12815a(i8, unsafe.getObject(t, j), m12700a(i5));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if ((i2 & i) != 0) {
                            c13507ft.m12816a(i8, (AbstractC13500fm) unsafe.getObject(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if ((i2 & i) != 0) {
                            c13507ft.m12805e(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if ((i2 & i) != 0) {
                            c13507ft.m12812b(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if ((i2 & i) != 0) {
                            c13507ft.m12818a(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if ((i2 & i) != 0) {
                            c13507ft.m12811b(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if ((i2 & i) != 0) {
                            c13507ft.m12803f(i8, unsafe.getInt(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if ((i2 & i) != 0) {
                            c13507ft.m12804e(i8, unsafe.getLong(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if ((i2 & i) != 0) {
                            c13507ft.m12810b(i8, unsafe.getObject(t, j), m12700a(i5));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        C13571ic.m12640a(this.f50793c[i5], (List<Double>) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 19:
                        C13571ic.m12627b(this.f50793c[i5], (List<Float>) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 20:
                        C13571ic.m12622c(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 21:
                        C13571ic.m12618d(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 22:
                        C13571ic.m12606h(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 23:
                        C13571ic.m12612f(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 24:
                        C13571ic.m12597k(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 25:
                        C13571ic.m12593n(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 26:
                        C13571ic.m12642a(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft);
                        break;
                    case 27:
                        C13571ic.m12641a(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, m12700a(i5));
                        break;
                    case 28:
                        C13571ic.m12629b(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft);
                        break;
                    case 29:
                        C13571ic.m12603i(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 30:
                        C13571ic.m12594m(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 31:
                        C13571ic.m12595l(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 32:
                        C13571ic.m12609g(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 33:
                        C13571ic.m12600j(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 34:
                        C13571ic.m12615e(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, false);
                        break;
                    case 35:
                        C13571ic.m12640a(this.f50793c[i5], (List<Double>) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 36:
                        C13571ic.m12627b(this.f50793c[i5], (List<Float>) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 37:
                        C13571ic.m12622c(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 38:
                        C13571ic.m12618d(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 39:
                        C13571ic.m12606h(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 40:
                        C13571ic.m12612f(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 41:
                        C13571ic.m12597k(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 42:
                        C13571ic.m12593n(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 43:
                        C13571ic.m12603i(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 44:
                        C13571ic.m12594m(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 45:
                        C13571ic.m12595l(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 46:
                        C13571ic.m12609g(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 47:
                        C13571ic.m12600j(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 48:
                        C13571ic.m12615e(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, true);
                        break;
                    case 49:
                        C13571ic.m12628b(this.f50793c[i5], (List) unsafe.getObject(t, j), c13507ft, m12700a(i5));
                        break;
                    case 50:
                        m12678c(unsafe.getObject(t, j), i5);
                        break;
                    case 51:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12820a(i8, m12690a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12819a(i8, m12681b(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12817a(i8, m12674d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12808c(i8, m12674d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12809c(i8, m12677c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12806d(i8, m12674d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12807d(i8, m12677c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12813a(i8, m12671e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            m12698a(i8, unsafe.getObject(t, j), c13507ft);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12815a(i8, unsafe.getObject(t, j), m12700a(i5));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12816a(i8, (AbstractC13500fm) unsafe.getObject(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12805e(i8, m12677c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12812b(i8, m12677c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12818a(i8, m12677c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12811b(i8, m12674d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12803f(i8, m12677c(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12804e(i8, m12674d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (m12694a((C13559hr<T>) t, i8, i5)) {
                            c13507ft.m12810b(i8, unsafe.getObject(t, j), m12700a(i5));
                            break;
                        } else {
                            break;
                        }
                }
                i5 += 3;
                i6 = i2;
            }
            AbstractC13581im<?, ?> abstractC13581im2 = this.f50804n;
            abstractC13581im2.mo12563a((AbstractC13581im<?, ?>) abstractC13581im2.mo12565a(t), c13507ft);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v255, types: [int] */
    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final void mo12652a(T t, byte[] bArr, int i, int i2, C13488fa c13488fa) throws IOException {
        int i3;
        int i4;
        Unsafe unsafe;
        int i5;
        T t2;
        Unsafe unsafe2;
        int i6;
        int i7;
        int m12874b;
        int i8;
        int i9;
        C13559hr<T> c13559hr = this;
        T t3 = t;
        byte[] bArr2 = bArr;
        int i10 = i2;
        C13488fa c13488fa2 = c13488fa;
        if (!c13559hr.f50799i) {
            m12686a((C13559hr<T>) t, bArr, i, i2, 0, c13488fa);
            return;
        }
        Unsafe unsafe3 = f50792b;
        int i11 = i;
        int i12 = -1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1048575;
        while (i11 < i10) {
            int i16 = i11 + 1;
            byte b = bArr2[i11];
            if (b < 0) {
                i3 = C13489fb.m12882a(b, bArr2, i16, c13488fa2);
                b = c13488fa2.f50704a;
            } else {
                i3 = i16;
            }
            int i17 = b >>> 3;
            int i18 = b & 7;
            int m12699a = i17 > i12 ? c13559hr.m12699a(i17, i13 / 3) : c13559hr.m12669g(i17);
            if (m12699a == -1) {
                i4 = 0;
                unsafe = unsafe3;
            } else {
                int i19 = c13559hr.f50793c[m12699a + 1];
                int m12670f = m12670f(i19);
                long j = i19 & 1048575;
                if (m12670f <= 17) {
                    int i20 = c13559hr.f50793c[m12699a + 2];
                    boolean z = true;
                    int i21 = 1 << (i20 >>> 20);
                    int i22 = i20 & 1048575;
                    if (i22 != i15) {
                        if (i15 != 1048575) {
                            unsafe3.putInt(t3, i15, i14);
                        }
                        if (i22 != 1048575) {
                            i14 = unsafe3.getInt(t3, i22);
                        }
                        i15 = i22;
                        i6 = i14;
                    } else {
                        i6 = i14;
                    }
                    i4 = m12699a;
                    switch (m12670f) {
                        case 0:
                            if (i18 == 1) {
                                C13592ix.m12535a(t3, j, Double.longBitsToDouble(C13489fb.m12875b(bArr2, i3)));
                                i7 = i3 + 8;
                                i13 = i4;
                                i8 = i7;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        case 1:
                            if (i18 == 5) {
                                C13592ix.m12534a((Object) t3, j, Float.intBitsToFloat(C13489fb.m12878a(bArr2, i3)));
                                i7 = i3 + 4;
                                i13 = i4;
                                i8 = i7;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        case 2:
                        case 3:
                            if (i18 == 0) {
                                m12874b = C13489fb.m12874b(bArr2, i3, c13488fa2);
                                unsafe3.putLong(t, j, c13488fa2.f50705b);
                                i13 = i4;
                                i8 = m12874b;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        case 4:
                        case 11:
                            if (i18 == 0) {
                                i7 = C13489fb.m12877a(bArr2, i3, c13488fa2);
                                unsafe3.putInt(t3, j, c13488fa2.f50704a);
                                i13 = i4;
                                i8 = i7;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        case 5:
                        case 14:
                            if (i18 == 1) {
                                unsafe3.putLong(t, j, C13489fb.m12875b(bArr2, i3));
                                i7 = i3 + 8;
                                i13 = i4;
                                i8 = i7;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        case 6:
                        case 13:
                            if (i18 != 5) {
                                i14 = i6;
                                unsafe = unsafe3;
                                break;
                            } else {
                                unsafe3.putInt(t3, j, C13489fb.m12878a(bArr2, i3));
                                i11 = i3 + 4;
                                i10 = i2;
                                i13 = i4;
                                i12 = i17;
                                i14 = i6 | i21;
                                break;
                            }
                        case 7:
                            if (i18 != 0) {
                                i14 = i6;
                                unsafe = unsafe3;
                                break;
                            } else {
                                i11 = C13489fb.m12874b(bArr2, i3, c13488fa2);
                                if (c13488fa2.f50705b == 0) {
                                    z = false;
                                }
                                C13592ix.m12530a(t3, j, z);
                                i10 = i2;
                                i13 = i4;
                                i12 = i17;
                                i14 = i6 | i21;
                                break;
                            }
                        case 8:
                            if (i18 != 2) {
                                i14 = i6;
                                unsafe = unsafe3;
                                break;
                            } else {
                                i11 = (i19 & 536870912) == 0 ? C13489fb.m12873c(bArr2, i3, c13488fa2) : C13489fb.m12872d(bArr2, i3, c13488fa2);
                                unsafe3.putObject(t3, j, c13488fa2.f50706c);
                                i10 = i2;
                                i13 = i4;
                                i12 = i17;
                                i14 = i6 | i21;
                                break;
                            }
                        case 9:
                            if (i18 != 2) {
                                i14 = i6;
                                unsafe = unsafe3;
                                break;
                            } else {
                                i11 = C13489fb.m12879a(c13559hr.m12700a(i4), bArr2, i3, i2, c13488fa2);
                                Object object = unsafe3.getObject(t3, j);
                                if (object == null) {
                                    unsafe3.putObject(t3, j, c13488fa2.f50706c);
                                } else {
                                    unsafe3.putObject(t3, j, C13534gt.m12745a(object, c13488fa2.f50706c));
                                }
                                i10 = i2;
                                i13 = i4;
                                i12 = i17;
                                i14 = i6 | i21;
                                break;
                            }
                        case 10:
                            if (i18 == 2) {
                                i7 = C13489fb.m12871e(bArr2, i3, c13488fa2);
                                unsafe3.putObject(t3, j, c13488fa2.f50706c);
                                i13 = i4;
                                i8 = i7;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        case 12:
                            if (i18 == 0) {
                                i7 = C13489fb.m12877a(bArr2, i3, c13488fa2);
                                unsafe3.putInt(t3, j, c13488fa2.f50704a);
                                i13 = i4;
                                i8 = i7;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        case 15:
                            if (i18 == 0) {
                                i7 = C13489fb.m12877a(bArr2, i3, c13488fa2);
                                unsafe3.putInt(t3, j, C13503fp.m12853a(c13488fa2.f50704a));
                                i13 = i4;
                                i8 = i7;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        case 16:
                            if (i18 == 0) {
                                m12874b = C13489fb.m12874b(bArr2, i3, c13488fa2);
                                unsafe3.putLong(t, j, C13503fp.m12852a(c13488fa2.f50705b));
                                i13 = i4;
                                i8 = m12874b;
                                i14 = i6 | i21;
                                i11 = i8;
                                break;
                            }
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                        default:
                            i14 = i6;
                            unsafe = unsafe3;
                            break;
                    }
                } else {
                    i4 = m12699a;
                    Unsafe unsafe4 = unsafe3;
                    if (m12670f == 27) {
                        if (i18 == 2) {
                            AbstractC13533gs abstractC13533gs = (AbstractC13533gs) unsafe4.getObject(t3, j);
                            AbstractC13533gs abstractC13533gs2 = abstractC13533gs;
                            if (!abstractC13533gs.mo12750a()) {
                                int size = abstractC13533gs.size();
                                abstractC13533gs2 = abstractC13533gs.mo12663a(size == 0 ? 10 : size + size);
                                unsafe4.putObject(t3, j, abstractC13533gs2);
                            }
                            i13 = i4;
                            unsafe3 = unsafe4;
                            i8 = C13489fb.m12881a(c13559hr.m12700a(i4), b, bArr, i3, i2, abstractC13533gs2, c13488fa);
                            i11 = i8;
                        }
                    } else if (m12670f <= 49) {
                        unsafe2 = unsafe4;
                        i5 = m12687a((C13559hr<T>) t, bArr, i3, i2, b, i17, i18, i4, i19, m12670f, j, c13488fa);
                        if (i5 != i3) {
                            c13559hr = this;
                            bArr2 = bArr;
                            i10 = i2;
                            c13488fa2 = c13488fa;
                            unsafe3 = unsafe2;
                            i11 = i5;
                            i12 = i17;
                            i13 = i4;
                            i14 = i14;
                            t3 = t;
                        } else {
                            t2 = t;
                            i11 = C13489fb.m12883a(b, bArr, i5, i2, m12672e(t), c13488fa);
                            bArr2 = bArr;
                            c13488fa2 = c13488fa;
                            T t4 = t2;
                            unsafe3 = unsafe2;
                            c13559hr = this;
                            t3 = t4;
                            i13 = i4;
                        }
                    } else {
                        int i23 = i14;
                        int i24 = i15;
                        if (m12670f != 50) {
                            t3 = t;
                            int m12688a = m12688a((C13559hr<T>) t, bArr, i3, i2, b, i17, i18, i19, m12670f, j, i4, c13488fa);
                            if (m12688a != i3) {
                                bArr2 = bArr;
                                i10 = i2;
                                c13488fa2 = c13488fa;
                                i13 = i4;
                                i12 = i17;
                                i14 = i23;
                                i15 = i24;
                                unsafe3 = unsafe4;
                                c13559hr = this;
                                i11 = m12688a;
                            } else {
                                i9 = m12688a;
                                Unsafe unsafe5 = unsafe3;
                                int i25 = m12699a;
                                i5 = i9;
                                i4 = i25;
                                t2 = t3;
                                unsafe2 = unsafe5;
                            }
                        } else if (i18 == 2) {
                            t3 = t;
                            i9 = m12692a((C13559hr<T>) t3, i4, j);
                            if (i9 != i3) {
                                bArr2 = bArr;
                                c13488fa2 = c13488fa;
                                i13 = i4;
                                i14 = i23;
                                i15 = i24;
                                unsafe3 = unsafe4;
                                i10 = i2;
                                c13559hr = this;
                                i11 = i9;
                                i12 = i17;
                            } else {
                                Unsafe unsafe52 = unsafe3;
                                int i252 = m12699a;
                                i5 = i9;
                                i4 = i252;
                                t2 = t3;
                                unsafe2 = unsafe52;
                            }
                        } else {
                            t3 = t;
                        }
                        i11 = C13489fb.m12883a(b, bArr, i5, i2, m12672e(t), c13488fa);
                        bArr2 = bArr;
                        c13488fa2 = c13488fa;
                        T t42 = t2;
                        unsafe3 = unsafe2;
                        c13559hr = this;
                        t3 = t42;
                        i13 = i4;
                    }
                    i9 = i3;
                    Unsafe unsafe522 = unsafe3;
                    int i2522 = m12699a;
                    i5 = i9;
                    i4 = i2522;
                    t2 = t3;
                    unsafe2 = unsafe522;
                    i11 = C13489fb.m12883a(b, bArr, i5, i2, m12672e(t), c13488fa);
                    bArr2 = bArr;
                    c13488fa2 = c13488fa;
                    T t422 = t2;
                    unsafe3 = unsafe2;
                    c13559hr = this;
                    t3 = t422;
                    i13 = i4;
                }
                i12 = i17;
                i10 = i2;
            }
            t2 = t3;
            i5 = i3;
            unsafe2 = unsafe;
            i11 = C13489fb.m12883a(b, bArr, i5, i2, m12672e(t), c13488fa);
            bArr2 = bArr;
            c13488fa2 = c13488fa;
            T t4222 = t2;
            unsafe3 = unsafe2;
            c13559hr = this;
            t3 = t4222;
            i13 = i4;
            i12 = i17;
            i10 = i2;
        }
        if (i15 != 1048575) {
            unsafe3.putInt(t3, i15, i14);
        }
        if (i11 != i2) {
            throw zzib.m12285e();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final boolean mo12653a(T t, T t2) {
        boolean z;
        int length = this.f50793c.length;
        for (int i = 0; i < length; i += 3) {
            int m12675d = m12675d(i);
            long j = m12675d & 1048575;
            switch (m12670f(m12675d)) {
                case 0:
                    if (!m12676c(t, t2, i) || Double.doubleToLongBits(C13592ix.m12513e(t, j)) != Double.doubleToLongBits(C13592ix.m12513e(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!m12676c(t, t2, i) || Float.floatToIntBits(C13592ix.m12515d(t, j)) != Float.floatToIntBits(C13592ix.m12515d(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!m12676c(t, t2, i) || C13592ix.m12525b(t, j) != C13592ix.m12525b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!m12676c(t, t2, i) || C13592ix.m12525b(t, j) != C13592ix.m12525b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!m12676c(t, t2, i) || C13592ix.m12537a(t, j) != C13592ix.m12537a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!m12676c(t, t2, i) || C13592ix.m12525b(t, j) != C13592ix.m12525b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!m12676c(t, t2, i) || C13592ix.m12537a(t, j) != C13592ix.m12537a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!m12676c(t, t2, i) || C13592ix.m12520c(t, j) != C13592ix.m12520c(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!m12676c(t, t2, i) || !C13571ic.m12635a(C13592ix.m12512f(t, j), C13592ix.m12512f(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!m12676c(t, t2, i) || !C13571ic.m12635a(C13592ix.m12512f(t, j), C13592ix.m12512f(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!m12676c(t, t2, i) || !C13571ic.m12635a(C13592ix.m12512f(t, j), C13592ix.m12512f(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!m12676c(t, t2, i) || C13592ix.m12537a(t, j) != C13592ix.m12537a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!m12676c(t, t2, i) || C13592ix.m12537a(t, j) != C13592ix.m12537a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!m12676c(t, t2, i) || C13592ix.m12537a(t, j) != C13592ix.m12537a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!m12676c(t, t2, i) || C13592ix.m12525b(t, j) != C13592ix.m12525b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!m12676c(t, t2, i) || C13592ix.m12537a(t, j) != C13592ix.m12537a(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!m12676c(t, t2, i) || C13592ix.m12525b(t, j) != C13592ix.m12525b(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!m12676c(t, t2, i) || !C13571ic.m12635a(C13592ix.m12512f(t, j), C13592ix.m12512f(t2, j))) {
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
                    z = C13571ic.m12635a(C13592ix.m12512f(t, j), C13592ix.m12512f(t2, j));
                    break;
                case 50:
                    z = C13571ic.m12635a(C13592ix.m12512f(t, j), C13592ix.m12512f(t2, j));
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
                    long m12673e = m12673e(i) & 1048575;
                    if (C13592ix.m12537a(t, m12673e) != C13592ix.m12537a(t2, m12673e) || !C13571ic.m12635a(C13592ix.m12512f(t, j), C13592ix.m12512f(t2, j))) {
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
        if (!this.f50804n.mo12565a(t).equals(this.f50804n.mo12565a(t2))) {
            return false;
        }
        if (this.f50798h) {
            throw null;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: b */
    public final int mo12651b(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int m12821f;
        int m12837a;
        int m12821f2;
        int mo12866a;
        int m12821f3;
        int m12644a;
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
        int i24;
        int i25;
        int i26;
        int m12821f4;
        int mo12866a2;
        int m12821f5;
        int i27;
        int i28;
        int i29 = 0;
        if (this.f50799i) {
            Unsafe unsafe = f50792b;
            int i30 = 0;
            while (true) {
                int i31 = i30;
                if (i29 < this.f50793c.length) {
                    int m12675d = m12675d(i29);
                    int m12670f = m12670f(m12675d);
                    int i32 = this.f50793c[i29];
                    long j = m12675d & 1048575;
                    if (m12670f >= EnumC13519ge.DOUBLE_LIST_PACKED.zza()) {
                        EnumC13519ge.SINT64_LIST_PACKED.zza();
                    }
                    switch (m12670f) {
                        case 0:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i18 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i18 + 8;
                                i17 = i31 + i19;
                                break;
                            }
                        case 1:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i20 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i20 + 4;
                                i17 = i31 + i19;
                                break;
                            }
                        case 2:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                long m12525b = C13592ix.m12525b(t, j);
                                i21 = AbstractC13506fs.m12821f(i32 << 3);
                                i22 = AbstractC13506fs.m12825c(m12525b);
                                i17 = i31 + i21 + i22;
                                break;
                            }
                        case 3:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                long m12525b2 = C13592ix.m12525b(t, j);
                                i21 = AbstractC13506fs.m12821f(i32 << 3);
                                i22 = AbstractC13506fs.m12825c(m12525b2);
                                i17 = i31 + i21 + i22;
                                break;
                            }
                        case 4:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                int m12537a = C13592ix.m12537a(t, j);
                                i24 = AbstractC13506fs.m12821f(i32 << 3);
                                i25 = AbstractC13506fs.m12822e(m12537a);
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 5:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i18 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i18 + 8;
                                i17 = i31 + i19;
                                break;
                            }
                        case 6:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i20 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i20 + 4;
                                i17 = i31 + i19;
                                break;
                            }
                        case 7:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i26 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i26 + 1;
                                i17 = i31 + i19;
                                break;
                            }
                        case 8:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                Object m12512f = C13592ix.m12512f(t, j);
                                if (m12512f instanceof AbstractC13500fm) {
                                    m12821f4 = AbstractC13506fs.m12821f(i32 << 3);
                                    mo12866a2 = ((AbstractC13500fm) m12512f).mo12866a();
                                    m12821f5 = AbstractC13506fs.m12821f(mo12866a2);
                                    i23 = m12821f4 + m12821f5 + mo12866a2;
                                    i17 = i31 + i23;
                                    break;
                                } else {
                                    i24 = AbstractC13506fs.m12821f(i32 << 3);
                                    i25 = AbstractC13506fs.m12837a((String) m12512f);
                                    i23 = i24 + i25;
                                    i17 = i31 + i23;
                                }
                            }
                        case 9:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i19 = C13571ic.m12644a(i32, C13592ix.m12512f(t, j), m12700a(i29));
                                i17 = i31 + i19;
                                break;
                            }
                        case 10:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                AbstractC13500fm abstractC13500fm = (AbstractC13500fm) C13592ix.m12512f(t, j);
                                m12821f4 = AbstractC13506fs.m12821f(i32 << 3);
                                mo12866a2 = abstractC13500fm.mo12866a();
                                m12821f5 = AbstractC13506fs.m12821f(mo12866a2);
                                i23 = m12821f4 + m12821f5 + mo12866a2;
                                i17 = i31 + i23;
                                break;
                            }
                        case 11:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                int m12537a2 = C13592ix.m12537a(t, j);
                                i24 = AbstractC13506fs.m12821f(i32 << 3);
                                i25 = AbstractC13506fs.m12821f(m12537a2);
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 12:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                int m12537a3 = C13592ix.m12537a(t, j);
                                i24 = AbstractC13506fs.m12821f(i32 << 3);
                                i25 = AbstractC13506fs.m12822e(m12537a3);
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 13:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i20 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i20 + 4;
                                i17 = i31 + i19;
                                break;
                            }
                        case 14:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i18 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i18 + 8;
                                i17 = i31 + i19;
                                break;
                            }
                        case 15:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                int m12537a4 = C13592ix.m12537a(t, j);
                                i24 = AbstractC13506fs.m12821f(i32 << 3);
                                i25 = AbstractC13506fs.m12821f((m12537a4 >> 31) ^ (m12537a4 + m12537a4));
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 16:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                long m12525b3 = C13592ix.m12525b(t, j);
                                i21 = AbstractC13506fs.m12821f(i32 << 3);
                                i22 = AbstractC13506fs.m12825c((m12525b3 >> 63) ^ (m12525b3 + m12525b3));
                                i17 = i31 + i21 + i22;
                                break;
                            }
                        case 17:
                            i17 = i31;
                            if (!m12695a((C13559hr<T>) t, i29)) {
                                break;
                            } else {
                                i19 = AbstractC13506fs.m12844a(i32, (AbstractC13556ho) C13592ix.m12512f(t, j), m12700a(i29));
                                i17 = i31 + i19;
                                break;
                            }
                        case 18:
                            i19 = C13571ic.m12604i(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 19:
                            i19 = C13571ic.m12607h(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 20:
                            i19 = C13571ic.m12643a(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 21:
                            i19 = C13571ic.m12630b(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 22:
                            i19 = C13571ic.m12616e(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 23:
                            i19 = C13571ic.m12604i(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 24:
                            i19 = C13571ic.m12607h(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 25:
                            i19 = C13571ic.m12601j(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 26:
                            i19 = C13571ic.m12598k(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 27:
                            i19 = C13571ic.m12638a(i32, (List<?>) C13592ix.m12512f(t, j), m12700a(i29));
                            i17 = i31 + i19;
                            break;
                        case 28:
                            i19 = C13571ic.m12596l(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 29:
                            i19 = C13571ic.m12613f(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 30:
                            i19 = C13571ic.m12619d(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 31:
                            i19 = C13571ic.m12607h(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 32:
                            i19 = C13571ic.m12604i(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 33:
                            i19 = C13571ic.m12610g(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 34:
                            i19 = C13571ic.m12623c(i32, (List) C13592ix.m12512f(t, j));
                            i17 = i31 + i19;
                            break;
                        case 35:
                            int m12602i = C13571ic.m12602i((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12602i <= 0) {
                                break;
                            } else {
                                i28 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12602i);
                                i25 = m12602i;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 36:
                            int m12605h = C13571ic.m12605h((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12605h <= 0) {
                                break;
                            } else {
                                int m12824d = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12605h);
                                i25 = m12605h;
                                i28 = m12824d;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 37:
                            int m12633a = C13571ic.m12633a((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12633a <= 0) {
                                break;
                            } else {
                                int m12824d2 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12633a);
                                i25 = m12633a;
                                i28 = m12824d2;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 38:
                            int m12625b = C13571ic.m12625b((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12625b <= 0) {
                                break;
                            } else {
                                int m12824d3 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12625b);
                                i25 = m12625b;
                                i28 = m12824d3;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 39:
                            int m12614e = C13571ic.m12614e((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12614e <= 0) {
                                break;
                            } else {
                                int m12824d4 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12614e);
                                i25 = m12614e;
                                i28 = m12824d4;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 40:
                            int m12602i2 = C13571ic.m12602i((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12602i2 <= 0) {
                                break;
                            } else {
                                int m12824d5 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12602i2);
                                i25 = m12602i2;
                                i28 = m12824d5;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 41:
                            int m12605h2 = C13571ic.m12605h((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12605h2 <= 0) {
                                break;
                            } else {
                                int m12824d6 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12605h2);
                                i25 = m12605h2;
                                i28 = m12824d6;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 42:
                            int m12599j = C13571ic.m12599j((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12599j <= 0) {
                                break;
                            } else {
                                int m12824d7 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12599j);
                                i25 = m12599j;
                                i28 = m12824d7;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 43:
                            int m12611f = C13571ic.m12611f((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12611f <= 0) {
                                break;
                            } else {
                                int m12824d8 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12611f);
                                i25 = m12611f;
                                i28 = m12824d8;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 44:
                            int m12617d = C13571ic.m12617d((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12617d <= 0) {
                                break;
                            } else {
                                int m12824d9 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12617d);
                                i25 = m12617d;
                                i28 = m12824d9;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 45:
                            int m12605h3 = C13571ic.m12605h((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12605h3 <= 0) {
                                break;
                            } else {
                                int m12824d10 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12605h3);
                                i25 = m12605h3;
                                i28 = m12824d10;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 46:
                            int m12602i3 = C13571ic.m12602i((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12602i3 <= 0) {
                                break;
                            } else {
                                int m12824d11 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12602i3);
                                i25 = m12602i3;
                                i28 = m12824d11;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 47:
                            int m12608g = C13571ic.m12608g((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12608g <= 0) {
                                break;
                            } else {
                                int m12824d12 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12608g);
                                i25 = m12608g;
                                i28 = m12824d12;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 48:
                            int m12621c = C13571ic.m12621c((List) unsafe.getObject(t, j));
                            i17 = i31;
                            if (m12621c <= 0) {
                                break;
                            } else {
                                int m12824d13 = AbstractC13506fs.m12824d(i32);
                                i27 = AbstractC13506fs.m12821f(m12621c);
                                i25 = m12621c;
                                i28 = m12824d13;
                                i24 = i28 + i27;
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 49:
                            i19 = C13571ic.m12626b(i32, (List) C13592ix.m12512f(t, j), m12700a(i29));
                            i17 = i31 + i19;
                            break;
                        case 50:
                            Object m12512f2 = C13592ix.m12512f(t, j);
                            m12685b(i29);
                            C13551hj.m12719a(m12512f2);
                            i17 = i31;
                            break;
                        case 51:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i18 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i18 + 8;
                                i17 = i31 + i19;
                                break;
                            }
                        case 52:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i20 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i20 + 4;
                                i17 = i31 + i19;
                                break;
                            }
                        case 53:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                long m12674d = m12674d(t, j);
                                i21 = AbstractC13506fs.m12821f(i32 << 3);
                                i22 = AbstractC13506fs.m12825c(m12674d);
                                i17 = i31 + i21 + i22;
                                break;
                            }
                        case 54:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                long m12674d2 = m12674d(t, j);
                                i21 = AbstractC13506fs.m12821f(i32 << 3);
                                i22 = AbstractC13506fs.m12825c(m12674d2);
                                i17 = i31 + i21 + i22;
                                break;
                            }
                        case 55:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                int m12677c = m12677c(t, j);
                                i24 = AbstractC13506fs.m12821f(i32 << 3);
                                i25 = AbstractC13506fs.m12822e(m12677c);
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 56:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i18 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i18 + 8;
                                i17 = i31 + i19;
                                break;
                            }
                        case 57:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i20 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i20 + 4;
                                i17 = i31 + i19;
                                break;
                            }
                        case 58:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i26 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i26 + 1;
                                i17 = i31 + i19;
                                break;
                            }
                        case 59:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                Object m12512f3 = C13592ix.m12512f(t, j);
                                if (m12512f3 instanceof AbstractC13500fm) {
                                    m12821f4 = AbstractC13506fs.m12821f(i32 << 3);
                                    mo12866a2 = ((AbstractC13500fm) m12512f3).mo12866a();
                                    m12821f5 = AbstractC13506fs.m12821f(mo12866a2);
                                    i23 = m12821f4 + m12821f5 + mo12866a2;
                                    i17 = i31 + i23;
                                    break;
                                } else {
                                    i24 = AbstractC13506fs.m12821f(i32 << 3);
                                    i25 = AbstractC13506fs.m12837a((String) m12512f3);
                                    i23 = i24 + i25;
                                    i17 = i31 + i23;
                                }
                            }
                        case 60:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i19 = C13571ic.m12644a(i32, C13592ix.m12512f(t, j), m12700a(i29));
                                i17 = i31 + i19;
                                break;
                            }
                        case 61:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                AbstractC13500fm abstractC13500fm2 = (AbstractC13500fm) C13592ix.m12512f(t, j);
                                m12821f4 = AbstractC13506fs.m12821f(i32 << 3);
                                mo12866a2 = abstractC13500fm2.mo12866a();
                                m12821f5 = AbstractC13506fs.m12821f(mo12866a2);
                                i23 = m12821f4 + m12821f5 + mo12866a2;
                                i17 = i31 + i23;
                                break;
                            }
                        case 62:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                int m12677c2 = m12677c(t, j);
                                i24 = AbstractC13506fs.m12821f(i32 << 3);
                                i25 = AbstractC13506fs.m12821f(m12677c2);
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 63:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                int m12677c3 = m12677c(t, j);
                                i24 = AbstractC13506fs.m12821f(i32 << 3);
                                i25 = AbstractC13506fs.m12822e(m12677c3);
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 64:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i20 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i20 + 4;
                                i17 = i31 + i19;
                                break;
                            }
                        case 65:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i18 = AbstractC13506fs.m12821f(i32 << 3);
                                i19 = i18 + 8;
                                i17 = i31 + i19;
                                break;
                            }
                        case 66:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                int m12677c4 = m12677c(t, j);
                                i24 = AbstractC13506fs.m12821f(i32 << 3);
                                i25 = AbstractC13506fs.m12821f((m12677c4 >> 31) ^ (m12677c4 + m12677c4));
                                i23 = i24 + i25;
                                i17 = i31 + i23;
                                break;
                            }
                        case 67:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                long m12674d3 = m12674d(t, j);
                                i21 = AbstractC13506fs.m12821f(i32 << 3);
                                i22 = AbstractC13506fs.m12825c((m12674d3 >> 63) ^ (m12674d3 + m12674d3));
                                i17 = i31 + i21 + i22;
                                break;
                            }
                        case 68:
                            i17 = i31;
                            if (!m12694a((C13559hr<T>) t, i32, i29)) {
                                break;
                            } else {
                                i19 = AbstractC13506fs.m12844a(i32, (AbstractC13556ho) C13592ix.m12512f(t, j), m12700a(i29));
                                i17 = i31 + i19;
                                break;
                            }
                        default:
                            i17 = i31;
                            break;
                    }
                    i29 += 3;
                    i30 = i17;
                } else {
                    AbstractC13581im<?, ?> abstractC13581im = this.f50804n;
                    i = i31 + abstractC13581im.mo12558d(abstractC13581im.mo12565a(t));
                }
            }
        } else {
            Unsafe unsafe2 = f50792b;
            int i33 = 0;
            int i34 = 0;
            int i35 = 0;
            int i36 = 1048575;
            while (true) {
                int i37 = i36;
                if (i33 < this.f50793c.length) {
                    int m12675d2 = m12675d(i33);
                    int i38 = this.f50793c[i33];
                    int m12670f2 = m12670f(m12675d2);
                    if (m12670f2 <= 17) {
                        int i39 = this.f50793c[i33 + 2];
                        int i40 = i39 & 1048575;
                        int i41 = 1 << (i39 >>> 20);
                        i2 = i37;
                        i3 = i41;
                        if (i40 != i37) {
                            i35 = unsafe2.getInt(t, i40);
                            i2 = i40;
                            i3 = i41;
                        }
                    } else {
                        i3 = 0;
                        i2 = i37;
                    }
                    long j2 = m12675d2 & 1048575;
                    switch (m12670f2) {
                        case 0:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                i6 = AbstractC13506fs.m12821f(i38 << 3);
                                i5 = i6 + 8;
                                i4 = i34 + i5;
                                break;
                            }
                        case 1:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                i7 = AbstractC13506fs.m12821f(i38 << 3);
                                i5 = i7 + 4;
                                i4 = i34 + i5;
                                break;
                            }
                        case 2:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                long j3 = unsafe2.getLong(t, j2);
                                i8 = AbstractC13506fs.m12821f(i38 << 3);
                                i9 = AbstractC13506fs.m12825c(j3);
                                i4 = i34 + i8 + i9;
                                break;
                            }
                        case 3:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                long j4 = unsafe2.getLong(t, j2);
                                i8 = AbstractC13506fs.m12821f(i38 << 3);
                                i9 = AbstractC13506fs.m12825c(j4);
                                i4 = i34 + i8 + i9;
                                break;
                            }
                        case 4:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                i4 = i34 + AbstractC13506fs.m12821f(i38 << 3) + AbstractC13506fs.m12822e(unsafe2.getInt(t, j2));
                                break;
                            }
                        case 5:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                i6 = AbstractC13506fs.m12821f(i38 << 3);
                                i5 = i6 + 8;
                                i4 = i34 + i5;
                                break;
                            }
                        case 6:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                i7 = AbstractC13506fs.m12821f(i38 << 3);
                                i5 = i7 + 4;
                                i4 = i34 + i5;
                                break;
                            }
                        case 7:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                i5 = AbstractC13506fs.m12821f(i38 << 3) + 1;
                                i4 = i34 + i5;
                                break;
                            }
                        case 8:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                Object object = unsafe2.getObject(t, j2);
                                if (object instanceof AbstractC13500fm) {
                                    m12821f2 = AbstractC13506fs.m12821f(i38 << 3);
                                    mo12866a = ((AbstractC13500fm) object).mo12866a();
                                    m12821f3 = AbstractC13506fs.m12821f(mo12866a);
                                    i10 = m12821f2 + m12821f3 + mo12866a;
                                    i4 = i34 + i10;
                                    break;
                                } else {
                                    m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                    m12837a = AbstractC13506fs.m12837a((String) object);
                                    i10 = m12821f + m12837a;
                                    i4 = i34 + i10;
                                }
                            }
                        case 9:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                m12644a = C13571ic.m12644a(i38, unsafe2.getObject(t, j2), m12700a(i33));
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 10:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                AbstractC13500fm abstractC13500fm3 = (AbstractC13500fm) unsafe2.getObject(t, j2);
                                m12821f2 = AbstractC13506fs.m12821f(i38 << 3);
                                mo12866a = abstractC13500fm3.mo12866a();
                                m12821f3 = AbstractC13506fs.m12821f(mo12866a);
                                i10 = m12821f2 + m12821f3 + mo12866a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 11:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                int i42 = unsafe2.getInt(t, j2);
                                m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                m12837a = AbstractC13506fs.m12821f(i42);
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 12:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                int i43 = unsafe2.getInt(t, j2);
                                m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                m12837a = AbstractC13506fs.m12822e(i43);
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 13:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                i11 = AbstractC13506fs.m12821f(i38 << 3);
                                m12644a = i11 + 4;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 14:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                i12 = AbstractC13506fs.m12821f(i38 << 3);
                                m12644a = i12 + 8;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 15:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                int i44 = unsafe2.getInt(t, j2);
                                m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                m12837a = AbstractC13506fs.m12821f((i44 >> 31) ^ (i44 + i44));
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 16:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                long j5 = unsafe2.getLong(t, j2);
                                i13 = AbstractC13506fs.m12821f(i38 << 3);
                                i14 = AbstractC13506fs.m12825c((j5 >> 63) ^ (j5 + j5));
                                i4 = i34 + i13 + i14;
                                break;
                            }
                        case 17:
                            i4 = i34;
                            if ((i35 & i3) == 0) {
                                break;
                            } else {
                                m12644a = AbstractC13506fs.m12844a(i38, (AbstractC13556ho) unsafe2.getObject(t, j2), m12700a(i33));
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 18:
                            m12644a = C13571ic.m12604i(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 19:
                            m12644a = C13571ic.m12607h(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 20:
                            m12644a = C13571ic.m12643a(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 21:
                            m12644a = C13571ic.m12630b(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 22:
                            m12644a = C13571ic.m12616e(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 23:
                            m12644a = C13571ic.m12604i(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 24:
                            m12644a = C13571ic.m12607h(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 25:
                            m12644a = C13571ic.m12601j(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 26:
                            m12644a = C13571ic.m12598k(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 27:
                            m12644a = C13571ic.m12638a(i38, (List<?>) unsafe2.getObject(t, j2), m12700a(i33));
                            i4 = i34 + m12644a;
                            break;
                        case 28:
                            m12644a = C13571ic.m12596l(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 29:
                            m12644a = C13571ic.m12613f(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 30:
                            m12644a = C13571ic.m12619d(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 31:
                            m12644a = C13571ic.m12607h(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 32:
                            m12644a = C13571ic.m12604i(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 33:
                            m12644a = C13571ic.m12610g(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 34:
                            m12644a = C13571ic.m12623c(i38, (List) unsafe2.getObject(t, j2));
                            i4 = i34 + m12644a;
                            break;
                        case 35:
                            int m12602i4 = C13571ic.m12602i((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12602i4 <= 0) {
                                break;
                            } else {
                                i16 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12602i4);
                                m12837a = m12602i4;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 36:
                            int m12605h4 = C13571ic.m12605h((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12605h4 <= 0) {
                                break;
                            } else {
                                int m12824d14 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12605h4);
                                m12837a = m12605h4;
                                i16 = m12824d14;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 37:
                            int m12633a2 = C13571ic.m12633a((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12633a2 <= 0) {
                                break;
                            } else {
                                int m12824d15 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12633a2);
                                m12837a = m12633a2;
                                i16 = m12824d15;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 38:
                            int m12625b2 = C13571ic.m12625b((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12625b2 <= 0) {
                                break;
                            } else {
                                int m12824d16 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12625b2);
                                m12837a = m12625b2;
                                i16 = m12824d16;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 39:
                            int m12614e2 = C13571ic.m12614e((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12614e2 <= 0) {
                                break;
                            } else {
                                int m12824d17 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12614e2);
                                m12837a = m12614e2;
                                i16 = m12824d17;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 40:
                            int m12602i5 = C13571ic.m12602i((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12602i5 <= 0) {
                                break;
                            } else {
                                int m12824d18 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12602i5);
                                m12837a = m12602i5;
                                i16 = m12824d18;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 41:
                            int m12605h5 = C13571ic.m12605h((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12605h5 <= 0) {
                                break;
                            } else {
                                int m12824d19 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12605h5);
                                m12837a = m12605h5;
                                i16 = m12824d19;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 42:
                            int m12599j2 = C13571ic.m12599j((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12599j2 <= 0) {
                                break;
                            } else {
                                int m12824d20 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12599j2);
                                m12837a = m12599j2;
                                i16 = m12824d20;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 43:
                            int m12611f2 = C13571ic.m12611f((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12611f2 <= 0) {
                                break;
                            } else {
                                int m12824d21 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12611f2);
                                m12837a = m12611f2;
                                i16 = m12824d21;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 44:
                            int m12617d2 = C13571ic.m12617d((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12617d2 <= 0) {
                                break;
                            } else {
                                int m12824d22 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12617d2);
                                m12837a = m12617d2;
                                i16 = m12824d22;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 45:
                            int m12605h6 = C13571ic.m12605h((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12605h6 <= 0) {
                                break;
                            } else {
                                int m12824d23 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12605h6);
                                m12837a = m12605h6;
                                i16 = m12824d23;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 46:
                            int m12602i6 = C13571ic.m12602i((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12602i6 <= 0) {
                                break;
                            } else {
                                int m12824d24 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12602i6);
                                m12837a = m12602i6;
                                i16 = m12824d24;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 47:
                            int m12608g2 = C13571ic.m12608g((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12608g2 <= 0) {
                                break;
                            } else {
                                int m12824d25 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12608g2);
                                m12837a = m12608g2;
                                i16 = m12824d25;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 48:
                            int m12621c2 = C13571ic.m12621c((List) unsafe2.getObject(t, j2));
                            i4 = i34;
                            if (m12621c2 <= 0) {
                                break;
                            } else {
                                int m12824d26 = AbstractC13506fs.m12824d(i38);
                                i15 = AbstractC13506fs.m12821f(m12621c2);
                                m12837a = m12621c2;
                                i16 = m12824d26;
                                m12821f = i16 + i15;
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 49:
                            m12644a = C13571ic.m12626b(i38, (List) unsafe2.getObject(t, j2), m12700a(i33));
                            i4 = i34 + m12644a;
                            break;
                        case 50:
                            Object object2 = unsafe2.getObject(t, j2);
                            m12685b(i33);
                            C13551hj.m12719a(object2);
                            i4 = i34;
                            break;
                        case 51:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                i12 = AbstractC13506fs.m12821f(i38 << 3);
                                m12644a = i12 + 8;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 52:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                i11 = AbstractC13506fs.m12821f(i38 << 3);
                                m12644a = i11 + 4;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 53:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                long m12674d4 = m12674d(t, j2);
                                i13 = AbstractC13506fs.m12821f(i38 << 3);
                                i14 = AbstractC13506fs.m12825c(m12674d4);
                                i4 = i34 + i13 + i14;
                                break;
                            }
                        case 54:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                long m12674d5 = m12674d(t, j2);
                                i13 = AbstractC13506fs.m12821f(i38 << 3);
                                i14 = AbstractC13506fs.m12825c(m12674d5);
                                i4 = i34 + i13 + i14;
                                break;
                            }
                        case 55:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                int m12677c5 = m12677c(t, j2);
                                m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                m12837a = AbstractC13506fs.m12822e(m12677c5);
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 56:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                i12 = AbstractC13506fs.m12821f(i38 << 3);
                                m12644a = i12 + 8;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 57:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                i11 = AbstractC13506fs.m12821f(i38 << 3);
                                m12644a = i11 + 4;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 58:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                m12644a = AbstractC13506fs.m12821f(i38 << 3) + 1;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 59:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                Object object3 = unsafe2.getObject(t, j2);
                                if (object3 instanceof AbstractC13500fm) {
                                    m12821f2 = AbstractC13506fs.m12821f(i38 << 3);
                                    mo12866a = ((AbstractC13500fm) object3).mo12866a();
                                    m12821f3 = AbstractC13506fs.m12821f(mo12866a);
                                    i10 = m12821f2 + m12821f3 + mo12866a;
                                    i4 = i34 + i10;
                                    break;
                                } else {
                                    m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                    m12837a = AbstractC13506fs.m12837a((String) object3);
                                    i10 = m12821f + m12837a;
                                    i4 = i34 + i10;
                                }
                            }
                        case 60:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                m12644a = C13571ic.m12644a(i38, unsafe2.getObject(t, j2), m12700a(i33));
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 61:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                AbstractC13500fm abstractC13500fm4 = (AbstractC13500fm) unsafe2.getObject(t, j2);
                                m12821f2 = AbstractC13506fs.m12821f(i38 << 3);
                                mo12866a = abstractC13500fm4.mo12866a();
                                m12821f3 = AbstractC13506fs.m12821f(mo12866a);
                                i10 = m12821f2 + m12821f3 + mo12866a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 62:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                int m12677c6 = m12677c(t, j2);
                                m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                m12837a = AbstractC13506fs.m12821f(m12677c6);
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 63:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                int m12677c7 = m12677c(t, j2);
                                m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                m12837a = AbstractC13506fs.m12822e(m12677c7);
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 64:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                i11 = AbstractC13506fs.m12821f(i38 << 3);
                                m12644a = i11 + 4;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 65:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                i12 = AbstractC13506fs.m12821f(i38 << 3);
                                m12644a = i12 + 8;
                                i4 = i34 + m12644a;
                                break;
                            }
                        case 66:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                int m12677c8 = m12677c(t, j2);
                                m12821f = AbstractC13506fs.m12821f(i38 << 3);
                                m12837a = AbstractC13506fs.m12821f((m12677c8 >> 31) ^ (m12677c8 + m12677c8));
                                i10 = m12821f + m12837a;
                                i4 = i34 + i10;
                                break;
                            }
                        case 67:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                long m12674d6 = m12674d(t, j2);
                                i13 = AbstractC13506fs.m12821f(i38 << 3);
                                i14 = AbstractC13506fs.m12825c((m12674d6 >> 63) ^ (m12674d6 + m12674d6));
                                i4 = i34 + i13 + i14;
                                break;
                            }
                        case 68:
                            i4 = i34;
                            if (!m12694a((C13559hr<T>) t, i38, i33)) {
                                break;
                            } else {
                                m12644a = AbstractC13506fs.m12844a(i38, (AbstractC13556ho) unsafe2.getObject(t, j2), m12700a(i33));
                                i4 = i34 + m12644a;
                                break;
                            }
                        default:
                            i4 = i34;
                            break;
                    }
                    i33 += 3;
                    i34 = i4;
                    i36 = i2;
                } else {
                    AbstractC13581im<?, ?> abstractC13581im2 = this.f50804n;
                    i = i34 + abstractC13581im2.mo12558d(abstractC13581im2.mo12565a(t));
                    if (this.f50798h) {
                        throw null;
                    }
                }
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: b */
    public final void mo12650b(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.f50793c.length; i += 3) {
            int m12675d = m12675d(i);
            long j = 1048575 & m12675d;
            int i2 = this.f50793c[i];
            switch (m12670f(m12675d)) {
                case 0:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12535a(t, j, C13592ix.m12513e(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12534a((Object) t, j, C13592ix.m12515d(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12532a((Object) t, j, C13592ix.m12525b(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12532a((Object) t, j, C13592ix.m12525b(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12533a((Object) t, j, C13592ix.m12537a(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12532a((Object) t, j, C13592ix.m12525b(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12533a((Object) t, j, C13592ix.m12537a(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12530a(t, j, C13592ix.m12520c(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12531a(t, j, C13592ix.m12512f(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m12689a(t, t2, i);
                    break;
                case 10:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12531a(t, j, C13592ix.m12512f(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12533a((Object) t, j, C13592ix.m12537a(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12533a((Object) t, j, C13592ix.m12537a(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12533a((Object) t, j, C13592ix.m12537a(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12532a((Object) t, j, C13592ix.m12525b(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12533a((Object) t, j, C13592ix.m12537a(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m12695a((C13559hr<T>) t2, i)) {
                        C13592ix.m12532a((Object) t, j, C13592ix.m12525b(t2, j));
                        m12683b((C13559hr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m12689a(t, t2, i);
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
                    this.f50803m.mo12732a(t, t2, j);
                    break;
                case 50:
                    C13571ic.m12634a(t, t2, j);
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
                    if (m12694a((C13559hr<T>) t2, i2, i)) {
                        C13592ix.m12531a(t, j, C13592ix.m12512f(t2, j));
                        m12682b((C13559hr<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m12680b(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m12694a((C13559hr<T>) t2, i2, i)) {
                        C13592ix.m12531a(t, j, C13592ix.m12512f(t2, j));
                        m12682b((C13559hr<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m12680b(t, t2, i);
                    break;
            }
        }
        C13571ic.m12637a(this.f50804n, t, t2);
        if (this.f50798h) {
            C13571ic.m12620d();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: c */
    public final void mo12649c(T t) {
        int i;
        int i2 = this.f50801k;
        while (true) {
            i = this.f50802l;
            if (i2 >= i) {
                break;
            }
            long m12675d = m12675d(this.f50800j[i2]) & 1048575;
            Object m12512f = C13592ix.m12512f(t, m12675d);
            if (m12512f != null) {
                ((C13550hi) m12512f).f50788a = false;
                C13592ix.m12531a(t, m12675d, m12512f);
            }
            i2++;
        }
        int length = this.f50800j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f50803m.mo12733a(t, this.f50800j[i3]);
        }
        this.f50804n.mo12561b(t);
        if (this.f50798h) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: d */
    public final boolean mo12648d(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f50801k; i3++) {
            int i4 = this.f50800j[i3];
            int i5 = this.f50793c[i4];
            int m12675d = m12675d(i4);
            int i6 = this.f50793c[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f50792b.getInt(t, i7);
                }
                i = i7;
            }
            if ((268435456 & m12675d) != 0 && !m12693a((C13559hr<T>) t, i4, i, i2, i8)) {
                return false;
            }
            int m12670f = m12670f(m12675d);
            if (m12670f != 9 && m12670f != 17) {
                if (m12670f != 27) {
                    if (m12670f == 60 || m12670f == 68) {
                        if (m12694a((C13559hr<T>) t, i5, i4) && !m12691a(t, m12675d, m12700a(i4))) {
                            return false;
                        }
                    } else if (m12670f != 49) {
                        if (m12670f == 50 && !((C13550hi) C13592ix.m12512f(t, m12675d & 1048575)).isEmpty()) {
                            m12685b(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) C13592ix.m12512f(t, m12675d & 1048575);
                if (!list.isEmpty()) {
                    AbstractC13569ia m12700a = m12700a(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!m12700a.mo12648d(list.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (m12693a((C13559hr<T>) t, i4, i, i2, i8) && !m12691a(t, m12675d, m12700a(i4))) {
                return false;
            }
        }
        if (!this.f50798h) {
            return true;
        }
        throw null;
    }
}
