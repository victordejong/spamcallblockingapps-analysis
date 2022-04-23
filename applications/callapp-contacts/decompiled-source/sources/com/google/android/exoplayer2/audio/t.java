package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/t.class */
public final class t implements AudioProcessor {
    boolean f;
    s g;
    long h;
    long i;
    private ByteBuffer m;
    private ShortBuffer n;
    private boolean p;

    /* renamed from: b  reason: collision with root package name */
    float f20793b = 1.0f;

    /* renamed from: c  reason: collision with root package name */
    float f20794c = 1.0f;
    private AudioProcessor.a k = AudioProcessor.a.f20692a;
    private AudioProcessor.a l = AudioProcessor.a.f20692a;

    /* renamed from: d  reason: collision with root package name */
    AudioProcessor.a f20795d = AudioProcessor.a.f20692a;
    AudioProcessor.a e = AudioProcessor.a.f20692a;
    private ByteBuffer o = f20691a;
    private int j = -1;

    public t() {
        ByteBuffer byteBuffer = f20691a;
        this.m = byteBuffer;
        this.n = byteBuffer.asShortBuffer();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f20695d == 2) {
            int i = this.j;
            int i2 = i;
            if (i == -1) {
                i2 = aVar.f20693b;
            }
            this.k = aVar;
            AudioProcessor.a aVar2 = new AudioProcessor.a(i2, aVar.f20694c, 2);
            this.l = aVar2;
            this.f = true;
            return aVar2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            s sVar = (s) a.b(this.g);
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.h += remaining;
            int remaining2 = asShortBuffer.remaining() / sVar.f20789a;
            int i = sVar.f20789a;
            sVar.f = sVar.a(sVar.f, sVar.g, remaining2);
            asShortBuffer.get(sVar.f, sVar.g * sVar.f20789a, ((i * remaining2) * 2) / 2);
            sVar.g += remaining2;
            sVar.b();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final boolean a() {
        if (this.l.f20693b != -1) {
            return Math.abs(this.f20793b - 1.0f) >= 1.0E-4f || Math.abs(this.f20794c - 1.0f) >= 1.0E-4f || this.l.f20693b != this.k.f20693b;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void b() {
        s sVar = this.g;
        if (sVar != null) {
            int i = sVar.g;
            int i2 = sVar.i + ((int) ((((i / (sVar.f20790b / sVar.f20791c)) + sVar.j) / (sVar.f20792d * sVar.f20791c)) + 0.5f));
            sVar.f = sVar.a(sVar.f, sVar.g, (sVar.e * 2) + i);
            for (int i3 = 0; i3 < sVar.e * 2 * sVar.f20789a; i3++) {
                sVar.f[(sVar.f20789a * i) + i3] = (short) 0;
            }
            sVar.g += sVar.e * 2;
            sVar.b();
            if (sVar.i > i2) {
                sVar.i = i2;
            }
            sVar.g = 0;
            sVar.m = 0;
            sVar.j = 0;
        }
        this.p = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final ByteBuffer c() {
        int a2;
        s sVar = this.g;
        if (sVar != null && (a2 = sVar.a()) > 0) {
            if (this.m.capacity() < a2) {
                ByteBuffer order = ByteBuffer.allocateDirect(a2).order(ByteOrder.nativeOrder());
                this.m = order;
                this.n = order.asShortBuffer();
            } else {
                this.m.clear();
                this.n.clear();
            }
            ShortBuffer shortBuffer = this.n;
            int min = Math.min(shortBuffer.remaining() / sVar.f20789a, sVar.i);
            shortBuffer.put(sVar.h, 0, sVar.f20789a * min);
            sVar.i -= min;
            System.arraycopy(sVar.h, min * sVar.f20789a, sVar.h, 0, sVar.i * sVar.f20789a);
            this.i += a2;
            this.m.limit(a2);
            this.o = this.m;
        }
        ByteBuffer byteBuffer = this.o;
        this.o = f20691a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final boolean d() {
        if (!this.p) {
            return false;
        }
        s sVar = this.g;
        return sVar == null || sVar.a() == 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void e() {
        if (a()) {
            AudioProcessor.a aVar = this.k;
            this.f20795d = aVar;
            this.e = this.l;
            if (this.f) {
                this.g = new s(aVar.f20693b, this.f20795d.f20694c, this.f20793b, this.f20794c, this.e.f20693b);
            } else {
                s sVar = this.g;
                if (sVar != null) {
                    sVar.g = 0;
                    sVar.i = 0;
                    sVar.j = 0;
                    sVar.k = 0;
                    sVar.l = 0;
                    sVar.m = 0;
                    sVar.n = 0;
                    sVar.o = 0;
                    sVar.p = 0;
                    sVar.q = 0;
                }
            }
        }
        this.o = f20691a;
        this.h = 0L;
        this.i = 0L;
        this.p = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void f() {
        this.f20793b = 1.0f;
        this.f20794c = 1.0f;
        this.k = AudioProcessor.a.f20692a;
        this.l = AudioProcessor.a.f20692a;
        this.f20795d = AudioProcessor.a.f20692a;
        this.e = AudioProcessor.a.f20692a;
        ByteBuffer byteBuffer = f20691a;
        this.m = byteBuffer;
        this.n = byteBuffer.asShortBuffer();
        this.o = f20691a;
        this.j = -1;
        this.f = false;
        this.g = null;
        this.h = 0L;
        this.i = 0L;
        this.p = false;
    }
}
