package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pf3.class */
public final class pf3<T> implements cg3<T> {

    /* renamed from: a */
    private static final int[] f27960a = new int[0];

    /* renamed from: b */
    private static final Unsafe f27961b = bh3.m16369B();

    /* renamed from: c */
    private final int[] f27962c;

    /* renamed from: d */
    private final Object[] f27963d;

    /* renamed from: e */
    private final int f27964e;

    /* renamed from: f */
    private final int f27965f;

    /* renamed from: g */
    private final mf3 f27966g;

    /* renamed from: h */
    private final boolean f27967h;

    /* renamed from: i */
    private final boolean f27968i;

    /* renamed from: j */
    private final boolean f27969j;

    /* renamed from: k */
    private final int[] f27970k;

    /* renamed from: l */
    private final int f27971l;

    /* renamed from: m */
    private final int f27972m;

    /* renamed from: n */
    private final af3 f27973n;

    /* renamed from: o */
    private final rg3<?, ?> f27974o;

    /* renamed from: p */
    private final wd3<?> f27975p;

    /* renamed from: q */
    private final rf3 f27976q;

    /* renamed from: r */
    private final hf3 f27977r;

    /* JADX WARN: Multi-variable type inference failed */
    private pf3(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, mf3 mf3Var, boolean z, boolean z2, int[] iArr3, int i3, int i4, rf3 rf3Var, af3 af3Var, rg3<?, ?> rg3Var, wd3<?> wd3Var, hf3 hf3Var) {
        this.f27962c = iArr;
        this.f27963d = iArr2;
        this.f27964e = objArr;
        this.f27965f = i;
        this.f27968i = i2 instanceof ie3;
        this.f27969j = mf3Var;
        boolean z3 = false;
        if (rg3Var != 0) {
            z3 = false;
            if (rg3Var.mo9259a((mf3) i2)) {
                z3 = true;
            }
        }
        this.f27967h = z3;
        this.f27970k = z2;
        this.f27971l = iArr3;
        this.f27972m = i3;
        this.f27976q = i4;
        this.f27973n = rf3Var;
        this.f27974o = af3Var;
        this.f27975p = rg3Var;
        this.f27966g = i2;
        this.f27977r = wd3Var;
    }

    /* renamed from: A */
    private final void m12297A(T t, int i, int i2) {
        bh3.m16350m(t, m12270n(i2) & 1048575, i);
    }

    /* renamed from: B */
    private final int m12296B(int i) {
        if (i < this.f27964e || i > this.f27965f) {
            return -1;
        }
        return m12294D(i, 0);
    }

    /* renamed from: C */
    private final int m12295C(int i, int i2) {
        if (i < this.f27964e || i > this.f27965f) {
            return -1;
        }
        return m12294D(i, i2);
    }

