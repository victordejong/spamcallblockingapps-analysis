package androidx.media2.exoplayer.external.source.a;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.h;
import androidx.media2.exoplayer.external.util.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/a/d.class */
public abstract class d extends b {
    public final long i;

    public d(f fVar, h hVar, Format format, int i, Object obj, long j, long j2, long j3) {
        super(fVar, hVar, 1, format, i, obj, j, j2);
        a.a(format);
        this.i = j3;
    }

    public final long f() {
        long j = this.i;
        if (j != -1) {
            return j + 1;
        }
        return -1L;
    }
}
