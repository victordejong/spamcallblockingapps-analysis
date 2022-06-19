package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.audio.z */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/z.class */
final class C1434z extends AbstractC1423q {

    /* renamed from: e */
    int f5453e;

    /* renamed from: f */
    int f5454f;

    /* renamed from: g */
    long f5455g;

    /* renamed from: h */
    private boolean f5456h;

    /* renamed from: i */
    private int f5457i;

    /* renamed from: j */
    private boolean f5458j;

    /* renamed from: k */
    private int f5459k;

    /* renamed from: l */
    private byte[] f5460l = C1996ac.f8067f;

    /* renamed from: m */
    private int f5461m;

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final void mo42943a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        this.f5458j = true;
        int min = Math.min(i, this.f5459k);
        this.f5455g += min / this.f5457i;
        this.f5459k -= min;
        byteBuffer.position(position + min);
        if (this.f5459k > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.f5461m + i2) - this.f5460l.length;
        ByteBuffer a = m42981a(length);
        int m41674a = C1996ac.m41674a(length, 0, this.f5461m);
        a.put(this.f5460l, 0, m41674a);
        int m41674a2 = C1996ac.m41674a(length - m41674a, 0, i2);
        byteBuffer.limit(byteBuffer.position() + m41674a2);
        a.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - m41674a2;
        int i4 = this.f5461m - m41674a;
        this.f5461m = i4;
        byte[] bArr = this.f5460l;
        System.arraycopy(bArr, m41674a, bArr, 0, i4);
        byteBuffer.get(this.f5460l, this.f5461m, i3);
        this.f5461m += i3;
        a.flip();
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42945a() {
        return this.f5456h;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public final boolean mo42944a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        int i4;
        if (i3 == 2) {
            if (this.f5461m > 0) {
                this.f5455g += i4 / this.f5457i;
            }
            int m41637b = C1996ac.m41637b(2, i2);
            this.f5457i = m41637b;
            int i5 = this.f5454f;
            this.f5460l = new byte[i5 * m41637b];
            this.f5461m = 0;
            int i6 = this.f5453e;
            this.f5459k = m41637b * i6;
            boolean z = this.f5456h;
            this.f5456h = (i6 == 0 && i5 == 0) ? false : true;
            this.f5458j = false;
            m42980b(i, i2, i3);
            return z != this.f5456h;
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: f */
    public final ByteBuffer mo42942f() {
        int i;
        if (super.mo42941g() && (i = this.f5461m) > 0) {
            m42981a(i).put(this.f5460l, 0, this.f5461m).flip();
            this.f5461m = 0;
        }
        return super.mo42942f();
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: g */
    public final boolean mo42941g() {
        return super.mo42941g() && this.f5461m == 0;
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q
    /* renamed from: l */
    protected final void mo42940l() {
        if (this.f5458j) {
            this.f5459k = 0;
        }
        this.f5461m = 0;
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1423q
    /* renamed from: m */
    protected final void mo42939m() {
        this.f5460l = C1996ac.f8067f;
    }
}