    /* renamed from: D */
    private final int m12294D(int i, int i2) {
        int length = (this.f27962c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f27962c[i4];
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

    /* renamed from: E */
    private final void m12293E(T t, rd3 rd3Var) {
        int i;
        int i2;
        if (this.f27967h) {
            this.f27975p.mo9258b(t);
            throw null;
        }
        int length = this.f27962c.length;
        Unsafe unsafe = f27961b;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < length) {
            int m12271m = m12271m(i3);
            int i6 = this.f27962c[i3];
            int m12269o = m12269o(m12271m);
            if (m12269o <= 17) {
                int i7 = this.f27962c[i3 + 2];
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
            long j = m12271m & 1048575;
            switch (m12269o) {
                case 0:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11562q(i6, bh3.m16343t(t, j));
                        break;
                    }
                case 1:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11563p(i6, bh3.m16345r(t, j));
                        break;
                    }
                case 2:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11565n(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 3:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11560s(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 4:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11559t(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 5:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11558u(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 6:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11557v(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 7:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11556w(i6, bh3.m16347p(t, j));
                        break;
                    }
                case 8:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        m12291G(i6, unsafe.getObject(t, j), rd3Var);
                        break;
                    }
                case 9:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11587C(i6, unsafe.getObject(t, j), m12278T(i3));
                        break;
                    }
                case 10:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11554y(i6, (zzgex) unsafe.getObject(t, j));
                        break;
                    }
                case 11:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11553z(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 12:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11561r(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 13:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11566m(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 14:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11564o(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 15:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11589A(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 16:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11588B(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 17:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        rd3Var.m11586D(i6, unsafe.getObject(t, j), m12278T(i3));
                        break;
                    }
                case 18:
                    fg3.m15216j(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 19:
                    fg3.m15215k(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 20:
                    fg3.m15214l(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 21:
                    fg3.m15213m(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 22:
                    fg3.m15209q(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 23:
                    fg3.m15211o(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 24:
                    fg3.m15206t(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 25:
                    fg3.m15203w(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 26:
                    fg3.m15202x(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var);
                    break;
                case 27:
                    fg3.m15200z(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, m12278T(i3));
                    break;
                case 28:
                    fg3.m15201y(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var);
                    break;
                case 29:
                    fg3.m15208r(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 30:
                    fg3.m15204v(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 31:
                    fg3.m15205u(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 32:
                    fg3.m15210p(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 33:
                    fg3.m15207s(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 34:
                    fg3.m15212n(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, false);
                    break;
                case 35:
                    fg3.m15216j(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 36:
                    fg3.m15215k(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 37:
                    fg3.m15214l(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 38:
                    fg3.m15213m(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 39:
                    fg3.m15209q(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 40:
                    fg3.m15211o(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 41:
                    fg3.m15206t(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 42:
                    fg3.m15203w(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 43:
                    fg3.m15208r(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 44:
                    fg3.m15204v(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 45:
                    fg3.m15205u(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 46:
                    fg3.m15210p(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 47:
                    fg3.m15207s(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 48:
                    fg3.m15212n(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, true);
                    break;
                case 49:
                    fg3.m15252B(this.f27962c[i3], (List) unsafe.getObject(t, j), rd3Var, m12278T(i3));
                    break;
                case 50:
                    m12292F(rd3Var, i6, unsafe.getObject(t, j), i3);
                    break;
                case 51:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11562q(i6, m12267q(t, j));
                        break;
                    }
                case 52:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11563p(i6, m12266r(t, j));
                        break;
                    }
                case 53:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11565n(i6, m12264t(t, j));
                        break;
                    }
                case 54:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11560s(i6, m12264t(t, j));
                        break;
                    }
                case 55:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11559t(i6, m12265s(t, j));
                        break;
                    }
                case 56:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11558u(i6, m12264t(t, j));
                        break;
                    }
                case 57:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11557v(i6, m12265s(t, j));
                        break;
                    }
                case 58:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11556w(i6, m12263u(t, j));
                        break;
                    }
                case 59:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        m12291G(i6, unsafe.getObject(t, j), rd3Var);
                        break;
                    }
                case 60:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11587C(i6, unsafe.getObject(t, j), m12278T(i3));
                        break;
                    }
                case 61:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11554y(i6, (zzgex) unsafe.getObject(t, j));
                        break;
                    }
                case 62:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11553z(i6, m12265s(t, j));
                        break;
                    }
                case 63:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11561r(i6, m12265s(t, j));
                        break;
                    }
                case 64:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11566m(i6, m12265s(t, j));
                        break;
                    }
                case 65:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11564o(i6, m12264t(t, j));
                        break;
                    }
                case 66:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11589A(i6, m12265s(t, j));
                        break;
                    }
                case 67:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11588B(i6, m12264t(t, j));
                        break;
                    }
                case 68:
                    if (!m12258z(t, i6, i3)) {
                        break;
                    } else {
                        rd3Var.m11586D(i6, unsafe.getObject(t, j), m12278T(i3));
                        break;
                    }
            }
            i3 += 3;
            i4 = i;
        }
        rg3<?, ?> rg3Var = this.f27974o;
        rg3Var.mo10692r(rg3Var.mo10699j(t), rd3Var);
    }

    /* renamed from: F */
    private final <K, V> void m12292F(rd3 rd3Var, int i, Object obj, int i2) {
        if (obj == null) {
            return;
        }
        gf3 gf3Var = (gf3) m12277U(i2);
        throw null;
    }

    /* renamed from: G */
    private static final void m12291G(int i, Object obj, rd3 rd3Var) {
        if (obj instanceof String) {
            rd3Var.m11555x(i, (String) obj);
        } else {
            rd3Var.m11554y(i, (zzgex) obj);
        }
    }

    /* renamed from: H */
    static sg3 m12290H(Object obj) {
        ie3 ie3Var = (ie3) obj;
        sg3 sg3Var = ie3Var.zzc;
        sg3 sg3Var2 = sg3Var;
        if (sg3Var == sg3.m11037a()) {
            sg3Var2 = sg3.m11036b();
            ie3Var.zzc = sg3Var2;
        }
        return sg3Var2;
    }

    /* renamed from: J */
    public static <T> pf3<T> m12288J(Class<T> cls, jf3 jf3Var, rf3 rf3Var, af3 af3Var, rg3<?, ?> rg3Var, wd3<?> wd3Var, hf3 hf3Var) {
        if (jf3Var instanceof wf3) {
            return m12287K((wf3) jf3Var, rf3Var, af3Var, rg3Var, wd3Var, hf3Var);
        }
        pg3 pg3Var = (pg3) jf3Var;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06e3  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x071c  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0955  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.google.android.gms.internal.ads.pf3<T> m12287K(com.google.android.gms.internal.ads.wf3 r19, com.google.android.gms.internal.ads.rf3 r20, com.google.android.gms.internal.ads.af3 r21, com.google.android.gms.internal.ads.rg3<?, ?> r22, com.google.android.gms.internal.ads.wd3<?> r23, com.google.android.gms.internal.ads.hf3 r24) {
        /*
            Method dump skipped, instructions count: 2590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pf3.m12287K(com.google.android.gms.internal.ads.wf3, com.google.android.gms.internal.ads.rf3, com.google.android.gms.internal.ads.af3, com.google.android.gms.internal.ads.rg3, com.google.android.gms.internal.ads.wd3, com.google.android.gms.internal.ads.hf3):com.google.android.gms.internal.ads.pf3");
    }

    /* renamed from: L */
    private static Field m12286L(Class<?> cls, String str) {
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

    /* renamed from: M */
    private final void m12285M(T t, T t2, int i) {
        long m12271m = m12271m(i) & 1048575;
        if (!m12260x(t2, i)) {
            return;
        }
        Object m16341v = bh3.m16341v(t, m12271m);
        Object m16341v2 = bh3.m16341v(t2, m12271m);
        if (m16341v != null && m16341v2 != null) {
            bh3.m16340w(t, m12271m, se3.m11064i(m16341v, m16341v2));
            m12259y(t, i);
        } else if (m16341v2 == null) {
        } else {
            bh3.m16340w(t, m12271m, m16341v2);
            m12259y(t, i);
        }
    }

    /* renamed from: N */
    private final void m12284N(T t, T t2, int i) {
        int m12271m = m12271m(i);
        int i2 = this.f27962c[i];
        long j = m12271m & 1048575;
        if (!m12258z(t2, i2, i)) {
            return;
        }
        Object m16341v = m12258z(t, i2, i) ? bh3.m16341v(t, j) : null;
        Object m16341v2 = bh3.m16341v(t2, j);
        if (m16341v != null && m16341v2 != null) {
            bh3.m16340w(t, j, se3.m11064i(m16341v, m16341v2));
            m12297A(t, i2, i);
        } else if (m16341v2 == null) {
        } else {
            bh3.m16340w(t, j, m16341v2);
            m12297A(t, i2, i);
        }
    }

    /* renamed from: O */
    private final int m12283O(T t) {
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
        int m11946B;
        int zzc;
        int m11946B2;
        int i13;
        int i14;
        Unsafe unsafe = f27961b;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1048575;
        while (true) {
            int i19 = i18;
            if (i15 >= this.f27962c.length) {
                rg3<?, ?> rg3Var = this.f27974o;
                int mo10693q = rg3Var.mo10693q(rg3Var.mo10699j(t));
                if (!this.f27967h) {
                    return i16 + mo10693q;
                }
                this.f27975p.mo9258b(t);
                throw null;
            }
            int m12271m = m12271m(i15);
            int i20 = this.f27962c[i15];
            int m12269o = m12269o(m12271m);
            if (m12269o <= 17) {
                int i21 = this.f27962c[i15 + 2];
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
            long j = m12271m & 1048575;
            switch (m12269o) {
                case 0:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i4 = qd3.m11946B(i20 << 3);
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
                        i6 = qd3.m11946B(i20 << 3);
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
                        i8 = qd3.m11946B(i20 << 3);
                        i7 = qd3.m11945C(j2);
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
                        i8 = qd3.m11946B(i20 << 3);
                        i7 = qd3.m11945C(j3);
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
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11947A(i24);
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
                        i4 = qd3.m11946B(i20 << 3);
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
                        i6 = qd3.m11946B(i20 << 3);
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
                        i12 = qd3.m11946B(i20 << 3);
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
                        if (object instanceof zzgex) {
                            m11946B = qd3.m11946B(i20 << 3);
                            zzc = ((zzgex) object).zzc();
                            m11946B2 = qd3.m11946B(zzc);
                            i9 = m11946B + m11946B2 + zzc;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        } else {
                            i10 = qd3.m11946B(i20 << 3);
                            i11 = qd3.m11944D((String) object);
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
                        i5 = fg3.m15229Y(i20, unsafe.getObject(t, j), m12278T(i15));
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
                        zzgex zzgexVar = (zzgex) unsafe.getObject(t, j);
                        m11946B = qd3.m11946B(i20 << 3);
                        zzc = zzgexVar.zzc();
                        m11946B2 = qd3.m11946B(zzc);
                        i9 = m11946B + m11946B2 + zzc;
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
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11946B(i25);
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
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11947A(i26);
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
                        i6 = qd3.m11946B(i20 << 3);
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
                        i4 = qd3.m11946B(i20 << 3);
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
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11946B((i27 >> 31) ^ (i27 + i27));
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
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11945C((j4 >> 63) ^ (j4 + j4));
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
                        i5 = qd3.m11938f(i20, (mf3) unsafe.getObject(t, j), m12278T(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 18:
                    i5 = fg3.m15233U(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 19:
                    i5 = fg3.m15235S(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 20:
                    i5 = fg3.m15249E(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 21:
                    i5 = fg3.m15247G(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 22:
                    i5 = fg3.m15241M(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 23:
                    i5 = fg3.m15233U(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 24:
                    i5 = fg3.m15235S(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 25:
                    i5 = fg3.m15231W(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 26:
                    i5 = fg3.m15230X(i20, (List) unsafe.getObject(t, j));
                    break;
                case 27:
                    i5 = fg3.m15228Z(i20, (List) unsafe.getObject(t, j), m12278T(i15));
                    break;
                case 28:
                    i5 = fg3.m15226a0(i20, (List) unsafe.getObject(t, j));
                    break;
                case 29:
                    i5 = fg3.m15239O(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 30:
                    i5 = fg3.m15243K(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 31:
                    i5 = fg3.m15235S(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 32:
                    i5 = fg3.m15233U(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 33:
                    i5 = fg3.m15237Q(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 34:
                    i5 = fg3.m15245I(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 35:
                    int m15234T = fg3.m15234T((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15234T > 0) {
                        i14 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15234T);
                        i11 = m15234T;
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
                    int m15236R = fg3.m15236R((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15236R > 0) {
                        int m11918z = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15236R);
                        i11 = m15236R;
                        i14 = m11918z;
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
                    int m15250D = fg3.m15250D((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15250D > 0) {
                        int m11918z2 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15250D);
                        i11 = m15250D;
                        i14 = m11918z2;
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
                    int m15248F = fg3.m15248F((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15248F > 0) {
                        int m11918z3 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15248F);
                        i11 = m15248F;
                        i14 = m11918z3;
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
                    int m15242L = fg3.m15242L((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15242L > 0) {
                        int m11918z4 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15242L);
                        i11 = m15242L;
                        i14 = m11918z4;
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
                    int m15234T2 = fg3.m15234T((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15234T2 > 0) {
                        int m11918z5 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15234T2);
                        i11 = m15234T2;
                        i14 = m11918z5;
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
                    int m15236R2 = fg3.m15236R((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15236R2 > 0) {
                        int m11918z6 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15236R2);
                        i11 = m15236R2;
                        i14 = m11918z6;
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
                    int m15232V = fg3.m15232V((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15232V > 0) {
                        int m11918z7 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15232V);
                        i11 = m15232V;
                        i14 = m11918z7;
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
                    int m15240N = fg3.m15240N((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15240N > 0) {
                        int m11918z8 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15240N);
                        i11 = m15240N;
                        i14 = m11918z8;
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
                    int m15244J = fg3.m15244J((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15244J > 0) {
                        int m11918z9 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15244J);
                        i11 = m15244J;
                        i14 = m11918z9;
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
                    int m15236R3 = fg3.m15236R((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15236R3 > 0) {
                        int m11918z10 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15236R3);
                        i11 = m15236R3;
                        i14 = m11918z10;
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
                    int m15234T3 = fg3.m15234T((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15234T3 > 0) {
                        int m11918z11 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15234T3);
                        i11 = m15234T3;
                        i14 = m11918z11;
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
                    int m15238P = fg3.m15238P((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15238P > 0) {
                        int m11918z12 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15238P);
                        i11 = m15238P;
                        i14 = m11918z12;
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
                    int m15246H = fg3.m15246H((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (m15246H > 0) {
                        int m11918z13 = qd3.m11918z(i20);
                        i13 = qd3.m11946B(m15246H);
                        i11 = m15246H;
                        i14 = m11918z13;
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
                    i5 = fg3.m15224b0(i20, (List) unsafe.getObject(t, j), m12278T(i15));
                    break;
                case 50:
                    hf3.m14672a(i20, unsafe.getObject(t, j), m12277U(i15));
                    i3 = i16;
                    continue;
                    i15 += 3;
                    i16 = i3;
                    i18 = i;
                case 51:
                    i3 = i16;
                    if (m12258z(t, i20, i15)) {
                        i4 = qd3.m11946B(i20 << 3);
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
                    if (m12258z(t, i20, i15)) {
                        i6 = qd3.m11946B(i20 << 3);
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
                    if (m12258z(t, i20, i15)) {
                        long m12264t = m12264t(t, j);
                        i8 = qd3.m11946B(i20 << 3);
                        i7 = qd3.m11945C(m12264t);
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
                    if (m12258z(t, i20, i15)) {
                        long m12264t2 = m12264t(t, j);
                        i8 = qd3.m11946B(i20 << 3);
                        i7 = qd3.m11945C(m12264t2);
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
                    if (m12258z(t, i20, i15)) {
                        int m12265s = m12265s(t, j);
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11947A(m12265s);
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
                    if (m12258z(t, i20, i15)) {
                        i4 = qd3.m11946B(i20 << 3);
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
                    if (m12258z(t, i20, i15)) {
                        i6 = qd3.m11946B(i20 << 3);
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
                    if (m12258z(t, i20, i15)) {
                        i12 = qd3.m11946B(i20 << 3);
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
                    if (m12258z(t, i20, i15)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zzgex) {
                            m11946B = qd3.m11946B(i20 << 3);
                            zzc = ((zzgex) object2).zzc();
                            m11946B2 = qd3.m11946B(zzc);
                            i9 = m11946B + m11946B2 + zzc;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        } else {
                            i10 = qd3.m11946B(i20 << 3);
                            i11 = qd3.m11944D((String) object2);
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
                    if (m12258z(t, i20, i15)) {
                        i5 = fg3.m15229Y(i20, unsafe.getObject(t, j), m12278T(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 61:
                    i3 = i16;
                    if (m12258z(t, i20, i15)) {
                        zzgex zzgexVar2 = (zzgex) unsafe.getObject(t, j);
                        m11946B = qd3.m11946B(i20 << 3);
                        zzc = zzgexVar2.zzc();
                        m11946B2 = qd3.m11946B(zzc);
                        i9 = m11946B + m11946B2 + zzc;
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
                    if (m12258z(t, i20, i15)) {
                        int m12265s2 = m12265s(t, j);
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11946B(m12265s2);
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
                    if (m12258z(t, i20, i15)) {
                        int m12265s3 = m12265s(t, j);
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11947A(m12265s3);
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
                    if (m12258z(t, i20, i15)) {
                        i6 = qd3.m11946B(i20 << 3);
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
                    if (m12258z(t, i20, i15)) {
                        i4 = qd3.m11946B(i20 << 3);
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
                    if (m12258z(t, i20, i15)) {
                        int m12265s4 = m12265s(t, j);
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11946B((m12265s4 >> 31) ^ (m12265s4 + m12265s4));
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
                    if (m12258z(t, i20, i15)) {
                        long m12264t3 = m12264t(t, j);
                        i10 = qd3.m11946B(i20 << 3);
                        i11 = qd3.m11945C((m12264t3 >> 63) ^ (m12264t3 + m12264t3));
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
                    if (m12258z(t, i20, i15)) {
                        i5 = qd3.m11938f(i20, (mf3) unsafe.getObject(t, j), m12278T(i15));
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

    /* renamed from: P */
    private final int m12282P(T t) {
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
        int m11946B;
        int zzc;
        int m11946B2;
        int i11;
        int i12;
        Unsafe unsafe = f27961b;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i13 >= this.f27962c.length) {
                rg3<?, ?> rg3Var = this.f27974o;
                return i15 + rg3Var.mo10693q(rg3Var.mo10699j(t));
            }
            int m12271m = m12271m(i13);
            int m12269o = m12269o(m12271m);
            int i16 = this.f27962c[i13];
            long j = m12271m & 1048575;
            if (m12269o >= zzgfs.DOUBLE_LIST_PACKED.zza() && m12269o <= zzgfs.SINT64_LIST_PACKED.zza()) {
                int i17 = this.f27962c[i13 + 2];
            }
            switch (m12269o) {
                case 0:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i2 = qd3.m11946B(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 1:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i4 = qd3.m11946B(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 2:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        long m16349n = bh3.m16349n(t, j);
                        i6 = qd3.m11946B(i16 << 3);
                        i5 = qd3.m11945C(m16349n);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 3:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        long m16349n2 = bh3.m16349n(t, j);
                        i6 = qd3.m11946B(i16 << 3);
                        i5 = qd3.m11945C(m16349n2);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 4:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        int m16351l = bh3.m16351l(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11947A(m16351l);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 5:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i2 = qd3.m11946B(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 6:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i4 = qd3.m11946B(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 7:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i10 = qd3.m11946B(i16 << 3);
                        i3 = i10 + 1;
                        i = i15 + i3;
                        break;
                    }
                case 8:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        Object m16341v = bh3.m16341v(t, j);
                        if (m16341v instanceof zzgex) {
                            m11946B = qd3.m11946B(i16 << 3);
                            zzc = ((zzgex) m16341v).zzc();
                            m11946B2 = qd3.m11946B(zzc);
                            i7 = m11946B + m11946B2 + zzc;
                            i = i15 + i7;
                            break;
                        } else {
                            i9 = qd3.m11946B(i16 << 3);
                            i8 = qd3.m11944D((String) m16341v);
                            i7 = i9 + i8;
                            i = i15 + i7;
                        }
                    }
                case 9:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i3 = fg3.m15229Y(i16, bh3.m16341v(t, j), m12278T(i13));
                        i = i15 + i3;
                        break;
                    }
                case 10:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        zzgex zzgexVar = (zzgex) bh3.m16341v(t, j);
                        m11946B = qd3.m11946B(i16 << 3);
                        zzc = zzgexVar.zzc();
                        m11946B2 = qd3.m11946B(zzc);
                        i7 = m11946B + m11946B2 + zzc;
                        i = i15 + i7;
                        break;
                    }
                case 11:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        int m16351l2 = bh3.m16351l(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11946B(m16351l2);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 12:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        int m16351l3 = bh3.m16351l(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11947A(m16351l3);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 13:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i4 = qd3.m11946B(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 14:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i2 = qd3.m11946B(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 15:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        int m16351l4 = bh3.m16351l(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11946B((m16351l4 >> 31) ^ (m16351l4 + m16351l4));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 16:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        long m16349n3 = bh3.m16349n(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11945C((m16349n3 >> 63) ^ (m16349n3 + m16349n3));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 17:
                    i = i15;
                    if (!m12260x(t, i13)) {
                        break;
                    } else {
                        i3 = qd3.m11938f(i16, (mf3) bh3.m16341v(t, j), m12278T(i13));
                        i = i15 + i3;
                        break;
                    }
                case 18:
                    i3 = fg3.m15233U(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 19:
                    i3 = fg3.m15235S(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 20:
                    i3 = fg3.m15249E(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 21:
                    i3 = fg3.m15247G(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 22:
                    i3 = fg3.m15241M(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 23:
                    i3 = fg3.m15233U(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 24:
                    i3 = fg3.m15235S(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 25:
                    i3 = fg3.m15231W(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 26:
                    i3 = fg3.m15230X(i16, (List) bh3.m16341v(t, j));
                    i = i15 + i3;
                    break;
                case 27:
                    i3 = fg3.m15228Z(i16, (List) bh3.m16341v(t, j), m12278T(i13));
                    i = i15 + i3;
                    break;
                case 28:
                    i3 = fg3.m15226a0(i16, (List) bh3.m16341v(t, j));
                    i = i15 + i3;
                    break;
                case 29:
                    i3 = fg3.m15239O(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 30:
                    i3 = fg3.m15243K(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 31:
                    i3 = fg3.m15235S(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 32:
                    i3 = fg3.m15233U(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 33:
                    i3 = fg3.m15237Q(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 34:
                    i3 = fg3.m15245I(i16, (List) bh3.m16341v(t, j), false);
                    i = i15 + i3;
                    break;
                case 35:
                    int m15234T = fg3.m15234T((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15234T <= 0) {
                        break;
                    } else {
                        i12 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15234T);
                        i8 = m15234T;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 36:
                    int m15236R = fg3.m15236R((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15236R <= 0) {
                        break;
                    } else {
                        int m11918z = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15236R);
                        i8 = m15236R;
                        i12 = m11918z;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 37:
                    int m15250D = fg3.m15250D((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15250D <= 0) {
                        break;
                    } else {
                        int m11918z2 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15250D);
                        i8 = m15250D;
                        i12 = m11918z2;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 38:
                    int m15248F = fg3.m15248F((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15248F <= 0) {
                        break;
                    } else {
                        int m11918z3 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15248F);
                        i8 = m15248F;
                        i12 = m11918z3;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 39:
                    int m15242L = fg3.m15242L((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15242L <= 0) {
                        break;
                    } else {
                        int m11918z4 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15242L);
                        i8 = m15242L;
                        i12 = m11918z4;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 40:
                    int m15234T2 = fg3.m15234T((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15234T2 <= 0) {
                        break;
                    } else {
                        int m11918z5 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15234T2);
                        i8 = m15234T2;
                        i12 = m11918z5;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 41:
                    int m15236R2 = fg3.m15236R((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15236R2 <= 0) {
                        break;
                    } else {
                        int m11918z6 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15236R2);
                        i8 = m15236R2;
                        i12 = m11918z6;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 42:
                    int m15232V = fg3.m15232V((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15232V <= 0) {
                        break;
                    } else {
                        int m11918z7 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15232V);
                        i8 = m15232V;
                        i12 = m11918z7;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 43:
                    int m15240N = fg3.m15240N((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15240N <= 0) {
                        break;
                    } else {
                        int m11918z8 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15240N);
                        i8 = m15240N;
                        i12 = m11918z8;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 44:
                    int m15244J = fg3.m15244J((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15244J <= 0) {
                        break;
                    } else {
                        int m11918z9 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15244J);
                        i8 = m15244J;
                        i12 = m11918z9;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 45:
                    int m15236R3 = fg3.m15236R((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15236R3 <= 0) {
                        break;
                    } else {
                        int m11918z10 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15236R3);
                        i8 = m15236R3;
                        i12 = m11918z10;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 46:
                    int m15234T3 = fg3.m15234T((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15234T3 <= 0) {
                        break;
                    } else {
                        int m11918z11 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15234T3);
                        i8 = m15234T3;
                        i12 = m11918z11;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 47:
                    int m15238P = fg3.m15238P((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15238P <= 0) {
                        break;
                    } else {
                        int m11918z12 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15238P);
                        i8 = m15238P;
                        i12 = m11918z12;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 48:
                    int m15246H = fg3.m15246H((List) unsafe.getObject(t, j));
                    i = i15;
                    if (m15246H <= 0) {
                        break;
                    } else {
                        int m11918z13 = qd3.m11918z(i16);
                        i11 = qd3.m11946B(m15246H);
                        i8 = m15246H;
                        i12 = m11918z13;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 49:
                    i3 = fg3.m15224b0(i16, (List) bh3.m16341v(t, j), m12278T(i13));
                    i = i15 + i3;
                    break;
                case 50:
                    hf3.m14672a(i16, bh3.m16341v(t, j), m12277U(i13));
                    i = i15;
                    break;
                case 51:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i2 = qd3.m11946B(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 52:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i4 = qd3.m11946B(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 53:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        long m12264t = m12264t(t, j);
                        i6 = qd3.m11946B(i16 << 3);
                        i5 = qd3.m11945C(m12264t);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 54:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        long m12264t2 = m12264t(t, j);
                        i6 = qd3.m11946B(i16 << 3);
                        i5 = qd3.m11945C(m12264t2);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 55:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        int m12265s = m12265s(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11947A(m12265s);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 56:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i2 = qd3.m11946B(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 57:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i4 = qd3.m11946B(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 58:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i10 = qd3.m11946B(i16 << 3);
                        i3 = i10 + 1;
                        i = i15 + i3;
                        break;
                    }
                case 59:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        Object m16341v2 = bh3.m16341v(t, j);
                        if (m16341v2 instanceof zzgex) {
                            m11946B = qd3.m11946B(i16 << 3);
                            zzc = ((zzgex) m16341v2).zzc();
                            m11946B2 = qd3.m11946B(zzc);
                            i7 = m11946B + m11946B2 + zzc;
                            i = i15 + i7;
                            break;
                        } else {
                            i9 = qd3.m11946B(i16 << 3);
                            i8 = qd3.m11944D((String) m16341v2);
                            i7 = i9 + i8;
                            i = i15 + i7;
                        }
                    }
                case 60:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i3 = fg3.m15229Y(i16, bh3.m16341v(t, j), m12278T(i13));
                        i = i15 + i3;
                        break;
                    }
                case 61:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        zzgex zzgexVar2 = (zzgex) bh3.m16341v(t, j);
                        m11946B = qd3.m11946B(i16 << 3);
                        zzc = zzgexVar2.zzc();
                        m11946B2 = qd3.m11946B(zzc);
                        i7 = m11946B + m11946B2 + zzc;
                        i = i15 + i7;
                        break;
                    }
                case 62:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        int m12265s2 = m12265s(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11946B(m12265s2);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 63:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        int m12265s3 = m12265s(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11947A(m12265s3);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 64:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i4 = qd3.m11946B(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 65:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i2 = qd3.m11946B(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 66:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        int m12265s4 = m12265s(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11946B((m12265s4 >> 31) ^ (m12265s4 + m12265s4));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 67:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        long m12264t3 = m12264t(t, j);
                        i9 = qd3.m11946B(i16 << 3);
                        i8 = qd3.m11945C((m12264t3 >> 63) ^ (m12264t3 + m12264t3));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 68:
                    i = i15;
                    if (!m12258z(t, i16, i13)) {
                        break;
                    } else {
                        i3 = qd3.m11938f(i16, (mf3) bh3.m16341v(t, j), m12278T(i13));
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
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m12281Q(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.ads.wc3 r22) {
        /*
            Method dump skipped, instructions count: 2370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pf3.m12281Q(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.wc3):int");
    }

    /* renamed from: R */
    private final <K, V> int m12280R(T t, byte[] bArr, int i, int i2, int i3, long j, wc3 wc3Var) {
        Unsafe unsafe = f27961b;
        Object m12277U = m12277U(i3);
        Object object = unsafe.getObject(t, j);
        if (hf3.m14671b(object)) {
            zzghc<K, V> zzc = zzghc.zza().zzc();
            hf3.m14670c(zzc, object);
            unsafe.putObject(t, j, zzc);
        }
        gf3 gf3Var = (gf3) m12277U;
        throw null;
    }

    /* renamed from: S */
    private final int m12279S(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, wc3 wc3Var) {
        Unsafe unsafe = f27961b;
        long j2 = this.f27962c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(xc3.m9273e(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(xc3.m9274d(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int m9275c = xc3.m9275c(bArr, i, wc3Var);
                    unsafe.putObject(t, j, Long.valueOf(wc3Var.f31512b));
                    unsafe.putInt(t, j2, i4);
                    return m9275c;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int m9277a = xc3.m9277a(bArr, i, wc3Var);
                    unsafe.putObject(t, j, Integer.valueOf(wc3Var.f31511a));
                    unsafe.putInt(t, j2, i4);
                    return m9277a;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(xc3.m9273e(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(xc3.m9274d(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int m9275c2 = xc3.m9275c(bArr, i, wc3Var);
                    unsafe.putObject(t, j, Boolean.valueOf(wc3Var.f31512b != 0));
                    unsafe.putInt(t, j2, i4);
                    return m9275c2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = xc3.m9277a(bArr, i, wc3Var);
                    int i9 = wc3Var.f31511a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !fh3.m15197b(bArr, i, i + i9)) {
                        throw zzggm.zzl();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, se3.f29462a));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = xc3.m9269i(m12278T(i8), bArr, i, i2, wc3Var);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, wc3Var.f31513c);
                    } else {
                        unsafe.putObject(t, j, se3.m11064i(object, wc3Var.f31513c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int m9270h = xc3.m9270h(bArr, i, wc3Var);
                    unsafe.putObject(t, j, wc3Var.f31513c);
                    unsafe.putInt(t, j2, i4);
                    return m9270h;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = xc3.m9277a(bArr, i, wc3Var);
                    int i10 = wc3Var.f31511a;
                    me3 m12276V = m12276V(i8);
                    if (m12276V != null && !m12276V.mo8821B(i10)) {
                        m12290H(t).m11030h(i3, Long.valueOf(i10));
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
                    int m9277a2 = xc3.m9277a(bArr, i, wc3Var);
                    unsafe.putObject(t, j, Integer.valueOf(md3.m13277e(wc3Var.f31511a)));
                    unsafe.putInt(t, j2, i4);
                    return m9277a2;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int m9275c3 = xc3.m9275c(bArr, i, wc3Var);
                    unsafe.putObject(t, j, Long.valueOf(md3.m13276f(wc3Var.f31512b)));
                    unsafe.putInt(t, j2, i4);
                    return m9275c3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = xc3.m9268j(m12278T(i8), bArr, i, i2, (i3 & (-8)) | 4, wc3Var);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, wc3Var.f31513c);
                    } else {
                        unsafe.putObject(t, j, se3.m11064i(object2, wc3Var.f31513c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* renamed from: T */
    private final cg3 m12278T(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        cg3 cg3Var = (cg3) this.f27963d[i3];
        if (cg3Var != null) {
            return cg3Var;
        }
        cg3<T> m10333b = uf3.m10334a().m10333b((Class) this.f27963d[i3 + 1]);
        this.f27963d[i3] = m10333b;
        return m10333b;
    }

    /* renamed from: U */
    private final Object m12277U(int i) {
        int i2 = i / 3;
        return this.f27963d[i2 + i2];
    }

    /* renamed from: V */
    private final me3 m12276V(int i) {
        int i2 = i / 3;
        return (me3) this.f27963d[i2 + i2 + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x04b6, code lost:
        if (r24 != r0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x04ef, code lost:
        if (r24 != r0) goto L101;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v208, types: [int] */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m12275W(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.ads.wc3 r21) {
        /*
            Method dump skipped, instructions count: 1337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pf3.m12275W(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.wc3):int");
    }

    /* renamed from: j */
    private final <UT, UB> UB m12274j(Object obj, int i, UB ub, rg3<UT, UB> rg3Var) {
        int i2 = this.f27962c[i];
        Object m16341v = bh3.m16341v(obj, m12271m(i) & 1048575);
        if (m16341v != null && m12276V(i) != null) {
            zzghc zzghcVar = (zzghc) m16341v;
            gf3 gf3Var = (gf3) m12277U(i);
            throw null;
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    private static boolean m12273k(Object obj, int i, cg3 cg3Var) {
        return cg3Var.mo11903f(bh3.m16341v(obj, i & 1048575));
    }

    /* renamed from: l */
    private final void m12272l(Object obj, int i, xf3 xf3Var) {
        if (m12268p(i)) {
            bh3.m16340w(obj, i & 1048575, xf3Var.mo9199m());
        } else if (this.f27968i) {
            bh3.m16340w(obj, i & 1048575, xf3Var.mo9202j());
        } else {
            bh3.m16340w(obj, i & 1048575, xf3Var.mo9201k());
        }
    }

    /* renamed from: m */
    private final int m12271m(int i) {
        return this.f27962c[i + 1];
    }

    /* renamed from: n */
    private final int m12270n(int i) {
        return this.f27962c[i + 2];
    }

    /* renamed from: o */
    private static int m12269o(int i) {
        return (i >>> 20) & 255;
    }

    /* renamed from: p */
    private static boolean m12268p(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: q */
    private static <T> double m12267q(T t, long j) {
        return ((Double) bh3.m16341v(t, j)).doubleValue();
    }

    /* renamed from: r */
    private static <T> float m12266r(T t, long j) {
        return ((Float) bh3.m16341v(t, j)).floatValue();
    }

    /* renamed from: s */
    private static <T> int m12265s(T t, long j) {
        return ((Integer) bh3.m16341v(t, j)).intValue();
    }

    /* renamed from: t */
    private static <T> long m12264t(T t, long j) {
        return ((Long) bh3.m16341v(t, j)).longValue();
    }

    /* renamed from: u */
    private static <T> boolean m12263u(T t, long j) {
        return ((Boolean) bh3.m16341v(t, j)).booleanValue();
    }

    /* renamed from: v */
    private final boolean m12262v(T t, T t2, int i) {
        return m12260x(t, i) == m12260x(t2, i);
    }

    /* renamed from: w */
    private final boolean m12261w(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m12260x(t, i) : (i3 & i4) != 0;
    }

    /* renamed from: x */
    private final boolean m12260x(T t, int i) {
        int m12270n = m12270n(i);
        long j = m12270n & 1048575;
        if (j != 1048575) {
            return (bh3.m16351l(t, j) & (1 << (m12270n >>> 20))) != 0;
        }
        int m12271m = m12271m(i);
        long j2 = m12271m & 1048575;
        switch (m12269o(m12271m)) {
            case 0:
                return bh3.m16343t(t, j2) != 0.0d;
            case 1:
                return bh3.m16345r(t, j2) != 0.0f;
            case 2:
                return bh3.m16349n(t, j2) != 0;
            case 3:
                return bh3.m16349n(t, j2) != 0;
            case 4:
                return bh3.m16351l(t, j2) != 0;
            case 5:
                return bh3.m16349n(t, j2) != 0;
            case 6:
                return bh3.m16351l(t, j2) != 0;
            case 7:
                return bh3.m16347p(t, j2);
            case 8:
                Object m16341v = bh3.m16341v(t, j2);
                if (m16341v instanceof String) {
                    return !((String) m16341v).isEmpty();
                } else if (!(m16341v instanceof zzgex)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzgex.f34110d.equals(m16341v);
                }
            case 9:
                return bh3.m16341v(t, j2) != null;
            case 10:
                return !zzgex.f34110d.equals(bh3.m16341v(t, j2));
            case 11:
                return bh3.m16351l(t, j2) != 0;
            case 12:
                return bh3.m16351l(t, j2) != 0;
            case 13:
                return bh3.m16351l(t, j2) != 0;
            case 14:
                return bh3.m16349n(t, j2) != 0;
            case 15:
                return bh3.m16351l(t, j2) != 0;
            case 16:
                return bh3.m16349n(t, j2) != 0;
            case 17:
                return bh3.m16341v(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: y */
    private final void m12259y(T t, int i) {
        int m12270n = m12270n(i);
        long j = 1048575 & m12270n;
        if (j == 1048575) {
            return;
        }
        bh3.m16350m(t, j, (1 << (m12270n >>> 20)) | bh3.m16351l(t, j));
    }

    /* renamed from: z */
    private final boolean m12258z(T t, int i, int i2) {
        return bh3.m16351l(t, (long) (m12270n(i2) & 1048575)) == i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x0642, code lost:
        if (r33 == 1048575) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0645, code lost:
        r0.putInt(r17, r33, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0650, code lost:
        r19 = r18.f27971l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x065a, code lost:
        if (r19 >= r18.f27972m) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x065d, code lost:
        r18.m12274j(r17, r18.f27970k[r19], null, r18.f27974o);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0676, code lost:
        if (r21 != 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x067d, code lost:
        if (r32 != r20) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0686, code lost:
        throw com.google.android.gms.internal.ads.zzggm.zzk();
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x068b, code lost:
        if (r32 > r20) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0692, code lost:
        if (r29 != r21) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0697, code lost:
        return r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x069b, code lost:
        throw com.google.android.gms.internal.ads.zzggm.zzk();
     */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m12289I(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.ads.wc3 r22) {
        /*
            Method dump skipped, instructions count: 1692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pf3.m12289I(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.wc3):int");
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: a */
    public final int mo11908a(T t) {
        return this.f27969j ? m12282P(t) : m12283O(t);
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: b */
    public final void mo11907b(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.f27962c.length; i += 3) {
            int m12271m = m12271m(i);
            long j = 1048575 & m12271m;
            int i2 = this.f27962c[i];
            switch (m12269o(m12271m)) {
                case 0:
                    if (m12260x(t2, i)) {
                        bh3.m16342u(t, j, bh3.m16343t(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m12260x(t2, i)) {
                        bh3.m16344s(t, j, bh3.m16345r(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m12260x(t2, i)) {
                        bh3.m16348o(t, j, bh3.m16349n(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m12260x(t2, i)) {
                        bh3.m16348o(t, j, bh3.m16349n(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m12260x(t2, i)) {
                        bh3.m16350m(t, j, bh3.m16351l(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m12260x(t2, i)) {
                        bh3.m16348o(t, j, bh3.m16349n(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m12260x(t2, i)) {
                        bh3.m16350m(t, j, bh3.m16351l(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m12260x(t2, i)) {
                        bh3.m16346q(t, j, bh3.m16347p(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m12260x(t2, i)) {
                        bh3.m16340w(t, j, bh3.m16341v(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m12285M(t, t2, i);
                    break;
                case 10:
                    if (m12260x(t2, i)) {
                        bh3.m16340w(t, j, bh3.m16341v(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m12260x(t2, i)) {
                        bh3.m16350m(t, j, bh3.m16351l(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m12260x(t2, i)) {
                        bh3.m16350m(t, j, bh3.m16351l(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m12260x(t2, i)) {
                        bh3.m16350m(t, j, bh3.m16351l(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m12260x(t2, i)) {
                        bh3.m16348o(t, j, bh3.m16349n(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m12260x(t2, i)) {
                        bh3.m16350m(t, j, bh3.m16351l(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m12260x(t2, i)) {
                        bh3.m16348o(t, j, bh3.m16349n(t2, j));
                        m12259y(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m12285M(t, t2, i);
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
                    this.f27973n.mo8838c(t, t2, j);
                    break;
                case 50:
                    fg3.m15217i(this.f27977r, t, t2, j);
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
                    if (m12258z(t2, i2, i)) {
                        bh3.m16340w(t, j, bh3.m16341v(t2, j));
                        m12297A(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m12284N(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m12258z(t2, i2, i)) {
                        bh3.m16340w(t, j, bh3.m16341v(t2, j));
                        m12297A(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m12284N(t, t2, i);
                    break;
            }
        }
        fg3.m15220f(this.f27974o, t, t2);
        if (this.f27967h) {
            fg3.m15221e(this.f27975p, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: c */
    public final int mo11906c(T t) {
        int i;
        int i2;
        int i3;
        int length = this.f27962c.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = this.f27974o.mo10699j(t).hashCode();
                if (!this.f27967h) {
                    return (i6 * 53) + hashCode;
                }
                this.f27975p.mo9258b(t);
                throw null;
            }
            int m12271m = m12271m(i4);
            int i7 = this.f27962c[i4];
            long j = 1048575 & m12271m;
            int i8 = 37;
            switch (m12269o(m12271m)) {
                case 0:
                    i2 = i6 * 53;
                    i3 = se3.m11068e(Double.doubleToLongBits(bh3.m16343t(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(bh3.m16345r(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = se3.m11068e(bh3.m16349n(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = se3.m11068e(bh3.m16349n(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = bh3.m16351l(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = se3.m11068e(bh3.m16349n(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = bh3.m16351l(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = se3.m11067f(bh3.m16347p(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) bh3.m16341v(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object m16341v = bh3.m16341v(t, j);
                    if (m16341v != null) {
                        i8 = m16341v.hashCode();
                    }
                    i = (i6 * 53) + i8;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = bh3.m16341v(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = bh3.m16351l(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = bh3.m16351l(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = bh3.m16351l(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = se3.m11068e(bh3.m16349n(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = bh3.m16351l(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = se3.m11068e(bh3.m16349n(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object m16341v2 = bh3.m16341v(t, j);
                    if (m16341v2 != null) {
                        i8 = m16341v2.hashCode();
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
                    i3 = bh3.m16341v(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = bh3.m16341v(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = se3.m11068e(Double.doubleToLongBits(m12267q(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(m12266r(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = se3.m11068e(m12264t(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = se3.m11068e(m12264t(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12265s(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = se3.m11068e(m12264t(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12265s(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = se3.m11067f(m12263u(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) bh3.m16341v(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = bh3.m16341v(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = bh3.m16341v(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12265s(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12265s(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12265s(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = se3.m11068e(m12264t(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m12265s(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = se3.m11068e(m12264t(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!m12258z(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = bh3.m16341v(t, j).hashCode();
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

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: d */
    public final void mo11905d(T t) {
        int i;
        int i2 = this.f27971l;
        while (true) {
            i = this.f27972m;
            if (i2 >= i) {
                break;
            }
            long m12271m = m12271m(this.f27970k[i2]) & 1048575;
            Object m16341v = bh3.m16341v(t, m12271m);
            if (m16341v != null) {
                ((zzghc) m16341v).zzd();
                bh3.m16340w(t, m12271m, m16341v);
            }
            i2++;
        }
        int length = this.f27970k.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f27973n.mo8839b(t, this.f27970k[i3]);
        }
        this.f27974o.mo10696m(t);
        if (this.f27967h) {
            this.f27975p.mo9256d(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: e */
    public final boolean mo11904e(T t, T t2) {
        boolean z;
        int length = this.f27962c.length;
        for (int i = 0; i < length; i += 3) {
            int m12271m = m12271m(i);
            long j = m12271m & 1048575;
            switch (m12269o(m12271m)) {
                case 0:
                    if (!m12262v(t, t2, i) || Double.doubleToLongBits(bh3.m16343t(t, j)) != Double.doubleToLongBits(bh3.m16343t(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!m12262v(t, t2, i) || Float.floatToIntBits(bh3.m16345r(t, j)) != Float.floatToIntBits(bh3.m16345r(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!m12262v(t, t2, i) || bh3.m16349n(t, j) != bh3.m16349n(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!m12262v(t, t2, i) || bh3.m16349n(t, j) != bh3.m16349n(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!m12262v(t, t2, i) || bh3.m16351l(t, j) != bh3.m16351l(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!m12262v(t, t2, i) || bh3.m16349n(t, j) != bh3.m16349n(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!m12262v(t, t2, i) || bh3.m16351l(t, j) != bh3.m16351l(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!m12262v(t, t2, i) || bh3.m16347p(t, j) != bh3.m16347p(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!m12262v(t, t2, i) || !fg3.m15222d(bh3.m16341v(t, j), bh3.m16341v(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!m12262v(t, t2, i) || !fg3.m15222d(bh3.m16341v(t, j), bh3.m16341v(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!m12262v(t, t2, i) || !fg3.m15222d(bh3.m16341v(t, j), bh3.m16341v(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!m12262v(t, t2, i) || bh3.m16351l(t, j) != bh3.m16351l(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!m12262v(t, t2, i) || bh3.m16351l(t, j) != bh3.m16351l(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!m12262v(t, t2, i) || bh3.m16351l(t, j) != bh3.m16351l(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!m12262v(t, t2, i) || bh3.m16349n(t, j) != bh3.m16349n(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!m12262v(t, t2, i) || bh3.m16351l(t, j) != bh3.m16351l(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!m12262v(t, t2, i) || bh3.m16349n(t, j) != bh3.m16349n(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!m12262v(t, t2, i) || !fg3.m15222d(bh3.m16341v(t, j), bh3.m16341v(t2, j))) {
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
                    z = fg3.m15222d(bh3.m16341v(t, j), bh3.m16341v(t2, j));
                    break;
                case 50:
                    z = fg3.m15222d(bh3.m16341v(t, j), bh3.m16341v(t2, j));
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
                    long m12270n = m12270n(i) & 1048575;
                    if (bh3.m16351l(t, m12270n) != bh3.m16351l(t2, m12270n) || !fg3.m15222d(bh3.m16341v(t, j), bh3.m16341v(t2, j))) {
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
        if (!this.f27974o.mo10699j(t).equals(this.f27974o.mo10699j(t2))) {
            return false;
        }
        if (!this.f27967h) {
            return true;
        }
        this.f27975p.mo9258b(t);
        this.f27975p.mo9258b(t2);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: f */
    public final boolean mo11903f(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f27971l; i3++) {
            int i4 = this.f27970k[i3];
            int i5 = this.f27962c[i4];
            int m12271m = m12271m(i4);
            int i6 = this.f27962c[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f27961b.getInt(t, i7);
                }
                i = i7;
            }
            if ((268435456 & m12271m) != 0 && !m12261w(t, i4, i, i2, i8)) {
                return false;
            }
            int m12269o = m12269o(m12271m);
            if (m12269o != 9 && m12269o != 17) {
                if (m12269o != 27) {
                    if (m12269o == 60 || m12269o == 68) {
                        if (m12258z(t, i5, i4) && !m12273k(t, m12271m, m12278T(i4))) {
                            return false;
                        }
                    } else if (m12269o != 49) {
                        if (m12269o == 50 && !((zzghc) bh3.m16341v(t, m12271m & 1048575)).isEmpty()) {
                            gf3 gf3Var = (gf3) m12277U(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) bh3.m16341v(t, m12271m & 1048575);
                if (!list.isEmpty()) {
                    cg3 m12278T = m12278T(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!m12278T.mo11903f(list.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (m12261w(t, i4, i, i2, i8) && !m12273k(t, m12271m, m12278T(i4))) {
                return false;
            }
        }
        if (!this.f27967h) {
            return true;
        }
        this.f27975p.mo9258b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: g */
    public final void mo11902g(T t, xf3 xf3Var, vd3 vd3Var) {
        zzghc zzghcVar;
        Objects.requireNonNull(vd3Var);
        rg3 rg3Var = this.f27974o;
        wd3<?> wd3Var = this.f27975p;
        ae3<?> ae3Var = null;
        Object obj = null;
        while (true) {
            Object obj2 = obj;
            try {
                int mo9210b = xf3Var.mo9210b();
                Object obj3 = obj;
                int m12296B = m12296B(mo9210b);
                if (m12296B >= 0) {
                    int m12271m = m12271m(m12296B);
                    obj2 = obj;
                    Object obj4 = obj;
                    try {
                        switch (m12269o(m12271m)) {
                            case 0:
                                bh3.m16342u(t, m12271m & 1048575, xf3Var.mo9211a());
                                Object obj5 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 1:
                                bh3.m16344s(t, m12271m & 1048575, xf3Var.mo9208d());
                                Object obj6 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 2:
                                bh3.m16348o(t, m12271m & 1048575, xf3Var.mo9206f());
                                Object obj7 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 3:
                                bh3.m16348o(t, m12271m & 1048575, xf3Var.zzg());
                                Object obj8 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 4:
                                bh3.m16350m(t, m12271m & 1048575, xf3Var.zzi());
                                Object obj9 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 5:
                                bh3.m16348o(t, m12271m & 1048575, xf3Var.mo9205g());
                                Object obj10 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 6:
                                bh3.m16350m(t, m12271m & 1048575, xf3Var.mo9204h());
                                Object obj11 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 7:
                                bh3.m16346q(t, m12271m & 1048575, xf3Var.mo9203i());
                                Object obj12 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 8:
                                m12272l(t, m12271m, xf3Var);
                                Object obj13 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 9:
                                if (m12260x(t, m12296B)) {
                                    long j = m12271m & 1048575;
                                    bh3.m16340w(t, j, se3.m11064i(bh3.m16341v(t, j), xf3Var.mo9188x(m12278T(m12296B), vd3Var)));
                                    break;
                                } else {
                                    bh3.m16340w(t, m12271m & 1048575, xf3Var.mo9188x(m12278T(m12296B), vd3Var));
                                    Object obj14 = obj;
                                    m12259y(t, m12296B);
                                    break;
                                }
                            case 10:
                                bh3.m16340w(t, m12271m & 1048575, xf3Var.mo9201k());
                                Object obj15 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 11:
                                bh3.m16350m(t, m12271m & 1048575, xf3Var.mo9193s());
                                Object obj16 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 12:
                                int mo9197o = xf3Var.mo9197o();
                                Object obj17 = obj;
                                me3 m12276V = m12276V(m12296B);
                                if (m12276V != null && !m12276V.mo8821B(mo9197o)) {
                                    obj = fg3.m15218h(mo9210b, mo9197o, obj, rg3Var);
                                    break;
                                }
                                bh3.m16350m(t, m12271m & 1048575, mo9197o);
                                Object obj18 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 13:
                                bh3.m16350m(t, m12271m & 1048575, xf3Var.zzt());
                                Object obj19 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 14:
                                bh3.m16348o(t, m12271m & 1048575, xf3Var.zzu());
                                Object obj20 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 15:
                                bh3.m16350m(t, m12271m & 1048575, xf3Var.mo9189w());
                                Object obj21 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 16:
                                bh3.m16348o(t, m12271m & 1048575, xf3Var.mo9214G());
                                Object obj22 = obj;
                                m12259y(t, m12296B);
                                break;
                            case 17:
                                if (m12260x(t, m12296B)) {
                                    long j2 = m12271m & 1048575;
                                    bh3.m16340w(t, j2, se3.m11064i(bh3.m16341v(t, j2), xf3Var.mo9194r(m12278T(m12296B), vd3Var)));
                                    break;
                                } else {
                                    bh3.m16340w(t, m12271m & 1048575, xf3Var.mo9194r(m12278T(m12296B), vd3Var));
                                    Object obj23 = obj;
                                    m12259y(t, m12296B);
                                    break;
                                }
                            case 18:
                                xf3Var.mo9192t(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 19:
                                xf3Var.mo9198n(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 20:
                                xf3Var.mo9218C(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 21:
                                xf3Var.mo9220A(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 22:
                                xf3Var.mo9212I(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 23:
                                xf3Var.mo9215F(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 24:
                                xf3Var.mo9191u(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 25:
                                xf3Var.mo9196p(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 26:
                                if (m12268p(m12271m)) {
                                    Object obj24 = obj;
                                    List<String> mo8840a = this.f27973n.mo8840a(t, m12271m & 1048575);
                                    Object obj25 = obj;
                                    ((nd3) xf3Var).m12949J(mo8840a, true);
                                    break;
                                } else {
                                    List<String> mo8840a2 = this.f27973n.mo8840a(t, m12271m & 1048575);
                                    Object obj26 = obj;
                                    ((nd3) xf3Var).m12949J(mo8840a2, false);
                                    break;
                                }
                            case 27:
                                xf3Var.mo9190v(this.f27973n.mo8840a(t, m12271m & 1048575), m12278T(m12296B), vd3Var);
                                break;
                            case 28:
                                xf3Var.mo9217D(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 29:
                                xf3Var.mo9219B(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 30:
                                List<Integer> mo8840a3 = this.f27973n.mo8840a(t, m12271m & 1048575);
                                Object obj27 = obj;
                                xf3Var.mo9213H(mo8840a3);
                                Object obj28 = obj;
                                obj = fg3.m15219g(mo9210b, mo8840a3, m12276V(m12296B), obj, rg3Var);
                                break;
                            case 31:
                                xf3Var.mo9216E(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 32:
                                xf3Var.mo9195q(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 33:
                                xf3Var.mo9200l(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 34:
                                xf3Var.mo9186z(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 35:
                                xf3Var.mo9192t(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 36:
                                xf3Var.mo9198n(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 37:
                                xf3Var.mo9218C(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 38:
                                xf3Var.mo9220A(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 39:
                                xf3Var.mo9212I(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 40:
                                xf3Var.mo9215F(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 41:
                                xf3Var.mo9191u(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 42:
                                xf3Var.mo9196p(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 43:
                                xf3Var.mo9219B(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 44:
                                List<Integer> mo8840a4 = this.f27973n.mo8840a(t, m12271m & 1048575);
                                Object obj29 = obj;
                                xf3Var.mo9213H(mo8840a4);
                                Object obj30 = obj;
                                obj = fg3.m15219g(mo9210b, mo8840a4, m12276V(m12296B), obj, rg3Var);
                                break;
                            case 45:
                                xf3Var.mo9216E(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 46:
                                xf3Var.mo9195q(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 47:
                                xf3Var.mo9200l(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 48:
                                xf3Var.mo9186z(this.f27973n.mo8840a(t, m12271m & 1048575));
                                break;
                            case 49:
                                long j3 = m12271m & 1048575;
                                cg3<T> m12278T = m12278T(m12296B);
                                Object obj31 = obj;
                                xf3Var.mo9187y(this.f27973n.mo8840a(t, j3), m12278T, vd3Var);
                                break;
                            case 50:
                                Object m12277U = m12277U(m12296B);
                                Object obj32 = obj;
                                long m12271m2 = m12271m(m12296B) & 1048575;
                                Object obj33 = obj;
                                Object m16341v = bh3.m16341v(t, m12271m2);
                                if (m16341v != null) {
                                    zzghcVar = m16341v;
                                    if (hf3.m14671b(m16341v)) {
                                        Object obj34 = obj;
                                        zzghc zzc = zzghc.zza().zzc();
                                        Object obj35 = obj;
                                        hf3.m14670c(zzc, m16341v);
                                        Object obj36 = obj;
                                        bh3.m16340w(t, m12271m2, zzc);
                                        zzghcVar = zzc;
                                    }
                                } else {
                                    zzghc zzc2 = zzghc.zza().zzc();
                                    Object obj37 = obj;
                                    bh3.m16340w(t, m12271m2, zzc2);
                                    zzghcVar = zzc2;
                                }
                                Object obj38 = obj;
                                zzghc zzghcVar2 = zzghcVar;
                                Object obj39 = obj;
                                gf3 gf3Var = (gf3) m12277U;
                                obj2 = obj;
                                obj4 = obj;
                                throw null;
                                break;
                            case 51:
                                bh3.m16340w(t, m12271m & 1048575, Double.valueOf(xf3Var.mo9211a()));
                                Object obj40 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 52:
                                bh3.m16340w(t, m12271m & 1048575, Float.valueOf(xf3Var.mo9208d()));
                                Object obj41 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 53:
                                bh3.m16340w(t, m12271m & 1048575, Long.valueOf(xf3Var.mo9206f()));
                                Object obj42 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 54:
                                bh3.m16340w(t, m12271m & 1048575, Long.valueOf(xf3Var.zzg()));
                                Object obj43 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 55:
                                bh3.m16340w(t, m12271m & 1048575, Integer.valueOf(xf3Var.zzi()));
                                Object obj44 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 56:
                                bh3.m16340w(t, m12271m & 1048575, Long.valueOf(xf3Var.mo9205g()));
                                Object obj45 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 57:
                                bh3.m16340w(t, m12271m & 1048575, Integer.valueOf(xf3Var.mo9204h()));
                                Object obj46 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 58:
                                bh3.m16340w(t, m12271m & 1048575, Boolean.valueOf(xf3Var.mo9203i()));
                                Object obj47 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 59:
                                m12272l(t, m12271m, xf3Var);
                                Object obj48 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 60:
                                if (m12258z(t, mo9210b, m12296B)) {
                                    long j4 = m12271m & 1048575;
                                    bh3.m16340w(t, j4, se3.m11064i(bh3.m16341v(t, j4), xf3Var.mo9188x(m12278T(m12296B), vd3Var)));
                                } else {
                                    bh3.m16340w(t, m12271m & 1048575, xf3Var.mo9188x(m12278T(m12296B), vd3Var));
                                    Object obj49 = obj;
                                    m12259y(t, m12296B);
                                }
                                Object obj50 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 61:
                                bh3.m16340w(t, m12271m & 1048575, xf3Var.mo9201k());
                                Object obj51 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 62:
                                bh3.m16340w(t, m12271m & 1048575, Integer.valueOf(xf3Var.mo9193s()));
                                Object obj52 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 63:
                                int mo9197o2 = xf3Var.mo9197o();
                                Object obj53 = obj;
                                me3 m12276V2 = m12276V(m12296B);
                                if (m12276V2 != null && !m12276V2.mo8821B(mo9197o2)) {
                                    obj = fg3.m15218h(mo9210b, mo9197o2, obj, rg3Var);
                                    break;
                                }
                                bh3.m16340w(t, m12271m & 1048575, Integer.valueOf(mo9197o2));
                                Object obj54 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 64:
                                bh3.m16340w(t, m12271m & 1048575, Integer.valueOf(xf3Var.zzt()));
                                Object obj55 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 65:
                                bh3.m16340w(t, m12271m & 1048575, Long.valueOf(xf3Var.zzu()));
                                Object obj56 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 66:
                                bh3.m16340w(t, m12271m & 1048575, Integer.valueOf(xf3Var.mo9189w()));
                                Object obj57 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 67:
                                bh3.m16340w(t, m12271m & 1048575, Long.valueOf(xf3Var.mo9214G()));
                                Object obj58 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            case 68:
                                bh3.m16340w(t, m12271m & 1048575, xf3Var.mo9194r(m12278T(m12296B), vd3Var));
                                Object obj59 = obj;
                                m12297A(t, mo9210b, m12296B);
                                break;
                            default:
                                Object obj60 = obj;
                                if (obj == null) {
                                    obj60 = rg3Var.mo10702g();
                                }
                                obj = obj60;
                                if (!rg3Var.m11469n(obj60, xf3Var)) {
                                    for (int i = this.f27971l; i < this.f27972m; i++) {
                                        obj60 = m12274j(t, this.f27970k[i], obj60, rg3Var);
                                    }
                                    if (obj60 == null) {
                                        return;
                                    }
                                    rg3Var.mo10697l(t, obj60);
                                    return;
                                }
                                break;
                        }
                    } catch (zzggl e) {
                        rg3Var.mo10708a(xf3Var);
                        Object obj61 = obj4;
                        if (obj4 == null) {
                            obj61 = rg3Var.mo10698k(t);
                        }
                        Object obj62 = obj61;
                        obj = obj61;
                        if (!rg3Var.m11469n(obj61, xf3Var)) {
                            for (int i2 = this.f27971l; i2 < this.f27972m; i2++) {
                                obj61 = m12274j(t, this.f27970k[i2], obj61, rg3Var);
                            }
                            if (obj61 == null) {
                                return;
                            }
                            rg3Var.mo10697l(t, obj61);
                            return;
                        }
                    }
                } else if (mo9210b == Integer.MAX_VALUE) {
                    for (int i3 = this.f27971l; i3 < this.f27972m; i3++) {
                        obj = m12274j(t, this.f27970k[i3], obj, rg3Var);
                    }
                    if (obj == null) {
                        return;
                    }
                    rg3Var.mo10697l(t, obj);
                    return;
                } else {
                    Object mo9254f = !this.f27967h ? null : wd3Var.mo9254f(vd3Var, this.f27966g, mo9210b);
                    if (mo9254f != null) {
                        ae3<?> ae3Var2 = ae3Var;
                        if (ae3Var == null) {
                            ae3Var2 = wd3Var.mo9257c(t);
                        }
                        Object obj63 = obj;
                        obj = wd3Var.mo9255e(xf3Var, mo9254f, vd3Var, ae3Var2, obj, rg3Var);
                        ae3Var = ae3Var2;
                    } else {
                        rg3Var.mo10708a(xf3Var);
                        Object obj64 = obj;
                        if (obj == null) {
                            obj64 = rg3Var.mo10698k(t);
                        }
                        Object obj65 = obj64;
                        obj = obj64;
                        if (!rg3Var.m11469n(obj64, xf3Var)) {
                            for (int i4 = this.f27971l; i4 < this.f27972m; i4++) {
                                obj64 = m12274j(t, this.f27970k[i4], obj64, rg3Var);
                            }
                            if (obj64 == null) {
                                return;
                            }
                            rg3Var.mo10697l(t, obj64);
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.f27971l; i5 < this.f27972m; i5++) {
                    obj2 = m12274j(t, this.f27970k[i5], obj2, rg3Var);
                }
                if (obj2 != null) {
                    rg3Var.mo10697l(t, obj2);
                }
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: h */
    public final void mo11901h(T t, byte[] bArr, int i, int i2, wc3 wc3Var) {
        if (this.f27969j) {
            m12275W(t, bArr, i, i2, wc3Var);
        } else {
            m12289I(t, bArr, i, i2, 0, wc3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: i */
    public final void mo11900i(T t, rd3 rd3Var) {
        if (!this.f27969j) {
            m12293E(t, rd3Var);
        } else if (this.f27967h) {
            this.f27975p.mo9258b(t);
            throw null;
        } else {
            int length = this.f27962c.length;
            for (int i = 0; i < length; i += 3) {
                int m12271m = m12271m(i);
                int i2 = this.f27962c[i];
                switch (m12269o(m12271m)) {
                    case 0:
                        if (m12260x(t, i)) {
                            rd3Var.m11562q(i2, bh3.m16343t(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m12260x(t, i)) {
                            rd3Var.m11563p(i2, bh3.m16345r(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m12260x(t, i)) {
                            rd3Var.m11565n(i2, bh3.m16349n(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m12260x(t, i)) {
                            rd3Var.m11560s(i2, bh3.m16349n(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m12260x(t, i)) {
                            rd3Var.m11559t(i2, bh3.m16351l(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m12260x(t, i)) {
                            rd3Var.m11558u(i2, bh3.m16349n(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m12260x(t, i)) {
                            rd3Var.m11557v(i2, bh3.m16351l(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m12260x(t, i)) {
                            rd3Var.m11556w(i2, bh3.m16347p(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m12260x(t, i)) {
                            m12291G(i2, bh3.m16341v(t, m12271m & 1048575), rd3Var);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (m12260x(t, i)) {
                            rd3Var.m11587C(i2, bh3.m16341v(t, m12271m & 1048575), m12278T(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (m12260x(t, i)) {
                            rd3Var.m11554y(i2, (zzgex) bh3.m16341v(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m12260x(t, i)) {
                            rd3Var.m11553z(i2, bh3.m16351l(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m12260x(t, i)) {
                            rd3Var.m11561r(i2, bh3.m16351l(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m12260x(t, i)) {
                            rd3Var.m11566m(i2, bh3.m16351l(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m12260x(t, i)) {
                            rd3Var.m11564o(i2, bh3.m16349n(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m12260x(t, i)) {
                            rd3Var.m11589A(i2, bh3.m16351l(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m12260x(t, i)) {
                            rd3Var.m11588B(i2, bh3.m16349n(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (m12260x(t, i)) {
                            rd3Var.m11586D(i2, bh3.m16341v(t, m12271m & 1048575), m12278T(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        fg3.m15216j(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 19:
                        fg3.m15215k(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 20:
                        fg3.m15214l(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 21:
                        fg3.m15213m(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 22:
                        fg3.m15209q(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 23:
                        fg3.m15211o(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 24:
                        fg3.m15206t(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 25:
                        fg3.m15203w(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 26:
                        fg3.m15202x(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var);
                        break;
                    case 27:
                        fg3.m15200z(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, m12278T(i));
                        break;
                    case 28:
                        fg3.m15201y(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var);
                        break;
                    case 29:
                        fg3.m15208r(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 30:
                        fg3.m15204v(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 31:
                        fg3.m15205u(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 32:
                        fg3.m15210p(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 33:
                        fg3.m15207s(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 34:
                        fg3.m15212n(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, false);
                        break;
                    case 35:
                        fg3.m15216j(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 36:
                        fg3.m15215k(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 37:
                        fg3.m15214l(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 38:
                        fg3.m15213m(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 39:
                        fg3.m15209q(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 40:
                        fg3.m15211o(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 41:
                        fg3.m15206t(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 42:
                        fg3.m15203w(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 43:
                        fg3.m15208r(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 44:
                        fg3.m15204v(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 45:
                        fg3.m15205u(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 46:
                        fg3.m15210p(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 47:
                        fg3.m15207s(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 48:
                        fg3.m15212n(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, true);
                        break;
                    case 49:
                        fg3.m15252B(this.f27962c[i], (List) bh3.m16341v(t, m12271m & 1048575), rd3Var, m12278T(i));
                        break;
                    case 50:
                        m12292F(rd3Var, i2, bh3.m16341v(t, m12271m & 1048575), i);
                        break;
                    case 51:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11562q(i2, m12267q(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11563p(i2, m12266r(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11565n(i2, m12264t(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11560s(i2, m12264t(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11559t(i2, m12265s(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11558u(i2, m12264t(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11557v(i2, m12265s(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11556w(i2, m12263u(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (m12258z(t, i2, i)) {
                            m12291G(i2, bh3.m16341v(t, m12271m & 1048575), rd3Var);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11587C(i2, bh3.m16341v(t, m12271m & 1048575), m12278T(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11554y(i2, (zzgex) bh3.m16341v(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11553z(i2, m12265s(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11561r(i2, m12265s(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11566m(i2, m12265s(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11564o(i2, m12264t(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11589A(i2, m12265s(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11588B(i2, m12264t(t, m12271m & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (m12258z(t, i2, i)) {
                            rd3Var.m11586D(i2, bh3.m16341v(t, m12271m & 1048575), m12278T(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            rg3<?, ?> rg3Var = this.f27974o;
            rg3Var.mo10692r(rg3Var.mo10699j(t), rd3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.cg3
    public final T zza() {
        return (T) ((ie3) this.f27966g).mo8268B(4, null, null);
    }
}
