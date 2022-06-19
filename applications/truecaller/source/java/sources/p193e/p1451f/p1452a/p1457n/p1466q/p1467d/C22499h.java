package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.io.IOException;
import java.nio.ByteBuffer;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
/* renamed from: e.f.a.n.q.d.h */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/h.class */
public final class C22499h implements AbstractC22269k<ByteBuffer, Bitmap> {

    /* renamed from: a */
    public final d f62369a = new d();

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public /* bridge */ /* synthetic */ boolean mo8147a(ByteBuffer byteBuffer, C22267i c22267i) throws IOException {
        return true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<Bitmap> mo8146b(ByteBuffer byteBuffer, int i, int i2, C22267i c22267i) throws IOException {
        return this.f62369a.mo8146b(ImageDecoder.createSource(byteBuffer), i, i2, c22267i);
    }
}
