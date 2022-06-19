package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.b7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/b7.class */
public final class C7310b7<T> implements AbstractC7436k7<T> {

    /* renamed from: a */
    private static final int[] f34349a = new int[0];

    /* renamed from: b */
    private static final Unsafe f34350b = C7409i8.m7302v();

    /* renamed from: c */
    private final int[] f34351c;

    /* renamed from: d */
    private final Object[] f34352d;

    /* renamed from: e */
    private final int f34353e;

    /* renamed from: f */
    private final int f34354f;

    /* renamed from: g */
    private final AbstractC7623y6 f34355g;

    /* renamed from: h */
    private final boolean f34356h;

    /* renamed from: i */
    private final boolean f34357i;

    /* renamed from: j */
    private final int[] f34358j;

    /* renamed from: k */
    private final int f34359k;

    /* renamed from: l */
    private final int f34360l;

    /* renamed from: m */
    private final AbstractC7477n6 f34361m;

    /* renamed from: n */
    private final AbstractC7611x7<?, ?> f34362n;

    /* renamed from: o */
    private final AbstractC7462m5<?> f34363o;

    /* renamed from: p */
    private final C7352e7 f34364p;

    /* renamed from: q */
    private final C7558t6 f34365q;

    /* JADX WARN: Multi-variable type inference failed */
    private C7310b7(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, AbstractC7623y6 abstractC7623y6, boolean z, boolean z2, int[] iArr3, int i3, int i4, C7352e7 c7352e7, AbstractC7477n6 abstractC7477n6, AbstractC7611x7<?, ?> abstractC7611x7, AbstractC7462m5<?> abstractC7462m5, C7558t6 c7558t6) {
        this.f34351c = iArr;
        this.f34352d = iArr2;
        this.f34353e = objArr;
        this.f34354f = i;
        this.f34357i = abstractC7623y6;
        boolean z3 = false;
        if (abstractC7611x7 != 0) {
            z3 = false;
            if (abstractC7611x7.mo7079a(i2)) {
                z3 = true;
            }
        }
        this.f34356h = z3;
        this.f34358j = z2;
        this.f34359k = iArr3;
        this.f34360l = i3;
        this.f34364p = i4;
        this.f34361m = c7352e7;
        this.f34362n = abstractC7477n6;
        this.f34363o = abstractC7611x7;
        this.f34355g = i2;
        this.f34365q = abstractC7462m5;
    }

    /* renamed from: A */
    private static final void m7665A(int i, Object obj, C7378g5 c7378g5) {
        if (obj instanceof String) {
            c7378g5.m7389x(i, (String) obj);
        } else {
            c7378g5.m7388y(i, (zzgr) obj);
        }
    }

    /* renamed from: B */
    static C7624y7 m7664B(Object obj) {
        AbstractC7609x5 abstractC7609x5 = (AbstractC7609x5) obj;
        C7624y7 c7624y7 = abstractC7609x5.zzc;
        C7624y7 c7624y72 = c7624y7;
        if (c7624y7 == C7624y7.m6726a()) {
            c7624y72 = C7624y7.m6725b();
            abstractC7609x5.zzc = c7624y72;
        }
        return c7624y72;
    }

