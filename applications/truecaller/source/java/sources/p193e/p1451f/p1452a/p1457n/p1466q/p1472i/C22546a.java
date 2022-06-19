package p193e.p1451f.p1452a.p1457n.p1466q.p1472i;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1466q.p1468e.C22527b;
/* renamed from: e.f.a.n.q.i.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/i/a.class */
public class C22546a implements AbstractC22550e<Bitmap, byte[]> {

    /* renamed from: a */
    public final Bitmap.CompressFormat f62472a = Bitmap.CompressFormat.JPEG;

    /* renamed from: b */
    public final int f62473b = 100;

    @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1472i.AbstractC22550e
    /* renamed from: a */
    public AbstractC22394w<byte[]> mo8143a(AbstractC22394w<Bitmap> abstractC22394w, C22267i c22267i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        abstractC22394w.get().compress(this.f62472a, this.f62473b, byteArrayOutputStream);
        abstractC22394w.mo8162b();
        return new C22527b(byteArrayOutputStream.toByteArray());
    }
}
