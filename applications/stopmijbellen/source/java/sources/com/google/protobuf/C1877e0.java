package com.google.protobuf;

import java.io.IOException;
import java.util.Objects;
import p287x6.AbstractC4890c;
/* renamed from: com.google.protobuf.e0 */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/e0.class */
public final class C1877e0 {

    /* renamed from: f */
    public static final C1877e0 f7066f = new C1877e0(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f7067a;

    /* renamed from: b */
    public int[] f7068b;

    /* renamed from: c */
    public Object[] f7069c;

    /* renamed from: d */
    public int f7070d;

    /* renamed from: e */
    public boolean f7071e;

    public C1877e0() {
        this(0, new int[8], new Object[8], true);
    }

    public C1877e0(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f7070d = -1;
        this.f7067a = i;
        this.f7068b = iArr;
        this.f7069c = objArr;
        this.f7071e = z;
    }

    /* renamed from: b */
    public static void m4324b(int i, Object obj, AbstractC1885g0 abstractC1885g0) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            ((C1876e) abstractC1885g0).f7065a.mo4413J0(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            ((C1876e) abstractC1885g0).f7065a.mo4402w0(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            ((C1876e) abstractC1885g0).f7065a.mo4406s0(i2, (AbstractC4890c) obj);
        } else if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.m4398a());
            }
            ((C1876e) abstractC1885g0).f7065a.mo4404u0(i2, ((Integer) obj).intValue());
        } else {
            C1876e c1876e = (C1876e) abstractC1885g0;
            c1876e.f7065a.mo4416G0(i2, 3);
            ((C1877e0) obj).m4323c(abstractC1885g0);
            c1876e.f7065a.mo4416G0(i2, 4);
        }
    }

    /* renamed from: a */
    public int m4325a() {
        int i;
        int i2;
        int i3 = this.f7070d;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= this.f7067a) {
                this.f7070d = i6;
                return i6;
            }
            int i7 = this.f7068b[i4];
            int i8 = i7 >>> 3;
            int i9 = i7 & 7;
            if (i9 == 0) {
                i2 = CodedOutputStream.m4426l0(i8, ((Long) this.f7069c[i4]).longValue());
            } else if (i9 == 1) {
                i2 = CodedOutputStream.m4445S(i8, ((Long) this.f7069c[i4]).longValue());
            } else if (i9 == 2) {
                i2 = CodedOutputStream.m4450N(i8, (AbstractC4890c) this.f7069c[i4]);
            } else if (i9 == 3) {
                i = ((C1877e0) this.f7069c[i4]).m4325a() + (CodedOutputStream.m4429i0(i8) * 2);
                i4++;
                i5 = i + i6;
            } else if (i9 != 5) {
                throw new IllegalStateException(InvalidProtocolBufferException.m4398a());
            } else {
                i2 = CodedOutputStream.m4446R(i8, ((Integer) this.f7069c[i4]).intValue());
            }
            i = i2;
            i4++;
            i5 = i + i6;
        }
    }

    /* renamed from: c */
    public void m4323c(AbstractC1885g0 abstractC1885g0) throws IOException {
        if (this.f7067a == 0) {
            return;
        }
        Objects.requireNonNull(abstractC1885g0);
        for (int i = 0; i < this.f7067a; i++) {
            m4324b(this.f7068b[i], this.f7069c[i], abstractC1885g0);
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C1877e0)) {
            return false;
        }
        C1877e0 c1877e0 = (C1877e0) obj;
        int i = this.f7067a;
        if (i != c1877e0.f7067a) {
            return false;
        }
        int[] iArr = this.f7068b;
        int[] iArr2 = c1877e0.f7068b;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            return false;
        }
        Object[] objArr = this.f7069c;
        Object[] objArr2 = c1877e0.f7069c;
        int i3 = this.f7067a;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!objArr[i4].equals(objArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
    }

    public int hashCode() {
        int i = this.f7067a;
        int[] iArr = this.f7068b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f7069c;
        int i5 = this.f7067a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((527 + i) * 31) + i3) * 31) + i2;
    }
}
