package p131c.p161d.p170b.p224d.p252g.p253a;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzom;
import com.google.android.gms.internal.ads.zzon;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.p8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/p8.class */
public final class C3907p8 implements zzom {

    /* renamed from: a */
    public final zzom f14391a;

    /* renamed from: b */
    public final long f14392b;

    /* renamed from: c */
    public final zzom f14393c;

    /* renamed from: d */
    public long f14394d;

    /* renamed from: e */
    public Uri f14395e;

    public C3907p8(zzom zzomVar, int i, zzom zzomVar2) {
        this.f14391a = zzomVar;
        this.f14392b = i;
        this.f14393c = zzomVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: a */
    public final long mo11728a(zzon zzonVar) throws IOException {
        zzon zzonVar2;
        this.f14395e = zzonVar.f28723a;
        long j = zzonVar.f28726d;
        long j2 = this.f14392b;
        zzon zzonVar3 = null;
        if (j >= j2) {
            zzonVar2 = null;
        } else {
            long j3 = zzonVar.f28727e;
            zzonVar2 = new zzon(zzonVar.f28723a, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null);
        }
        long j4 = zzonVar.f28727e;
        if (j4 == -1 || zzonVar.f28726d + j4 > this.f14392b) {
            long max = Math.max(this.f14392b, zzonVar.f28726d);
            long j5 = zzonVar.f28727e;
            zzonVar3 = new zzon(zzonVar.f28723a, max, j5 != -1 ? Math.min(j5, (zzonVar.f28726d + j5) - this.f14392b) : -1L, null);
        }
        long j6 = 0;
        long a = zzonVar2 != null ? this.f14391a.mo11728a(zzonVar2) : 0L;
        if (zzonVar3 != null) {
            j6 = this.f14393c.mo11728a(zzonVar3);
        }
        this.f14394d = zzonVar.f28726d;
        if (a == -1 || j6 == -1) {
            return -1L;
        }
        return a + j6;
    }

    @Override // com.google.android.gms.internal.ads.zzom
    public final void close() throws IOException {
        this.f14391a.close();
        this.f14393c.close();
    }

    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: o */
    public final Uri mo11724o() {
        return this.f14395e;
    }

    @Override // com.google.android.gms.internal.ads.zzom
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.f14394d;
        long j2 = this.f14392b;
        if (j < j2) {
            i3 = this.f14391a.read(bArr, i, (int) Math.min(i2, j2 - j));
            this.f14394d += i3;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (this.f14394d >= this.f14392b) {
            int read = this.f14393c.read(bArr, i + i3, i2 - i3);
            i4 = i3 + read;
            this.f14394d += read;
        }
        return i4;
    }
}
