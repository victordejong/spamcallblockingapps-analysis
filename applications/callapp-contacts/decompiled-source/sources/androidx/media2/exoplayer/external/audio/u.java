package androidx.media2.exoplayer.external.audio;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ad;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.audio.g;
import androidx.media2.exoplayer.external.b.d;
import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.drm.o;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.mediacodec.b;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.l;
import androidx.media2.exoplayer.external.util.m;
import androidx.media2.exoplayer.external.x;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/u.class */
public final class u extends MediaCodecRenderer implements l {

    /* renamed from: b  reason: collision with root package name */
    private final Context f2922b;

    /* renamed from: c  reason: collision with root package name */
    private final g.a f2923c;

    /* renamed from: d  reason: collision with root package name */
    private final AudioSink f2924d;
    private final long[] e;
    private int f;
    private boolean g;
    private boolean h;
    private boolean i;
    private MediaFormat j;
    private int k;
    private int l;
    private int m;
    private int n;
    private long o;
    private boolean p;
    private boolean q;
    private long r;
    private int s;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/u$a.class */
    final class a implements AudioSink.a {
        private a() {
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.a
        public final void a() {
            u.this.q = true;
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.a
        public final void a(final int i) {
            final g.a aVar = u.this.f2923c;
            if (aVar.f2885b != null) {
                aVar.f2884a.post(new Runnable(aVar, i) { // from class: androidx.media2.exoplayer.external.audio.m

                    /* renamed from: a  reason: collision with root package name */
                    private final g.a f2900a;

                    /* renamed from: b  reason: collision with root package name */
                    private final int f2901b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f2900a = aVar;
                        this.f2901b = i;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a aVar2 = this.f2900a;
                        aVar2.f2885b.b(this.f2901b);
                    }
                });
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.a
        public final void a(final int i, final long j, final long j2) {
            final g.a aVar = u.this.f2923c;
            if (aVar.f2885b != null) {
                aVar.f2884a.post(new Runnable(aVar, i, j, j2) { // from class: androidx.media2.exoplayer.external.audio.k

                    /* renamed from: a  reason: collision with root package name */
                    private final g.a f2894a;

                    /* renamed from: b  reason: collision with root package name */
                    private final int f2895b;

                    /* renamed from: c  reason: collision with root package name */
                    private final long f2896c;

                    /* renamed from: d  reason: collision with root package name */
                    private final long f2897d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f2894a = aVar;
                        this.f2895b = i;
                        this.f2896c = j;
                        this.f2897d = j2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a aVar2 = this.f2894a;
                        aVar2.f2885b.a(this.f2895b, this.f2896c, this.f2897d);
                    }
                });
            }
        }
    }

    public u(Context context, b bVar) {
        this(context, bVar, (k<o>) null, false);
    }

    public u(Context context, b bVar, Handler handler, g gVar) {
        this(context, bVar, null, false, handler, gVar);
    }

    public u(Context context, b bVar, k<o> kVar, boolean z) {
        this(context, bVar, kVar, z, null, null);
    }

    public u(Context context, b bVar, k<o> kVar, boolean z, Handler handler, g gVar) {
        this(context, bVar, kVar, z, handler, gVar, (d) null, new AudioProcessor[0]);
    }

    public u(Context context, b bVar, k<o> kVar, boolean z, Handler handler, g gVar, AudioSink audioSink) {
        this(context, bVar, kVar, z, false, handler, gVar, audioSink);
    }

    public u(Context context, b bVar, k<o> kVar, boolean z, Handler handler, g gVar, d dVar, AudioProcessor... audioProcessorArr) {
        this(context, bVar, kVar, z, handler, gVar, new DefaultAudioSink(dVar, audioProcessorArr));
    }

    public u(Context context, b bVar, k<o> kVar, boolean z, boolean z2, Handler handler, g gVar, AudioSink audioSink) {
        super(1, bVar, kVar, z, z2, 44100.0f);
        this.f2922b = context.getApplicationContext();
        this.f2924d = audioSink;
        this.r = -9223372036854775807L;
        this.e = new long[10];
        this.f2923c = new g.a(handler, gVar);
        audioSink.a(new a());
    }

    private void H() {
        long a2 = this.f2924d.a(y());
        if (a2 != Long.MIN_VALUE) {
            if (!this.q) {
                a2 = Math.max(this.o, a2);
            }
            this.o = a2;
            this.q = false;
        }
    }

    private int a(androidx.media2.exoplayer.external.mediacodec.a aVar, Format format) {
        if (!"OMX.google.raw.decoder".equals(aVar.f3436a) || ac.f4119a >= 24 || (ac.f4119a == 23 && ac.c(this.f2922b))) {
            return format.maxInputSize;
        }
        return -1;
    }

    private boolean a(int i, String str) {
        return b(i, str) != 0;
    }

    private int b(int i, String str) {
        String str2 = str;
        if ("audio/eac3-joc".equals(str)) {
            if (this.f2924d.a(i, 18)) {
                return m.h("audio/eac3-joc");
            }
            str2 = "audio/eac3";
        }
        int h = m.h(str2);
        if (this.f2924d.a(i, h)) {
            return h;
        }
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final float a(float f, Format[] formatArr) {
        int i = -1;
        for (Format format : formatArr) {
            int i2 = format.sampleRate;
            i = i;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final int a(androidx.media2.exoplayer.external.mediacodec.a aVar, Format format, Format format2) {
        if (a(aVar, format2) > this.f || format.encoderDelay != 0 || format.encoderPadding != 0 || format2.encoderDelay != 0 || format2.encoderPadding != 0) {
            return 0;
        }
        if (aVar.a(format, format2, true)) {
            return 3;
        }
        return ac.a((Object) format.sampleMimeType, (Object) format2.sampleMimeType) && format.channelCount == format2.channelCount && format.sampleRate == format2.sampleRate && format.initializationDataEquals(format2) ? 1 : 0;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final int a(b bVar, k<o> kVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        String str = format.sampleMimeType;
        if (!m.a(str)) {
            return 0;
        }
        int i = ac.f4119a >= 21 ? 32 : 0;
        boolean z = format.drmInitData == null || o.class.equals(format.exoMediaCryptoType) || (format.exoMediaCryptoType == null && a(kVar, format.drmInitData));
        int i2 = 4;
        if (z && a(format.channelCount, str) && bVar.a() != null) {
            return i | 8 | 4;
        }
        if (("audio/raw".equals(str) && !this.f2924d.a(format.channelCount, format.pcmEncoding)) || !this.f2924d.a(format.channelCount, 2)) {
            return 1;
        }
        List<androidx.media2.exoplayer.external.mediacodec.a> a2 = a(bVar, format, false);
        if (a2.isEmpty()) {
            return 1;
        }
        if (!z) {
            return 2;
        }
        androidx.media2.exoplayer.external.mediacodec.a aVar = a2.get(0);
        boolean a3 = aVar.a(format);
        int i3 = 8;
        if (a3) {
            i3 = 8;
            if (aVar.b(format)) {
                i3 = 16;
            }
        }
        if (!a3) {
            i2 = 3;
        }
        return i3 | i | i2;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final List<androidx.media2.exoplayer.external.mediacodec.a> a(b bVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        androidx.media2.exoplayer.external.mediacodec.a a2;
        if (a(format.channelCount, format.sampleMimeType) && (a2 = bVar.a()) != null) {
            return Collections.singletonList(a2);
        }
        List<androidx.media2.exoplayer.external.mediacodec.a> a3 = MediaCodecUtil.a(bVar.a(format.sampleMimeType, z, false), format);
        if ("audio/eac3-joc".equals(format.sampleMimeType)) {
            a3.addAll(bVar.a("audio/eac3", z, false));
        }
        return Collections.unmodifiableList(a3);
    }

    @Override // androidx.media2.exoplayer.external.b, androidx.media2.exoplayer.external.af.b
    public final void a(int i, Object obj) throws ExoPlaybackException {
        if (i == 2) {
            this.f2924d.a(((Float) obj).floatValue());
        } else if (i == 3) {
            this.f2924d.a((c) obj);
        } else if (i != 5) {
            super.a(i, obj);
        } else {
            this.f2924d.a((p) obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void a(long j, boolean z) throws ExoPlaybackException {
        super.a(j, z);
        this.f2924d.i();
        this.o = j;
        this.p = true;
        this.q = true;
        this.r = -9223372036854775807L;
        this.s = 0;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
        int i;
        int[] iArr;
        int i2;
        MediaFormat mediaFormat2 = this.j;
        if (mediaFormat2 != null) {
            i = b(mediaFormat2.getInteger("channel-count"), mediaFormat2.getString("mime"));
        } else {
            i = this.k;
            mediaFormat2 = mediaFormat;
        }
        int integer = mediaFormat2.getInteger("channel-count");
        int integer2 = mediaFormat2.getInteger("sample-rate");
        if (!this.h || integer != 6 || (i2 = this.l) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i3 < this.l) {
                    iArr2[i3] = i3;
                    i3++;
                }
            }
        }
        try {
            this.f2924d.a(i, integer, integer2, iArr, this.m, this.n);
        } catch (AudioSink.ConfigurationException e) {
            throw ExoPlaybackException.a(e, v());
        }
    }

    @Override // androidx.media2.exoplayer.external.util.l
    public final void a(ad adVar) {
        this.f2924d.a(adVar);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(e eVar) {
        if (this.p && !eVar.l_()) {
            if (Math.abs(eVar.f2950d - this.o) > 500000) {
                this.o = eVar.f2950d;
            }
            this.p = false;
        }
        this.r = Math.max(eVar.f2950d, this.r);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(androidx.media2.exoplayer.external.mediacodec.a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        Format[] t = t();
        int a2 = a(aVar, format);
        int i = a2;
        if (t.length != 1) {
            int length = t.length;
            int i2 = 0;
            while (true) {
                i = a2;
                if (i2 >= length) {
                    break;
                }
                Format format2 = t[i2];
                a2 = a2;
                if (aVar.a(format, format2, false)) {
                    a2 = Math.max(a2, a(aVar, format2));
                }
                i2++;
            }
        }
        this.f = i;
        this.h = ac.f4119a < 24 && "OMX.SEC.aac.dec".equals(aVar.f3436a) && "samsung".equals(ac.f4121c) && (ac.f4120b.startsWith("zeroflte") || ac.f4120b.startsWith("herolte") || ac.f4120b.startsWith("heroqlte"));
        this.i = ac.f4119a < 21 && "OMX.SEC.mp3.dec".equals(aVar.f3436a) && "samsung".equals(ac.f4121c) && (ac.f4120b.startsWith("baffin") || ac.f4120b.startsWith("grand") || ac.f4120b.startsWith("fortuna") || ac.f4120b.startsWith("gprimelte") || ac.f4120b.startsWith("j2y18lte") || ac.f4120b.startsWith("ms01"));
        boolean z = aVar.h;
        this.g = z;
        String str = z ? "audio/raw" : aVar.f3438c;
        int i3 = this.f;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.channelCount);
        mediaFormat.setInteger("sample-rate", format.sampleRate);
        androidx.media2.exoplayer.external.mediacodec.g.a(mediaFormat, format.initializationData);
        androidx.media2.exoplayer.external.mediacodec.g.a(mediaFormat, "max-input-size", i3);
        if (ac.f4119a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                if (!(ac.f4119a == 23 && ("ZTE B2017G".equals(ac.f4122d) || "AXON 7 mini".equals(ac.f4122d)))) {
                    mediaFormat.setFloat("operating-rate", f);
                }
            }
        }
        if (ac.f4119a <= 28 && "audio/ac4".equals(format.sampleMimeType)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
        if (this.g) {
            this.j = mediaFormat;
            mediaFormat.setString("mime", format.sampleMimeType);
            return;
        }
        this.j = null;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(x xVar) throws ExoPlaybackException {
        super.a(xVar);
        final Format format = xVar.f4257c;
        final g.a aVar = this.f2923c;
        if (aVar.f2885b != null) {
            aVar.f2884a.post(new Runnable(aVar, format) { // from class: androidx.media2.exoplayer.external.audio.j

                /* renamed from: a  reason: collision with root package name */
                private final g.a f2892a;

                /* renamed from: b  reason: collision with root package name */
                private final Format f2893b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f2892a = aVar;
                    this.f2893b = format;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    g.a aVar2 = this.f2892a;
                    aVar2.f2885b.b(this.f2893b);
                }
            });
        }
        this.k = "audio/raw".equals(format.sampleMimeType) ? format.pcmEncoding : 2;
        this.l = format.channelCount;
        this.m = format.encoderDelay;
        this.n = format.encoderPadding;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(final String str, final long j, final long j2) {
        final g.a aVar = this.f2923c;
        if (aVar.f2885b != null) {
            aVar.f2884a.post(new Runnable(aVar, str, j, j2) { // from class: androidx.media2.exoplayer.external.audio.i

                /* renamed from: a  reason: collision with root package name */
                private final g.a f2888a;

                /* renamed from: b  reason: collision with root package name */
                private final String f2889b;

                /* renamed from: c  reason: collision with root package name */
                private final long f2890c;

                /* renamed from: d  reason: collision with root package name */
                private final long f2891d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f2888a = aVar;
                    this.f2889b = str;
                    this.f2890c = j;
                    this.f2891d = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    g.a aVar2 = this.f2888a;
                    aVar2.f2885b.b(this.f2889b, this.f2890c, this.f2891d);
                }
            });
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void a(boolean z) throws ExoPlaybackException {
        super.a(z);
        final g.a aVar = this.f2923c;
        final d dVar = this.f3418a;
        if (aVar.f2885b != null) {
            aVar.f2884a.post(new Runnable(aVar, dVar) { // from class: androidx.media2.exoplayer.external.audio.h

                /* renamed from: a  reason: collision with root package name */
                private final g.a f2886a;

                /* renamed from: b  reason: collision with root package name */
                private final d f2887b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f2886a = aVar;
                    this.f2887b = dVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    g.a aVar2 = this.f2886a;
                    aVar2.f2885b.c(this.f2887b);
                }
            });
        }
        int i = u().tunnelingAudioSessionId;
        if (i != 0) {
            this.f2924d.a(i);
        } else {
            this.f2924d.g();
        }
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(Format[] formatArr, long j) throws ExoPlaybackException {
        super.a(formatArr, j);
        if (this.r != -9223372036854775807L) {
            int i = this.s;
            long[] jArr = this.e;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(67);
                sb.append("Too many stream changes, so dropping change at ");
                sb.append(j2);
                j.a("MediaCodecAudioRenderer", sb.toString());
            } else {
                this.s = i + 1;
            }
            this.e[this.s - 1] = this.r;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r6, long r8, android.media.MediaCodec r10, java.nio.ByteBuffer r11, int r12, int r13, long r14, boolean r16, boolean r17) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            r5 = this;
            r0 = r14
            r6 = r0
            r0 = r5
            boolean r0 = r0.i
            if (r0 == 0) goto L_0x0030
            r0 = r14
            r6 = r0
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0030
            r0 = r14
            r6 = r0
            r0 = r13
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0030
            r0 = r5
            long r0 = r0.r
            r8 = r0
            r0 = r14
            r6 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0030
            r0 = r8
            r6 = r0
        L_0x0030:
            r0 = r5
            boolean r0 = r0.g
            if (r0 == 0) goto L_0x0048
            r0 = r13
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0048
            r0 = r10
            r1 = r12
            r2 = 0
            r0.releaseOutputBuffer(r1, r2)
            r0 = 1
            return r0
        L_0x0048:
            r0 = r16
            if (r0 == 0) goto L_0x0072
            r0 = r10
            r1 = r12
            r2 = 0
            r0.releaseOutputBuffer(r1, r2)
            r0 = r5
            androidx.media2.exoplayer.external.b.d r0 = r0.f3418a
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.f
            r2 = 1
            int r1 = r1 + r2
            r0.f = r1
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioSink r0 = r0.f2924d
            r0.b()
            r0 = 1
            return r0
        L_0x0072:
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioSink r0 = r0.f2924d     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r1 = r11
            r2 = r6
            boolean r0 = r0.a(r1, r2)     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            if (r0 == 0) goto L_0x009d
            r0 = r10
            r1 = r12
            r2 = 0
            r0.releaseOutputBuffer(r1, r2)     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r0 = r5
            androidx.media2.exoplayer.external.b.d r0 = r0.f3418a     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.e     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r2 = 1
            int r1 = r1 + r2
            r0.e = r1     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r0 = 1
            return r0
        L_0x009d:
            r0 = 0
            return r0
        L_0x009f:
            r10 = move-exception
            goto L_0x00a6
        L_0x00a4:
            r10 = move-exception
        L_0x00a6:
            r0 = r10
            r1 = r5
            int r1 = r1.v()
            androidx.media2.exoplayer.external.ExoPlaybackException r0 = androidx.media2.exoplayer.external.ExoPlaybackException.a(r0, r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.u.a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean, boolean):boolean");
    }

    @Override // androidx.media2.exoplayer.external.b, androidx.media2.exoplayer.external.ag
    public final l c() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void c(long j) {
        while (this.s != 0 && j >= this.e[0]) {
            this.f2924d.b();
            int i = this.s - 1;
            this.s = i;
            long[] jArr = this.e;
            System.arraycopy(jArr, 1, jArr, 0, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.util.l
    public final ad d() {
        return this.f2924d.f();
    }

    @Override // androidx.media2.exoplayer.external.util.l
    public final long h_() {
        if (i_() == 2) {
            H();
        }
        return this.o;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void p() {
        super.p();
        this.f2924d.a();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void q() {
        H();
        this.f2924d.h();
        super.q();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void r() {
        try {
            this.r = -9223372036854775807L;
            this.s = 0;
            this.f2924d.i();
            try {
                super.r();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.r();
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void s() {
        try {
            super.s();
        } finally {
            this.f2924d.j();
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.ag
    public final boolean x() {
        return this.f2924d.e() || super.x();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.ag
    public final boolean y() {
        return super.y() && this.f2924d.d();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void z() throws ExoPlaybackException {
        try {
            this.f2924d.c();
        } catch (AudioSink.WriteException e) {
            throw ExoPlaybackException.a(e, v());
        }
    }
}
