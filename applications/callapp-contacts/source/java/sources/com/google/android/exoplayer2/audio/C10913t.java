package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.C11593a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* renamed from: com.google.android.exoplayer2.audio.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/t.class */
public final class C10913t implements AudioProcessor {

    /* renamed from: f */
    boolean f35276f;

    /* renamed from: g */
    C10912s f35277g;

    /* renamed from: h */
    long f35278h;

    /* renamed from: i */
    long f35279i;

    /* renamed from: m */
    private ByteBuffer f35283m;

    /* renamed from: n */
    private ShortBuffer f35284n;

    /* renamed from: p */
    private boolean f35286p;

    /* renamed from: b */
    float f35272b = 1.0f;

    /* renamed from: c */
    float f35273c = 1.0f;

    /* renamed from: k */
    private AudioProcessor.C10870a f35281k = AudioProcessor.C10870a.f35032a;

    /* renamed from: l */
    private AudioProcessor.C10870a f35282l = AudioProcessor.C10870a.f35032a;

    /* renamed from: d */
    AudioProcessor.C10870a f35274d = AudioProcessor.C10870a.f35032a;

    /* renamed from: e */
    AudioProcessor.C10870a f35275e = AudioProcessor.C10870a.f35032a;

    /* renamed from: o */
    private ByteBuffer f35285o = f35031a;

    /* renamed from: j */
    private int f35280j = -1;

    public C10913t() {
        ByteBuffer byteBuffer = f35031a;
        this.f35283m = byteBuffer;
        this.f35284n = byteBuffer.asShortBuffer();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final AudioProcessor.C10870a mo21968a(AudioProcessor.C10870a c10870a) throws AudioProcessor.UnhandledAudioFormatException {
        if (c10870a.f35035d == 2) {
            int i = this.f35280j;
            int i2 = i;
            if (i == -1) {
                i2 = c10870a.f35033b;
            }
            this.f35281k = c10870a;
            AudioProcessor.C10870a c10870a2 = new AudioProcessor.C10870a(i2, c10870a.f35034c, 2);
            this.f35282l = c10870a2;
            this.f35276f = true;
            return c10870a2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(c10870a);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final void mo21964a(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        C10912s c10912s = (C10912s) C11593a.m20020b(this.f35277g);
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.f35278h += remaining;
        int remaining2 = asShortBuffer.remaining() / c10912s.f35250a;
        int i = c10912s.f35250a;
        c10912s.f35255f = c10912s.m21974a(c10912s.f35255f, c10912s.f35256g, remaining2);
        asShortBuffer.get(c10912s.f35255f, c10912s.f35256g * c10912s.f35250a, ((i * remaining2) * 2) / 2);
        c10912s.f35256g += remaining2;
        c10912s.m21972b();
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo21969a() {
        if (this.f35282l.f35033b != -1) {
            return Math.abs(this.f35272b - 1.0f) >= 1.0E-4f || Math.abs(this.f35273c - 1.0f) >= 1.0E-4f || this.f35282l.f35033b != this.f35281k.f35033b;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: b */
    public final void mo21967b() {
        C10912s c10912s = this.f35277g;
        if (c10912s != null) {
            int i = c10912s.f35256g;
            int i2 = c10912s.f35258i + ((int) ((((i / (c10912s.f35251b / c10912s.f35252c)) + c10912s.f35259j) / (c10912s.f35253d * c10912s.f35252c)) + 0.5f));
            c10912s.f35255f = c10912s.m21974a(c10912s.f35255f, c10912s.f35256g, (c10912s.f35254e * 2) + i);
            for (int i3 = 0; i3 < c10912s.f35254e * 2 * c10912s.f35250a; i3++) {
                c10912s.f35255f[(c10912s.f35250a * i) + i3] = (short) 0;
            }
            c10912s.f35256g += c10912s.f35254e * 2;
            c10912s.m21972b();
            if (c10912s.f35258i > i2) {
                c10912s.f35258i = i2;
            }
            c10912s.f35256g = 0;
            c10912s.f35262m = 0;
            c10912s.f35259j = 0;
        }
        this.f35286p = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public final ByteBuffer mo21962c() {
        int m21976a;
        C10912s c10912s = this.f35277g;
        if (c10912s != null && (m21976a = c10912s.m21976a()) > 0) {
            if (this.f35283m.capacity() < m21976a) {
                ByteBuffer order = ByteBuffer.allocateDirect(m21976a).order(ByteOrder.nativeOrder());
                this.f35283m = order;
                this.f35284n = order.asShortBuffer();
            } else {
                this.f35283m.clear();
                this.f35284n.clear();
            }
            ShortBuffer shortBuffer = this.f35284n;
            int min = Math.min(shortBuffer.remaining() / c10912s.f35250a, c10912s.f35258i);
            shortBuffer.put(c10912s.f35257h, 0, c10912s.f35250a * min);
            c10912s.f35258i -= min;
            System.arraycopy(c10912s.f35257h, min * c10912s.f35250a, c10912s.f35257h, 0, c10912s.f35258i * c10912s.f35250a);
            this.f35279i += m21976a;
            this.f35283m.limit(m21976a);
            this.f35285o = this.f35283m;
        }
        ByteBuffer byteBuffer = this.f35285o;
        this.f35285o = f35031a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public final boolean mo21961d() {
        if (this.f35286p) {
            C10912s c10912s = this.f35277g;
            return c10912s == null || c10912s.m21976a() == 0;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: e */
    public final void mo21966e() {
        if (mo21969a()) {
            AudioProcessor.C10870a c10870a = this.f35281k;
            this.f35274d = c10870a;
            this.f35275e = this.f35282l;
            if (this.f35276f) {
                this.f35277g = new C10912s(c10870a.f35033b, this.f35274d.f35034c, this.f35272b, this.f35273c, this.f35275e.f35033b);
            } else {
                C10912s c10912s = this.f35277g;
                if (c10912s != null) {
                    c10912s.f35256g = 0;
                    c10912s.f35258i = 0;
                    c10912s.f35259j = 0;
                    c10912s.f35260k = 0;
                    c10912s.f35261l = 0;
                    c10912s.f35262m = 0;
                    c10912s.f35263n = 0;
                    c10912s.f35264o = 0;
                    c10912s.f35265p = 0;
                    c10912s.f35266q = 0;
                }
            }
        }
        this.f35285o = f35031a;
        this.f35278h = 0L;
        this.f35279i = 0L;
        this.f35286p = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: f */
    public final void mo21965f() {
        this.f35272b = 1.0f;
        this.f35273c = 1.0f;
        this.f35281k = AudioProcessor.C10870a.f35032a;
        this.f35282l = AudioProcessor.C10870a.f35032a;
        this.f35274d = AudioProcessor.C10870a.f35032a;
        this.f35275e = AudioProcessor.C10870a.f35032a;
        ByteBuffer byteBuffer = f35031a;
        this.f35283m = byteBuffer;
        this.f35284n = byteBuffer.asShortBuffer();
        this.f35285o = f35031a;
        this.f35280j = -1;
        this.f35276f = false;
        this.f35277g = null;
        this.f35278h = 0L;
        this.f35279i = 0L;
        this.f35286p = false;
    }
}
