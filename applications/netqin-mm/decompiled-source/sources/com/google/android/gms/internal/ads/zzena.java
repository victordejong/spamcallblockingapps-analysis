package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import java.io.IOException;
import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p253a.ka0;
import p131c.p161d.p170b.p224d.p252g.p253a.q80;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzena.class */
public final class zzena {

    /* renamed from: f */
    public static final zzena f28094f = new zzena(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f28095a;

    /* renamed from: b */
    public int[] f28096b;

    /* renamed from: c */
    public Object[] f28097c;

    /* renamed from: d */
    public int f28098d;

    /* renamed from: e */
    public boolean f28099e;

    public zzena() {
        this(0, new int[8], new Object[8], true);
    }

    public zzena(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f28098d = -1;
        this.f28095a = i;
        this.f28096b = iArr;
        this.f28097c = objArr;
        this.f28099e = z;
    }

    /* renamed from: a */
    public static zzena m12335a(zzena zzenaVar, zzena zzenaVar2) {
        int i = zzenaVar.f28095a + zzenaVar2.f28095a;
        int[] copyOf = Arrays.copyOf(zzenaVar.f28096b, i);
        System.arraycopy(zzenaVar2.f28096b, 0, copyOf, zzenaVar.f28095a, zzenaVar2.f28095a);
        Object[] copyOf2 = Arrays.copyOf(zzenaVar.f28097c, i);
        System.arraycopy(zzenaVar2.f28097c, 0, copyOf2, zzenaVar.f28095a, zzenaVar2.f28095a);
        return new zzena(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public static void m12337a(int i, Object obj, ka0 ka0Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            ka0Var.mo26660e(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            ka0Var.mo26671b(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            ka0Var.mo26682a(i2, (zzeip) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                ka0Var.mo26672b(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzekj.zzbhc());
        } else if (ka0Var.mo26688a() == zzejz.zze.f28084k) {
            ka0Var.mo26673b(i2);
            ((zzena) obj).m12332b(ka0Var);
            ka0Var.mo26687a(i2);
        } else {
            ka0Var.mo26687a(i2);
            ((zzena) obj).m12332b(ka0Var);
            ka0Var.mo26673b(i2);
        }
    }

    /* renamed from: d */
    public static zzena m12330d() {
        return f28094f;
    }

    /* renamed from: e */
    public static zzena m12329e() {
        return new zzena();
    }

    /* renamed from: a */
    public final void m12339a() {
        this.f28099e = false;
    }

    /* renamed from: a */
    public final void m12338a(int i, Object obj) {
        if (this.f28099e) {
            int i2 = this.f28095a;
            if (i2 == this.f28096b.length) {
                int i3 = this.f28095a + (i2 < 4 ? 8 : i2 >> 1);
                this.f28096b = Arrays.copyOf(this.f28096b, i3);
                this.f28097c = Arrays.copyOf(this.f28097c, i3);
            }
            int[] iArr = this.f28096b;
            int i4 = this.f28095a;
            iArr[i4] = i;
            this.f28097c[i4] = obj;
            this.f28095a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m12336a(ka0 ka0Var) throws IOException {
        if (ka0Var.mo26688a() == zzejz.zze.f28085l) {
            for (int i = this.f28095a - 1; i >= 0; i--) {
                ka0Var.mo26681a(this.f28096b[i] >>> 3, this.f28097c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f28095a; i2++) {
            ka0Var.mo26681a(this.f28096b[i2] >>> 3, this.f28097c[i2]);
        }
    }

    /* renamed from: a */
    public final void m12334a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f28095a; i2++) {
            q80.m26520a(sb, i, String.valueOf(this.f28096b[i2] >>> 3), this.f28097c[i2]);
        }
    }

    /* renamed from: b */
    public final int m12333b() {
        int i;
        int i2 = this.f28098d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f28095a; i4++) {
            int i5 = this.f28096b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzejj.m12467e(i6, ((Long) this.f28097c[i4]).longValue());
            } else if (i7 == 1) {
                i = zzejj.m12459g(i6, ((Long) this.f28097c[i4]).longValue());
            } else if (i7 == 2) {
                i = zzejj.m12475c(i6, (zzeip) this.f28097c[i4]);
            } else if (i7 == 3) {
                i = (zzejj.m12468e(i6) << 1) + ((zzena) this.f28097c[i4]).m12333b();
            } else if (i7 == 5) {
                i = zzejj.m12452i(i6, ((Integer) this.f28097c[i4]).intValue());
            } else {
                throw new IllegalStateException(zzekj.zzbhc());
            }
            i3 += i;
        }
        this.f28098d = i3;
        return i3;
    }

    /* renamed from: b */
    public final void m12332b(ka0 ka0Var) throws IOException {
        if (this.f28095a != 0) {
            if (ka0Var.mo26688a() == zzejz.zze.f28084k) {
                for (int i = 0; i < this.f28095a; i++) {
                    m12337a(this.f28096b[i], this.f28097c[i], ka0Var);
                }
                return;
            }
            for (int i2 = this.f28095a - 1; i2 >= 0; i2--) {
                m12337a(this.f28096b[i2], this.f28097c[i2], ka0Var);
            }
        }
    }

    /* renamed from: c */
    public final int m12331c() {
        int i = this.f28098d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f28095a; i3++) {
            i2 += zzejj.m12470d(this.f28096b[i3] >>> 3, (zzeip) this.f28097c[i3]);
        }
        this.f28098d = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzena)) {
            return false;
        }
        zzena zzenaVar = (zzena) obj;
        int i = this.f28095a;
        if (i != zzenaVar.f28095a) {
            return false;
        }
        int[] iArr = this.f28096b;
        int[] iArr2 = zzenaVar.f28096b;
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
        Object[] objArr = this.f28097c;
        Object[] objArr2 = zzenaVar.f28097c;
        int i3 = this.f28095a;
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
        int i = this.f28095a;
        int[] iArr = this.f28096b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f28097c;
        int i5 = this.f28095a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
