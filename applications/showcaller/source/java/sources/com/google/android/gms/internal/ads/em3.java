package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/em3.class */
public final class em3 {

    /* renamed from: a */
    private final Random f22286a;

    /* renamed from: b */
    private final int[] f22287b;

    /* renamed from: c */
    private final int[] f22288c;

    public em3(int i) {
        this(0, new Random());
    }

    private em3(int i, Random random) {
        this(new int[0], random);
    }

    private em3(int[] iArr, Random random) {
        this.f22287b = iArr;
        this.f22286a = random;
        this.f22288c = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            this.f22288c[iArr[i]] = i;
        }
    }

    /* renamed from: a */
    public final int m15432a() {
        return this.f22287b.length;
    }

    /* renamed from: b */
    public final int m15431b(int i) {
        int i2 = this.f22288c[i] + 1;
        int[] iArr = this.f22287b;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return -1;
    }

    /* renamed from: c */
    public final int m15430c(int i) {
        int i2 = this.f22288c[i] - 1;
        if (i2 >= 0) {
            return this.f22287b[i2];
        }
        return -1;
    }

    /* renamed from: d */
    public final int m15429d() {
        int[] iArr = this.f22287b;
        int length = iArr.length;
        if (length > 0) {
            return iArr[length - 1];
        }
        return -1;
    }

    /* renamed from: e */
    public final int m15428e() {
        int[] iArr = this.f22287b;
        if (iArr.length > 0) {
            return iArr[0];
        }
        return -1;
    }

    /* renamed from: f */
    public final em3 m15427f(int i, int i2) {
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                break;
            }
            iArr[i5] = this.f22286a.nextInt(this.f22287b.length + 1);
            int i6 = i5 + 1;
            int nextInt = this.f22286a.nextInt(i6);
            iArr2[i5] = iArr2[nextInt];
            iArr2[nextInt] = i5;
            i4 = i6;
        }
        Arrays.sort(iArr);
        int[] iArr3 = new int[this.f22287b.length + i2];
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int[] iArr4 = this.f22287b;
            if (i3 < iArr4.length + i2) {
                if (i7 >= i2 || i8 != iArr[i7]) {
                    int i9 = iArr4[i8];
                    iArr3[i3] = i9;
                    if (i9 >= 0) {
                        iArr3[i3] = i9 + i2;
                    }
                    i8++;
                } else {
                    iArr3[i3] = iArr2[i7];
                    i7++;
                }
                i3++;
            } else {
                return new em3(iArr3, new Random(this.f22286a.nextLong()));
            }
        }
    }

    /* renamed from: g */
    public final em3 m15426g(int i, int i2) {
        int[] iArr = new int[this.f22287b.length - i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr2 = this.f22287b;
            if (i3 < iArr2.length) {
                int i5 = iArr2[i3];
                if (i5 < 0 || i5 >= i2) {
                    int i6 = i5;
                    if (i5 >= 0) {
                        i6 = i5 - i2;
                    }
                    iArr[i3 - i4] = i6;
                } else {
                    i4++;
                }
                i3++;
            } else {
                return new em3(iArr, new Random(this.f22286a.nextLong()));
            }
        }
    }

    /* renamed from: h */
    public final em3 m15425h() {
        return new em3(0, new Random(this.f22286a.nextLong()));
    }
}
