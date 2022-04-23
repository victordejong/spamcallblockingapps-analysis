package com.bytedance.sdk.a.a;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/q.class */
public final class q extends f {
    final transient byte[][] f;
    final transient int[] g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    public q(c cVar, int i) {
        super(null);
        u.a(cVar.f7785b, 0L, i);
        o oVar = cVar.f7784a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (oVar.f7817c != oVar.f7816b) {
                i3 += oVar.f7817c - oVar.f7816b;
                i4++;
                oVar = oVar.f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.f = new byte[i4];
        this.g = new int[i4 * 2];
        o oVar2 = cVar.f7784a;
        int i5 = 0;
        while (i2 < i) {
            this.f[i5] = oVar2.f7815a;
            int i6 = i2 + (oVar2.f7817c - oVar2.f7816b);
            i2 = i6;
            if (i6 > i) {
                i2 = i;
            }
            int[] iArr = this.g;
            iArr[i5] = i2;
            iArr[this.f.length + i5] = oVar2.f7816b;
            oVar2.f7818d = true;
            i5++;
            oVar2 = oVar2.f;
        }
    }

    private int b(int i) {
        int binarySearch = Arrays.binarySearch(this.g, 0, this.f.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ (-1);
    }

    private f i() {
        return new f(h());
    }

    @Override // com.bytedance.sdk.a.a.f
    public final byte a(int i) {
        u.a(this.g[this.f.length - 1], i, 1L);
        int b2 = b(i);
        int i2 = b2 == 0 ? 0 : this.g[b2 - 1];
        int[] iArr = this.g;
        byte[][] bArr = this.f;
        return bArr[b2][(i - i2) + iArr[bArr.length + b2]];
    }

    @Override // com.bytedance.sdk.a.a.f
    public final f a(int i, int i2) {
        return i().a(i, i2);
    }

    @Override // com.bytedance.sdk.a.a.f
    public final String a() {
        return i().a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.sdk.a.a.f
    public final void a(c cVar) {
        int length = this.f.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.g;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            o oVar = new o(this.f[i], i3, (i3 + i4) - i2, true, false);
            if (cVar.f7784a == null) {
                oVar.g = oVar;
                oVar.f = oVar;
                cVar.f7784a = oVar;
            } else {
                cVar.f7784a.g.a(oVar);
            }
            i++;
            i2 = i4;
        }
        cVar.f7785b += i2;
    }

    @Override // com.bytedance.sdk.a.a.f
    public final boolean a(int i, f fVar, int i2, int i3) {
        if (i < 0 || i > g() - i3) {
            return false;
        }
        int b2 = b(i);
        while (i3 > 0) {
            int i4 = b2 == 0 ? 0 : this.g[b2 - 1];
            int min = Math.min(i3, ((this.g[b2] - i4) + i4) - i);
            int[] iArr = this.g;
            byte[][] bArr = this.f;
            if (!fVar.a(i2, bArr[b2], (i - i4) + iArr[bArr.length + b2], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            b2++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.a.a.f
    public final boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > g() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int b2 = b(i);
        while (i3 > 0) {
            int i4 = b2 == 0 ? 0 : this.g[b2 - 1];
            int min = Math.min(i3, ((this.g[b2] - i4) + i4) - i);
            int[] iArr = this.g;
            byte[][] bArr2 = this.f;
            if (!u.a(bArr2[b2], (i - i4) + iArr[bArr2.length + b2], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            b2++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.a.a.f
    public final String b() {
        return i().b();
    }

    @Override // com.bytedance.sdk.a.a.f
    public final f c() {
        return i().c();
    }

    @Override // com.bytedance.sdk.a.a.f
    public final f d() {
        return i().d();
    }

    @Override // com.bytedance.sdk.a.a.f
    public final String e() {
        return i().e();
    }

    @Override // com.bytedance.sdk.a.a.f
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return fVar.g() == g() && a(0, fVar, 0, g());
    }

    @Override // com.bytedance.sdk.a.a.f
    public final f f() {
        return i().f();
    }

    @Override // com.bytedance.sdk.a.a.f
    public final int g() {
        return this.g[this.f.length - 1];
    }

    @Override // com.bytedance.sdk.a.a.f
    public final byte[] h() {
        int[] iArr = this.g;
        byte[][] bArr = this.f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.g;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.f[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // com.bytedance.sdk.a.a.f
    public final int hashCode() {
        int i = this.f7790d;
        if (i != 0) {
            return i;
        }
        int length = this.f.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f[i2];
            int[] iArr = this.g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            for (int i7 = i5; i7 < (i6 - i3) + i5; i7++) {
                i4 = (i4 * 31) + bArr[i7];
            }
            i2++;
            i3 = i6;
        }
        this.f7790d = i4;
        return i4;
    }

    @Override // com.bytedance.sdk.a.a.f
    public final String toString() {
        return i().toString();
    }
}
