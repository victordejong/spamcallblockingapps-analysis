package com.google.zxing.common;

import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/b.class */
public final class b implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public final int f32980a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32981b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32982c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f32983d;

    public b(int i) {
        this(i, i);
    }

    public b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f32980a = i;
        this.f32981b = i2;
        int i3 = (i + 31) / 32;
        this.f32982c = i3;
        this.f32983d = new int[i3 * i2];
    }

    private b(int i, int i2, int i3, int[] iArr) {
        this.f32980a = i;
        this.f32981b = i2;
        this.f32982c = i3;
        this.f32983d = iArr;
    }

    public final void a() {
        int length = this.f32983d.length;
        for (int i = 0; i < length; i++) {
            this.f32983d[i] = 0;
        }
    }

    public final void a(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        } else if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        } else {
            int i5 = i3 + i;
            int i6 = i4 + i2;
            if (i6 > this.f32981b || i5 > this.f32980a) {
                throw new IllegalArgumentException("The region must fit inside the matrix");
            }
            while (i2 < i6) {
                int i7 = this.f32982c;
                for (int i8 = i; i8 < i5; i8++) {
                    int[] iArr = this.f32983d;
                    int i9 = (i8 / 32) + (i7 * i2);
                    iArr[i9] = iArr[i9] | (1 << (i8 & 31));
                }
                i2++;
            }
        }
    }

    public final boolean a(int i, int i2) {
        return ((this.f32983d[(i2 * this.f32982c) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public final void b(int i, int i2) {
        int i3 = (i2 * this.f32982c) + (i / 32);
        int[] iArr = this.f32983d;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new b(this.f32980a, this.f32981b, this.f32982c, (int[]) this.f32983d.clone());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f32980a == bVar.f32980a && this.f32981b == bVar.f32981b && this.f32982c == bVar.f32982c && Arrays.equals(this.f32983d, bVar.f32983d);
    }

    public final int hashCode() {
        int i = this.f32980a;
        return (((((((i * 31) + i) * 31) + this.f32981b) * 31) + this.f32982c) * 31) + Arrays.hashCode(this.f32983d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.f32981b * (this.f32980a + 1));
        for (int i = 0; i < this.f32981b; i++) {
            for (int i2 = 0; i2 < this.f32980a; i2++) {
                sb.append(a(i2, i) ? "X " : "  ");
            }
            sb.append(StringUtils.LF);
        }
        return sb.toString();
    }
}
