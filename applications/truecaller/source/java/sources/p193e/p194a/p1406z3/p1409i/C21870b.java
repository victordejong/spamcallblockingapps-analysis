package p193e.p194a.p1406z3.p1409i;

import android.graphics.BitmapFactory;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1466q.C22481b;
import s1.z.c.l;
/* renamed from: e.a.z3.i.b */
/* loaded from: classes9-dex2jar.jar:e/a/z3/i/b.class */
public final class C21870b implements AbstractC22269k<InputStream, BitmapFactory.Options> {
    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(InputStream inputStream, C22267i c22267i) {
        l.e(inputStream, "source");
        l.e(c22267i, "options");
        return true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<BitmapFactory.Options> mo8146b(InputStream inputStream, int i, int i2, C22267i c22267i) {
        InputStream inputStream2 = inputStream;
        l.e(inputStream2, "source");
        l.e(c22267i, "options");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        BitmapFactory.decodeStream(inputStream2, null, options);
        return new C22481b(options);
    }
}
