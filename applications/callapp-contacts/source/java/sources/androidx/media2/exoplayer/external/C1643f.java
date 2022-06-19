package androidx.media2.exoplayer.external;

import android.content.Context;
import android.os.Handler;
import androidx.media2.exoplayer.external.audio.AbstractC1410g;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.audio.C1404d;
import androidx.media2.exoplayer.external.audio.C1427u;
import androidx.media2.exoplayer.external.audio.DefaultAudioSink;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.C1475o;
import androidx.media2.exoplayer.external.mediacodec.AbstractC1660b;
import androidx.media2.exoplayer.external.metadata.AbstractC1672d;
import androidx.media2.exoplayer.external.metadata.C1673e;
import androidx.media2.exoplayer.external.text.AbstractC1919i;
import androidx.media2.exoplayer.external.text.C1920j;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.video.AbstractC2048g;
import androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer;
import androidx.media2.exoplayer.external.video.p079a.C2040b;
import java.util.ArrayList;
/* renamed from: androidx.media2.exoplayer.external.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/f.class */
public final class C1643f implements AbstractC1377ai {

    /* renamed from: a */
    private final Context f6512a;

    /* renamed from: b */
    private AbstractC1468k<C1475o> f6513b;

    /* renamed from: c */
    private int f6514c;

    /* renamed from: d */
    private long f6515d;

    /* renamed from: e */
    private boolean f6516e;

    /* renamed from: f */
    private boolean f6517f;

    /* renamed from: g */
    private AbstractC1660b f6518g;

    public C1643f(Context context) {
        this.f6512a = context;
        this.f6514c = 0;
        this.f6515d = 5000L;
        this.f6518g = AbstractC1660b.f6658a;
    }

    @Deprecated
    public C1643f(Context context, int i) {
        this(context, i, 5000L);
    }

    @Deprecated
    public C1643f(Context context, int i, long j) {
        this(context, null, i, j);
    }

    @Deprecated
    public C1643f(Context context, AbstractC1468k<C1475o> abstractC1468k) {
        this(context, abstractC1468k, 0);
    }

    @Deprecated
    public C1643f(Context context, AbstractC1468k<C1475o> abstractC1468k, int i) {
        this(context, abstractC1468k, i, 5000L);
    }

    @Deprecated
    public C1643f(Context context, AbstractC1468k<C1475o> abstractC1468k, int i, long j) {
        this.f6512a = context;
        this.f6514c = i;
        this.f6515d = j;
        this.f6513b = abstractC1468k;
        this.f6518g = AbstractC1660b.f6658a;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1377ai
    /* renamed from: a */
    public final AbstractC1375ag[] mo41183a(Handler handler, AbstractC2048g abstractC2048g, AbstractC1410g abstractC1410g, AbstractC1919i abstractC1919i, AbstractC1672d abstractC1672d, AbstractC1468k<C1475o> abstractC1468k) {
        if (abstractC1468k == null) {
            abstractC1468k = this.f6513b;
        }
        ArrayList arrayList = new ArrayList();
        Context context = this.f6512a;
        int i = this.f6514c;
        AbstractC1660b abstractC1660b = this.f6518g;
        boolean z = this.f6516e;
        boolean z2 = this.f6517f;
        long j = this.f6515d;
        arrayList.add(new MediaCodecVideoRenderer(context, abstractC1660b, j, abstractC1468k, z, z2, handler, abstractC2048g, 50));
        if (i != 0) {
            int size = arrayList.size();
            int i2 = size;
            if (i == 2) {
                i2 = size - 1;
            }
            try {
                arrayList.add(i2, (AbstractC1375ag) Class.forName("androidx.media2.exoplayer.external.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, AbstractC2048g.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, abstractC2048g, 50));
                C2009j.m41581b();
            } catch (ClassNotFoundException e) {
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating VP9 extension", e2);
            }
        }
        Context context2 = this.f6512a;
        int i3 = this.f6514c;
        AudioProcessor[] audioProcessorArr = new AudioProcessor[0];
        arrayList.add(new C1427u(context2, this.f6518g, abstractC1468k, this.f6516e, this.f6517f, handler, abstractC1410g, new DefaultAudioSink(C1404d.m43017a(context2), audioProcessorArr)));
        if (i3 != 0) {
            int size2 = arrayList.size();
            int i4 = size2;
            if (i3 == 2) {
                i4 = size2 - 1;
            }
            try {
                try {
                    AbstractC1375ag abstractC1375ag = (AbstractC1375ag) Class.forName("androidx.media2.exoplayer.external.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, AbstractC1410g.class, AudioProcessor[].class).newInstance(handler, abstractC1410g, audioProcessorArr);
                    int i5 = i4 + 1;
                    try {
                        arrayList.add(i4, abstractC1375ag);
                        C2009j.m41581b();
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
                    AbstractC1375ag abstractC1375ag2 = (AbstractC1375ag) Class.forName("androidx.media2.exoplayer.external.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, AbstractC1410g.class, AudioProcessor[].class).newInstance(handler, abstractC1410g, audioProcessorArr);
                    int i6 = i4 + 1;
                    try {
                        arrayList.add(i4, abstractC1375ag2);
                        C2009j.m41581b();
                        i4 = i6;
                    } catch (ClassNotFoundException e6) {
                        i4 = i6;
                    }
                } catch (ClassNotFoundException e7) {
                }
                try {
                    arrayList.add(i4, (AbstractC1375ag) Class.forName("androidx.media2.exoplayer.external.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, AbstractC1410g.class, AudioProcessor[].class).newInstance(handler, abstractC1410g, audioProcessorArr));
                    C2009j.m41581b();
                } catch (ClassNotFoundException e8) {
                } catch (Exception e9) {
                    throw new RuntimeException("Error instantiating FFmpeg extension", e9);
                }
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating FLAC extension", e10);
            }
        }
        arrayList.add(new C1920j(abstractC1919i, handler.getLooper()));
        arrayList.add(new C1673e(abstractC1672d, handler.getLooper()));
        arrayList.add(new C2040b());
        return (AbstractC1375ag[]) arrayList.toArray(new AbstractC1375ag[0]);
    }
}
