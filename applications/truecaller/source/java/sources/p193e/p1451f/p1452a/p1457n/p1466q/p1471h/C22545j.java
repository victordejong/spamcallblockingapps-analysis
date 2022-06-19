package p193e.p1451f.p1452a.p1457n.p1466q.p1471h;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
/* renamed from: e.f.a.n.q.h.j */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/j.class */
public class C22545j implements AbstractC22269k<InputStream, C22538c> {

    /* renamed from: a */
    public final List<ImageHeaderParser> f62469a;

    /* renamed from: b */
    public final AbstractC22269k<ByteBuffer, C22538c> f62470b;

    /* renamed from: c */
    public final AbstractC22301b f62471c;

    public C22545j(List<ImageHeaderParser> list, AbstractC22269k<ByteBuffer, C22538c> abstractC22269k, AbstractC22301b abstractC22301b) {
        this.f62469a = list;
        this.f62470b = abstractC22269k;
        this.f62471c = abstractC22301b;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(InputStream inputStream, C22267i c22267i) throws IOException {
        return !((Boolean) c22267i.m8361c(C22544i.f62468b)).booleanValue() && C26232y.m2467F0(this.f62469a, inputStream, this.f62471c) == ImageHeaderParser.ImageType.GIF;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<C22538c> mo8146b(InputStream inputStream, int i, int i2, C22267i c22267i) throws IOException {
        byte[] bArr;
        AbstractC22394w<C22538c> abstractC22394w;
        InputStream inputStream2 = inputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr2 = new byte[16384];
            while (true) {
                int read = inputStream2.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            byteArrayOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            Log.isLoggable("StreamGifDecoder", 5);
            bArr = null;
        }
        if (bArr == null) {
            abstractC22394w = null;
        } else {
            abstractC22394w = this.f62470b.mo8146b(ByteBuffer.wrap(bArr), i, i2, c22267i);
        }
        return abstractC22394w;
    }
}
