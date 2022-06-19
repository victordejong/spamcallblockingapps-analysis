package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.Queue;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n;
import p193e.p1451f.p1452a.p1480t.C22615d;
import p193e.p1451f.p1452a.p1480t.C22621h;
/* renamed from: e.f.a.n.q.d.z */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/z.class */
public class C22523z implements AbstractC22269k<InputStream, Bitmap> {

    /* renamed from: a */
    public final C22512n f62418a;

    /* renamed from: b */
    public final AbstractC22301b f62419b;

    /* renamed from: e.f.a.n.q.d.z$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/z$a.class */
    public static class C22524a implements C22512n.AbstractC22514b {

        /* renamed from: a */
        public final C22520w f62420a;

        /* renamed from: b */
        public final C22615d f62421b;

        public C22524a(C22520w c22520w, C22615d c22615d) {
            this.f62420a = c22520w;
            this.f62421b = c22615d;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n.AbstractC22514b
        /* renamed from: a */
        public void mo8169a() {
            C22520w c22520w = this.f62420a;
            synchronized (c22520w) {
                c22520w.f62412c = c22520w.f62410a.length;
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n.AbstractC22514b
        /* renamed from: b */
        public void mo8168b(AbstractC22303d abstractC22303d, Bitmap bitmap) throws IOException {
            IOException iOException = this.f62421b.f62635b;
            if (iOException != null) {
                if (bitmap != null) {
                    abstractC22303d.mo8327c(bitmap);
                }
                throw iOException;
            }
        }
    }

    public C22523z(C22512n c22512n, AbstractC22301b abstractC22301b) {
        this.f62418a = c22512n;
        this.f62419b = abstractC22301b;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(InputStream inputStream, C22267i c22267i) throws IOException {
        Objects.requireNonNull(this.f62418a);
        return true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<Bitmap> mo8146b(InputStream inputStream, int i, int i2, C22267i c22267i) throws IOException {
        boolean z;
        C22520w c22520w;
        C22615d poll;
        InputStream inputStream2 = inputStream;
        if (inputStream2 instanceof C22520w) {
            c22520w = (C22520w) inputStream2;
            z = false;
        } else {
            c22520w = new C22520w(inputStream2, this.f62419b);
            z = true;
        }
        Queue<C22615d> queue = C22615d.f62633c;
        synchronized (queue) {
            poll = queue.poll();
        }
        C22615d c22615d = poll;
        if (poll == null) {
            c22615d = new C22615d();
        }
        c22615d.f62634a = c22520w;
        try {
            AbstractC22394w<Bitmap> m8189a = this.f62418a.m8189a(new C22621h(c22615d), i, i2, c22267i, new C22524a(c22520w, c22615d));
            c22615d.m8032b();
            if (z) {
                c22520w.m8171d();
            }
            return m8189a;
        } catch (Throwable th) {
            c22615d.m8032b();
            if (z) {
                c22520w.m8171d();
            }
            throw th;
        }
    }
}
