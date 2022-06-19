package com.google.protobuf;

import com.google.protobuf.C1886h;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;
import p287x6.AbstractC4890c;
import p287x6.AbstractC4911k;
import p287x6.AbstractC4925w;
import p287x6.C4928z;
/* renamed from: com.google.protobuf.a0 */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/a0.class */
public final class C1861a0 {

    /* renamed from: a */
    public static final Class<?> f7035a;

    /* renamed from: b */
    public static final AbstractC1875d0<?, ?> f7036b;

    /* renamed from: c */
    public static final AbstractC1875d0<?, ?> f7037c;

    /* renamed from: d */
    public static final AbstractC1875d0<?, ?> f7038d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable th) {
            cls = null;
        }
        f7035a = cls;
        f7036b = m4349y(false);
        f7037c = m4349y(true);
        f7038d = new C4928z();
    }

    /* renamed from: A */
    public static boolean m4392A(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: B */
    public static void m4391B(int i, List<Boolean> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4408q0(i, list.get(i2).booleanValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            Logger logger = CodedOutputStream.f7029b;
            i3++;
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4409p0(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: C */
    public static void m4390C(int i, List<AbstractC4890c> list, AbstractC1885g0 abstractC1885g0) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        for (int i2 = 0; i2 < list.size(); i2++) {
            c1876e.f7065a.mo4406s0(i, list.get(i2));
        }
    }

    /* renamed from: D */
    public static void m4389D(int i, List<Double> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                CodedOutputStream codedOutputStream = c1876e.f7065a;
                double doubleValue = list.get(i2).doubleValue();
                Objects.requireNonNull(codedOutputStream);
                codedOutputStream.mo4402w0(i, Double.doubleToRawLongBits(doubleValue));
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            Logger logger = CodedOutputStream.f7029b;
            i3 += 8;
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            CodedOutputStream codedOutputStream2 = c1876e.f7065a;
            double doubleValue2 = list.get(i5).doubleValue();
            Objects.requireNonNull(codedOutputStream2);
            codedOutputStream2.mo4401x0(Double.doubleToRawLongBits(doubleValue2));
        }
    }

    /* renamed from: E */
    public static void m4388E(int i, List<Integer> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4400y0(i, list.get(i2).intValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.m4441W(list.get(i4).intValue());
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4399z0(list.get(i5).intValue());
        }
    }

    /* renamed from: F */
    public static void m4387F(int i, List<Integer> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4404u0(i, list.get(i2).intValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = CodedOutputStream.f7029b;
            i3 += 4;
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4403v0(list.get(i5).intValue());
        }
    }

    /* renamed from: G */
    public static void m4386G(int i, List<Long> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4402w0(i, list.get(i2).longValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = CodedOutputStream.f7029b;
            i3 += 8;
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4401x0(list.get(i5).longValue());
        }
    }

    /* renamed from: H */
    public static void m4385H(int i, List<Float> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                CodedOutputStream codedOutputStream = c1876e.f7065a;
                float floatValue = list.get(i2).floatValue();
                Objects.requireNonNull(codedOutputStream);
                codedOutputStream.mo4404u0(i, Float.floatToRawIntBits(floatValue));
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            Logger logger = CodedOutputStream.f7029b;
            i3 += 4;
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            CodedOutputStream codedOutputStream2 = c1876e.f7065a;
            float floatValue2 = list.get(i5).floatValue();
            Objects.requireNonNull(codedOutputStream2);
            codedOutputStream2.mo4403v0(Float.floatToRawIntBits(floatValue2));
        }
    }

    /* renamed from: I */
    public static void m4384I(int i, List<?> list, AbstractC1885g0 abstractC1885g0, AbstractC4925w abstractC4925w) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        for (int i2 = 0; i2 < list.size(); i2++) {
            c1876e.m4330c(i, list.get(i2), abstractC4925w);
        }
    }

    /* renamed from: J */
    public static void m4383J(int i, List<Integer> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4400y0(i, list.get(i2).intValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.m4441W(list.get(i4).intValue());
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4399z0(list.get(i5).intValue());
        }
    }

    /* renamed from: K */
    public static void m4382K(int i, List<Long> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4413J0(i, list.get(i2).longValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.m4425m0(list.get(i4).longValue());
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4412K0(list.get(i5).longValue());
        }
    }

    /* renamed from: L */
    public static void m4381L(int i, List<?> list, AbstractC1885g0 abstractC1885g0, AbstractC4925w abstractC4925w) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        for (int i2 = 0; i2 < list.size(); i2++) {
            c1876e.f7065a.mo4422A0(i, (AbstractC1916u) list.get(i2), abstractC4925w);
        }
    }

    /* renamed from: M */
    public static void m4380M(int i, List<Integer> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4404u0(i, list.get(i2).intValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = CodedOutputStream.f7029b;
            i3 += 4;
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4403v0(list.get(i5).intValue());
        }
    }

    /* renamed from: N */
    public static void m4379N(int i, List<Long> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4402w0(i, list.get(i2).longValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = CodedOutputStream.f7029b;
            i3 += 8;
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4401x0(list.get(i5).longValue());
        }
    }

    /* renamed from: O */
    public static void m4378O(int i, List<Integer> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4415H0(i, CodedOutputStream.m4424n0(list.get(i2).intValue()));
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.m4434d0(list.get(i4).intValue());
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4414I0(CodedOutputStream.m4424n0(list.get(i5).intValue()));
        }
    }

    /* renamed from: P */
    public static void m4377P(int i, List<Long> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4413J0(i, CodedOutputStream.m4423o0(list.get(i2).longValue()));
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.m4432f0(list.get(i4).longValue());
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4412K0(CodedOutputStream.m4423o0(list.get(i5).longValue()));
        }
    }

    /* renamed from: Q */
    public static void m4376Q(int i, List<String> list, AbstractC1885g0 abstractC1885g0) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!(list instanceof AbstractC4911k)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4418E0(i, list.get(i2));
            }
            return;
        }
        AbstractC4911k abstractC4911k = (AbstractC4911k) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object mo267K = abstractC4911k.mo267K(i3);
            if (mo267K instanceof String) {
                c1876e.f7065a.mo4418E0(i, (String) mo267K);
            } else {
                c1876e.f7065a.mo4406s0(i, (AbstractC4890c) mo267K);
            }
        }
    }

    /* renamed from: R */
    public static void m4375R(int i, List<Integer> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4415H0(i, list.get(i2).intValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.m4427k0(list.get(i4).intValue());
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4414I0(list.get(i5).intValue());
        }
    }

    /* renamed from: S */
    public static void m4374S(int i, List<Long> list, AbstractC1885g0 abstractC1885g0, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        C1876e c1876e = (C1876e) abstractC1885g0;
        Objects.requireNonNull(c1876e);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c1876e.f7065a.mo4413J0(i, list.get(i2).longValue());
            }
            return;
        }
        c1876e.f7065a.mo4416G0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.m4425m0(list.get(i4).longValue());
        }
        c1876e.f7065a.mo4414I0(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c1876e.f7065a.mo4412K0(list.get(i5).longValue());
        }
    }

    /* renamed from: a */
    public static int m4373a(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return CodedOutputStream.m4451M(i, true) * size;
        }
        return CodedOutputStream.m4438Z(size) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: b */
    public static int m4372b(int i, List<AbstractC4890c> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m4429i0 = CodedOutputStream.m4429i0(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            m4429i0 += CodedOutputStream.m4449O(list.get(i2));
        }
        return m4429i0;
    }

    /* renamed from: c */
    public static int m4371c(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m4370d = m4370d(list);
        if (!z) {
            return (CodedOutputStream.m4429i0(i) * size) + m4370d;
        }
        return CodedOutputStream.m4438Z(m4370d) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: d */
    public static int m4370d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C1894j)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m4441W(list.get(i4).intValue());
                i4++;
            }
        } else {
            C1894j c1894j = (C1894j) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m4441W(c1894j.m4271d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static int m4369e(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return CodedOutputStream.m4446R(i, 0) * size;
        }
        return CodedOutputStream.m4438Z(size * 4) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: f */
    public static int m4368f(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: g */
    public static int m4367g(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return CodedOutputStream.m4445S(i, 0L) * size;
        }
        return CodedOutputStream.m4438Z(size * 8) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: h */
    public static int m4366h(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: i */
    public static int m4365i(int i, List<AbstractC1916u> list, AbstractC4925w abstractC4925w) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += CodedOutputStream.m4443U(i, list.get(i3), abstractC4925w);
        }
        return i2;
    }

    /* renamed from: j */
    public static int m4364j(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m4363k = m4363k(list);
        if (!z) {
            return (CodedOutputStream.m4429i0(i) * size) + m4363k;
        }
        return CodedOutputStream.m4438Z(m4363k) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: k */
    public static int m4363k(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C1894j)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m4441W(list.get(i4).intValue());
                i4++;
            }
        } else {
            C1894j c1894j = (C1894j) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m4441W(c1894j.m4271d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: l */
    public static int m4362l(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int m4361m = m4361m(list);
        if (z) {
            return CodedOutputStream.m4438Z(m4361m) + CodedOutputStream.m4429i0(i);
        }
        return (CodedOutputStream.m4429i0(i) * list.size()) + m4361m;
    }

    /* renamed from: m */
    public static int m4361m(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C1910p)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m4425m0(list.get(i4).longValue());
                i4++;
            }
        } else {
            C1910p c1910p = (C1910p) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m4425m0(c1910p.m4253d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: n */
    public static int m4360n(int i, Object obj, AbstractC4925w abstractC4925w) {
        int m4429i0;
        int m4438Z;
        if (obj instanceof C1904m) {
            m4429i0 = CodedOutputStream.m4429i0(i);
            m4438Z = CodedOutputStream.m4439Y((C1904m) obj);
        } else {
            m4429i0 = CodedOutputStream.m4429i0(i);
            m4438Z = CodedOutputStream.m4438Z(((AbstractC1859a) ((AbstractC1916u) obj)).m4394n(abstractC4925w));
        }
        return m4438Z + m4429i0;
    }

    /* renamed from: o */
    public static int m4359o(int i, List<?> list, AbstractC4925w abstractC4925w) {
        int i2;
        int i3;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m4429i0 = CodedOutputStream.m4429i0(i) * size;
        for (int i4 = 0; i4 < size; i4++) {
            Object obj = list.get(i4);
            if (obj instanceof C1904m) {
                i3 = CodedOutputStream.m4439Y((C1904m) obj);
                i2 = m4429i0;
            } else {
                i3 = m4429i0;
                i2 = CodedOutputStream.m4438Z(((AbstractC1859a) ((AbstractC1916u) obj)).m4394n(abstractC4925w));
            }
            m4429i0 = i3 + i2;
        }
        return m4429i0;
    }

    /* renamed from: p */
    public static int m4358p(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m4357q = m4357q(list);
        if (!z) {
            return (CodedOutputStream.m4429i0(i) * size) + m4357q;
        }
        return CodedOutputStream.m4438Z(m4357q) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: q */
    public static int m4357q(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C1894j)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m4434d0(list.get(i4).intValue());
                i4++;
            }
        } else {
            C1894j c1894j = (C1894j) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m4434d0(c1894j.m4271d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: r */
    public static int m4356r(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m4355s = m4355s(list);
        if (!z) {
            return (CodedOutputStream.m4429i0(i) * size) + m4355s;
        }
        return CodedOutputStream.m4438Z(m4355s) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: s */
    public static int m4355s(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C1910p)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m4432f0(list.get(i4).longValue());
                i4++;
            }
        } else {
            C1910p c1910p = (C1910p) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m4432f0(c1910p.m4253d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: t */
    public static int m4354t(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int m4429i0 = CodedOutputStream.m4429i0(i) * size;
        int i4 = m4429i0;
        if (!(list instanceof AbstractC4911k)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof AbstractC4890c ? CodedOutputStream.m4449O((AbstractC4890c) obj) : CodedOutputStream.m4430h0((String) obj)) + i4;
                i3++;
            }
        } else {
            AbstractC4911k abstractC4911k = (AbstractC4911k) list;
            int i5 = m4429i0;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object mo267K = abstractC4911k.mo267K(i6);
                i5 = (mo267K instanceof AbstractC4890c ? CodedOutputStream.m4449O((AbstractC4890c) mo267K) : CodedOutputStream.m4430h0((String) mo267K)) + i5;
                i6++;
            }
        }
        return i2;
    }

    /* renamed from: u */
    public static int m4353u(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m4352v = m4352v(list);
        if (!z) {
            return (CodedOutputStream.m4429i0(i) * size) + m4352v;
        }
        return CodedOutputStream.m4438Z(m4352v) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: v */
    public static int m4352v(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C1894j)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m4427k0(list.get(i4).intValue());
                i4++;
            }
        } else {
            C1894j c1894j = (C1894j) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m4427k0(c1894j.m4271d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: w */
    public static int m4351w(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m4350x = m4350x(list);
        if (!z) {
            return (CodedOutputStream.m4429i0(i) * size) + m4350x;
        }
        return CodedOutputStream.m4438Z(m4350x) + CodedOutputStream.m4429i0(i);
    }

    /* renamed from: x */
    public static int m4350x(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C1910p)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += CodedOutputStream.m4425m0(list.get(i4).longValue());
                i4++;
            }
        } else {
            C1910p c1910p = (C1910p) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += CodedOutputStream.m4425m0(c1910p.m4253d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: y */
    public static AbstractC1875d0<?, ?> m4349y(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (AbstractC1875d0) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: z */
    public static <T, FT extends C1886h.AbstractC1887a<FT>> void m4348z(AbstractC1878f<FT> abstractC1878f, T t, T t2) {
        C1886h<FT> mo4314b = abstractC1878f.mo4314b(t2);
        if (!mo4314b.m4302h()) {
            C1886h<FT> mo4313c = abstractC1878f.mo4313c(t);
            Objects.requireNonNull(mo4313c);
            for (int i = 0; i < mo4314b.f7074a.m4343d(); i++) {
                mo4313c.m4297m(mo4314b.f7074a.m4344c(i));
            }
            for (Map.Entry<FT, Object> entry : mo4314b.f7074a.m4342e()) {
                mo4313c.m4297m(entry);
            }
        }
    }
}
