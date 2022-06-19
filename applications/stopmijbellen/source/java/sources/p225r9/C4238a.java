package p225r9;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import p011aa.AbstractC0054g;
import p011aa.AbstractC0055h;
import p011aa.AbstractC0074y;
import p011aa.C0053f;
import p011aa.C0075z;
import p204p9.C4086c;
import p214q9.C4171c;
/* renamed from: r9.a */
/* loaded from: classes2-dex2jar.jar:r9/a.class */
public class C4238a implements AbstractC0074y {

    /* renamed from: a */
    public boolean f13278a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC0055h f13279b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC4240c f13280c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC0054g f13281d;

    public C4238a(C4239b c4239b, AbstractC0055h abstractC0055h, AbstractC4240c abstractC4240c, AbstractC0054g abstractC0054g) {
        this.f13279b = abstractC0055h;
        this.f13280c = abstractC4240c;
        this.f13281d = abstractC0054g;
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: b */
    public C0075z mo610b() {
        return this.f13279b.mo610b();
    }

    @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f13278a && !C4171c.m1326j(this, 100, TimeUnit.MILLISECONDS)) {
            this.f13278a = true;
            ((C4086c.C4088b) this.f13280c).m1427a();
        }
        this.f13279b.close();
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: f */
    public long mo609f(C0053f c0053f, long j) throws IOException {
        try {
            long mo609f = this.f13279b.mo609f(c0053f, j);
            if (mo609f != -1) {
                c0053f.m8845k(this.f13281d.mo8807a(), c0053f.f120b - mo609f, mo609f);
                this.f13281d.mo8822F();
                return mo609f;
            } else if (this.f13278a) {
                return -1L;
            } else {
                this.f13278a = true;
                this.f13281d.close();
                return -1L;
            }
        } catch (IOException e) {
            if (!this.f13278a) {
                this.f13278a = true;
                ((C4086c.C4088b) this.f13280c).m1427a();
            }
            throw e;
        }
    }
}
