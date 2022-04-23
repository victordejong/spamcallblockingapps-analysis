package androidx.media2.exoplayer.external.video.a;

import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.x;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/a/b.class */
public final class b extends androidx.media2.exoplayer.external.b {

    /* renamed from: a  reason: collision with root package name */
    private final x f4213a = new x();

    /* renamed from: b  reason: collision with root package name */
    private final e f4214b = new e(1);

    /* renamed from: c  reason: collision with root package name */
    private final p f4215c = new p();

    /* renamed from: d  reason: collision with root package name */
    private long f4216d;
    private a e;
    private long f;

    public b() {
        super(5);
    }

    @Override // androidx.media2.exoplayer.external.ah
    public final int a(Format format) {
        return "application/x-camera-motion".equals(format.sampleMimeType) ? 4 : 0;
    }

    @Override // androidx.media2.exoplayer.external.b, androidx.media2.exoplayer.external.af.b
    public final void a(int i, Object obj) throws ExoPlaybackException {
        if (i == 7) {
            this.e = (a) obj;
        } else {
            super.a(i, obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void a(long j, long j2) throws ExoPlaybackException {
        float[] fArr;
        while (!g() && this.f < 100000 + j) {
            this.f4214b.a();
            if (a(this.f4213a, this.f4214b, false) == -4 && !this.f4214b.c()) {
                this.f4214b.h();
                this.f = this.f4214b.f2950d;
                if (this.e != null) {
                    ByteBuffer byteBuffer = (ByteBuffer) ac.a(this.f4214b.f2949c);
                    if (byteBuffer.remaining() != 16) {
                        fArr = null;
                    } else {
                        this.f4215c.a(byteBuffer.array(), byteBuffer.limit());
                        this.f4215c.c(byteBuffer.arrayOffset() + 4);
                        fArr = new float[3];
                        for (int i = 0; i < 3; i++) {
                            fArr[i] = Float.intBitsToFloat(this.f4215c.j());
                        }
                    }
                    if (fArr != null) {
                        ac.a(this.e);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(long j, boolean z) throws ExoPlaybackException {
        this.f = 0L;
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(Format[] formatArr, long j) throws ExoPlaybackException {
        this.f4216d = j;
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void r() {
        this.f = 0L;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean x() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean y() {
        return g();
    }
}
