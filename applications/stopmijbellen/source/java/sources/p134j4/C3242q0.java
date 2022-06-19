package p134j4;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: j4.q0 */
/* loaded from: classes-dex2jar.jar:j4/q0.class */
public final class C3242q0 extends OutputStream {

    /* renamed from: a */
    public final C3227l1 f10931a = new C3227l1();

    /* renamed from: b */
    public final File f10932b;

    /* renamed from: c */
    public final C3270z1 f10933c;

    /* renamed from: d */
    public long f10934d;

    /* renamed from: e */
    public long f10935e;

    /* renamed from: f */
    public FileOutputStream f10936f;

    /* renamed from: g */
    public AbstractC3200e2 f10937g;

    public C3242q0(File file, C3270z1 c3270z1) {
        this.f10932b = file;
        this.f10933c = c3270z1;
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = i;
        while (i2 > 0) {
            int i5 = i4;
            int i6 = i2;
            if (this.f10934d == 0) {
                i5 = i4;
                i6 = i2;
                if (this.f10935e == 0) {
                    int m2533a = this.f10931a.m2533a(bArr, i4, i2);
                    if (m2533a == -1) {
                        return;
                    }
                    i5 = i4 + m2533a;
                    i6 = i2 - m2533a;
                    AbstractC3200e2 m2532b = this.f10931a.m2532b();
                    this.f10937g = m2532b;
                    if (m2532b.mo2549d()) {
                        this.f10934d = 0L;
                        this.f10933c.m2456k(this.f10937g.mo2547f(), 0, this.f10937g.mo2547f().length);
                        this.f10935e = this.f10937g.mo2547f().length;
                    } else if (!this.f10937g.m2545h() || this.f10937g.m2546g()) {
                        byte[] mo2547f = this.f10937g.mo2547f();
                        this.f10933c.m2456k(mo2547f, 0, mo2547f.length);
                        this.f10934d = this.f10937g.mo2551b();
                    } else {
                        this.f10933c.m2458i(this.f10937g.mo2547f());
                        File file = new File(this.f10932b, this.f10937g.mo2550c());
                        file.getParentFile().mkdirs();
                        this.f10934d = this.f10937g.mo2551b();
                        this.f10936f = new FileOutputStream(file);
                    }
                }
            }
            if (this.f10937g.m2546g()) {
                i4 = i5;
                i2 = i6;
            } else {
                if (this.f10937g.mo2549d()) {
                    this.f10933c.m2463d(this.f10935e, bArr, i5, i6);
                    this.f10935e += i6;
                    i3 = i6;
                } else if (this.f10937g.m2545h()) {
                    int min = (int) Math.min(i6, this.f10934d);
                    this.f10936f.write(bArr, i5, min);
                    long j = this.f10934d - min;
                    this.f10934d = j;
                    i3 = min;
                    if (j == 0) {
                        this.f10936f.close();
                        i3 = min;
                    }
                } else {
                    i3 = (int) Math.min(i6, this.f10934d);
                    this.f10933c.m2463d((this.f10937g.mo2547f().length + this.f10937g.mo2551b()) - this.f10934d, bArr, i5, i3);
                    this.f10934d -= i3;
                }
                i4 = i5 + i3;
                i2 = i6 - i3;
            }
        }
    }
}
