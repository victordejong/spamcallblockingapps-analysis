package com.google.protobuf;

import com.google.protobuf.Writer;
import java.util.Arrays;
/* renamed from: com.google.protobuf.h1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/h1.class */
public final class C2612h1 {

    /* renamed from: f */
    private static final C2612h1 f11107f = new C2612h1(0, new int[0], new Object[0], false);

    /* renamed from: a */
    private int f11108a;

    /* renamed from: b */
    private int[] f11109b;

    /* renamed from: c */
    private Object[] f11110c;

    /* renamed from: d */
    private int f11111d;

    /* renamed from: e */
    private boolean f11112e;

    private C2612h1() {
        this(0, new int[8], new Object[8], true);
    }

    private C2612h1(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f11111d = -1;
        this.f11108a = i;
        this.f11109b = iArr;
        this.f11110c = objArr;
        this.f11112e = z;
    }

    /* renamed from: b */
    private void m2719b() {
        int i = this.f11108a;
        int[] iArr = this.f11109b;
        if (i == iArr.length) {
            int i2 = i + (i < 4 ? 8 : i >> 1);
            this.f11109b = Arrays.copyOf(iArr, i2);
            this.f11110c = Arrays.copyOf(this.f11110c, i2);
        }
    }

    /* renamed from: c */
    public static C2612h1 m2718c() {
        return f11107f;
    }

    /* renamed from: f */
    private static int m2715f(int[] iArr, int i) {
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return i2;
    }

    /* renamed from: g */
    private static int m2714g(Object[] objArr, int i) {
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + objArr[i3].hashCode();
        }
        return i2;
    }

    /* renamed from: i */
    public static C2612h1 m2712i(C2612h1 c2612h1, C2612h1 c2612h12) {
        int i = c2612h1.f11108a + c2612h12.f11108a;
        int[] copyOf = Arrays.copyOf(c2612h1.f11109b, i);
        System.arraycopy(c2612h12.f11109b, 0, copyOf, c2612h1.f11108a, c2612h12.f11108a);
        Object[] copyOf2 = Arrays.copyOf(c2612h1.f11110c, i);
        System.arraycopy(c2612h12.f11110c, 0, copyOf2, c2612h1.f11108a, c2612h12.f11108a);
        return new C2612h1(i, copyOf, copyOf2, true);
    }

    /* renamed from: j */
    public static C2612h1 m2711j() {
        return new C2612h1();
    }

    /* renamed from: k */
    private static boolean m2710k(Object[] objArr, Object[] objArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!objArr[i2].equals(objArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    private static boolean m2707n(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: p */
    private static void m2705p(int i, Object obj, Writer writer) {
        int m2924a = WireFormat.m2924a(i);
        int m2923b = WireFormat.m2923b(i);
        if (m2923b == 0) {
            writer.mo2529e(m2924a, ((Long) obj).longValue());
        } else if (m2923b == 1) {
            writer.mo2555A(m2924a, ((Long) obj).longValue());
        } else if (m2923b == 2) {
            writer.mo2522l(m2924a, (ByteString) obj);
        } else if (m2923b != 3) {
            if (m2923b != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
            }
            writer.mo2518p(m2924a, ((Integer) obj).intValue());
        } else if (writer.mo2554B() == Writer.FieldOrder.ASCENDING) {
            writer.mo2523k(m2924a);
            ((C2612h1) obj).m2704q(writer);
            writer.mo2550F(m2924a);
        } else {
            writer.mo2550F(m2924a);
            ((C2612h1) obj).m2704q(writer);
            writer.mo2523k(m2924a);
        }
    }

    /* renamed from: a */
    void m2720a() {
        if (this.f11112e) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public int m2717d() {
        int i;
        int i2 = this.f11111d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f11108a; i4++) {
            int i5 = this.f11109b[i4];
            int m2924a = WireFormat.m2924a(i5);
            int m2923b = WireFormat.m2923b(i5);
            if (m2923b == 0) {
                i = CodedOutputStream.m3116Y(m2924a, ((Long) this.f11110c[i4]).longValue());
            } else if (m2923b == 1) {
                i = CodedOutputStream.m3092p(m2924a, ((Long) this.f11110c[i4]).longValue());
            } else if (m2923b == 2) {
                i = CodedOutputStream.m3103h(m2924a, (ByteString) this.f11110c[i4]);
            } else if (m2923b == 3) {
                i = (CodedOutputStream.m3119V(m2924a) * 2) + ((C2612h1) this.f11110c[i4]).m2717d();
            } else if (m2923b != 5) {
                throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
            } else {
                i = CodedOutputStream.m3095n(m2924a, ((Integer) this.f11110c[i4]).intValue());
            }
            i3 += i;
        }
        this.f11111d = i3;
        return i3;
    }

    /* renamed from: e */
    public int m2716e() {
        int i = this.f11111d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f11108a; i3++) {
            i2 += CodedOutputStream.m3139J(WireFormat.m2924a(this.f11109b[i3]), (ByteString) this.f11110c[i3]);
        }
        this.f11111d = i2;
        return i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C2612h1)) {
            return false;
        }
        C2612h1 c2612h1 = (C2612h1) obj;
        int i = this.f11108a;
        return i == c2612h1.f11108a && m2707n(this.f11109b, c2612h1.f11109b, i) && m2710k(this.f11110c, c2612h1.f11110c, this.f11108a);
    }

    /* renamed from: h */
    public void m2713h() {
        this.f11112e = false;
    }

    public int hashCode() {
        int i = this.f11108a;
        return ((((527 + i) * 31) + m2715f(this.f11109b, i)) * 31) + m2714g(this.f11110c, this.f11108a);
    }

    /* renamed from: l */
    public final void m2709l(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f11108a; i2++) {
            C2645o0.m2408c(sb, i, String.valueOf(WireFormat.m2924a(this.f11109b[i2])), this.f11110c[i2]);
        }
    }

    /* renamed from: m */
    public void m2708m(int i, Object obj) {
        m2720a();
        m2719b();
        int[] iArr = this.f11109b;
        int i2 = this.f11108a;
        iArr[i2] = i;
        this.f11110c[i2] = obj;
        this.f11108a = i2 + 1;
    }

    /* renamed from: o */
    public void m2706o(Writer writer) {
        if (writer.mo2554B() == Writer.FieldOrder.DESCENDING) {
            for (int i = this.f11108a - 1; i >= 0; i--) {
                writer.mo2526h(WireFormat.m2924a(this.f11109b[i]), this.f11110c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f11108a; i2++) {
            writer.mo2526h(WireFormat.m2924a(this.f11109b[i2]), this.f11110c[i2]);
        }
    }

    /* renamed from: q */
    public void m2704q(Writer writer) {
        if (this.f11108a == 0) {
            return;
        }
        if (writer.mo2554B() == Writer.FieldOrder.ASCENDING) {
            for (int i = 0; i < this.f11108a; i++) {
                m2705p(this.f11109b[i], this.f11110c[i], writer);
            }
            return;
        }
        for (int i2 = this.f11108a - 1; i2 >= 0; i2--) {
            m2705p(this.f11109b[i2], this.f11110c[i2], writer);
        }
    }
}
