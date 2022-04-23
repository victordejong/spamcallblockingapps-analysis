package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/y.class */
public final class y implements AudioProcessor {
    boolean f;
    long g;
    long h;
    private x k;
    private ByteBuffer l;
    private ShortBuffer m;
    private boolean o;

    /* renamed from: c  reason: collision with root package name */
    float f2931c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    float f2932d = 1.0f;
    private int i = -1;

    /* renamed from: b  reason: collision with root package name */
    int f2930b = -1;
    int e = -1;
    private ByteBuffer n = f2838a;
    private int j = -1;

    public y() {
        ByteBuffer byteBuffer = f2838a;
        this.l = byteBuffer;
        this.m = byteBuffer.asShortBuffer();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        x xVar = (x) a.a(this.k);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.g += remaining;
            int remaining2 = asShortBuffer.remaining() / xVar.f2926a;
            int i = xVar.f2926a;
            xVar.f = xVar.a(xVar.f, xVar.g, remaining2);
            asShortBuffer.get(xVar.f, xVar.g * xVar.f2926a, ((i * remaining2) * 2) / 2);
            xVar.g += remaining2;
            xVar.b();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int a2 = xVar.a();
        if (a2 > 0) {
            if (this.l.capacity() < a2) {
                ByteBuffer order = ByteBuffer.allocateDirect(a2).order(ByteOrder.nativeOrder());
                this.l = order;
                this.m = order.asShortBuffer();
            } else {
                this.l.clear();
                this.m.clear();
            }
            ShortBuffer shortBuffer = this.m;
            int min = Math.min(shortBuffer.remaining() / xVar.f2926a, xVar.i);
            shortBuffer.put(xVar.h, 0, xVar.f2926a * min);
            xVar.i -= min;
            System.arraycopy(xVar.h, min * xVar.f2926a, xVar.h, 0, xVar.i * xVar.f2926a);
            this.h += a2;
            this.l.limit(a2);
            this.n = this.l;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a() {
        if (this.f2930b != -1) {
            return Math.abs(this.f2931c - 1.0f) >= 0.01f || Math.abs(this.f2932d - 1.0f) >= 0.01f || this.e != this.f2930b;
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 2) {
            int i4 = this.j;
            int i5 = i4;
            if (i4 == -1) {
                i5 = i;
            }
            if (this.f2930b == i && this.i == i2 && this.e == i5) {
                return false;
            }
            this.f2930b = i;
            this.i = i2;
            this.e = i5;
            this.f = true;
            return true;
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final int b() {
        return this.i;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final int c() {
        return 2;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final int d() {
        return this.e;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void e() {
        x xVar = this.k;
        if (xVar != null) {
            int i = xVar.g;
            int i2 = xVar.i + ((int) ((((i / (xVar.f2927b / xVar.f2928c)) + xVar.j) / (xVar.f2929d * xVar.f2928c)) + 0.5f));
            xVar.f = xVar.a(xVar.f, xVar.g, (xVar.e * 2) + i);
            for (int i3 = 0; i3 < xVar.e * 2 * xVar.f2926a; i3++) {
                xVar.f[(xVar.f2926a * i) + i3] = (short) 0;
            }
            xVar.g += xVar.e * 2;
            xVar.b();
            if (xVar.i > i2) {
                xVar.i = i2;
            }
            xVar.g = 0;
            xVar.m = 0;
            xVar.j = 0;
        }
        this.o = true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final ByteBuffer f() {
        ByteBuffer byteBuffer = this.n;
        this.n = f2838a;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final boolean g() {
        if (!this.o) {
            return false;
        }
        x xVar = this.k;
        return xVar == null || xVar.a() == 0;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void h() {
        if (a()) {
            if (this.f) {
                this.k = new x(this.f2930b, this.i, this.f2931c, this.f2932d, this.e);
            } else {
                x xVar = this.k;
                if (xVar != null) {
                    xVar.g = 0;
                    xVar.i = 0;
                    xVar.j = 0;
                    xVar.k = 0;
                    xVar.l = 0;
                    xVar.m = 0;
                    xVar.n = 0;
                    xVar.o = 0;
                    xVar.p = 0;
                    xVar.q = 0;
                }
            }
        }
        this.n = f2838a;
        this.g = 0L;
        this.h = 0L;
        this.o = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void i() {
        this.f2931c = 1.0f;
        this.f2932d = 1.0f;
        this.i = -1;
        this.f2930b = -1;
        this.e = -1;
        ByteBuffer byteBuffer = f2838a;
        this.l = byteBuffer;
        this.m = byteBuffer.asShortBuffer();
        this.n = f2838a;
        this.j = -1;
        this.f = false;
        this.k = null;
        this.g = 0L;
        this.h = 0L;
        this.o = false;
    }
}
