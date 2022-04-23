package androidx.media2.player;

import android.content.Context;
import android.os.Handler;
import androidx.media2.exoplayer.external.ag;
import androidx.media2.exoplayer.external.ai;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.audio.u;
import androidx.media2.exoplayer.external.drm.o;
import androidx.media2.exoplayer.external.mediacodec.b;
import androidx.media2.exoplayer.external.metadata.d;
import androidx.media2.exoplayer.external.metadata.e;
import androidx.media2.exoplayer.external.text.i;
import androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer;
import androidx.media2.exoplayer.external.video.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/k.class */
public final class k implements ai {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4466a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioSink f4467b;

    /* renamed from: c  reason: collision with root package name */
    private final l f4468c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context, AudioSink audioSink, l lVar) {
        this.f4466a = context;
        this.f4467b = audioSink;
        this.f4468c = lVar;
    }

    @Override // androidx.media2.exoplayer.external.ai
    public final ag[] a(Handler handler, g gVar, androidx.media2.exoplayer.external.audio.g gVar2, i iVar, d dVar, androidx.media2.exoplayer.external.drm.k<o> kVar) {
        return new ag[]{new MediaCodecVideoRenderer(this.f4466a, b.f3440a, 5000L, kVar, false, handler, gVar, 50), new u(this.f4466a, b.f3440a, kVar, false, handler, gVar2, this.f4467b), this.f4468c, new e(dVar, handler.getLooper(), new h())};
    }
}