    /* renamed from: D */
    public static <T> C7310b7<T> m7662D(Class<T> cls, AbstractC7584v6 abstractC7584v6, C7352e7 c7352e7, AbstractC7477n6 abstractC7477n6, AbstractC7611x7<?, ?> abstractC7611x7, AbstractC7462m5<?> abstractC7462m5, C7558t6 c7558t6) {
        if (abstractC7584v6 instanceof C7422j7) {
            return m7661E((C7422j7) abstractC7584v6, c7352e7, abstractC7477n6, abstractC7611x7, abstractC7462m5, c7558t6);
        }
        C7585v7 c7585v7 = (C7585v7) abstractC7584v6;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x06cf  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0708  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0949  */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.google.android.gms.internal.measurement.C7310b7<T> m7661E(com.google.android.gms.internal.measurement.C7422j7 r19, com.google.android.gms.internal.measurement.C7352e7 r20, com.google.android.gms.internal.measurement.AbstractC7477n6 r21, com.google.android.gms.internal.measurement.AbstractC7611x7<?, ?> r22, com.google.android.gms.internal.measurement.AbstractC7462m5<?> r23, com.google.android.gms.internal.measurement.C7558t6 r24) {
        /*
            Method dump skipped, instructions count: 2576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C7310b7.m7661E(com.google.android.gms.internal.measurement.j7, com.google.android.gms.internal.measurement.e7, com.google.android.gms.internal.measurement.n6, com.google.android.gms.internal.measurement.x7, com.google.android.gms.internal.measurement.m5, com.google.android.gms.internal.measurement.t6):com.google.android.gms.internal.measurement.b7");
    }

    /* renamed from: F */
    private static Field m7660F(Class<?> cls, String str) {
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
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    /* renamed from: G */
    private final void m7659G(T t, T t2, int i) {
        long m7647h = m7647h(i) & 1048575;
        if (!m7637r(t2, i)) {
            return;
        }
        Object m7305s = C7409i8.m7305s(t, m7647h);
        Object m7305s2 = C7409i8.m7305s(t2, m7647h);
        if (m7305s != null && m7305s2 != null) {
            C7409i8.m7304t(t, m7647h, C7365f6.m7495i(m7305s, m7305s2));
            m7636s(t, i);
        } else if (m7305s2 == null) {
        } else {
            C7409i8.m7304t(t, m7647h, m7305s2);
            m7636s(t, i);
        }
    }

    /* renamed from: H */
    private final void m7658H(T t, T t2, int i) {
        int m7647h = m7647h(i);
        int i2 = this.f34351c[i];
        long j = m7647h & 1048575;
        if (!m7635t(t2, i2, i)) {
            return;
        }
        Object m7305s = m7635t(t, i2, i) ? C7409i8.m7305s(t, j) : null;
        Object m7305s2 = C7409i8.m7305s(t2, j);
        if (m7305s != null && m7305s2 != null) {
            C7409i8.m7304t(t, j, C7365f6.m7495i(m7305s, m7305s2));
            m7634u(t, i2, i);
        } else if (m7305s2 == null) {
        } else {
            C7409i8.m7304t(t, j, m7305s2);
            m7634u(t, i2, i);
        }
    }

    /* renamed from: I */
    private final int m7657I(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int m7533A;
        int zzc;
        int m7533A2;
        int i13;
        int i14;
        Unsafe unsafe = f34350b;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1048575;
        while (true) {
            int i19 = i18;
            if (i15 >= this.f34351c.length) {
                AbstractC7611x7<?, ?> abstractC7611x7 = this.f34362n;
                int mo6635h = abstractC7611x7.mo6635h(abstractC7611x7.mo6639d(t));
                if (!this.f34356h) {
                    return i16 + mo6635h;
                }
                this.f34363o.mo7078b(t);
                throw null;
            }
            int m7647h = m7647h(i15);
            int i20 = this.f34351c[i15];
            int m7645j = m7645j(m7647h);
            if (m7645j <= 17) {
                int i21 = this.f34351c[i15 + 2];
                int i22 = i21 & 1048575;
                int i23 = 1 << (i21 >>> 20);
                i = i19;
                i2 = i23;
                if (i22 != i19) {
                    i17 = unsafe.getInt(t, i22);
                    i = i22;
                    i2 = i23;
                }
            } else {
                i2 = 0;
                i = i19;
            }
            long j = m7647h & 1048575;
            switch (m7645j) {
                case 0:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i4 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 1:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i6 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 2:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        i8 = AbstractC7364f5.m7533A(i20 << 3);
                        i7 = AbstractC7364f5.m7532B(j2);
                        i5 = i8 + i7;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 3:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        i8 = AbstractC7364f5.m7533A(i20 << 3);
                        i7 = AbstractC7364f5.m7532B(j3);
                        i5 = i8 + i7;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 4:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        int i24 = unsafe.getInt(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7504z(i24);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 5:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i4 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 6:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i6 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 7:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i12 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i12 + 1;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 8:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zzgr) {
                            m7533A = AbstractC7364f5.m7533A(i20 << 3);
                            zzc = ((zzgr) object).zzc();
                            m7533A2 = AbstractC7364f5.m7533A(zzc);
                            i9 = m7533A + m7533A2 + zzc;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        } else {
                            i10 = AbstractC7364f5.m7533A(i20 << 3);
                            i11 = AbstractC7364f5.m7531C((String) object);
                            i9 = i10 + i11;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        }
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 9:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i5 = C7464m7.m7138Y(i20, unsafe.getObject(t, j), m7652N(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 10:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        zzgr zzgrVar = (zzgr) unsafe.getObject(t, j);
                        m7533A = AbstractC7364f5.m7533A(i20 << 3);
                        zzc = zzgrVar.zzc();
                        m7533A2 = AbstractC7364f5.m7533A(zzc);
                        i9 = m7533A + m7533A2 + zzc;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 11:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        int i25 = unsafe.getInt(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7533A(i25);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 12:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        int i26 = unsafe.getInt(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7504z(i26);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 13:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i6 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 14:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i4 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 15:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        int i27 = unsafe.getInt(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7533A((i27 >> 31) ^ (i27 + i27));
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 16:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7532B((j4 >> 63) ^ (j4 + j4));
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 17:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i5 = AbstractC7364f5.m7525e(i20, (AbstractC7623y6) unsafe.getObject(t, j), m7652N(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 18:
                    i5 = C7464m7.m7142U(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 19:
                    i5 = C7464m7.m7144S(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 20:
                    i5 = C7464m7.m7158E(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 21:
                    i5 = C7464m7.m7156G(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 22:
                    i5 = C7464m7.m7150M(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 23:
                    i5 = C7464m7.m7142U(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 24:
                    i5 = C7464m7.m7144S(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 25:
                    i5 = C7464m7.m7140W(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 26:
                    i5 = C7464m7.m7139X(i20, (List) unsafe.getObject(t, j));
                    break;
                case 27:
                    i5 = C7464m7.m7137Z(i20, (List) unsafe.getObject(t, j), m7652N(i15));
                    break;
                case 28:
                    i5 = C7464m7.m7135a0(i20, (List) unsafe.getObject(t, j));
                    break;
                case 29:
                    i5 = C7464m7.m7148O(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 30:
                    i5 = C7464m7.m7152K(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 31:
                    i5 = C7464m7.m7144S(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 32:
                    i5 = C7464m7.m7142U(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 33:
                    i5 = C7464m7.m7146Q(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 34:
                    i5 = C7464m7.m7154I(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 35:
                    int m7143T = C7464m7.m7143T((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7143T > 0) {
                        i14 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7143T);
                        i11 = m7143T;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 36:
                    int m7145R = C7464m7.m7145R((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7145R > 0) {
                        int m7505y = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7145R);
                        i11 = m7145R;
                        i14 = m7505y;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 37:
                    int m7159D = C7464m7.m7159D((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7159D > 0) {
                        int m7505y2 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7159D);
                        i11 = m7159D;
                        i14 = m7505y2;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 38:
                    int m7157F = C7464m7.m7157F((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7157F > 0) {
                        int m7505y3 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7157F);
                        i11 = m7157F;
                        i14 = m7505y3;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 39:
                    int m7151L = C7464m7.m7151L((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7151L > 0) {
                        int m7505y4 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7151L);
                        i11 = m7151L;
                        i14 = m7505y4;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 40:
                    int m7143T2 = C7464m7.m7143T((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7143T2 > 0) {
                        int m7505y5 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7143T2);
                        i11 = m7143T2;
                        i14 = m7505y5;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 41:
                    int m7145R2 = C7464m7.m7145R((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7145R2 > 0) {
                        int m7505y6 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7145R2);
                        i11 = m7145R2;
                        i14 = m7505y6;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 42:
                    int m7141V = C7464m7.m7141V((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7141V > 0) {
                        int m7505y7 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7141V);
                        i11 = m7141V;
                        i14 = m7505y7;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 43:
                    int m7149N = C7464m7.m7149N((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7149N > 0) {
                        int m7505y8 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7149N);
                        i11 = m7149N;
                        i14 = m7505y8;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 44:
                    int m7153J = C7464m7.m7153J((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7153J > 0) {
                        int m7505y9 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7153J);
                        i11 = m7153J;
                        i14 = m7505y9;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 45:
                    int m7145R3 = C7464m7.m7145R((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7145R3 > 0) {
                        int m7505y10 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7145R3);
                        i11 = m7145R3;
                        i14 = m7505y10;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 46:
                    int m7143T3 = C7464m7.m7143T((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7143T3 > 0) {
                        int m7505y11 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7143T3);
                        i11 = m7143T3;
                        i14 = m7505y11;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 47:
                    int m7147P = C7464m7.m7147P((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7147P > 0) {
                        int m7505y12 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7147P);
                        i11 = m7147P;
                        i14 = m7505y12;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 48:
                    int m7155H = C7464m7.m7155H((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m7155H > 0) {
                        int m7505y13 = AbstractC7364f5.m7505y(i20);
                        i13 = AbstractC7364f5.m7533A(m7155H);
                        i11 = m7155H;
                        i14 = m7505y13;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 49:
                    i5 = C7464m7.m7133b0(i20, (List) unsafe.getObject(t, j), m7652N(i15));
                    break;
                case 50:
                    C7558t6.m6904a(i20, unsafe.getObject(t, j), m7651O(i15));
                    i3 = i16;
                    continue;
                    i15 += 3;
                    i16 = i3;
                    i18 = i;
                case 51:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i4 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 52:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i6 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 53:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        long m7641n = m7641n(t, j);
                        i8 = AbstractC7364f5.m7533A(i20 << 3);
                        i7 = AbstractC7364f5.m7532B(m7641n);
                        i5 = i8 + i7;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 54:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        long m7641n2 = m7641n(t, j);
                        i8 = AbstractC7364f5.m7533A(i20 << 3);
                        i7 = AbstractC7364f5.m7532B(m7641n2);
                        i5 = i8 + i7;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 55:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        int m7642m = m7642m(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7504z(m7642m);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 56:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i4 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 57:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i6 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 58:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i12 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i12 + 1;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 59:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zzgr) {
                            m7533A = AbstractC7364f5.m7533A(i20 << 3);
                            zzc = ((zzgr) object2).zzc();
                            m7533A2 = AbstractC7364f5.m7533A(zzc);
                            i9 = m7533A + m7533A2 + zzc;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        } else {
                            i10 = AbstractC7364f5.m7533A(i20 << 3);
                            i11 = AbstractC7364f5.m7531C((String) object2);
                            i9 = i10 + i11;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        }
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 60:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i5 = C7464m7.m7138Y(i20, unsafe.getObject(t, j), m7652N(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 61:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        zzgr zzgrVar2 = (zzgr) unsafe.getObject(t, j);
                        m7533A = AbstractC7364f5.m7533A(i20 << 3);
                        zzc = zzgrVar2.zzc();
                        m7533A2 = AbstractC7364f5.m7533A(zzc);
                        i9 = m7533A + m7533A2 + zzc;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 62:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        int m7642m2 = m7642m(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7533A(m7642m2);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 63:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        int m7642m3 = m7642m(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7504z(m7642m3);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 64:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i6 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 65:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i4 = AbstractC7364f5.m7533A(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 66:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        int m7642m4 = m7642m(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7533A((m7642m4 >> 31) ^ (m7642m4 + m7642m4));
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 67:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        long m7641n3 = m7641n(t, j);
                        i10 = AbstractC7364f5.m7533A(i20 << 3);
                        i11 = AbstractC7364f5.m7532B((m7641n3 >> 63) ^ (m7641n3 + m7641n3));
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 68:
                    i3 = i16;
                    if (m7635t(t, i20, i15)) {
                        i5 = AbstractC7364f5.m7525e(i20, (AbstractC7623y6) unsafe.getObject(t, j), m7652N(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                default:
                    i3 = i16;
                    continue;
                    i15 += 3;
                    i16 = i3;
                    i18 = i;
            }
            i3 = i16 + i5;
            i15 += 3;
            i16 = i3;
            i18 = i;
        }
    }

    /* renamed from: J */
    private final int m7656J(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int m7533A;
        int zzc;
        int m7533A2;
        int i11;
        int i12;
        Unsafe unsafe = f34350b;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i13 >= this.f34351c.length) {
                AbstractC7611x7<?, ?> abstractC7611x7 = this.f34362n;
                return i15 + abstractC7611x7.mo6635h(abstractC7611x7.mo6639d(t));
            }
            int m7647h = m7647h(i13);
            int m7645j = m7645j(m7647h);
            int i16 = this.f34351c[i13];
            long j = m7647h & 1048575;
            if (m7645j >= zzhj.DOUBLE_LIST_PACKED.zza() && m7645j <= zzhj.SINT64_LIST_PACKED.zza()) {
                int i17 = this.f34351c[i13 + 2];
            }
            switch (m7645j) {
                case 0:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i2 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 1:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i4 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 2:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        long m7313k = C7409i8.m7313k(t, j);
                        i6 = AbstractC7364f5.m7533A(i16 << 3);
                        i5 = AbstractC7364f5.m7532B(m7313k);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 3:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        long m7313k2 = C7409i8.m7313k(t, j);
                        i6 = AbstractC7364f5.m7533A(i16 << 3);
                        i5 = AbstractC7364f5.m7532B(m7313k2);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 4:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        int m7315i = C7409i8.m7315i(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7504z(m7315i);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 5:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i2 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 6:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i4 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 7:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i10 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i10 + 1;
                        i = i15 + i3;
                        break;
                    }
                case 8:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        Object m7305s = C7409i8.m7305s(t, j);
                        if (m7305s instanceof zzgr) {
                            m7533A = AbstractC7364f5.m7533A(i16 << 3);
                            zzc = ((zzgr) m7305s).zzc();
                            m7533A2 = AbstractC7364f5.m7533A(zzc);
                            i7 = m7533A + m7533A2 + zzc;
                            i = i15 + i7;
                            break;
                        } else {
                            i9 = AbstractC7364f5.m7533A(i16 << 3);
                            i8 = AbstractC7364f5.m7531C((String) m7305s);
                            i7 = i9 + i8;
                            i = i15 + i7;
                        }
                    }
                case 9:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i3 = C7464m7.m7138Y(i16, C7409i8.m7305s(t, j), m7652N(i13));
                        i = i15 + i3;
                        break;
                    }
                case 10:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        zzgr zzgrVar = (zzgr) C7409i8.m7305s(t, j);
                        m7533A = AbstractC7364f5.m7533A(i16 << 3);
                        zzc = zzgrVar.zzc();
                        m7533A2 = AbstractC7364f5.m7533A(zzc);
                        i7 = m7533A + m7533A2 + zzc;
                        i = i15 + i7;
                        break;
                    }
                case 11:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        int m7315i2 = C7409i8.m7315i(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7533A(m7315i2);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 12:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        int m7315i3 = C7409i8.m7315i(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7504z(m7315i3);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 13:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i4 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 14:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i2 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 15:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        int m7315i4 = C7409i8.m7315i(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7533A((m7315i4 >> 31) ^ (m7315i4 + m7315i4));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 16:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        long m7313k3 = C7409i8.m7313k(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7532B((m7313k3 >> 63) ^ (m7313k3 + m7313k3));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 17:
                    i = i15;
                    if (!m7637r(t, i13)) {
                        break;
                    } else {
                        i3 = AbstractC7364f5.m7525e(i16, (AbstractC7623y6) C7409i8.m7305s(t, j), m7652N(i13));
                        i = i15 + i3;
                        break;
                    }
                case 18:
                    i3 = C7464m7.m7142U(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 19:
                    i3 = C7464m7.m7144S(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 20:
                    i3 = C7464m7.m7158E(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 21:
                    i3 = C7464m7.m7156G(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 22:
                    i3 = C7464m7.m7150M(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 23:
                    i3 = C7464m7.m7142U(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 24:
                    i3 = C7464m7.m7144S(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 25:
                    i3 = C7464m7.m7140W(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 26:
                    i3 = C7464m7.m7139X(i16, (List) C7409i8.m7305s(t, j));
                    i = i15 + i3;
                    break;
                case 27:
                    i3 = C7464m7.m7137Z(i16, (List) C7409i8.m7305s(t, j), m7652N(i13));
                    i = i15 + i3;
                    break;
                case 28:
                    i3 = C7464m7.m7135a0(i16, (List) C7409i8.m7305s(t, j));
                    i = i15 + i3;
                    break;
                case 29:
                    i3 = C7464m7.m7148O(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 30:
                    i3 = C7464m7.m7152K(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 31:
                    i3 = C7464m7.m7144S(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 32:
                    i3 = C7464m7.m7142U(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 33:
                    i3 = C7464m7.m7146Q(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 34:
                    i3 = C7464m7.m7154I(i16, (List) C7409i8.m7305s(t, j), false);
                    i = i15 + i3;
                    break;
                case 35:
                    int m7143T = C7464m7.m7143T((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7143T <= 0) {
                        break;
                    } else {
                        i12 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7143T);
                        i8 = m7143T;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 36:
                    int m7145R = C7464m7.m7145R((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7145R <= 0) {
                        break;
                    } else {
                        int m7505y = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7145R);
                        i8 = m7145R;
                        i12 = m7505y;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 37:
                    int m7159D = C7464m7.m7159D((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7159D <= 0) {
                        break;
                    } else {
                        int m7505y2 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7159D);
                        i8 = m7159D;
                        i12 = m7505y2;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 38:
                    int m7157F = C7464m7.m7157F((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7157F <= 0) {
                        break;
                    } else {
                        int m7505y3 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7157F);
                        i8 = m7157F;
                        i12 = m7505y3;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 39:
                    int m7151L = C7464m7.m7151L((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7151L <= 0) {
                        break;
                    } else {
                        int m7505y4 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7151L);
                        i8 = m7151L;
                        i12 = m7505y4;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 40:
                    int m7143T2 = C7464m7.m7143T((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7143T2 <= 0) {
                        break;
                    } else {
                        int m7505y5 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7143T2);
                        i8 = m7143T2;
                        i12 = m7505y5;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 41:
                    int m7145R2 = C7464m7.m7145R((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7145R2 <= 0) {
                        break;
                    } else {
                        int m7505y6 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7145R2);
                        i8 = m7145R2;
                        i12 = m7505y6;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 42:
                    int m7141V = C7464m7.m7141V((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7141V <= 0) {
                        break;
                    } else {
                        int m7505y7 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7141V);
                        i8 = m7141V;
                        i12 = m7505y7;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 43:
                    int m7149N = C7464m7.m7149N((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7149N <= 0) {
                        break;
                    } else {
                        int m7505y8 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7149N);
                        i8 = m7149N;
                        i12 = m7505y8;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 44:
                    int m7153J = C7464m7.m7153J((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7153J <= 0) {
                        break;
                    } else {
                        int m7505y9 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7153J);
                        i8 = m7153J;
                        i12 = m7505y9;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 45:
                    int m7145R3 = C7464m7.m7145R((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7145R3 <= 0) {
                        break;
                    } else {
                        int m7505y10 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7145R3);
                        i8 = m7145R3;
                        i12 = m7505y10;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 46:
                    int m7143T3 = C7464m7.m7143T((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7143T3 <= 0) {
                        break;
                    } else {
                        int m7505y11 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7143T3);
                        i8 = m7143T3;
                        i12 = m7505y11;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 47:
                    int m7147P = C7464m7.m7147P((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7147P <= 0) {
                        break;
                    } else {
                        int m7505y12 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7147P);
                        i8 = m7147P;
                        i12 = m7505y12;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 48:
                    int m7155H = C7464m7.m7155H((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m7155H <= 0) {
                        break;
                    } else {
                        int m7505y13 = AbstractC7364f5.m7505y(i16);
                        i11 = AbstractC7364f5.m7533A(m7155H);
                        i8 = m7155H;
                        i12 = m7505y13;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 49:
                    i3 = C7464m7.m7133b0(i16, (List) C7409i8.m7305s(t, j), m7652N(i13));
                    i = i15 + i3;
                    break;
                case 50:
                    C7558t6.m6904a(i16, C7409i8.m7305s(t, j), m7651O(i13));
                    i = i15;
                    break;
                case 51:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i2 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 52:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i4 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 53:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        long m7641n = m7641n(t, j);
                        i6 = AbstractC7364f5.m7533A(i16 << 3);
                        i5 = AbstractC7364f5.m7532B(m7641n);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 54:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        long m7641n2 = m7641n(t, j);
                        i6 = AbstractC7364f5.m7533A(i16 << 3);
                        i5 = AbstractC7364f5.m7532B(m7641n2);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 55:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        int m7642m = m7642m(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7504z(m7642m);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 56:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i2 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 57:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i4 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 58:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i10 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i10 + 1;
                        i = i15 + i3;
                        break;
                    }
                case 59:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        Object m7305s2 = C7409i8.m7305s(t, j);
                        if (m7305s2 instanceof zzgr) {
                            m7533A = AbstractC7364f5.m7533A(i16 << 3);
                            zzc = ((zzgr) m7305s2).zzc();
                            m7533A2 = AbstractC7364f5.m7533A(zzc);
                            i7 = m7533A + m7533A2 + zzc;
                            i = i15 + i7;
                            break;
                        } else {
                            i9 = AbstractC7364f5.m7533A(i16 << 3);
                            i8 = AbstractC7364f5.m7531C((String) m7305s2);
                            i7 = i9 + i8;
                            i = i15 + i7;
                        }
                    }
                case 60:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i3 = C7464m7.m7138Y(i16, C7409i8.m7305s(t, j), m7652N(i13));
                        i = i15 + i3;
                        break;
                    }
                case 61:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        zzgr zzgrVar2 = (zzgr) C7409i8.m7305s(t, j);
                        m7533A = AbstractC7364f5.m7533A(i16 << 3);
                        zzc = zzgrVar2.zzc();
                        m7533A2 = AbstractC7364f5.m7533A(zzc);
                        i7 = m7533A + m7533A2 + zzc;
                        i = i15 + i7;
                        break;
                    }
                case 62:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        int m7642m2 = m7642m(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7533A(m7642m2);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 63:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        int m7642m3 = m7642m(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7504z(m7642m3);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 64:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i4 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 65:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i2 = AbstractC7364f5.m7533A(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 66:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        int m7642m4 = m7642m(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7533A((m7642m4 >> 31) ^ (m7642m4 + m7642m4));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 67:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        long m7641n3 = m7641n(t, j);
                        i9 = AbstractC7364f5.m7533A(i16 << 3);
                        i8 = AbstractC7364f5.m7532B((m7641n3 >> 63) ^ (m7641n3 + m7641n3));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 68:
                    i = i15;
                    if (!m7635t(t, i16, i13)) {
                        break;
                    } else {
                        i3 = AbstractC7364f5.m7525e(i16, (AbstractC7623y6) C7409i8.m7305s(t, j), m7652N(i13));
                        i = i15 + i3;
                        break;
                    }
                default:
                    i = i15;
                    break;
            }
            i13 += 3;
            i14 = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x093d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0317  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x03f6 -> B:116:0x03fb). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x030c -> B:78:0x0311). Please submit an issue!!! */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m7655K(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.C7530r4 r22) {
        /*
            Method dump skipped, instructions count: 2370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C7310b7.m7655K(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.r4):int");
    }

    /* renamed from: L */
    private final <K, V> int m7654L(T t, byte[] bArr, int i, int i2, int i3, long j, C7530r4 c7530r4) {
        Unsafe unsafe = f34350b;
        Object m7651O = m7651O(i3);
        Object object = unsafe.getObject(t, j);
        if (!((zziq) object).zze()) {
            zziq<K, V> zzc = zziq.zza().zzc();
            C7558t6.m6903b(zzc, object);
            unsafe.putObject(t, j, zzc);
        }
        C7545s6 c7545s6 = (C7545s6) m7651O;
        throw null;
    }

    /* renamed from: M */
    private final int m7653M(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C7530r4 c7530r4) {
        Unsafe unsafe = f34350b;
        long j2 = this.f34351c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(C7543s4.m6928e(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(C7543s4.m6929d(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int m6930c = C7543s4.m6930c(bArr, i, c7530r4);
                    unsafe.putObject(t, j, Long.valueOf(c7530r4.f34661b));
                    unsafe.putInt(t, j2, i4);
                    return m6930c;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int m6932a = C7543s4.m6932a(bArr, i, c7530r4);
                    unsafe.putObject(t, j, Integer.valueOf(c7530r4.f34660a));
                    unsafe.putInt(t, j2, i4);
                    return m6932a;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(C7543s4.m6928e(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(C7543s4.m6929d(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int m6930c2 = C7543s4.m6930c(bArr, i, c7530r4);
                    unsafe.putObject(t, j, Boolean.valueOf(c7530r4.f34661b != 0));
                    unsafe.putInt(t, j2, i4);
                    return m6930c2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = C7543s4.m6932a(bArr, i, c7530r4);
                    int i9 = c7530r4.f34660a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !C7465m8.m7107b(bArr, i, i + i9)) {
                        throw zzib.zzf();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, C7365f6.f34431a));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = C7543s4.m6924i(m7652N(i8), bArr, i, i2, c7530r4);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, c7530r4.f34662c);
                    } else {
                        unsafe.putObject(t, j, C7365f6.m7495i(object, c7530r4.f34662c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int m6925h = C7543s4.m6925h(bArr, i, c7530r4);
                    unsafe.putObject(t, j, c7530r4.f34662c);
                    unsafe.putInt(t, j2, i4);
                    return m6925h;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = C7543s4.m6932a(bArr, i, c7530r4);
                    int i10 = c7530r4.f34660a;
                    AbstractC7309b6 m7650P = m7650P(i8);
                    if (m7650P != null && !m7650P.mo6836B(i10)) {
                        m7664B(t).m6719h(i3, Long.valueOf(i10));
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
                    int m6932a2 = C7543s4.m6932a(bArr, i, c7530r4);
                    unsafe.putObject(t, j, Integer.valueOf(C7322c5.m7628a(c7530r4.f34660a)));
                    unsafe.putInt(t, j2, i4);
                    return m6932a2;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int m6930c3 = C7543s4.m6930c(bArr, i, c7530r4);
                    unsafe.putObject(t, j, Long.valueOf(C7322c5.m7627b(c7530r4.f34661b)));
                    unsafe.putInt(t, j2, i4);
                    return m6930c3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = C7543s4.m6923j(m7652N(i8), bArr, i, i2, (i3 & (-8)) | 4, c7530r4);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, c7530r4.f34662c);
                    } else {
                        unsafe.putObject(t, j, C7365f6.m7495i(object2, c7530r4.f34662c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* renamed from: N */
    private final AbstractC7436k7 m7652N(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        AbstractC7436k7 abstractC7436k7 = (AbstractC7436k7) this.f34352d[i3];
        if (abstractC7436k7 != null) {
            return abstractC7436k7;
        }
        AbstractC7436k7<T> m7367b = C7394h7.m7368a().m7367b((Class) this.f34352d[i3 + 1]);
        this.f34352d[i3] = m7367b;
        return m7367b;
    }

    /* renamed from: O */
    private final Object m7651O(int i) {
        int i2 = i / 3;
        return this.f34352d[i2 + i2];
    }

    /* renamed from: P */
    private final AbstractC7309b6 m7650P(int i) {
        int i2 = i / 3;
        return (AbstractC7309b6) this.f34352d[i2 + i2 + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x04b5, code lost:
        if (r24 != r0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x04ee, code lost:
        if (r24 != r0) goto L101;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v208, types: [int] */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m7649Q(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.measurement.C7530r4 r21) {
        /*
            Method dump skipped, instructions count: 1336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C7310b7.m7649Q(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.r4):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: R */
    private static boolean m7648R(Object obj, int i, AbstractC7436k7 abstractC7436k7) {
        return abstractC7436k7.mo7206d(C7409i8.m7305s(obj, i & 1048575));
    }

    /* renamed from: h */
    private final int m7647h(int i) {
        return this.f34351c[i + 1];
    }

    /* renamed from: i */
    private final int m7646i(int i) {
        return this.f34351c[i + 2];
    }

    /* renamed from: j */
    private static int m7645j(int i) {
        return (i >>> 20) & 255;
    }

    /* renamed from: k */
    private static <T> double m7644k(T t, long j) {
        return ((Double) C7409i8.m7305s(t, j)).doubleValue();
    }

    /* renamed from: l */
    private static <T> float m7643l(T t, long j) {
        return ((Float) C7409i8.m7305s(t, j)).floatValue();
    }

    /* renamed from: m */
    private static <T> int m7642m(T t, long j) {
        return ((Integer) C7409i8.m7305s(t, j)).intValue();
    }

    /* renamed from: n */
    private static <T> long m7641n(T t, long j) {
        return ((Long) C7409i8.m7305s(t, j)).longValue();
    }

    /* renamed from: o */
    private static <T> boolean m7640o(T t, long j) {
        return ((Boolean) C7409i8.m7305s(t, j)).booleanValue();
    }

    /* renamed from: p */
    private final boolean m7639p(T t, T t2, int i) {
        return m7637r(t, i) == m7637r(t2, i);
    }

    /* renamed from: q */
    private final boolean m7638q(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m7637r(t, i) : (i3 & i4) != 0;
    }

    /* renamed from: r */
    private final boolean m7637r(T t, int i) {
        int m7646i = m7646i(i);
        long j = m7646i & 1048575;
        if (j != 1048575) {
            return (C7409i8.m7315i(t, j) & (1 << (m7646i >>> 20))) != 0;
        }
        int m7647h = m7647h(i);
        long j2 = m7647h & 1048575;
        switch (m7645j(m7647h)) {
            case 0:
                return C7409i8.m7307q(t, j2) != 0.0d;
            case 1:
                return C7409i8.m7309o(t, j2) != 0.0f;
            case 2:
                return C7409i8.m7313k(t, j2) != 0;
            case 3:
                return C7409i8.m7313k(t, j2) != 0;
            case 4:
                return C7409i8.m7315i(t, j2) != 0;
            case 5:
                return C7409i8.m7313k(t, j2) != 0;
            case 6:
                return C7409i8.m7315i(t, j2) != 0;
            case 7:
                return C7409i8.m7311m(t, j2);
            case 8:
                Object m7305s = C7409i8.m7305s(t, j2);
                if (m7305s instanceof String) {
                    return !((String) m7305s).isEmpty();
                } else if (!(m7305s instanceof zzgr)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzgr.f34851d.equals(m7305s);
                }
            case 9:
                return C7409i8.m7305s(t, j2) != null;
            case 10:
                return !zzgr.f34851d.equals(C7409i8.m7305s(t, j2));
            case 11:
                return C7409i8.m7315i(t, j2) != 0;
            case 12:
                return C7409i8.m7315i(t, j2) != 0;
            case 13:
                return C7409i8.m7315i(t, j2) != 0;
            case 14:
                return C7409i8.m7313k(t, j2) != 0;
            case 15:
                return C7409i8.m7315i(t, j2) != 0;
            case 16:
                return C7409i8.m7313k(t, j2) != 0;
            case 17:
                return C7409i8.m7305s(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: s */
    private final void m7636s(T t, int i) {
        int m7646i = m7646i(i);
        long j = 1048575 & m7646i;
        if (j == 1048575) {
            return;
        }
        C7409i8.m7314j(t, j, (1 << (m7646i >>> 20)) | C7409i8.m7315i(t, j));
    }

    /* renamed from: t */
    private final boolean m7635t(T t, int i, int i2) {
        return C7409i8.m7315i(t, (long) (m7646i(i2) & 1048575)) == i;
    }

    /* renamed from: u */
    private final void m7634u(T t, int i, int i2) {
        C7409i8.m7314j(t, m7646i(i2) & 1048575, i);
    }

    /* renamed from: v */
    private final int m7633v(int i) {
        if (i < this.f34353e || i > this.f34354f) {
            return -1;
        }
        return m7631x(i, 0);
    }

    /* renamed from: w */
    private final int m7632w(int i, int i2) {
        if (i < this.f34353e || i > this.f34354f) {
            return -1;
        }
        return m7631x(i, i2);
    }

    /* renamed from: x */
    private final int m7631x(int i, int i2) {
        int length = (this.f34351c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f34351c[i4];
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

    /* renamed from: y */
    private final void m7630y(T t, C7378g5 c7378g5) {
        int i;
        int i2;
        if (this.f34356h) {
            this.f34363o.mo7078b(t);
            throw null;
        }
        int length = this.f34351c.length;
        Unsafe unsafe = f34350b;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < length) {
            int m7647h = m7647h(i3);
            int i6 = this.f34351c[i3];
            int m7645j = m7645j(m7647h);
            if (m7645j <= 17) {
                int i7 = this.f34351c[i3 + 2];
                int i8 = i7 & 1048575;
                i = i4;
                int i9 = i5;
                if (i8 != i5) {
                    i = unsafe.getInt(t, i8);
                    i9 = i8;
                }
                i2 = 1 << (i7 >>> 20);
                i5 = i9;
            } else {
                i2 = 0;
                i = i4;
            }
            long j = m7647h & 1048575;
            switch (m7645j) {
                case 0:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7396q(i6, C7409i8.m7307q(t, j));
                        break;
                    }
                case 1:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7397p(i6, C7409i8.m7309o(t, j));
                        break;
                    }
                case 2:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7399n(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 3:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7394s(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 4:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7393t(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 5:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7392u(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 6:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7391v(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 7:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7390w(i6, C7409i8.m7311m(t, j));
                        break;
                    }
                case 8:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        m7665A(i6, unsafe.getObject(t, j), c7378g5);
                        break;
                    }
                case 9:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7421C(i6, unsafe.getObject(t, j), m7652N(i3));
                        break;
                    }
                case 10:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7388y(i6, (zzgr) unsafe.getObject(t, j));
                        break;
                    }
                case 11:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7387z(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 12:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7395r(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 13:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7400m(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 14:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7398o(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 15:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7423A(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 16:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7422B(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 17:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        c7378g5.m7420D(i6, unsafe.getObject(t, j), m7652N(i3));
                        break;
                    }
                case 18:
                    C7464m7.m7125j(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 19:
                    C7464m7.m7124k(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 20:
                    C7464m7.m7123l(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 21:
                    C7464m7.m7122m(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 22:
                    C7464m7.m7118q(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 23:
                    C7464m7.m7120o(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 24:
                    C7464m7.m7115t(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 25:
                    C7464m7.m7112w(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 26:
                    C7464m7.m7111x(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5);
                    break;
                case 27:
                    C7464m7.m7109z(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, m7652N(i3));
                    break;
                case 28:
                    C7464m7.m7110y(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5);
                    break;
                case 29:
                    C7464m7.m7117r(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 30:
                    C7464m7.m7113v(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 31:
                    C7464m7.m7114u(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 32:
                    C7464m7.m7119p(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 33:
                    C7464m7.m7116s(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 34:
                    C7464m7.m7121n(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, false);
                    break;
                case 35:
                    C7464m7.m7125j(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 36:
                    C7464m7.m7124k(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 37:
                    C7464m7.m7123l(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 38:
                    C7464m7.m7122m(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 39:
                    C7464m7.m7118q(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 40:
                    C7464m7.m7120o(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 41:
                    C7464m7.m7115t(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 42:
                    C7464m7.m7112w(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 43:
                    C7464m7.m7117r(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 44:
                    C7464m7.m7113v(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 45:
                    C7464m7.m7114u(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 46:
                    C7464m7.m7119p(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 47:
                    C7464m7.m7116s(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 48:
                    C7464m7.m7121n(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, true);
                    break;
                case 49:
                    C7464m7.m7161B(this.f34351c[i3], (List) unsafe.getObject(t, j), c7378g5, m7652N(i3));
                    break;
                case 50:
                    m7629z(c7378g5, i6, unsafe.getObject(t, j), i3);
                    break;
                case 51:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7396q(i6, m7644k(t, j));
                        break;
                    }
                case 52:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7397p(i6, m7643l(t, j));
                        break;
                    }
                case 53:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7399n(i6, m7641n(t, j));
                        break;
                    }
                case 54:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7394s(i6, m7641n(t, j));
                        break;
                    }
                case 55:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7393t(i6, m7642m(t, j));
                        break;
                    }
                case 56:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7392u(i6, m7641n(t, j));
                        break;
                    }
                case 57:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7391v(i6, m7642m(t, j));
                        break;
                    }
                case 58:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7390w(i6, m7640o(t, j));
                        break;
                    }
                case 59:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        m7665A(i6, unsafe.getObject(t, j), c7378g5);
                        break;
                    }
                case 60:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7421C(i6, unsafe.getObject(t, j), m7652N(i3));
                        break;
                    }
                case 61:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7388y(i6, (zzgr) unsafe.getObject(t, j));
                        break;
                    }
                case 62:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7387z(i6, m7642m(t, j));
                        break;
                    }
                case 63:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7395r(i6, m7642m(t, j));
                        break;
                    }
                case 64:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7400m(i6, m7642m(t, j));
                        break;
                    }
                case 65:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7398o(i6, m7641n(t, j));
                        break;
                    }
                case 66:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7423A(i6, m7642m(t, j));
                        break;
                    }
                case 67:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7422B(i6, m7641n(t, j));
                        break;
                    }
                case 68:
                    if (!m7635t(t, i6, i3)) {
                        break;
                    } else {
                        c7378g5.m7420D(i6, unsafe.getObject(t, j), m7652N(i3));
                        break;
                    }
            }
            i3 += 3;
            i4 = i;
        }
        AbstractC7611x7<?, ?> abstractC7611x7 = this.f34362n;
        abstractC7611x7.mo6634i(abstractC7611x7.mo6639d(t), c7378g5);
    }

    /* renamed from: z */
    private final <K, V> void m7629z(C7378g5 c7378g5, int i, Object obj, int i2) {
        if (obj == null) {
            return;
        }
        C7545s6 c7545s6 = (C7545s6) m7651O(i2);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x0672, code lost:
        if (r32 == 1048575) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0675, code lost:
        r0.putInt(r18, r32, r35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0680, code lost:
        r19 = r17.f34359k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x068a, code lost:
        if (r19 >= r17.f34360l) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x068d, code lost:
        r0 = r17.f34358j[r19];
        r0 = r17.f34351c[r0];
        r0 = com.google.android.gms.internal.measurement.C7409i8.m7305s(r18, r17.m7647h(r0) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x06b0, code lost:
        if (r0 != null) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x06bc, code lost:
        if (r17.m7650P(r0) != null) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x06bf, code lost:
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x06c5, code lost:
        r0 = (com.google.android.gms.internal.measurement.zziq) r0;
        r0 = (com.google.android.gms.internal.measurement.C7545s6) r17.m7651O(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x06d6, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x06d9, code lost:
        if (r21 != 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x06e0, code lost:
        if (r28 != r20) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x06e9, code lost:
        throw com.google.android.gms.internal.measurement.zzib.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x06ee, code lost:
        if (r28 > r20) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x06f5, code lost:
        if (r29 != r21) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x06fa, code lost:
        return r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x06fe, code lost:
        throw com.google.android.gms.internal.measurement.zzib.zze();
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7663C(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.C7530r4 r22) {
        /*
            Method dump skipped, instructions count: 1791
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C7310b7.m7663C(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.r4):int");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: a */
    public final int mo7209a(T t) {
        return this.f34357i ? m7656J(t) : m7657I(t);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: b */
    public final void mo7208b(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.f34351c.length; i += 3) {
            int m7647h = m7647h(i);
            long j = 1048575 & m7647h;
            int i2 = this.f34351c[i];
            switch (m7645j(m7647h)) {
                case 0:
                    if (m7637r(t2, i)) {
                        C7409i8.m7306r(t, j, C7409i8.m7307q(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m7637r(t2, i)) {
                        C7409i8.m7308p(t, j, C7409i8.m7309o(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m7637r(t2, i)) {
                        C7409i8.m7312l(t, j, C7409i8.m7313k(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m7637r(t2, i)) {
                        C7409i8.m7312l(t, j, C7409i8.m7313k(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m7637r(t2, i)) {
                        C7409i8.m7314j(t, j, C7409i8.m7315i(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m7637r(t2, i)) {
                        C7409i8.m7312l(t, j, C7409i8.m7313k(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m7637r(t2, i)) {
                        C7409i8.m7314j(t, j, C7409i8.m7315i(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m7637r(t2, i)) {
                        C7409i8.m7310n(t, j, C7409i8.m7311m(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m7637r(t2, i)) {
                        C7409i8.m7304t(t, j, C7409i8.m7305s(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m7659G(t, t2, i);
                    break;
                case 10:
                    if (m7637r(t2, i)) {
                        C7409i8.m7304t(t, j, C7409i8.m7305s(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m7637r(t2, i)) {
                        C7409i8.m7314j(t, j, C7409i8.m7315i(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m7637r(t2, i)) {
                        C7409i8.m7314j(t, j, C7409i8.m7315i(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m7637r(t2, i)) {
                        C7409i8.m7314j(t, j, C7409i8.m7315i(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m7637r(t2, i)) {
                        C7409i8.m7312l(t, j, C7409i8.m7313k(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m7637r(t2, i)) {
                        C7409i8.m7314j(t, j, C7409i8.m7315i(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m7637r(t2, i)) {
                        C7409i8.m7312l(t, j, C7409i8.m7313k(t2, j));
                        m7636s(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m7659G(t, t2, i);
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
                    this.f34361m.mo7075b(t, t2, j);
                    break;
                case 50:
                    C7464m7.m7126i(this.f34365q, t, t2, j);
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
                    if (m7635t(t2, i2, i)) {
                        C7409i8.m7304t(t, j, C7409i8.m7305s(t2, j));
                        m7634u(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m7658H(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m7635t(t2, i2, i)) {
                        C7409i8.m7304t(t, j, C7409i8.m7305s(t2, j));
                        m7634u(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m7658H(t, t2, i);
                    break;
            }
        }
        C7464m7.m7129f(this.f34362n, t, t2);
        if (this.f34356h) {
            C7464m7.m7130e(this.f34363o, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: c */
    public final int mo7207c(T t) {
        int i;
        int i2;
        int i3;
        int length = this.f34351c.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = this.f34362n.mo6639d(t).hashCode();
                if (!this.f34356h) {
                    return (i6 * 53) + hashCode;
                }
                this.f34363o.mo7078b(t);
                throw null;
            }
            int m7647h = m7647h(i4);
            int i7 = this.f34351c[i4];
            long j = 1048575 & m7647h;
            int i8 = 37;
            switch (m7645j(m7647h)) {
                case 0:
                    i2 = i6 * 53;
                    i3 = C7365f6.m7499e(Double.doubleToLongBits(C7409i8.m7307q(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(C7409i8.m7309o(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = C7365f6.m7499e(C7409i8.m7313k(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = C7365f6.m7499e(C7409i8.m7313k(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = C7409i8.m7315i(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = C7365f6.m7499e(C7409i8.m7313k(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = C7409i8.m7315i(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = C7365f6.m7498f(C7409i8.m7311m(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) C7409i8.m7305s(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object m7305s = C7409i8.m7305s(t, j);
                    if (m7305s != null) {
                        i8 = m7305s.hashCode();
                    }
                    i = (i6 * 53) + i8;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = C7409i8.m7305s(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = C7409i8.m7315i(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = C7409i8.m7315i(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = C7409i8.m7315i(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = C7365f6.m7499e(C7409i8.m7313k(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = C7409i8.m7315i(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = C7365f6.m7499e(C7409i8.m7313k(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object m7305s2 = C7409i8.m7305s(t, j);
                    if (m7305s2 != null) {
                        i8 = m7305s2.hashCode();
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
                    i3 = C7409i8.m7305s(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = C7409i8.m7305s(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7365f6.m7499e(Double.doubleToLongBits(m7644k(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(m7643l(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7365f6.m7499e(m7641n(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7365f6.m7499e(m7641n(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m7642m(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7365f6.m7499e(m7641n(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m7642m(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7365f6.m7498f(m7640o(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) C7409i8.m7305s(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7409i8.m7305s(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7409i8.m7305s(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m7642m(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m7642m(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m7642m(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7365f6.m7499e(m7641n(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m7642m(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7365f6.m7499e(m7641n(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!m7635t(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C7409i8.m7305s(t, j).hashCode();
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: d */
    public final boolean mo7206d(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f34359k; i3++) {
            int i4 = this.f34358j[i3];
            int i5 = this.f34351c[i4];
            int m7647h = m7647h(i4);
            int i6 = this.f34351c[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f34350b.getInt(t, i7);
                }
                i = i7;
            }
            if ((268435456 & m7647h) != 0 && !m7638q(t, i4, i, i2, i8)) {
                return false;
            }
            int m7645j = m7645j(m7647h);
            if (m7645j != 9 && m7645j != 17) {
                if (m7645j != 27) {
                    if (m7645j == 60 || m7645j == 68) {
                        if (m7635t(t, i5, i4) && !m7648R(t, m7647h, m7652N(i4))) {
                            return false;
                        }
                    } else if (m7645j != 49) {
                        if (m7645j == 50 && !((zziq) C7409i8.m7305s(t, m7647h & 1048575)).isEmpty()) {
                            C7545s6 c7545s6 = (C7545s6) m7651O(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) C7409i8.m7305s(t, m7647h & 1048575);
                if (!list.isEmpty()) {
                    AbstractC7436k7 m7652N = m7652N(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!m7652N.mo7206d(list.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (m7638q(t, i4, i, i2, i8) && !m7648R(t, m7647h, m7652N(i4))) {
                return false;
            }
        }
        if (!this.f34356h) {
            return true;
        }
        this.f34363o.mo7078b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: e */
    public final boolean mo7205e(T t, T t2) {
        boolean z;
        int length = this.f34351c.length;
        for (int i = 0; i < length; i += 3) {
            int m7647h = m7647h(i);
            long j = m7647h & 1048575;
            switch (m7645j(m7647h)) {
                case 0:
                    if (!m7639p(t, t2, i) || Double.doubleToLongBits(C7409i8.m7307q(t, j)) != Double.doubleToLongBits(C7409i8.m7307q(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!m7639p(t, t2, i) || Float.floatToIntBits(C7409i8.m7309o(t, j)) != Float.floatToIntBits(C7409i8.m7309o(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!m7639p(t, t2, i) || C7409i8.m7313k(t, j) != C7409i8.m7313k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!m7639p(t, t2, i) || C7409i8.m7313k(t, j) != C7409i8.m7313k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!m7639p(t, t2, i) || C7409i8.m7315i(t, j) != C7409i8.m7315i(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!m7639p(t, t2, i) || C7409i8.m7313k(t, j) != C7409i8.m7313k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!m7639p(t, t2, i) || C7409i8.m7315i(t, j) != C7409i8.m7315i(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!m7639p(t, t2, i) || C7409i8.m7311m(t, j) != C7409i8.m7311m(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!m7639p(t, t2, i) || !C7464m7.m7131d(C7409i8.m7305s(t, j), C7409i8.m7305s(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!m7639p(t, t2, i) || !C7464m7.m7131d(C7409i8.m7305s(t, j), C7409i8.m7305s(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!m7639p(t, t2, i) || !C7464m7.m7131d(C7409i8.m7305s(t, j), C7409i8.m7305s(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!m7639p(t, t2, i) || C7409i8.m7315i(t, j) != C7409i8.m7315i(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!m7639p(t, t2, i) || C7409i8.m7315i(t, j) != C7409i8.m7315i(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!m7639p(t, t2, i) || C7409i8.m7315i(t, j) != C7409i8.m7315i(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!m7639p(t, t2, i) || C7409i8.m7313k(t, j) != C7409i8.m7313k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!m7639p(t, t2, i) || C7409i8.m7315i(t, j) != C7409i8.m7315i(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!m7639p(t, t2, i) || C7409i8.m7313k(t, j) != C7409i8.m7313k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!m7639p(t, t2, i) || !C7464m7.m7131d(C7409i8.m7305s(t, j), C7409i8.m7305s(t2, j))) {
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
                    z = C7464m7.m7131d(C7409i8.m7305s(t, j), C7409i8.m7305s(t2, j));
                    break;
                case 50:
                    z = C7464m7.m7131d(C7409i8.m7305s(t, j), C7409i8.m7305s(t2, j));
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
                    long m7646i = m7646i(i) & 1048575;
                    if (C7409i8.m7315i(t, m7646i) != C7409i8.m7315i(t2, m7646i) || !C7464m7.m7131d(C7409i8.m7305s(t, j), C7409i8.m7305s(t2, j))) {
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
        if (!this.f34362n.mo6639d(t).equals(this.f34362n.mo6639d(t2))) {
            return false;
        }
        if (!this.f34356h) {
            return true;
        }
        this.f34363o.mo7078b(t);
        this.f34363o.mo7078b(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: e0 */
    public final void mo7204e0(T t) {
        int i;
        int i2 = this.f34359k;
        while (true) {
            i = this.f34360l;
            if (i2 >= i) {
                break;
            }
            long m7647h = m7647h(this.f34358j[i2]) & 1048575;
            Object m7305s = C7409i8.m7305s(t, m7647h);
            if (m7305s != null) {
                ((zziq) m7305s).zzd();
                C7409i8.m7304t(t, m7647h, m7305s);
            }
            i2++;
        }
        int length = this.f34358j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f34361m.mo7076a(t, this.f34358j[i3]);
        }
        this.f34362n.mo6638e(t);
        if (this.f34356h) {
            this.f34363o.mo7077c(t);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: f */
    public final void mo7203f(T t, byte[] bArr, int i, int i2, C7530r4 c7530r4) {
        if (this.f34357i) {
            m7649Q(t, bArr, i, i2, c7530r4);
        } else {
            m7663C(t, bArr, i, i2, 0, c7530r4);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: g */
    public final void mo7202g(T t, C7378g5 c7378g5) {
        if (!this.f34357i) {
            m7630y(t, c7378g5);
        } else if (this.f34356h) {
            this.f34363o.mo7078b(t);
            throw null;
        } else {
            int length = this.f34351c.length;
            for (int i = 0; i < length; i += 3) {
                int m7647h = m7647h(i);
                int i2 = this.f34351c[i];
                switch (m7645j(m7647h)) {
                    case 0:
                        if (m7637r(t, i)) {
                            c7378g5.m7396q(i2, C7409i8.m7307q(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m7637r(t, i)) {
                            c7378g5.m7397p(i2, C7409i8.m7309o(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m7637r(t, i)) {
                            c7378g5.m7399n(i2, C7409i8.m7313k(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m7637r(t, i)) {
                            c7378g5.m7394s(i2, C7409i8.m7313k(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m7637r(t, i)) {
                            c7378g5.m7393t(i2, C7409i8.m7315i(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m7637r(t, i)) {
                            c7378g5.m7392u(i2, C7409i8.m7313k(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m7637r(t, i)) {
                            c7378g5.m7391v(i2, C7409i8.m7315i(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m7637r(t, i)) {
                            c7378g5.m7390w(i2, C7409i8.m7311m(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m7637r(t, i)) {
                            m7665A(i2, C7409i8.m7305s(t, m7647h & 1048575), c7378g5);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (m7637r(t, i)) {
                            c7378g5.m7421C(i2, C7409i8.m7305s(t, m7647h & 1048575), m7652N(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (m7637r(t, i)) {
                            c7378g5.m7388y(i2, (zzgr) C7409i8.m7305s(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m7637r(t, i)) {
                            c7378g5.m7387z(i2, C7409i8.m7315i(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m7637r(t, i)) {
                            c7378g5.m7395r(i2, C7409i8.m7315i(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m7637r(t, i)) {
                            c7378g5.m7400m(i2, C7409i8.m7315i(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m7637r(t, i)) {
                            c7378g5.m7398o(i2, C7409i8.m7313k(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m7637r(t, i)) {
                            c7378g5.m7423A(i2, C7409i8.m7315i(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m7637r(t, i)) {
                            c7378g5.m7422B(i2, C7409i8.m7313k(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (m7637r(t, i)) {
                            c7378g5.m7420D(i2, C7409i8.m7305s(t, m7647h & 1048575), m7652N(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        C7464m7.m7125j(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 19:
                        C7464m7.m7124k(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 20:
                        C7464m7.m7123l(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 21:
                        C7464m7.m7122m(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 22:
                        C7464m7.m7118q(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 23:
                        C7464m7.m7120o(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 24:
                        C7464m7.m7115t(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 25:
                        C7464m7.m7112w(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 26:
                        C7464m7.m7111x(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5);
                        break;
                    case 27:
                        C7464m7.m7109z(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, m7652N(i));
                        break;
                    case 28:
                        C7464m7.m7110y(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5);
                        break;
                    case 29:
                        C7464m7.m7117r(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 30:
                        C7464m7.m7113v(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 31:
                        C7464m7.m7114u(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 32:
                        C7464m7.m7119p(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 33:
                        C7464m7.m7116s(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 34:
                        C7464m7.m7121n(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, false);
                        break;
                    case 35:
                        C7464m7.m7125j(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 36:
                        C7464m7.m7124k(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 37:
                        C7464m7.m7123l(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 38:
                        C7464m7.m7122m(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 39:
                        C7464m7.m7118q(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 40:
                        C7464m7.m7120o(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 41:
                        C7464m7.m7115t(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 42:
                        C7464m7.m7112w(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 43:
                        C7464m7.m7117r(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 44:
                        C7464m7.m7113v(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 45:
                        C7464m7.m7114u(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 46:
                        C7464m7.m7119p(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 47:
                        C7464m7.m7116s(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 48:
                        C7464m7.m7121n(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, true);
                        break;
                    case 49:
                        C7464m7.m7161B(this.f34351c[i], (List) C7409i8.m7305s(t, m7647h & 1048575), c7378g5, m7652N(i));
                        break;
                    case 50:
                        m7629z(c7378g5, i2, C7409i8.m7305s(t, m7647h & 1048575), i);
                        break;
                    case 51:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7396q(i2, m7644k(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7397p(i2, m7643l(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7399n(i2, m7641n(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7394s(i2, m7641n(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7393t(i2, m7642m(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7392u(i2, m7641n(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7391v(i2, m7642m(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7390w(i2, m7640o(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (m7635t(t, i2, i)) {
                            m7665A(i2, C7409i8.m7305s(t, m7647h & 1048575), c7378g5);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7421C(i2, C7409i8.m7305s(t, m7647h & 1048575), m7652N(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7388y(i2, (zzgr) C7409i8.m7305s(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7387z(i2, m7642m(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7395r(i2, m7642m(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7400m(i2, m7642m(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7398o(i2, m7641n(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7423A(i2, m7642m(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7422B(i2, m7641n(t, m7647h & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (m7635t(t, i2, i)) {
                            c7378g5.m7420D(i2, C7409i8.m7305s(t, m7647h & 1048575), m7652N(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            AbstractC7611x7<?, ?> abstractC7611x7 = this.f34362n;
            abstractC7611x7.mo6634i(abstractC7611x7.mo6639d(t), c7378g5);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    public final T zza() {
        return (T) ((AbstractC7609x5) this.f34355g).mo6745y(4, null, null);
    }
}
