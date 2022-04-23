package p131c.p161d.p170b.p188c.p206s0;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.s0.x */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/x.class */
public final class C3004x extends AbstractC2993o {

    /* renamed from: i */
    public int f10854i;

    /* renamed from: j */
    public int f10855j;

    /* renamed from: k */
    public boolean f10856k;

    /* renamed from: l */
    public int f10857l;

    /* renamed from: m */
    public byte[] f10858m = C2885h0.f10482f;

    /* renamed from: n */
    public int f10859n;

    /* renamed from: o */
    public long f10860o;

    /* renamed from: a */
    public void m28182a(int i, int i2) {
        this.f10854i = i;
        this.f10855j = i2;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public void mo18691a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i != 0) {
            int min = Math.min(i, this.f10857l);
            this.f10860o += min / this.f10779b.f21975d;
            this.f10857l -= min;
            byteBuffer.position(position + min);
            if (this.f10857l <= 0) {
                int i2 = i - min;
                int length = (this.f10859n + i2) - this.f10858m.length;
                ByteBuffer a = m28246a(length);
                int a2 = C2885h0.m28685a(length, 0, this.f10859n);
                a.put(this.f10858m, 0, a2);
                int a3 = C2885h0.m28685a(length - a2, 0, i2);
                byteBuffer.limit(byteBuffer.position() + a3);
                a.put(byteBuffer);
                byteBuffer.limit(limit);
                int i3 = i2 - a3;
                int i4 = this.f10859n - a2;
                this.f10859n = i4;
                byte[] bArr = this.f10858m;
                System.arraycopy(bArr, a2, bArr, 0, i4);
                byteBuffer.get(this.f10858m, this.f10859n, i3);
                this.f10859n += i3;
                a.flip();
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: b */
    public AudioProcessor.C7122a mo28181b(AudioProcessor.C7122a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f21974c == 2) {
            this.f10856k = true;
            AudioProcessor.C7122a aVar2 = aVar;
            if (this.f10854i == 0) {
                aVar2 = this.f10855j != 0 ? aVar : AudioProcessor.C7122a.f21971e;
            }
            return aVar2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo18689c() {
        return super.mo18689c() && this.f10859n == 0;
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o, com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public ByteBuffer mo18688d() {
        int i;
        if (super.mo18689c() && (i = this.f10859n) > 0) {
            m28246a(i).put(this.f10858m, 0, this.f10859n).flip();
            this.f10859n = 0;
        }
        return super.mo18688d();
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: g */
    public void mo28180g() {
        if (this.f10856k) {
            this.f10856k = false;
            int i = this.f10855j;
            int i2 = this.f10779b.f21975d;
            this.f10858m = new byte[i * i2];
            this.f10857l = this.f10854i * i2;
        } else {
            this.f10857l = 0;
        }
        this.f10859n = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: h */
    public void mo28179h() {
        int i;
        if (this.f10856k) {
            if (this.f10859n > 0) {
                this.f10860o += i / this.f10779b.f21975d;
            }
            this.f10859n = 0;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: i */
    public void mo28178i() {
        this.f10858m = C2885h0.f10482f;
    }

    /* renamed from: j */
    public long m28177j() {
        return this.f10860o;
    }

    /* renamed from: k */
    public void m28176k() {
        this.f10860o = 0L;
    }
}
