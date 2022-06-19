package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1480t.C22611a;
/* renamed from: e.f.a.n.q.d.u */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/u.class */
public final class C22518u implements AbstractC22269k<InputStream, Bitmap> {

    /* renamed from: a */
    public final d f62407a = new d();

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public /* bridge */ /* synthetic */ boolean mo8147a(InputStream inputStream, C22267i c22267i) throws IOException {
        return true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<Bitmap> mo8146b(InputStream inputStream, int i, int i2, C22267i c22267i) throws IOException {
        InputStream inputStream2 = inputStream;
        AtomicReference<byte[]> atomicReference = C22611a.f62625a;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = C22611a.f62625a.getAndSet(null);
        byte[] bArr = andSet;
        if (andSet == null) {
            bArr = new byte[16384];
        }
        while (true) {
            int read = inputStream2.read(bArr);
            if (read < 0) {
                C22611a.f62625a.set(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return this.f62407a.mo8146b(ImageDecoder.createSource((ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0)), i, i2, c22267i);
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }
}
