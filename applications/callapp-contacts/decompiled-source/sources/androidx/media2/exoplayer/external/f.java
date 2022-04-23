package androidx.media2.exoplayer.external;

import android.content.Context;
import android.os.Handler;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.audio.DefaultAudioSink;
import androidx.media2.exoplayer.external.audio.u;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.drm.o;
import androidx.media2.exoplayer.external.mediacodec.b;
import androidx.media2.exoplayer.external.metadata.d;
import androidx.media2.exoplayer.external.metadata.e;
import androidx.media2.exoplayer.external.text.i;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer;
import androidx.media2.exoplayer.external.video.g;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/f.class */
public final class f implements ai {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3398a;

    /* renamed from: b  reason: collision with root package name */
    private k<o> f3399b;

    /* renamed from: c  reason: collision with root package name */
    private int f3400c;

    /* renamed from: d  reason: collision with root package name */
    private long f3401d;
    private boolean e;
    private boolean f;
    private b g;

    public f(Context context) {
        this.f3398a = context;
        this.f3400c = 0;
        this.f3401d = 5000L;
        this.g = b.f3440a;
    }

    @Deprecated
    public f(Context context, int i) {
        this(context, i, 5000L);
    }

    @Deprecated
    public f(Context context, int i, long j) {
        this(context, null, i, j);
    }

    @Deprecated
    public f(Context context, k<o> kVar) {
        this(context, kVar, 0);
    }

    @Deprecated
    public f(Context context, k<o> kVar, int i) {
        this(context, kVar, i, 5000L);
    }

    @Deprecated
    public f(Context context, k<o> kVar, int i, long j) {
        this.f3398a = context;
        this.f3400c = i;
        this.f3401d = j;
        this.f3399b = kVar;
        this.g = b.f3440a;
    }

    @Override // androidx.media2.exoplayer.external.ai
    public final ag[] a(Handler handler, g gVar, androidx.media2.exoplayer.external.audio.g gVar2, i iVar, d dVar, k<o> kVar) {
        if (kVar == null) {
            kVar = this.f3399b;
        }
        ArrayList arrayList = new ArrayList();
        Context context = this.f3398a;
        int i = this.f3400c;
        b bVar = this.g;
        boolean z = this.e;
        boolean z2 = this.f;
        long j = this.f3401d;
        arrayList.add(new MediaCodecVideoRenderer(context, bVar, j, kVar, z, z2, handler, gVar, 50));
        if (i != 0) {
            int size = arrayList.size();
            int i2 = size;
            if (i == 2) {
                i2 = size - 1;
            }
            try {
                arrayList.add(i2, (ag) Class.forName("androidx.media2.exoplayer.external.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, g.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, gVar, 50));
                j.b();
            } catch (ClassNotFoundException e) {
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating VP9 extension", e2);
            }
        }
        Context context2 = this.f3398a;
        int i3 = this.f3400c;
        AudioProcessor[] audioProcessorArr = new AudioProcessor[0];
        arrayList.add(new u(context2, this.g, kVar, this.e, this.f, handler, gVar2, new DefaultAudioSink(androidx.media2.exoplayer.external.audio.d.a(context2), audioProcessorArr)));
        if (i3 != 0) {
            int size2 = arrayList.size();
            int i4 = size2;
            if (i3 == 2) {
                i4 = size2 - 1;
            }
            try {
                try {
                    ag agVar = (ag) Class.forName("androidx.media2.exoplayer.external.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, androidx.media2.exoplayer.external.audio.g.class, AudioProcessor[].class).newInstance(handler, gVar2, audioProcessorArr);
                    int i5 = i4 + 1;
                    try {
                        arrayList.add(i4, agVar);
                        j.b();
                        i4 = i5;
                    } catch (ClassNotFoundException e3) {
                        i4 = i5;
                    }
                } catch (Exception e4) {
                    throw new RuntimeException("Error instantiating Opus extension", e4);
                }
            } catch (ClassNotFoundException e5) {
            }
            try {
                try {
                    ag agVar2 = (ag) Class.forName("androidx.media2.exoplayer.external.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, androidx.media2.exoplayer.external.audio.g.class, AudioProcessor[].class).newInstance(handler, gVar2, audioProcessorArr);
                    int i6 = i4 + 1;
                    try {
                        arrayList.add(i4, agVar2);
                        j.b();
                        i4 = i6;
                    } catch (ClassNotFoundException e6) {
                        i4 = i6;
                    }
                } catch (ClassNotFoundException e7) {
                }
                try {
                    arrayList.add(i4, (ag) Class.forName("androidx.media2.exoplayer.external.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, androidx.media2.exoplayer.external.audio.g.class, AudioProcessor[].class).newInstance(handler, gVar2, audioProcessorArr));
                    j.b();
                } catch (ClassNotFoundException e8) {
                } catch (Exception e9) {
                    throw new RuntimeException("Error instantiating FFmpeg extension", e9);
                }
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating FLAC extension", e10);
            }
        }
        arrayList.add(new androidx.media2.exoplayer.external.text.j(iVar, handler.getLooper()));
        arrayList.add(new e(dVar, handler.getLooper()));
        arrayList.add(new androidx.media2.exoplayer.external.video.a.b());
        return (ag[]) arrayList.toArray(new ag[0]);
    }
}
