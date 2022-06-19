package androidx.media2.exoplayer.external.video.p079a;

import androidx.media2.exoplayer.external.AbstractC1435b;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.video.a.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/a/b.class */
public final class C2040b extends AbstractC1435b {

    /* renamed from: a */
    private final C2058x f8225a = new C2058x();

    /* renamed from: b */
    private final C1442e f8226b = new C1442e(1);

    /* renamed from: c */
    private final C2018p f8227c = new C2018p();

    /* renamed from: d */
    private long f8228d;

    /* renamed from: e */
    private AbstractC2039a f8229e;

    /* renamed from: f */
    private long f8230f;

    public C2040b() {
        super(5);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1376ah
    /* renamed from: a */
    public final int mo41178a(Format format) {
        return "application/x-camera-motion".equals(format.sampleMimeType) ? 4 : 0;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b, androidx.media2.exoplayer.external.C1372af.AbstractC1374b
    /* renamed from: a */
    public final void mo41430a(int i, Object obj) throws ExoPlaybackException {
        if (i == 7) {
            this.f8229e = (AbstractC2039a) obj;
        } else {
            super.mo41430a(i, obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo41180a(long j, long j2) throws ExoPlaybackException {
        float[] fArr;
        while (!mo42926g() && this.f8230f < 100000 + j) {
            this.f8226b.mo41916a();
            if (m42933a(this.f8225a, this.f8226b, false) != -4 || this.f8226b.m42911c()) {
                return;
            }
            this.f8226b.m42903h();
            this.f8230f = this.f8226b.f5495d;
            if (this.f8229e != null) {
                ByteBuffer byteBuffer = (ByteBuffer) C1996ac.m41659a(this.f8226b.f5494c);
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    this.f8227c.m41538a(byteBuffer.array(), byteBuffer.limit());
                    this.f8227c.m41533c(byteBuffer.arrayOffset() + 4);
                    fArr = new float[3];
                    for (int i = 0; i < 3; i++) {
                        fArr[i] = Float.intBitsToFloat(this.f8227c.m41523j());
                    }
                }
                if (fArr != null) {
                    C1996ac.m41659a(this.f8229e);
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41179a(long j, boolean z) throws ExoPlaybackException {
        this.f8230f = 0L;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41176a(Format[] formatArr, long j) throws ExoPlaybackException {
        this.f8228d = j;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: r */
    public final void mo41429r() {
        this.f8230f = 0L;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: x */
    public final boolean mo41174x() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: y */
    public final boolean mo41173y() {
        return mo42926g();
    }
}
