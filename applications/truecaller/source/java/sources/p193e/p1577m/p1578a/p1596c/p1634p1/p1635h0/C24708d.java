package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24736j;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24742n;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24802w;
/* renamed from: e.m.a.c.p1.h0.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/d.class */
public final class C24708d implements AbstractC24736j {

    /* renamed from: a */
    public final AbstractC24705c f69218a;

    /* renamed from: b */
    public final long f69219b;

    /* renamed from: c */
    public final int f69220c;

    /* renamed from: d */
    public C24742n f69221d;

    /* renamed from: e */
    public long f69222e;

    /* renamed from: f */
    public File f69223f;

    /* renamed from: g */
    public OutputStream f69224g;

    /* renamed from: h */
    public long f69225h;

    /* renamed from: i */
    public long f69226i;

    /* renamed from: j */
    public C24802w f69227j;

    /* renamed from: e.m.a.c.p1.h0.d$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/d$a.class */
    public static class C24709a extends AbstractC24705c.C24706a {
        public C24709a(IOException iOException) {
            super(iOException);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public C24708d(AbstractC24705c abstractC24705c, long j, int i) {
        C26232y.m2282y(j > 0 || j == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        int i2 = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
        if (i2 != 0) {
        }
        Objects.requireNonNull(abstractC24705c);
        this.f69218a = abstractC24705c;
        this.f69219b = i2 == 0 ? 9223372036854775807 : j;
        this.f69220c = i;
    }

    /* renamed from: a */
    public final void m4764a() throws IOException {
        OutputStream outputStream = this.f69224g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            OutputStream outputStream2 = this.f69224g;
            int i = C24773d0.f69427a;
            if (outputStream2 != null) {
                try {
                    outputStream2.close();
                } catch (IOException e) {
                }
            }
            this.f69224g = null;
            File file = this.f69223f;
            this.f69223f = null;
            this.f69218a.mo4702j(file, this.f69225h);
        } catch (Throwable th) {
            OutputStream outputStream3 = this.f69224g;
            int i2 = C24773d0.f69427a;
            if (outputStream3 != null) {
                try {
                    outputStream3.close();
                } catch (IOException e2) {
                }
            }
            this.f69224g = null;
            File file2 = this.f69223f;
            this.f69223f = null;
            file2.delete();
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24736j
    /* renamed from: b */
    public void mo4689b(C24742n c24742n) throws C24709a {
        if (c24742n.f69334g == -1 && c24742n.m4686b(2)) {
            this.f69221d = null;
            return;
        }
        this.f69221d = c24742n;
        this.f69222e = c24742n.m4686b(4) ? this.f69219b : (char) 65535;
        this.f69226i = 0L;
        try {
            m4763c();
        } catch (IOException e) {
            throw new C24709a(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* renamed from: c */
    public final void m4763c() throws IOException {
        long j = this.f69221d.f69334g;
        ?? r11 = true;
        if (j != -1) {
            r11 = Math.min(j - this.f69226i, this.f69222e);
        }
        AbstractC24705c abstractC24705c = this.f69218a;
        C24742n c24742n = this.f69221d;
        this.f69223f = abstractC24705c.mo4707e(c24742n.f69335h, c24742n.f69332e + this.f69226i, r11 == true ? 1L : 0L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f69223f);
        if (this.f69220c > 0) {
            C24802w c24802w = this.f69227j;
            if (c24802w == null) {
                this.f69227j = new C24802w(fileOutputStream, this.f69220c);
            } else {
                c24802w.m4507b(fileOutputStream);
            }
            this.f69224g = this.f69227j;
        } else {
            this.f69224g = fileOutputStream;
        }
        this.f69225h = 0L;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24736j
    public void close() throws C24709a {
        if (this.f69221d == null) {
            return;
        }
        try {
            m4764a();
        } catch (IOException e) {
            throw new C24709a(e);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24736j
    public void write(byte[] bArr, int i, int i2) throws C24709a {
        if (this.f69221d == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.f69225h == this.f69222e) {
                    m4764a();
                    m4763c();
                }
                int min = (int) Math.min(i2 - i3, this.f69222e - this.f69225h);
                this.f69224g.write(bArr, i + i3, min);
                i3 += min;
                long j = min;
                this.f69225h += j;
                this.f69226i += j;
            } catch (IOException e) {
                throw new C24709a(e);
            }
        }
    }
}
