package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* renamed from: com.google.android.exoplayer2.audio.x */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/x.class */
public final class C4847x implements AudioProcessor {

    /* renamed from: e */
    private AudioProcessor.C4804a f14733e;

    /* renamed from: f */
    private AudioProcessor.C4804a f14734f;

    /* renamed from: g */
    private AudioProcessor.C4804a f14735g;

    /* renamed from: h */
    private AudioProcessor.C4804a f14736h;

    /* renamed from: i */
    private boolean f14737i;

    /* renamed from: j */
    private C4846w f14738j;

    /* renamed from: k */
    private ByteBuffer f14739k;

    /* renamed from: l */
    private ShortBuffer f14740l;

    /* renamed from: m */
    private ByteBuffer f14741m;

    /* renamed from: n */
    private long f14742n;

    /* renamed from: o */
    private long f14743o;

    /* renamed from: p */
    private boolean f14744p;

    /* renamed from: c */
    private float f14731c = 1.0f;

    /* renamed from: d */
    private float f14732d = 1.0f;

    /* renamed from: b */
    private int f14730b = -1;

    public C4847x() {
        AudioProcessor.C4804a c4804a = AudioProcessor.C4804a.f14509a;
        this.f14733e = c4804a;
        this.f14734f = c4804a;
        this.f14735g = c4804a;
        this.f14736h = c4804a;
        ByteBuffer byteBuffer = AudioProcessor.f14508a;
        this.f14739k = byteBuffer;
        this.f14740l = byteBuffer.asShortBuffer();
        this.f14741m = byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public void mo21456a() {
        this.f14731c = 1.0f;
        this.f14732d = 1.0f;
        AudioProcessor.C4804a c4804a = AudioProcessor.C4804a.f14509a;
        this.f14733e = c4804a;
        this.f14734f = c4804a;
        this.f14735g = c4804a;
        this.f14736h = c4804a;
        ByteBuffer byteBuffer = AudioProcessor.f14508a;
        this.f14739k = byteBuffer;
        this.f14740l = byteBuffer.asShortBuffer();
        this.f14741m = byteBuffer;
        this.f14730b = -1;
        this.f14737i = false;
        this.f14738j = null;
        this.f14742n = 0L;
        this.f14743o = 0L;
        this.f14744p = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: b */
    public ByteBuffer mo21449b() {
        ByteBuffer byteBuffer = this.f14741m;
        this.f14741m = AudioProcessor.f14508a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo21448c() {
        C4846w c4846w;
        return this.f14744p && ((c4846w = this.f14738j) == null || c4846w.m21468k() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public void mo21447d(ByteBuffer byteBuffer) {
        C4846w c4846w = (C4846w) C5508e.m18911e(this.f14738j);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f14742n += remaining;
            c4846w.m21460s(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int m21468k = c4846w.m21468k();
        if (m21468k > 0) {
            if (this.f14739k.capacity() < m21468k) {
                ByteBuffer order = ByteBuffer.allocateDirect(m21468k).order(ByteOrder.nativeOrder());
                this.f14739k = order;
                this.f14740l = order.asShortBuffer();
            } else {
                this.f14739k.clear();
                this.f14740l.clear();
            }
            c4846w.m21469j(this.f14740l);
            this.f14743o += m21468k;
            this.f14739k.limit(m21468k);
            this.f14741m = this.f14739k;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: e */
    public AudioProcessor.C4804a mo21455e(AudioProcessor.C4804a c4804a) {
        if (c4804a.f14512d == 2) {
            int i = this.f14730b;
            int i2 = i;
            if (i == -1) {
                i2 = c4804a.f14510b;
            }
            this.f14733e = c4804a;
            AudioProcessor.C4804a c4804a2 = new AudioProcessor.C4804a(i2, c4804a.f14511c, 2);
            this.f14734f = c4804a2;
            this.f14737i = true;
            return c4804a2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c4804a);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: f */
    public void mo21454f() {
        C4846w c4846w = this.f14738j;
        if (c4846w != null) {
            c4846w.m21461r();
        }
        this.f14744p = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (mo21453g()) {
            AudioProcessor.C4804a c4804a = this.f14733e;
            this.f14735g = c4804a;
            AudioProcessor.C4804a c4804a2 = this.f14734f;
            this.f14736h = c4804a2;
            if (this.f14737i) {
                this.f14738j = new C4846w(c4804a.f14510b, c4804a.f14511c, this.f14731c, this.f14732d, c4804a2.f14510b);
            } else {
                C4846w c4846w = this.f14738j;
                if (c4846w != null) {
                    c4846w.m21470i();
                }
            }
        }
        this.f14741m = AudioProcessor.f14508a;
        this.f14742n = 0L;
        this.f14743o = 0L;
        this.f14744p = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: g */
    public boolean mo21453g() {
        return this.f14734f.f14510b != -1 && (Math.abs(this.f14731c - 1.0f) >= 0.01f || Math.abs(this.f14732d - 1.0f) >= 0.01f || this.f14734f.f14510b != this.f14733e.f14510b);
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: h */
    public long m21452h(long j) {
        long j2 = this.f14743o;
        if (j2 >= 1024) {
            int i = this.f14736h.f14510b;
            int i2 = this.f14735g.f14510b;
            return i == i2 ? C5515h0.m18822l0(j, this.f14742n, j2) : C5515h0.m18822l0(j, this.f14742n * i, j2 * i2);
        }
        return (long) (this.f14731c * j);
    }

    /* renamed from: i */
    public float m21451i(float f) {
        float m18821m = C5515h0.m18821m(f, 0.1f, 8.0f);
        if (this.f14732d != m18821m) {
            this.f14732d = m18821m;
            this.f14737i = true;
        }
        return m18821m;
    }

    /* renamed from: j */
    public float m21450j(float f) {
        float m18821m = C5515h0.m18821m(f, 0.1f, 8.0f);
        if (this.f14731c != m18821m) {
            this.f14731c = m18821m;
            this.f14737i = true;
        }
        return m18821m;
    }
}
