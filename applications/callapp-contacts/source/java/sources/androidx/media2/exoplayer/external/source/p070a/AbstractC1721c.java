package androidx.media2.exoplayer.external.source.p070a;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.source.a.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/a/c.class */
public abstract class AbstractC1721c extends AbstractC1720b {

    /* renamed from: i */
    public byte[] f6762i;

    /* renamed from: j */
    private volatile boolean f6763j;

    public AbstractC1721c(AbstractC1968f abstractC1968f, C1971h c1971h, int i, Format format, int i2, Object obj, byte[] bArr) {
        super(abstractC1968f, c1971h, i, format, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.f6762i = bArr;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1959d
    /* renamed from: a */
    public final void mo41700a() {
        this.f6763j = true;
    }

    /* renamed from: a */
    protected abstract void mo42233a(byte[] bArr, int i) throws IOException;

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1959d
    /* renamed from: b */
    public final void mo41699b() throws IOException, InterruptedException {
        try {
            this.f6761h.mo41199a(this.f6754a);
            int i = 0;
            int i2 = 0;
            while (i != -1 && !this.f6763j) {
                byte[] bArr = this.f6762i;
                if (bArr == null) {
                    this.f6762i = new byte[16384];
                } else if (bArr.length < i2 + 16384) {
                    this.f6762i = Arrays.copyOf(bArr, bArr.length + 16384);
                }
                int mo41197a = this.f6761h.mo41197a(this.f6762i, i2, 16384);
                i = mo41197a;
                if (mo41197a != -1) {
                    i2 += mo41197a;
                    i = mo41197a;
                }
            }
            if (!this.f6763j) {
                mo42233a(this.f6762i, i2);
            }
        } finally {
            C1996ac.m41662a((AbstractC1968f) this.f6761h);
        }
    }
}
