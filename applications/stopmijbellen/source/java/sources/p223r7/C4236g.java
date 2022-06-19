package p223r7;

import com.koushikdutta.async.http.filter.DataRemainingException;
import java.nio.ByteBuffer;
import java.util.zip.Inflater;
import p124i4.C3102d;
import p148k7.AbstractC3360m;
import p148k7.C3358l;
import p148k7.C3367r;
/* renamed from: r7.g */
/* loaded from: classes2-dex2jar.jar:r7/g.class */
public class C4236g extends C3367r {

    /* renamed from: h */
    public Inflater f13258h;

    /* renamed from: i */
    public C3358l f13259i = new C3358l();

    public C4236g() {
        Inflater inflater = new Inflater();
        this.f13258h = inflater;
    }

    public C4236g(Inflater inflater) {
        this.f13258h = inflater;
    }

    @Override // p148k7.C3367r, p159l7.AbstractC3513c
    /* renamed from: c */
    public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
        try {
            ByteBuffer m2342k = C3358l.m2342k(c3358l.f11382c * 2);
            while (true) {
                ByteBuffer byteBuffer = m2342k;
                if (c3358l.m2337p() <= 0) {
                    byteBuffer.flip();
                    this.f13259i.m2352a(byteBuffer);
                    C3102d.m2623p(this, this.f13259i);
                    return;
                }
                ByteBuffer m2338o = c3358l.m2338o();
                ByteBuffer byteBuffer2 = byteBuffer;
                if (m2338o.hasRemaining()) {
                    m2338o.remaining();
                    this.f13258h.setInput(m2338o.array(), m2338o.arrayOffset() + m2338o.position(), m2338o.remaining());
                    ByteBuffer byteBuffer3 = byteBuffer;
                    while (true) {
                        byteBuffer3.position(byteBuffer3.position() + this.f13258h.inflate(byteBuffer3.array(), byteBuffer3.arrayOffset() + byteBuffer3.position(), byteBuffer3.remaining()));
                        ByteBuffer byteBuffer4 = byteBuffer3;
                        if (!byteBuffer3.hasRemaining()) {
                            byteBuffer3.flip();
                            this.f13259i.m2352a(byteBuffer3);
                            byteBuffer4 = C3358l.m2342k(byteBuffer3.capacity() * 2);
                        }
                        byteBuffer2 = byteBuffer4;
                        if (this.f13258h.needsInput()) {
                            break;
                        }
                        byteBuffer3 = byteBuffer4;
                        if (this.f13258h.finished()) {
                            byteBuffer2 = byteBuffer4;
                            break;
                        }
                    }
                }
                C3358l.m2340m(m2338o);
                m2342k = byteBuffer2;
            }
        } catch (Exception e) {
            mo1262n(e);
        }
    }

    @Override // p148k7.AbstractC3361n
    /* renamed from: n */
    public void mo1262n(Exception exc) {
        this.f13258h.end();
        DataRemainingException dataRemainingException = exc;
        if (exc != null) {
            dataRemainingException = exc;
            if (this.f13258h.getRemaining() > 0) {
                dataRemainingException = new DataRemainingException("data still remaining in inflater", exc);
            }
        }
        super.mo1262n(dataRemainingException);
    }
}
