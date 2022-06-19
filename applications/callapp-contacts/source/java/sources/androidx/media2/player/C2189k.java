package androidx.media2.player;

import android.content.Context;
import android.os.Handler;
import androidx.media2.exoplayer.external.AbstractC1375ag;
import androidx.media2.exoplayer.external.AbstractC1377ai;
import androidx.media2.exoplayer.external.audio.AbstractC1410g;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.audio.C1427u;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.C1475o;
import androidx.media2.exoplayer.external.mediacodec.AbstractC1660b;
import androidx.media2.exoplayer.external.metadata.AbstractC1672d;
import androidx.media2.exoplayer.external.metadata.C1673e;
import androidx.media2.exoplayer.external.text.AbstractC1919i;
import androidx.media2.exoplayer.external.video.AbstractC2048g;
import androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer;
/* renamed from: androidx.media2.player.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/k.class */
public final class C2189k implements AbstractC1377ai {

    /* renamed from: a */
    private final Context f8618a;

    /* renamed from: b */
    private final AudioSink f8619b;

    /* renamed from: c */
    private final C2190l f8620c;

    public C2189k(Context context, AudioSink audioSink, C2190l c2190l) {
        this.f8618a = context;
        this.f8619b = audioSink;
        this.f8620c = c2190l;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1377ai
    /* renamed from: a */
    public final AbstractC1375ag[] mo41183a(Handler handler, AbstractC2048g abstractC2048g, AbstractC1410g abstractC1410g, AbstractC1919i abstractC1919i, AbstractC1672d abstractC1672d, AbstractC1468k<C1475o> abstractC1468k) {
        return new AbstractC1375ag[]{new MediaCodecVideoRenderer(this.f8618a, AbstractC1660b.f6658a, 5000L, abstractC1468k, false, handler, abstractC2048g, 50), new C1427u(this.f8618a, AbstractC1660b.f6658a, abstractC1468k, false, handler, abstractC1410g, this.f8619b), this.f8620c, new C1673e(abstractC1672d, handler.getLooper(), new C2184h())};
    }
}
