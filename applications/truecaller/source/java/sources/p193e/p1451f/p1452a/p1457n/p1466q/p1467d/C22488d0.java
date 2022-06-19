package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import java.io.IOException;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.q.d.d0 */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/d0.class */
public final class C22488d0 implements AbstractC22269k<Bitmap, Bitmap> {

    /* renamed from: e.f.a.n.q.d.d0$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/d0$a.class */
    public static final class C22489a implements AbstractC22394w<Bitmap> {

        /* renamed from: a */
        public final Bitmap f62357a;

        public C22489a(Bitmap bitmap) {
            this.f62357a = bitmap;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
        /* renamed from: a */
        public int mo8163a() {
            return C22623j.m8020d(this.f62357a);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
        /* renamed from: b */
        public void mo8162b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
        /* renamed from: c */
        public Class<Bitmap> mo8161c() {
            return Bitmap.class;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
        public Bitmap get() {
            return this.f62357a;
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public /* bridge */ /* synthetic */ boolean mo8147a(Bitmap bitmap, C22267i c22267i) throws IOException {
        return true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<Bitmap> mo8146b(Bitmap bitmap, int i, int i2, C22267i c22267i) throws IOException {
        return new C22489a(bitmap);
    }
}
