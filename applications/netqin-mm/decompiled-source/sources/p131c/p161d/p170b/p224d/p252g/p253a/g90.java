package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeiw;
import com.google.android.gms.internal.ads.zzemc;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: c.d.b.d.g.a.g90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g90.class */
public final class g90 extends InputStream {

    /* renamed from: a */
    public d90 f13024a;

    /* renamed from: b */
    public zzeiw f13025b;

    /* renamed from: c */
    public int f13026c;

    /* renamed from: d */
    public int f13027d;

    /* renamed from: e */
    public int f13028e;

    /* renamed from: f */
    public int f13029f;

    /* renamed from: g */
    public final /* synthetic */ zzemc f13030g;

    public g90(zzemc zzemcVar) {
        this.f13030g = zzemcVar;
        m26987a();
    }

    /* renamed from: a */
    public final void m26987a() {
        d90 d90Var = new d90(this.f13030g, null);
        this.f13024a = d90Var;
        zzeiw zzeiwVar = (zzeiw) d90Var.next();
        this.f13025b = zzeiwVar;
        this.f13026c = zzeiwVar.size();
        this.f13027d = 0;
        this.f13028e = 0;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f13030g.size() - (this.f13028e + this.f13027d);
    }

    /* renamed from: b */
    public final int m26985b(byte[] bArr, int i, int i2) {
        int i3 = i2;
        while (i3 > 0) {
            m26986b();
            if (this.f13025b == null) {
                break;
            }
            int min = Math.min(this.f13026c - this.f13027d, i3);
            i = i;
            if (bArr != null) {
                this.f13025b.zza(bArr, this.f13027d, i, min);
                i += min;
            }
            this.f13027d += min;
            i3 -= min;
        }
        return i2 - i3;
    }

    /* renamed from: b */
    public final void m26986b() {
        if (this.f13025b != null) {
            int i = this.f13027d;
            int i2 = this.f13026c;
            if (i == i2) {
                this.f13028e += i2;
                this.f13027d = 0;
                if (this.f13024a.hasNext()) {
                    zzeiw zzeiwVar = (zzeiw) this.f13024a.next();
                    this.f13025b = zzeiwVar;
                    this.f13026c = zzeiwVar.size();
                    return;
                }
                this.f13025b = null;
                this.f13026c = 0;
            }
        }
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f13029f = this.f13028e + this.f13027d;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        m26986b();
        zzeiw zzeiwVar = this.f13025b;
        if (zzeiwVar == null) {
            return -1;
        }
        int i = this.f13027d;
        this.f13027d = i + 1;
        return zzeiwVar.zzfu(i) & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw null;
        } else if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        } else {
            int b = m26985b(bArr, i, i2);
            int i3 = b;
            if (b == 0) {
                i3 = -1;
            }
            return i3;
        }
    }

    @Override // java.io.InputStream
    public final void reset() {
        synchronized (this) {
            m26987a();
            m26985b(null, 0, this.f13029f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            long j2 = j;
            if (j > 2147483647L) {
                j2 = 2147483647;
            }
            return m26985b(null, 0, (int) j2);
        }
        throw new IndexOutOfBoundsException();
    }
}
