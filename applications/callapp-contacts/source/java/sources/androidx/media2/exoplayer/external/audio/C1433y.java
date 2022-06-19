package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.C1993a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* renamed from: androidx.media2.exoplayer.external.audio.y */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/y.class */
public final class C1433y implements AudioProcessor {

    /* renamed from: f */
    boolean f5443f;

    /* renamed from: g */
    long f5444g;

    /* renamed from: h */
    long f5445h;

    /* renamed from: k */
    private C1432x f5448k;

    /* renamed from: l */
    private ByteBuffer f5449l;

    /* renamed from: m */
    private ShortBuffer f5450m;

    /* renamed from: o */
    private boolean f5452o;

    /* renamed from: c */
    float f5440c = 1.0f;

    /* renamed from: d */
    float f5441d = 1.0f;

    /* renamed from: i */
    private int f5446i = -1;

    /* renamed from: b */
    int f5439b = -1;

    /* renamed from: e */
    int f5442e = -1;

    /* renamed from: n */
    private ByteBuffer f5451n = f5221a;

    /* renamed from: j */
    private int f5447j = -1;

    public C1433y() {
        ByteBuffer byteBuffer = f5221a;
        this.f5449l = byteBuffer;
        this.f5450m = byteBuffer.asShortBuffer();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final void mo42943a(ByteBuffer byteBuffer) {
        C1432x c1432x = (C1432x) C1993a.m41690a(this.f5448k);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f5444g += remaining;
            int remaining2 = asShortBuffer.remaining() / c1432x.f5417a;
            int i = c1432x.f5417a;
            c1432x.f5422f = c1432x.m42956a(c1432x.f5422f, c1432x.f5423g, remaining2);
            asShortBuffer.get(c1432x.f5422f, c1432x.f5423g * c1432x.f5417a, ((i * remaining2) * 2) / 2);
            c1432x.f5423g += remaining2;
            c1432x.m42954b();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int m42958a = c1432x.m42958a();
        if (m42958a > 0) {
            if (this.f5449l.capacity() < m42958a) {
                ByteBuffer order = ByteBuffer.allocateDirect(m42958a).order(ByteOrder.nativeOrder());
                this.f5449l = order;
                this.f5450m = order.asShortBuffer();
            } else {
                this.f5449l.clear();
                this.f5450m.clear();
            }
            ShortBuffer shortBuffer = this.f5450m;
            int min = Math.min(shortBuffer.remaining() / c1432x.f5417a, c1432x.f5425i);
            shortBuffer.put(c1432x.f5424h, 0, c1432x.f5417a * min);
            c1432x.f5425i -= min;
            System.arraycopy(c1432x.f5424h, min * c1432x.f5417a, c1432x.f5424h, 0, c1432x.f5425i * c1432x.f5417a);
            this.f5445h += m42958a;
            this.f5449l.limit(m42958a);
            this.f5451n = this.f5449l;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42945a() {
        if (this.f5439b != -1) {
            return Math.abs(this.f5440c - 1.0f) >= 0.01f || Math.abs(this.f5441d - 1.0f) >= 0.01f || this.f5442e != this.f5439b;
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42944a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 2) {
            int i4 = this.f5447j;
            int i5 = i4;
            if (i4 == -1) {
                i5 = i;
            }
            if (this.f5439b == i && this.f5446i == i2 && this.f5442e == i5) {
                return false;
            }
            this.f5439b = i;
            this.f5446i = i2;
            this.f5442e = i5;
            this.f5443f = true;
            return true;
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public final int mo42951b() {
        return this.f5446i;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: c */
    public final int mo42950c() {
        return 2;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: d */
    public final int mo42949d() {
        return this.f5442e;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: e */
    public final void mo42948e() {
        C1432x c1432x = this.f5448k;
        if (c1432x != null) {
            int i = c1432x.f5423g;
            int i2 = c1432x.f5425i + ((int) ((((i / (c1432x.f5418b / c1432x.f5419c)) + c1432x.f5426j) / (c1432x.f5420d * c1432x.f5419c)) + 0.5f));
            c1432x.f5422f = c1432x.m42956a(c1432x.f5422f, c1432x.f5423g, (c1432x.f5421e * 2) + i);
            for (int i3 = 0; i3 < c1432x.f5421e * 2 * c1432x.f5417a; i3++) {
                c1432x.f5422f[(c1432x.f5417a * i) + i3] = (short) 0;
            }
            c1432x.f5423g += c1432x.f5421e * 2;
            c1432x.m42954b();
            if (c1432x.f5425i > i2) {
                c1432x.f5425i = i2;
            }
            c1432x.f5423g = 0;
            c1432x.f5429m = 0;
            c1432x.f5426j = 0;
        }
        this.f5452o = true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: f */
    public final ByteBuffer mo42942f() {
        ByteBuffer byteBuffer = this.f5451n;
        this.f5451n = f5221a;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: g */
    public final boolean mo42941g() {
        if (this.f5452o) {
            C1432x c1432x = this.f5448k;
            return c1432x == null || c1432x.m42958a() == 0;
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: h */
    public final void mo42947h() {
        if (mo42945a()) {
            if (this.f5443f) {
                this.f5448k = new C1432x(this.f5439b, this.f5446i, this.f5440c, this.f5441d, this.f5442e);
            } else {
                C1432x c1432x = this.f5448k;
                if (c1432x != null) {
                    c1432x.f5423g = 0;
                    c1432x.f5425i = 0;
                    c1432x.f5426j = 0;
                    c1432x.f5427k = 0;
                    c1432x.f5428l = 0;
                    c1432x.f5429m = 0;
                    c1432x.f5430n = 0;
                    c1432x.f5431o = 0;
                    c1432x.f5432p = 0;
                    c1432x.f5433q = 0;
                }
            }
        }
        this.f5451n = f5221a;
        this.f5444g = 0L;
        this.f5445h = 0L;
        this.f5452o = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: i */
    public final void mo42946i() {
        this.f5440c = 1.0f;
        this.f5441d = 1.0f;
        this.f5446i = -1;
        this.f5439b = -1;
        this.f5442e = -1;
        ByteBuffer byteBuffer = f5221a;
        this.f5449l = byteBuffer;
        this.f5450m = byteBuffer.asShortBuffer();
        this.f5451n = f5221a;
        this.f5447j = -1;
        this.f5443f = false;
        this.f5448k = null;
        this.f5444g = 0L;
        this.f5445h = 0L;
        this.f5452o = false;
    }
}
