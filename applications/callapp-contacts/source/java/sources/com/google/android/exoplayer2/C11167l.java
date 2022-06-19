package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer2.audio.AbstractC10893f;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.C10892e;
import com.google.android.exoplayer2.audio.C10904n;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.mediacodec.AbstractC11188h;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.metadata.AbstractC11198d;
import com.google.android.exoplayer2.metadata.C11201e;
import com.google.android.exoplayer2.text.AbstractC11420j;
import com.google.android.exoplayer2.text.C11421k;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.video.AbstractC11663l;
import com.google.android.exoplayer2.video.C11652e;
import com.google.android.exoplayer2.video.p347a.C11642b;
import java.util.ArrayList;
/* renamed from: com.google.android.exoplayer2.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/l.class */
public final class C11167l implements AbstractC10854ah {

    /* renamed from: a */
    public int f36590a;

    /* renamed from: b */
    public boolean f36591b;

    /* renamed from: c */
    private final Context f36592c;

    /* renamed from: d */
    private long f36593d;

    /* renamed from: e */
    private AbstractC11188h f36594e;

    /* renamed from: f */
    private boolean f36595f;

    /* renamed from: g */
    private boolean f36596g;

    /* renamed from: h */
    private boolean f36597h;

    /* renamed from: i */
    private boolean f36598i;

    /* renamed from: j */
    private boolean f36599j;

    /* renamed from: k */
    private boolean f36600k;

    public C11167l(Context context) {
        this.f36592c = context;
        this.f36590a = 0;
        this.f36593d = 5000L;
        this.f36594e = AbstractC11188h.f36747a;
    }

    @Deprecated
    public C11167l(Context context, int i) {
        this(context, i, 5000L);
    }

    @Deprecated
    public C11167l(Context context, int i, long j) {
        this.f36592c = context;
        this.f36590a = i;
        this.f36593d = j;
        this.f36594e = AbstractC11188h.f36747a;
    }

    @Override // com.google.android.exoplayer2.AbstractC10854ah
    /* renamed from: a */
    public final AbstractC10851af[] mo21348a(Handler handler, AbstractC11663l abstractC11663l, AbstractC10893f abstractC10893f, AbstractC11420j abstractC11420j, AbstractC11198d abstractC11198d) {
        ArrayList arrayList = new ArrayList();
        Context context = this.f36592c;
        int i = this.f36590a;
        AbstractC11188h abstractC11188h = this.f36594e;
        boolean z = this.f36591b;
        long j = this.f36593d;
        C11652e c11652e = new C11652e(context, abstractC11188h, j, z, handler, abstractC11663l, 50);
        ((MediaCodecRenderer) c11652e).f36652b = this.f36595f;
        ((MediaCodecRenderer) c11652e).f36653c = this.f36596g;
        ((MediaCodecRenderer) c11652e).f36654d = this.f36597h;
        arrayList.add(c11652e);
        if (i != 0) {
            int size = arrayList.size();
            int i2 = size;
            if (i == 2) {
                i2 = size - 1;
            }
            try {
                try {
                    AbstractC10851af abstractC10851af = (AbstractC10851af) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, AbstractC11663l.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, abstractC11663l, 50);
                    int i3 = i2 + 1;
                    try {
                        arrayList.add(i2, abstractC10851af);
                        C11617n.m19859b();
                        i2 = i3;
                    } catch (ClassNotFoundException e) {
                        i2 = i3;
                    }
                } catch (ClassNotFoundException e2) {
                }
                try {
                    arrayList.add(i2, (AbstractC10851af) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, AbstractC11663l.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, abstractC11663l, 50));
                    C11617n.m19859b();
                } catch (ClassNotFoundException e3) {
                } catch (Exception e4) {
                    throw new RuntimeException("Error instantiating AV1 extension", e4);
                }
            } catch (Exception e5) {
                throw new RuntimeException("Error instantiating VP9 extension", e5);
            }
        }
        DefaultAudioSink defaultAudioSink = new DefaultAudioSink(C10892e.m22067a(this.f36592c), new DefaultAudioSink.C10874b(new AudioProcessor[0]), this.f36598i, this.f36599j, this.f36600k);
        Context context2 = this.f36592c;
        int i4 = this.f36590a;
        C10904n c10904n = new C10904n(context2, this.f36594e, this.f36591b, handler, abstractC10893f, defaultAudioSink);
        ((MediaCodecRenderer) c10904n).f36652b = this.f36595f;
        ((MediaCodecRenderer) c10904n).f36653c = this.f36596g;
        ((MediaCodecRenderer) c10904n).f36654d = this.f36597h;
        arrayList.add(c10904n);
        if (i4 != 0) {
            int size2 = arrayList.size();
            int i5 = size2;
            if (i4 == 2) {
                i5 = size2 - 1;
            }
            try {
                try {
                    AbstractC10851af abstractC10851af2 = (AbstractC10851af) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, AbstractC10893f.class, AudioSink.class).newInstance(handler, abstractC10893f, defaultAudioSink);
                    int i6 = i5 + 1;
                    try {
                        arrayList.add(i5, abstractC10851af2);
                        C11617n.m19859b();
                        i5 = i6;
                    } catch (ClassNotFoundException e6) {
                        i5 = i6;
                    }
                } catch (ClassNotFoundException e7) {
                }
                try {
                    try {
                        AbstractC10851af abstractC10851af3 = (AbstractC10851af) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, AbstractC10893f.class, AudioSink.class).newInstance(handler, abstractC10893f, defaultAudioSink);
                        int i7 = i5 + 1;
                        try {
                            arrayList.add(i5, abstractC10851af3);
                            C11617n.m19859b();
                            i5 = i7;
                        } catch (ClassNotFoundException e8) {
                            i5 = i7;
                        }
                    } catch (ClassNotFoundException e9) {
                    }
                    try {
                        arrayList.add(i5, (AbstractC10851af) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, AbstractC10893f.class, AudioSink.class).newInstance(handler, abstractC10893f, defaultAudioSink));
                        C11617n.m19859b();
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
        arrayList.add(new C11421k(abstractC11420j, handler.getLooper()));
        arrayList.add(new C11201e(abstractC11198d, handler.getLooper()));
        arrayList.add(new C11642b());
        return (AbstractC10851af[]) arrayList.toArray(new AbstractC10851af[0]);
    }
}
