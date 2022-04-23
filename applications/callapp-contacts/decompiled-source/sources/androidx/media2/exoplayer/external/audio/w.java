package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.ac;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/w.class */
public final class w extends q {
    boolean e;
    long f;
    private int g;
    private byte[] h = ac.f;
    private byte[] i = ac.f;
    private int j;
    private int k;
    private int l;
    private boolean m;

    private int a(long j) {
        return (int) ((j * this.f2916b) / 1000000);
    }

    private void a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.l);
        int i2 = this.l - min;
        System.arraycopy(bArr, i - i2, this.i, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.i, i2, min);
    }

    private void a(byte[] bArr, int i) {
        a(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.m = true;
        }
    }

    private int b(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i = this.g;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !j()) {
            int i = this.j;
            if (i == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.h.length));
                int limit2 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit2 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    } else if (Math.abs((int) byteBuffer.get(limit2)) > 4) {
                        int i2 = this.g;
                        position = ((limit2 / i2) * i2) + i2;
                        break;
                    } else {
                        limit2 -= 2;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.j = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    a(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.m = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i == 1) {
                int limit3 = byteBuffer.limit();
                int b2 = b(byteBuffer);
                int position2 = b2 - byteBuffer.position();
                byte[] bArr = this.h;
                int length = bArr.length;
                int i3 = this.k;
                int i4 = length - i3;
                if (b2 >= limit3 || position2 >= i4) {
                    int min = Math.min(position2, i4);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.h, this.k, min);
                    int i5 = this.k + min;
                    this.k = i5;
                    byte[] bArr2 = this.h;
                    if (i5 == bArr2.length) {
                        if (this.m) {
                            a(bArr2, this.l);
                            this.f += (this.k - (this.l * 2)) / this.g;
                        } else {
                            this.f += (i5 - this.l) / this.g;
                        }
                        a(byteBuffer, this.h, this.k);
                        this.k = 0;
                        this.j = 2;
                    }
                    byteBuffer.limit(limit3);
                } else {
                    a(bArr, i3);
                    this.k = 0;
                    this.j = 0;
                }
            } else if (i == 2) {
                int limit4 = byteBuffer.limit();
                int b3 = b(byteBuffer);
                byteBuffer.limit(b3);
                this.f += byteBuffer.remaining() / this.g;
                a(byteBuffer, this.i, this.l);
                if (b3 < limit4) {
                    a(this.i, this.l);
                    this.j = 0;
                    byteBuffer.limit(limit4);
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.q, androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a() {
        return super.a() && this.e;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 2) {
            this.g = i2 * 2;
            return b(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.q
    protected final void k() {
        int i = this.k;
        if (i > 0) {
            a(this.h, i);
        }
        if (!this.m) {
            this.f += this.l / this.g;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.q
    protected final void l() {
        if (a()) {
            int a2 = a(150000L) * this.g;
            if (this.h.length != a2) {
                this.h = new byte[a2];
            }
            int a3 = a(20000L) * this.g;
            this.l = a3;
            if (this.i.length != a3) {
                this.i = new byte[a3];
            }
        }
        this.j = 0;
        this.f = 0L;
        this.k = 0;
        this.m = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.q
    protected final void m() {
        this.e = false;
        this.l = 0;
        this.h = ac.f;
        this.i = ac.f;
    }
}
