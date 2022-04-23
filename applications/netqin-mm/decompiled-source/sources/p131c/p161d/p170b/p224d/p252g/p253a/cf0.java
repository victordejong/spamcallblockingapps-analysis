package p131c.p161d.p170b.p224d.p252g.p253a;

import android.media.MediaCodec;
import android.os.Handler;
import com.google.android.gms.internal.ads.zzpx;
/* renamed from: c.d.b.d.g.a.cf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/cf0.class */
public final class cf0 implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a */
    public final /* synthetic */ zzpx f12556a;

    public cf0(zzpx zzpxVar, MediaCodec mediaCodec) {
        this.f12556a = zzpxVar;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        zzpx zzpxVar = this.f12556a;
        if (this == zzpxVar.f28834y0) {
            zzpxVar.m11606E();
        }
    }
}
