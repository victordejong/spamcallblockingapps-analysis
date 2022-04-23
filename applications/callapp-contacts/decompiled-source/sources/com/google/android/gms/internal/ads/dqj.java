package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqj.class */
public final class dqj {
    private static final dqj f = new dqj(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    int f27103a;

    /* renamed from: b  reason: collision with root package name */
    int[] f27104b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f27105c;

    /* renamed from: d  reason: collision with root package name */
    int f27106d;
    boolean e;

    private dqj() {
        this(0, new int[8], new Object[8], true);
    }

    private dqj(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f27106d = -1;
        this.f27103a = i;
        this.f27104b = iArr;
        this.f27105c = objArr;
        this.e = z;
    }

    public static dqj a() {
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dqj a(dqj dqjVar, dqj dqjVar2) {
        int i = dqjVar.f27103a + dqjVar2.f27103a;
        int[] copyOf = Arrays.copyOf(dqjVar.f27104b, i);
        System.arraycopy(dqjVar2.f27104b, 0, copyOf, dqjVar.f27103a, dqjVar2.f27103a);
        Object[] copyOf2 = Arrays.copyOf(dqjVar.f27105c, i);
        System.arraycopy(dqjVar2.f27105c, 0, copyOf2, dqjVar.f27103a, dqjVar2.f27103a);
        return new dqj(i, copyOf, copyOf2, true);
    }

    private static void a(int i, Object obj, drd drdVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            drdVar.a(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            drdVar.d(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            drdVar.a(i2, (dlw) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                drdVar.d(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzenn.f());
        } else if (drdVar.a() == drc.f27120a) {
            drdVar.a(i2);
            ((dqj) obj).a(drdVar);
            drdVar.b(i2);
        } else {
            drdVar.b(i2);
            ((dqj) obj).a(drdVar);
            drdVar.a(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dqj b() {
        return new dqj();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, Object obj) {
        if (this.e) {
            int i2 = this.f27103a;
            int[] iArr = this.f27104b;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f27104b = Arrays.copyOf(iArr, i3);
                this.f27105c = Arrays.copyOf(this.f27105c, i3);
            }
            int[] iArr2 = this.f27104b;
            int i4 = this.f27103a;
            iArr2[i4] = i;
            this.f27105c[i4] = obj;
            this.f27103a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void a(drd drdVar) throws IOException {
        if (this.f27103a != 0) {
            if (drdVar.a() == drc.f27120a) {
                for (int i = 0; i < this.f27103a; i++) {
                    a(this.f27104b[i], this.f27105c[i], drdVar);
                }
                return;
            }
            for (int i2 = this.f27103a - 1; i2 >= 0; i2--) {
                a(this.f27104b[i2], this.f27105c[i2], drdVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f27103a; i2++) {
            dou.a(sb, i, String.valueOf(this.f27104b[i2] >>> 3), this.f27105c[i2]);
        }
    }

    public final int c() {
        int i;
        int i2 = this.f27106d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f27103a; i4++) {
            int i5 = this.f27104b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzemk.e(i6, ((Long) this.f27105c[i4]).longValue());
            } else if (i7 == 1) {
                ((Long) this.f27105c[i4]).longValue();
                i = zzemk.g(i6);
            } else if (i7 == 2) {
                i = zzemk.c(i6, (dlw) this.f27105c[i4]);
            } else if (i7 == 3) {
                i = (zzemk.l(i6) << 1) + ((dqj) this.f27105c[i4]).c();
            } else if (i7 == 5) {
                ((Integer) this.f27105c[i4]).intValue();
                i = zzemk.e(i6);
            } else {
                throw new IllegalStateException(zzenn.f());
            }
            i3 += i;
        }
        this.f27106d = i3;
        return i3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof dqj)) {
            return false;
        }
        dqj dqjVar = (dqj) obj;
        int i = this.f27103a;
        if (i != dqjVar.f27103a) {
            return false;
        }
        int[] iArr = this.f27104b;
        int[] iArr2 = dqjVar.f27104b;
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
        Object[] objArr = this.f27105c;
        Object[] objArr2 = dqjVar.f27105c;
        int i3 = this.f27103a;
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

    public final int hashCode() {
        int i = this.f27103a;
        int[] iArr = this.f27104b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f27105c;
        int i5 = this.f27103a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
