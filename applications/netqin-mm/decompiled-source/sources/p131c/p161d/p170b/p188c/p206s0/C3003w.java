package p131c.p161d.p170b.p188c.p206s0;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.s0.w */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/w.class */
public final class C3003w implements AudioProcessor {

    /* renamed from: e */
    public AudioProcessor.C7122a f10842e;

    /* renamed from: f */
    public AudioProcessor.C7122a f10843f;

    /* renamed from: g */
    public AudioProcessor.C7122a f10844g;

    /* renamed from: h */
    public AudioProcessor.C7122a f10845h;

    /* renamed from: i */
    public boolean f10846i;

    /* renamed from: j */
    public C3002v f10847j;

    /* renamed from: k */
    public ByteBuffer f10848k;

    /* renamed from: l */
    public ShortBuffer f10849l;

    /* renamed from: n */
    public long f10851n;

    /* renamed from: o */
    public long f10852o;

    /* renamed from: p */
    public boolean f10853p;

    /* renamed from: c */
    public float f10840c = 1.0f;

    /* renamed from: d */
    public float f10841d = 1.0f;

    /* renamed from: m */
    public ByteBuffer f10850m = AudioProcessor.f21970a;

    /* renamed from: b */
    public int f10839b = -1;

    public C3003w() {
        AudioProcessor.C7122a aVar = AudioProcessor.C7122a.f21971e;
        this.f10842e = aVar;
        this.f10843f = aVar;
        this.f10844g = aVar;
        this.f10845h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f21970a;
        this.f10848k = byteBuffer;
        this.f10849l = byteBuffer.asShortBuffer();
    }

    /* renamed from: a */
    public float m28185a(float f) {
        float a = C2885h0.m28688a(f, 0.1f, 8.0f);
        if (this.f10841d != a) {
            this.f10841d = a;
            this.f10846i = true;
        }
        return a;
    }

    /* renamed from: a */
    public long m28184a(long j) {
        long j2 = this.f10852o;
        if (j2 >= 1024) {
            int i = this.f10845h.f21972a;
            int i2 = this.f10844g.f21972a;
            return i == i2 ? C2885h0.m28639c(j, this.f10851n, j2) : C2885h0.m28639c(j, this.f10851n * i, j2 * i2);
        }
        double d = this.f10840c;
        double d2 = j;
        Double.isNaN(d);
        Double.isNaN(d2);
        return (long) (d * d2);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public AudioProcessor.C7122a mo18692a(AudioProcessor.C7122a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f21974c == 2) {
            int i = this.f10839b;
            int i2 = i;
            if (i == -1) {
                i2 = aVar.f21972a;
            }
            this.f10842e = aVar;
            AudioProcessor.C7122a aVar2 = new AudioProcessor.C7122a(i2, aVar.f21973b, 2);
            this.f10843f = aVar2;
            this.f10846i = true;
            return aVar2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public void mo18693a() {
        this.f10840c = 1.0f;
        this.f10841d = 1.0f;
        AudioProcessor.C7122a aVar = AudioProcessor.C7122a.f21971e;
        this.f10842e = aVar;
        this.f10843f = aVar;
        this.f10844g = aVar;
        this.f10845h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f21970a;
        this.f10848k = byteBuffer;
        this.f10849l = byteBuffer.asShortBuffer();
        this.f10850m = AudioProcessor.f21970a;
        this.f10839b = -1;
        this.f10846i = false;
        this.f10847j = null;
        this.f10851n = 0L;
        this.f10852o = 0L;
        this.f10853p = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public void mo18691a(ByteBuffer byteBuffer) {
        C3002v vVar = this.f10847j;
        C2877e.m28737a(vVar);
        C3002v vVar2 = vVar;
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f10851n += remaining;
            vVar2.m28194b(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int b = vVar2.m28196b();
        if (b > 0) {
            if (this.f10848k.capacity() < b) {
                ByteBuffer order = ByteBuffer.allocateDirect(b).order(ByteOrder.nativeOrder());
                this.f10848k = order;
                this.f10849l = order.asShortBuffer();
            } else {
                this.f10848k.clear();
                this.f10849l.clear();
            }
            vVar2.m28201a(this.f10849l);
            this.f10852o += b;
            this.f10848k.limit(b);
            this.f10850m = this.f10848k;
        }
    }

    /* renamed from: b */
    public float m28183b(float f) {
        float a = C2885h0.m28688a(f, 0.1f, 8.0f);
        if (this.f10840c != a) {
            this.f10840c = a;
            this.f10846i = true;
        }
        return a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo18690b() {
        return this.f10843f.f21972a != -1 && (Math.abs(this.f10840c - 1.0f) >= 0.01f || Math.abs(this.f10841d - 1.0f) >= 0.01f || this.f10843f.f21972a != this.f10842e.f21972a);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo18689c() {
        C3002v vVar;
        return this.f10853p && ((vVar = this.f10847j) == null || vVar.m28196b() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public ByteBuffer mo18688d() {
        ByteBuffer byteBuffer = this.f10850m;
        this.f10850m = AudioProcessor.f21970a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: e */
    public void mo18687e() {
        C3002v vVar = this.f10847j;
        if (vVar != null) {
            vVar.m28187d();
        }
        this.f10853p = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (mo18690b()) {
            AudioProcessor.C7122a aVar = this.f10842e;
            this.f10844g = aVar;
            AudioProcessor.C7122a aVar2 = this.f10843f;
            this.f10845h = aVar2;
            if (this.f10846i) {
                this.f10847j = new C3002v(aVar.f21972a, aVar.f21973b, this.f10840c, this.f10841d, aVar2.f21972a);
            } else {
                C3002v vVar = this.f10847j;
                if (vVar != null) {
                    vVar.m28207a();
                }
            }
        }
        this.f10850m = AudioProcessor.f21970a;
        this.f10851n = 0L;
        this.f10852o = 0L;
        this.f10853p = false;
    }
}
