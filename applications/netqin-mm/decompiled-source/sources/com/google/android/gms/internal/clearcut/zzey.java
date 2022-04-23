package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.io.IOException;
import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2;
import p131c.p161d.p170b.p224d.p252g.p255c.C4327c1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzey.class */
public final class zzey {

    /* renamed from: f */
    public static final zzey f29270f = new zzey(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f29271a;

    /* renamed from: b */
    public int[] f29272b;

    /* renamed from: c */
    public Object[] f29273c;

    /* renamed from: d */
    public int f29274d;

    /* renamed from: e */
    public boolean f29275e;

    public zzey() {
        this(0, new int[8], new Object[8], true);
    }

    public zzey(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f29274d = -1;
        this.f29271a = i;
        this.f29272b = iArr;
        this.f29273c = objArr;
        this.f29275e = z;
    }

    /* renamed from: a */
    public static zzey m10668a(zzey zzeyVar, zzey zzeyVar2) {
        int i = zzeyVar.f29271a + zzeyVar2.f29271a;
        int[] copyOf = Arrays.copyOf(zzeyVar.f29272b, i);
        System.arraycopy(zzeyVar2.f29272b, 0, copyOf, zzeyVar.f29271a, zzeyVar2.f29271a);
        Object[] copyOf2 = Arrays.copyOf(zzeyVar.f29273c, i);
        System.arraycopy(zzeyVar2.f29273c, 0, copyOf2, zzeyVar.f29271a, zzeyVar2.f29271a);
        return new zzey(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public static void m10670a(int i, Object obj, AbstractC4407r2 r2Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            r2Var.mo25600d(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            r2Var.mo25622a(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            r2Var.mo25620a(i2, (zzbb) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                r2Var.mo25604c(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzco.zzbn());
        } else if (r2Var.mo25627a() == zzcg.zzg.f29262k) {
            r2Var.mo25611b(i2);
            ((zzey) obj).m10665b(r2Var);
            r2Var.mo25626a(i2);
        } else {
            r2Var.mo25626a(i2);
            ((zzey) obj).m10665b(r2Var);
            r2Var.mo25611b(i2);
        }
    }

    /* renamed from: d */
    public static zzey m10663d() {
        return f29270f;
    }

    /* renamed from: e */
    public static zzey m10662e() {
        return new zzey();
    }

    /* renamed from: a */
    public final int m10672a() {
        int i;
        int i2 = this.f29274d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f29271a; i4++) {
            int i5 = this.f29272b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzbn.m10792e(i6, ((Long) this.f29273c[i4]).longValue());
            } else if (i7 == 1) {
                i = zzbn.m10784g(i6, ((Long) this.f29273c[i4]).longValue());
            } else if (i7 == 2) {
                i = zzbn.m10802c(i6, (zzbb) this.f29273c[i4]);
            } else if (i7 == 3) {
                i = (zzbn.m10793e(i6) << 1) + ((zzey) this.f29273c[i4]).m10672a();
            } else if (i7 == 5) {
                i = zzbn.m10777i(i6, ((Integer) this.f29273c[i4]).intValue());
            } else {
                throw new IllegalStateException(zzco.zzbn());
            }
            i3 += i;
        }
        this.f29274d = i3;
        return i3;
    }

    /* renamed from: a */
    public final void m10671a(int i, Object obj) {
        if (this.f29275e) {
            int i2 = this.f29271a;
            if (i2 == this.f29272b.length) {
                int i3 = this.f29271a + (i2 < 4 ? 8 : i2 >> 1);
                this.f29272b = Arrays.copyOf(this.f29272b, i3);
                this.f29273c = Arrays.copyOf(this.f29273c, i3);
            }
            int[] iArr = this.f29272b;
            int i4 = this.f29271a;
            iArr[i4] = i;
            this.f29273c[i4] = obj;
            this.f29271a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m10669a(AbstractC4407r2 r2Var) throws IOException {
        if (r2Var.mo25627a() == zzcg.zzg.f29263l) {
            for (int i = this.f29271a - 1; i >= 0; i--) {
                r2Var.mo25619a(this.f29272b[i] >>> 3, this.f29273c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f29271a; i2++) {
            r2Var.mo25619a(this.f29272b[i2] >>> 3, this.f29273c[i2]);
        }
    }

    /* renamed from: a */
    public final void m10667a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f29271a; i2++) {
            C4327c1.m25985a(sb, i, String.valueOf(this.f29272b[i2] >>> 3), this.f29273c[i2]);
        }
    }

    /* renamed from: b */
    public final int m10666b() {
        int i = this.f29274d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f29271a; i3++) {
            i2 += zzbn.m10796d(this.f29272b[i3] >>> 3, (zzbb) this.f29273c[i3]);
        }
        this.f29274d = i2;
        return i2;
    }

    /* renamed from: b */
    public final void m10665b(AbstractC4407r2 r2Var) throws IOException {
        if (this.f29271a != 0) {
            if (r2Var.mo25627a() == zzcg.zzg.f29262k) {
                for (int i = 0; i < this.f29271a; i++) {
                    m10670a(this.f29272b[i], this.f29273c[i], r2Var);
                }
                return;
            }
            for (int i2 = this.f29271a - 1; i2 >= 0; i2--) {
                m10670a(this.f29272b[i2], this.f29273c[i2], r2Var);
            }
        }
    }

    /* renamed from: c */
    public final void m10664c() {
        this.f29275e = false;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzey)) {
            return false;
        }
        zzey zzeyVar = (zzey) obj;
        int i = this.f29271a;
        if (i != zzeyVar.f29271a) {
            return false;
        }
        int[] iArr = this.f29272b;
        int[] iArr2 = zzeyVar.f29272b;
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
        Object[] objArr = this.f29273c;
        Object[] objArr2 = zzeyVar.f29273c;
        int i3 = this.f29271a;
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
        int i = this.f29271a;
        int[] iArr = this.f29272b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f29273c;
        int i5 = this.f29271a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
