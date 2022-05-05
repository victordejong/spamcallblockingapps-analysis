package p645m;

import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: m.m */
/* loaded from: classes3-dex2jar.jar:m/m.class */
public final class C15186m implements AbstractC15173d {

    /* renamed from: a */
    public final C15170c f33184a = new C15170c();

    /* renamed from: b */
    public final AbstractC15192r f33185b;

    /* renamed from: c */
    public boolean f33186c;

    public C15186m(AbstractC15192r rVar) {
        if (rVar != null) {
            this.f33185b = rVar;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: a */
    public long mo311a(AbstractC15193s sVar) throws IOException {
        if (sVar != null) {
            long j = 0;
            while (true) {
                long read = sVar.read(this.f33184a, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND);
                if (read == -1) {
                    return j;
                }
                j += read;
                mo308r();
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: a */
    public AbstractC15173d mo313a(long j) throws IOException {
        if (!this.f33186c) {
            this.f33184a.mo313a(j);
            mo308r();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: a */
    public AbstractC15173d mo312a(C15175f fVar) throws IOException {
        if (!this.f33186c) {
            this.f33184a.mo312a(fVar);
            mo308r();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: b */
    public AbstractC15173d mo310b(long j) throws IOException {
        if (!this.f33186c) {
            this.f33184a.mo310b(j);
            return mo308r();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15192r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th;
        Throwable th2;
        if (!this.f33186c) {
            try {
                if (this.f33184a.f33160b > 0) {
                    this.f33185b.write(this.f33184a, this.f33184a.f33160b);
                }
                th = null;
            } catch (Throwable th3) {
                th = th3;
            }
            try {
                this.f33185b.close();
                th2 = th;
            } catch (Throwable th4) {
                th2 = th4;
                th2 = th;
                if (th == null) {
                }
            }
            this.f33186c = true;
            if (th2 != null) {
                C15196u.m261a(th2);
                throw null;
            }
        }
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: e */
    public AbstractC15173d mo309e(String str) throws IOException {
        if (!this.f33186c) {
            this.f33184a.mo309e(str);
            return mo308r();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15173d, p645m.AbstractC15192r, java.io.Flushable
    public void flush() throws IOException {
        if (!this.f33186c) {
            C15170c cVar = this.f33184a;
            long j = cVar.f33160b;
            if (j > 0) {
                this.f33185b.write(cVar, j);
            }
            this.f33185b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f33186c;
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: q */
    public C15170c mo296q() {
        return this.f33184a;
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: r */
    public AbstractC15173d mo308r() throws IOException {
        if (!this.f33186c) {
            long e = this.f33184a.m354e();
            if (e > 0) {
                this.f33185b.write(this.f33184a, e);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15192r
    public C15194t timeout() {
        return this.f33185b.timeout();
    }

    public String toString() {
        return "buffer(" + this.f33185b + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f33186c) {
            int write = this.f33184a.write(byteBuffer);
            mo308r();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15173d
    public AbstractC15173d write(byte[] bArr) throws IOException {
        if (!this.f33186c) {
            this.f33184a.write(bArr);
            mo308r();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15173d
    public AbstractC15173d write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f33186c) {
            this.f33184a.write(bArr, i, i2);
            mo308r();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15192r
    public void write(C15170c cVar, long j) throws IOException {
        if (!this.f33186c) {
            this.f33184a.write(cVar, j);
            mo308r();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15173d
    public AbstractC15173d writeByte(int i) throws IOException {
        if (!this.f33186c) {
            this.f33184a.writeByte(i);
            return mo308r();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15173d
    public AbstractC15173d writeInt(int i) throws IOException {
        if (!this.f33186c) {
            this.f33184a.writeInt(i);
            return mo308r();
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15173d
    public AbstractC15173d writeShort(int i) throws IOException {
        if (!this.f33186c) {
            this.f33184a.writeShort(i);
            mo308r();
            return this;
        }
        throw new IllegalStateException("closed");
    }
}
