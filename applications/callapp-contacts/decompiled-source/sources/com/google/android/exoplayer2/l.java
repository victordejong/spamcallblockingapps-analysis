package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.audio.f;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.h;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.text.j;
import com.google.android.exoplayer2.text.k;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.video.a.b;
import com.google.android.exoplayer2.video.e;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/l.class */
public final class l implements ah {

    /* renamed from: a  reason: collision with root package name */
    public int f21382a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f21383b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f21384c;

    /* renamed from: d  reason: collision with root package name */
    private long f21385d;
    private h e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;

    public l(Context context) {
        this.f21384c = context;
        this.f21382a = 0;
        this.f21385d = 5000L;
        this.e = h.f21432a;
    }

    @Deprecated
    public l(Context context, int i) {
        this(context, i, 5000L);
    }

    @Deprecated
    public l(Context context, int i, long j) {
        this.f21384c = context;
        this.f21382a = i;
        this.f21385d = j;
        this.e = h.f21432a;
    }

    @Override // com.google.android.exoplayer2.ah
    public final af[] a(Handler handler, com.google.android.exoplayer2.video.l lVar, f fVar, j jVar, d dVar) {
        ArrayList arrayList = new ArrayList();
        Context context = this.f21384c;
        int i = this.f21382a;
        h hVar = this.e;
        boolean z = this.f21383b;
        long j = this.f21385d;
        e eVar = new e(context, hVar, j, z, handler, lVar, 50);
        ((MediaCodecRenderer) eVar).f21389b = this.f;
        ((MediaCodecRenderer) eVar).f21390c = this.g;
        ((MediaCodecRenderer) eVar).f21391d = this.h;
        arrayList.add(eVar);
        if (i != 0) {
            int size = arrayList.size();
            int i2 = size;
            if (i == 2) {
                i2 = size - 1;
            }
            try {
                try {
                    af afVar = (af) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.l.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, lVar, 50);
                    int i3 = i2 + 1;
                    try {
                        arrayList.add(i2, afVar);
                        n.b();
                        i2 = i3;
                    } catch (ClassNotFoundException e) {
                        i2 = i3;
                    }
                } catch (ClassNotFoundException e2) {
                }
                try {
                    arrayList.add(i2, (af) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.l.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, lVar, 50));
                    n.b();
                } catch (ClassNotFoundException e3) {
                } catch (Exception e4) {
                    throw new RuntimeException("Error instantiating AV1 extension", e4);
                }
            } catch (Exception e5) {
                throw new RuntimeException("Error instantiating VP9 extension", e5);
            }
        }
        DefaultAudioSink defaultAudioSink = new DefaultAudioSink(com.google.android.exoplayer2.audio.e.a(this.f21384c), new DefaultAudioSink.b(new AudioProcessor[0]), this.i, this.j, this.k);
        Context context2 = this.f21384c;
        int i4 = this.f21382a;
        com.google.android.exoplayer2.audio.n nVar = new com.google.android.exoplayer2.audio.n(context2, this.e, this.f21383b, handler, fVar, defaultAudioSink);
        ((MediaCodecRenderer) nVar).f21389b = this.f;
        ((MediaCodecRenderer) nVar).f21390c = this.g;
        ((MediaCodecRenderer) nVar).f21391d = this.h;
        arrayList.add(nVar);
        if (i4 != 0) {
            int size2 = arrayList.size();
            int i5 = size2;
            if (i4 == 2) {
                i5 = size2 - 1;
            }
            try {
                try {
                    af afVar2 = (af) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, f.class, AudioSink.class).newInstance(handler, fVar, defaultAudioSink);
                    int i6 = i5 + 1;
                    try {
                        arrayList.add(i5, afVar2);
                        n.b();
                        i5 = i6;
                    } catch (ClassNotFoundException e6) {
                        i5 = i6;
                    }
                } catch (ClassNotFoundException e7) {
                }
                try {
                    try {
                        af afVar3 = (af) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, f.class, AudioSink.class).newInstance(handler, fVar, defaultAudioSink);
                        int i7 = i5 + 1;
                        try {
                            arrayList.add(i5, afVar3);
                            n.b();
                            i5 = i7;
                        } catch (ClassNotFoundException e8) {
                            i5 = i7;
                        }
                    } catch (ClassNotFoundException e9) {
                    }
                    try {
                        arrayList.add(i5, (af) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, f.class, AudioSink.class).newInstance(handler, fVar, defaultAudioSink));
                        n.b();
                    } catch (ClassNotFoundException e10) {
                    } catch (Exception e11) {
                        throw new RuntimeException("Error instantiating FFmpeg extension", e11);
                    }
                } catch (Exception e12) {
                    throw new RuntimeException("Error instantiating FLAC extension", e12);
                }
            } catch (Exception e13) {
                throw new RuntimeException("Error instantiating Opus extension", e13);
            }
        }
        arrayList.add(new k(jVar, handler.getLooper()));
        arrayList.add(new com.google.android.exoplayer2.metadata.e(dVar, handler.getLooper()));
        arrayList.add(new b());
        return (af[]) arrayList.toArray(new af[0]);
    }
}
