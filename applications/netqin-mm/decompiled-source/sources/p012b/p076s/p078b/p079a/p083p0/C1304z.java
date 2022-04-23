package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
import java.nio.ByteBuffer;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.p0.z */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/z.class */
public final class C1304z extends AbstractC1293q {

    /* renamed from: h */
    public boolean f5217h;

    /* renamed from: i */
    public int f5218i;

    /* renamed from: j */
    public int f5219j;

    /* renamed from: k */
    public int f5220k;

    /* renamed from: l */
    public boolean f5221l;

    /* renamed from: m */
    public int f5222m;

    /* renamed from: n */
    public byte[] f5223n = C1167d0.f4693f;

    /* renamed from: o */
    public int f5224o;

    /* renamed from: p */
    public long f5225p;

    /* renamed from: a */
    public void m33755a(int i, int i2) {
        this.f5218i = i;
        this.f5219j = i2;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public void mo33753a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i != 0) {
            this.f5221l = true;
            int min = Math.min(i, this.f5222m);
            this.f5225p += min / this.f5220k;
            this.f5222m -= min;
            byteBuffer.position(position + min);
            if (this.f5222m <= 0) {
                int i2 = i - min;
                int length = (this.f5224o + i2) - this.f5223n.length;
                ByteBuffer a = m33847a(length);
                int a2 = C1167d0.m34493a(length, 0, this.f5224o);
                a.put(this.f5223n, 0, a2);
                int a3 = C1167d0.m34493a(length - a2, 0, i2);
                byteBuffer.limit(byteBuffer.position() + a3);
                a.put(byteBuffer);
                byteBuffer.limit(limit);
                int i3 = i2 - a3;
                int i4 = this.f5224o - a2;
                this.f5224o = i4;
                byte[] bArr = this.f5223n;
                System.arraycopy(bArr, a2, bArr, 0, i4);
                byteBuffer.get(this.f5223n, this.f5224o, i3);
                this.f5224o += i3;
                a.flip();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public boolean mo33754a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        int i4;
        if (i3 == 2) {
            if (this.f5224o > 0) {
                this.f5225p += i4 / this.f5220k;
            }
            int b = C1167d0.m34457b(2, i2);
            this.f5220k = b;
            int i5 = this.f5219j;
            this.f5223n = new byte[i5 * b];
            boolean z = false;
            this.f5224o = 0;
            int i6 = this.f5218i;
            this.f5222m = b * i6;
            boolean z2 = this.f5217h;
            this.f5217h = (i6 == 0 && i5 == 0) ? false : true;
            this.f5221l = false;
            m33846b(i, i2, i3);
            if (z2 != this.f5217h) {
                z = true;
            }
            return z;
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo33752b() {
        return this.f5217h;
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo33751c() {
        return super.mo33751c() && this.f5224o == 0;
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: d */
    public ByteBuffer mo33750d() {
        int i;
        if (super.mo33751c() && (i = this.f5224o) > 0) {
            m33847a(i).put(this.f5223n, 0, this.f5224o).flip();
            this.f5224o = 0;
        }
        return super.mo33750d();
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q
    /* renamed from: j */
    public void mo33749j() {
        if (this.f5221l) {
            this.f5222m = 0;
        }
        this.f5224o = 0;
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q
    /* renamed from: l */
    public void mo33748l() {
        this.f5223n = C1167d0.f4693f;
    }

    /* renamed from: m */
    public long m33747m() {
        return this.f5225p;
    }

    /* renamed from: n */
    public void m33746n() {
        this.f5225p = 0L;
    }
}
