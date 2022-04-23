package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzie;
import com.google.android.gms.internal.ads.zzih;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: c.d.b.d.g.a.ic0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ic0.class */
public final class ic0 implements zzie {

    /* renamed from: b */
    public int f13526b = -1;

    /* renamed from: c */
    public int f13527c = -1;

    /* renamed from: d */
    public int[] f13528d;

    /* renamed from: e */
    public boolean f13529e;

    /* renamed from: f */
    public int[] f13530f;

    /* renamed from: g */
    public ByteBuffer f13531g;

    /* renamed from: h */
    public ByteBuffer f13532h;

    /* renamed from: i */
    public boolean f13533i;

    public ic0() {
        ByteBuffer byteBuffer = zzie.f28318a;
        this.f13531g = byteBuffer;
        this.f13532h = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    public final void mo11930a() {
        flush();
        this.f13531g = zzie.f28318a;
        this.f13526b = -1;
        this.f13527c = -1;
        this.f13530f = null;
        this.f13529e = false;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    public final void mo11927a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int length = (((limit - position) / (this.f13526b * 2)) * this.f13530f.length) << 1;
        if (this.f13531g.capacity() < length) {
            this.f13531g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.f13531g.clear();
        }
        while (position < limit) {
            for (int i : this.f13530f) {
                this.f13531g.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f13526b << 1;
        }
        byteBuffer.position(limit);
        this.f13531g.flip();
        this.f13532h = this.f13531g;
    }

    /* renamed from: a */
    public final void m26803a(int[] iArr) {
        this.f13528d = iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    public final boolean mo11928a(int i, int i2, int i3) throws zzih {
        boolean z = !Arrays.equals(this.f13528d, this.f13530f);
        int[] iArr = this.f13528d;
        this.f13530f = iArr;
        if (iArr == null) {
            this.f13529e = false;
            return z;
        } else if (i3 != 2) {
            throw new zzih(i, i2, i3);
        } else if (!z && this.f13527c == i && this.f13526b == i2) {
            return false;
        } else {
            this.f13527c = i;
            this.f13526b = i2;
            this.f13529e = i2 != this.f13530f.length;
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.f13530f;
                if (i4 >= iArr2.length) {
                    return true;
                }
                int i5 = iArr2[i4];
                if (i5 < i2) {
                    this.f13529e = (i5 != i4) | this.f13529e;
                    i4++;
                } else {
                    throw new zzih(i, i2, i3);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: b */
    public final boolean mo11926b() {
        return this.f13529e;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: c */
    public final boolean mo11924c() {
        return this.f13533i && this.f13532h == zzie.f28318a;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: d */
    public final void mo11923d() {
        this.f13533i = true;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: e */
    public final ByteBuffer mo11922e() {
        ByteBuffer byteBuffer = this.f13532h;
        this.f13532h = zzie.f28318a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: f */
    public final int mo11921f() {
        int[] iArr = this.f13530f;
        return iArr == null ? this.f13526b : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    public final void flush() {
        this.f13532h = zzie.f28318a;
        this.f13533i = false;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: g */
    public final int mo11920g() {
        return 2;
    }
}
