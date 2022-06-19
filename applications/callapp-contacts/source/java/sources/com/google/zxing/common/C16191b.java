package com.google.zxing.common;

import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.zxing.common.b */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/b.class */
public final class C16191b implements Cloneable {

    /* renamed from: a */
    public final int f57157a;

    /* renamed from: b */
    public final int f57158b;

    /* renamed from: c */
    private final int f57159c;

    /* renamed from: d */
    private final int[] f57160d;

    public C16191b(int i) {
        this(i, i);
    }

    public C16191b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f57157a = i;
        this.f57158b = i2;
        int i3 = (i + 31) / 32;
        this.f57159c = i3;
        this.f57160d = new int[i3 * i2];
    }

    private C16191b(int i, int i2, int i3, int[] iArr) {
        this.f57157a = i;
        this.f57158b = i2;
        this.f57159c = i3;
        this.f57160d = iArr;
    }

    /* renamed from: a */
    public final void m7679a() {
        int length = this.f57160d.length;
        for (int i = 0; i < length; i++) {
            this.f57160d[i] = 0;
        }
    }

    /* renamed from: a */
    public final void m7677a(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.f57158b || i5 > this.f57157a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.f57159c;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f57160d;
                int i9 = (i8 / 32) + (i7 * i2);
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    /* renamed from: a */
    public final boolean m7678a(int i, int i2) {
        return ((this.f57160d[(i2 * this.f57159c) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    /* renamed from: b */
    public final void m7676b(int i, int i2) {
        int i3 = (i2 * this.f57159c) + (i / 32);
        int[] iArr = this.f57160d;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new C16191b(this.f57157a, this.f57158b, this.f57159c, (int[]) this.f57160d.clone());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C16191b)) {
            return false;
        }
        C16191b c16191b = (C16191b) obj;
        return this.f57157a == c16191b.f57157a && this.f57158b == c16191b.f57158b && this.f57159c == c16191b.f57159c && Arrays.equals(this.f57160d, c16191b.f57160d);
    }

    public final int hashCode() {
        int i = this.f57157a;
        return (((((((i * 31) + i) * 31) + this.f57158b) * 31) + this.f57159c) * 31) + Arrays.hashCode(this.f57160d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.f57158b * (this.f57157a + 1));
        for (int i = 0; i < this.f57158b; i++) {
            for (int i2 = 0; i2 < this.f57157a; i2++) {
                sb.append(m7678a(i2, i) ? "X " : "  ");
            }
            sb.append(StringUtils.f67179LF);
        }
        return sb.toString();
    }
}
