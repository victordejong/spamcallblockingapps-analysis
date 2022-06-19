package p1727n3.p1874y.p1876b.p1877a.p1905y0;

import android.media.MediaCodec;
import android.os.Handler;
/* renamed from: n3.y.b.a.y0.d$c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/d$c.class */
public final class d$c implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a */
    public final /* synthetic */ d f77250a;

    public d$c(d dVar, MediaCodec mediaCodec, d$a d_a) {
        this.f77250a = dVar;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        d dVar = this.f77250a;
        if (this != dVar.h1) {
            return;
        }
        dVar.B0(j);
    }
}
