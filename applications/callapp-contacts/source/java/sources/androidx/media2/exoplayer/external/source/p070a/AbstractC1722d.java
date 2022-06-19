package androidx.media2.exoplayer.external.source.p070a;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.source.a.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/a/d.class */
public abstract class AbstractC1722d extends AbstractC1720b {

    /* renamed from: i */
    public final long f6764i;

    public AbstractC1722d(AbstractC1968f abstractC1968f, C1971h c1971h, Format format, int i, Object obj, long j, long j2, long j3) {
        super(abstractC1968f, c1971h, 1, format, i, obj, j, j2);
        C1993a.m41690a(format);
        this.f6764i = j3;
    }

    /* renamed from: f */
    public final long m42374f() {
        long j = this.f6764i;
        if (j != -1) {
            return j + 1;
        }
        return -1L;
    }
}
