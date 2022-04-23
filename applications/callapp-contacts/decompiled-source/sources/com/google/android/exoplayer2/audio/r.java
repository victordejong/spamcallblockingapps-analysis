package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/r.class */
public final class r extends j {

    /* renamed from: d  reason: collision with root package name */
    boolean f20788d;
    long e;
    private final long f;
    private final long g;
    private final short h;
    private int i;
    private byte[] j;
    private byte[] k;
    private int l;
    private int m;
    private int n;
    private boolean o;

    public r() {
        this(150000L, 20000L, (short) 1024);
    }

    public r(long j, long j2, short s) {
        a.a(j2 <= j);
        this.f = j;
        this.g = j2;
        this.h = s;
        this.j = af.f;
        this.k = af.f;
    }

    private int a(long j) {
        return (int) ((j * this.f20770b.f20693b) / 1000000);
    }

    private void a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.n);
        int i2 = this.n - min;
        System.arraycopy(bArr, i - i2, this.k, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.k, i2, min);
    }

    private void a(byte[] bArr, int i) {
        a(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.o = true;
        }
    }

    private int b(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > this.h) {
                int i = this.i;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !g()) {
            int i = this.l;
            if (i == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.j.length));
                int limit2 = byteBuffer.limit() - 2;
                while (true) {
                    if (limit2 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    } else if (Math.abs((int) byteBuffer.getShort(limit2)) > this.h) {
                        int i2 = this.i;
                        position = ((limit2 / i2) * i2) + i2;
                        break;
                    } else {
                        limit2 -= 2;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.l = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    a(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.o = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i == 1) {
                int limit3 = byteBuffer.limit();
                int b2 = b(byteBuffer);
                int position2 = b2 - byteBuffer.position();
                byte[] bArr = this.j;
                int length = bArr.length;
                int i3 = this.m;
                int i4 = length - i3;
                if (b2 >= limit3 || position2 >= i4) {
                    int min = Math.min(position2, i4);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.j, this.m, min);
                    int i5 = this.m + min;
                    this.m = i5;
                    byte[] bArr2 = this.j;
                    if (i5 == bArr2.length) {
                        if (this.o) {
                            a(bArr2, this.n);
                            this.e += (this.m - (this.n * 2)) / this.i;
                        } else {
                            this.e += (i5 - this.n) / this.i;
                        }
                        a(byteBuffer, this.j, this.m);
                        this.m = 0;
                        this.l = 2;
                    }
                    byteBuffer.limit(limit3);
                } else {
                    a(bArr, i3);
                    this.m = 0;
                    this.l = 0;
                }
            } else if (i == 2) {
                int limit4 = byteBuffer.limit();
                int b3 = b(byteBuffer);
                byteBuffer.limit(b3);
                this.e += byteBuffer.remaining() / this.i;
                a(byteBuffer, this.k, this.n);
                if (b3 < limit4) {
                    a(this.k, this.n);
                    this.l = 0;
                    byteBuffer.limit(limit4);
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.j, com.google.android.exoplayer2.audio.AudioProcessor
    public final boolean a() {
        return this.f20788d;
    }

    @Override // com.google.android.exoplayer2.audio.j
    public final AudioProcessor.a b(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f20695d == 2) {
            return this.f20788d ? aVar : AudioProcessor.a.f20692a;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.j
    protected final void h() {
        int i = this.m;
        if (i > 0) {
            a(this.j, i);
        }
        if (!this.o) {
            this.e += this.n / this.i;
        }
    }

    @Override // com.google.android.exoplayer2.audio.j
    protected final void i() {
        if (this.f20788d) {
            this.i = this.f20770b.e;
            int a2 = a(this.f) * this.i;
            if (this.j.length != a2) {
                this.j = new byte[a2];
            }
            int a3 = a(this.g) * this.i;
            this.n = a3;
            if (this.k.length != a3) {
                this.k = new byte[a3];
            }
        }
        this.l = 0;
        this.e = 0L;
        this.m = 0;
        this.o = false;
    }

    @Override // com.google.android.exoplayer2.audio.j
    protected final void j() {
        this.f20788d = false;
        this.n = 0;
        this.j = af.f;
        this.k = af.f;
    }
}
