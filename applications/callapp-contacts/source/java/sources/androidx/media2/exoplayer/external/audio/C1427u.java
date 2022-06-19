package androidx.media2.exoplayer.external.audio;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import androidx.media2.exoplayer.external.C1368ad;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.AbstractC1410g;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.C1475o;
import androidx.media2.exoplayer.external.mediacodec.AbstractC1660b;
import androidx.media2.exoplayer.external.mediacodec.C1659a;
import androidx.media2.exoplayer.external.mediacodec.C1666g;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.p063b.C1441d;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.util.AbstractC2011l;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2012m;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.audio.u */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/u.class */
public final class C1427u extends MediaCodecRenderer implements AbstractC2011l {

    /* renamed from: b */
    private final Context f5389b;

    /* renamed from: c */
    private final AbstractC1410g.C1411a f5390c;

    /* renamed from: d */
    private final AudioSink f5391d;

    /* renamed from: e */
    private final long[] f5392e;

    /* renamed from: f */
    private int f5393f;

    /* renamed from: g */
    private boolean f5394g;

    /* renamed from: h */
    private boolean f5395h;

    /* renamed from: i */
    private boolean f5396i;

    /* renamed from: j */
    private MediaFormat f5397j;

    /* renamed from: k */
    private int f5398k;

    /* renamed from: l */
    private int f5399l;

    /* renamed from: m */
    private int f5400m;

    /* renamed from: n */
    private int f5401n;

    /* renamed from: o */
    private long f5402o;

    /* renamed from: p */
    private boolean f5403p;

    /* renamed from: q */
    private boolean f5404q;

    /* renamed from: r */
    private long f5405r;

    /* renamed from: s */
    private int f5406s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.audio.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/u$a.class */
    public final class C1429a implements AudioSink.AbstractC1387a {
        private C1429a() {
            C1427u.this = r4;
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.AbstractC1387a
        /* renamed from: a */
        public final void mo42966a() {
            C1427u.this.f5404q = true;
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.AbstractC1387a
        /* renamed from: a */
        public final void mo42965a(int i) {
            AbstractC1410g.C1411a c1411a = C1427u.this.f5390c;
            if (c1411a.f5321b != null) {
                c1411a.f5320a.post(new Runnable(c1411a, i) { // from class: androidx.media2.exoplayer.external.audio.m

                    /* renamed from: a */
                    private final AbstractC1410g.C1411a f5336a;

                    /* renamed from: b */
                    private final int f5337b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f5336a = c1411a;
                        this.f5337b = i;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1410g.C1411a c1411a2 = this.f5336a;
                        c1411a2.f5321b.mo41231b(this.f5337b);
                    }
                });
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.AbstractC1387a
        /* renamed from: a */
        public final void mo42964a(int i, long j, long j2) {
            AbstractC1410g.C1411a c1411a = C1427u.this.f5390c;
            if (c1411a.f5321b != null) {
                c1411a.f5320a.post(new Runnable(c1411a, i, j, j2) { // from class: androidx.media2.exoplayer.external.audio.k

                    /* renamed from: a */
                    private final AbstractC1410g.C1411a f5330a;

                    /* renamed from: b */
                    private final int f5331b;

                    /* renamed from: c */
                    private final long f5332c;

                    /* renamed from: d */
                    private final long f5333d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f5330a = c1411a;
                        this.f5331b = i;
                        this.f5332c = j;
                        this.f5333d = j2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1410g.C1411a c1411a2 = this.f5330a;
                        c1411a2.f5321b.mo43006a(this.f5331b, this.f5332c, this.f5333d);
                    }
                });
            }
        }
    }

    public C1427u(Context context, AbstractC1660b abstractC1660b) {
        this(context, abstractC1660b, (AbstractC1468k<C1475o>) null, false);
    }

    public C1427u(Context context, AbstractC1660b abstractC1660b, Handler handler, AbstractC1410g abstractC1410g) {
        this(context, abstractC1660b, null, false, handler, abstractC1410g);
    }

    public C1427u(Context context, AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, boolean z) {
        this(context, abstractC1660b, abstractC1468k, z, null, null);
    }

    public C1427u(Context context, AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, boolean z, Handler handler, AbstractC1410g abstractC1410g) {
        this(context, abstractC1660b, abstractC1468k, z, handler, abstractC1410g, (C1404d) null, new AudioProcessor[0]);
    }

    public C1427u(Context context, AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, boolean z, Handler handler, AbstractC1410g abstractC1410g, AudioSink audioSink) {
        this(context, abstractC1660b, abstractC1468k, z, false, handler, abstractC1410g, audioSink);
    }

    public C1427u(Context context, AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, boolean z, Handler handler, AbstractC1410g abstractC1410g, C1404d c1404d, AudioProcessor... audioProcessorArr) {
        this(context, abstractC1660b, abstractC1468k, z, handler, abstractC1410g, new DefaultAudioSink(c1404d, audioProcessorArr));
    }

    public C1427u(Context context, AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, boolean z, boolean z2, Handler handler, AbstractC1410g abstractC1410g, AudioSink audioSink) {
        super(1, abstractC1660b, abstractC1468k, z, z2, 44100.0f);
        this.f5389b = context.getApplicationContext();
        this.f5391d = audioSink;
        this.f5405r = -9223372036854775807L;
        this.f5392e = new long[10];
        this.f5390c = new AbstractC1410g.C1411a(handler, abstractC1410g);
        audioSink.mo43069a(new C1429a());
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: H */
    private void m42972H() {
        char mo43064a = this.f5391d.mo43064a(mo41173y());
        if (mo43064a != Long.MIN_VALUE) {
            if (!this.f5404q) {
                mo43064a = Math.max(this.f5402o, (long) mo43064a);
            }
            this.f5402o = mo43064a;
            this.f5404q = false;
        }
    }

    /* renamed from: a */
    private int m42969a(C1659a c1659a, Format format) {
        if (!"OMX.google.raw.decoder".equals(c1659a.f6646a) || C1996ac.f8062a >= 24 || (C1996ac.f8062a == 23 && C1996ac.m41624c(this.f5389b))) {
            return format.maxInputSize;
        }
        return -1;
    }

    /* renamed from: a */
    private boolean m42971a(int i, String str) {
        return m42968b(i, str) != 0;
    }

    /* renamed from: b */
    private int m42968b(int i, String str) {
        String str2 = str;
        if ("audio/eac3-joc".equals(str)) {
            if (this.f5391d.mo43075a(i, 18)) {
                return C2012m.m41567h("audio/eac3-joc");
            }
            str2 = "audio/eac3";
        }
        int m41567h = C2012m.m41567h(str2);
        if (this.f5391d.mo43075a(i, m41567h)) {
            return m41567h;
        }
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final float mo41463a(float f, Format[] formatArr) {
        int i;
        int length = formatArr.length;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = formatArr[i2].sampleRate;
            int i5 = i;
            if (i4 != -1) {
                i5 = Math.max(i, i4);
            }
            i2++;
            i3 = i5;
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final int mo41453a(C1659a c1659a, Format format, Format format2) {
        if (m42969a(c1659a, format2) <= this.f5393f && format.encoderDelay == 0 && format.encoderPadding == 0 && format2.encoderDelay == 0 && format2.encoderPadding == 0) {
            if (c1659a.m42423a(format, format2, true)) {
                return 3;
            }
            return C1996ac.m41658a((Object) format.sampleMimeType, (Object) format2.sampleMimeType) && format.channelCount == format2.channelCount && format.sampleRate == format2.sampleRate && format.initializationDataEquals(format2) ? 1 : 0;
        }
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final int mo41449a(AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, Format format) throws MediaCodecUtil.DecoderQueryException {
        String str = format.sampleMimeType;
        if (!C2012m.m41574a(str)) {
            return 0;
        }
        int i = C1996ac.f8062a >= 21 ? 32 : 0;
        boolean z = format.drmInitData == null || C1475o.class.equals(format.exoMediaCryptoType) || (format.exoMediaCryptoType == null && m42934a(abstractC1468k, format.drmInitData));
        int i2 = 4;
        if (z && m42971a(format.channelCount, str) && abstractC1660b.mo42415a() != null) {
            return i | 8 | 4;
        }
        if (("audio/raw".equals(str) && !this.f5391d.mo43075a(format.channelCount, format.pcmEncoding)) || !this.f5391d.mo43075a(format.channelCount, 2)) {
            return 1;
        }
        List<C1659a> mo41451a = mo41451a(abstractC1660b, format, false);
        if (mo41451a.isEmpty()) {
            return 1;
        }
        if (!z) {
            return 2;
        }
        C1659a c1659a = mo41451a.get(0);
        boolean m42424a = c1659a.m42424a(format);
        int i3 = 8;
        if (m42424a) {
            i3 = 8;
            if (c1659a.m42418b(format)) {
                i3 = 16;
            }
        }
        if (!m42424a) {
            i2 = 3;
        }
        return i3 | i | i2;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final List<C1659a> mo41451a(AbstractC1660b abstractC1660b, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        C1659a mo42415a;
        if (!m42971a(format.channelCount, format.sampleMimeType) || (mo42415a = abstractC1660b.mo42415a()) == null) {
            List<C1659a> m42440a = MediaCodecUtil.m42440a(abstractC1660b.mo42414a(format.sampleMimeType, z, false), format);
            if ("audio/eac3-joc".equals(format.sampleMimeType)) {
                m42440a.addAll(abstractC1660b.mo42414a("audio/eac3", z, false));
            }
            return Collections.unmodifiableList(m42440a);
        }
        return Collections.singletonList(mo42415a);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b, androidx.media2.exoplayer.external.C1372af.AbstractC1374b
    /* renamed from: a */
    public final void mo41430a(int i, Object obj) throws ExoPlaybackException {
        if (i == 2) {
            this.f5391d.mo43077a(((Float) obj).floatValue());
        } else if (i == 3) {
            this.f5391d.mo43067a((C1401c) obj);
        } else if (i != 5) {
            super.mo41430a(i, obj);
        } else {
            this.f5391d.mo43066a((C1422p) obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41179a(long j, boolean z) throws ExoPlaybackException {
        super.mo41179a(j, z);
        this.f5391d.mo43050i();
        this.f5402o = j;
        this.f5403p = true;
        this.f5404q = true;
        this.f5405r = -9223372036854775807L;
        this.f5406s = 0;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41458a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
        int i;
        int[] iArr;
        int i2;
        MediaFormat mediaFormat2 = this.f5397j;
        if (mediaFormat2 != null) {
            i = m42968b(mediaFormat2.getInteger("channel-count"), mediaFormat2.getString("mime"));
        } else {
            i = this.f5398k;
            mediaFormat2 = mediaFormat;
        }
        int integer = mediaFormat2.getInteger("channel-count");
        int integer2 = mediaFormat2.getInteger("sample-rate");
        if (!this.f5395h || integer != 6 || (i2 = this.f5399l) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i3 < this.f5399l) {
                    iArr2[i3] = i3;
                    i3++;
                }
            }
        }
        try {
            this.f5391d.mo43074a(i, integer, integer2, iArr, this.f5400m, this.f5401n);
        } catch (AudioSink.ConfigurationException e) {
            throw ExoPlaybackException.m43169a(e, m42915v());
        }
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: a */
    public final void mo41498a(C1368ad c1368ad) {
        this.f5391d.mo43071a(c1368ad);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41457a(C1442e c1442e) {
        if (this.f5403p && !c1442e.m42908l_()) {
            if (Math.abs(c1442e.f5495d - this.f5402o) > 500000) {
                this.f5402o = c1442e.f5495d;
            }
            this.f5403p = false;
        }
        this.f5405r = Math.max(c1442e.f5495d, this.f5405r);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41455a(C1659a c1659a, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        Format[] t = m42917t();
        int m42969a = m42969a(c1659a, format);
        int i = m42969a;
        if (t.length != 1) {
            int length = t.length;
            int i2 = 0;
            while (true) {
                i = m42969a;
                if (i2 >= length) {
                    break;
                }
                Format format2 = t[i2];
                int i3 = m42969a;
                if (c1659a.m42423a(format, format2, false)) {
                    i3 = Math.max(m42969a, m42969a(c1659a, format2));
                }
                i2++;
                m42969a = i3;
            }
        }
        this.f5393f = i;
        this.f5395h = C1996ac.f8062a < 24 && "OMX.SEC.aac.dec".equals(c1659a.f6646a) && "samsung".equals(C1996ac.f8064c) && (C1996ac.f8063b.startsWith("zeroflte") || C1996ac.f8063b.startsWith("herolte") || C1996ac.f8063b.startsWith("heroqlte"));
        this.f5396i = C1996ac.f8062a < 21 && "OMX.SEC.mp3.dec".equals(c1659a.f6646a) && "samsung".equals(C1996ac.f8064c) && (C1996ac.f8063b.startsWith("baffin") || C1996ac.f8063b.startsWith("grand") || C1996ac.f8063b.startsWith("fortuna") || C1996ac.f8063b.startsWith("gprimelte") || C1996ac.f8063b.startsWith("j2y18lte") || C1996ac.f8063b.startsWith("ms01"));
        boolean z = c1659a.f6653h;
        this.f5394g = z;
        String str = z ? "audio/raw" : c1659a.f6648c;
        int i4 = this.f5393f;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.channelCount);
        mediaFormat.setInteger("sample-rate", format.sampleRate);
        C1666g.m42409a(mediaFormat, format.initializationData);
        C1666g.m42410a(mediaFormat, "max-input-size", i4);
        if (C1996ac.f8062a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                if (!(C1996ac.f8062a == 23 && ("ZTE B2017G".equals(C1996ac.f8065d) || "AXON 7 mini".equals(C1996ac.f8065d)))) {
                    mediaFormat.setFloat("operating-rate", f);
                }
            }
        }
        if (C1996ac.f8062a <= 28 && "audio/ac4".equals(format.sampleMimeType)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
        if (!this.f5394g) {
            this.f5397j = null;
            return;
        }
        this.f5397j = mediaFormat;
        mediaFormat.setString("mime", format.sampleMimeType);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41448a(C2058x c2058x) throws ExoPlaybackException {
        super.mo41448a(c2058x);
        Format format = c2058x.f8282c;
        AbstractC1410g.C1411a c1411a = this.f5390c;
        if (c1411a.f5321b != null) {
            c1411a.f5320a.post(new Runnable(c1411a, format) { // from class: androidx.media2.exoplayer.external.audio.j

                /* renamed from: a */
                private final AbstractC1410g.C1411a f5328a;

                /* renamed from: b */
                private final Format f5329b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5328a = c1411a;
                    this.f5329b = format;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC1410g.C1411a c1411a2 = this.f5328a;
                    c1411a2.f5321b.mo43005b(this.f5329b);
                }
            });
        }
        this.f5398k = "audio/raw".equals(format.sampleMimeType) ? format.pcmEncoding : 2;
        this.f5399l = format.channelCount;
        this.f5400m = format.encoderDelay;
        this.f5401n = format.encoderPadding;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41446a(String str, long j, long j2) {
        AbstractC1410g.C1411a c1411a = this.f5390c;
        if (c1411a.f5321b != null) {
            c1411a.f5320a.post(new Runnable(c1411a, str, j, j2) { // from class: androidx.media2.exoplayer.external.audio.i

                /* renamed from: a */
                private final AbstractC1410g.C1411a f5324a;

                /* renamed from: b */
                private final String f5325b;

                /* renamed from: c */
                private final long f5326c;

                /* renamed from: d */
                private final long f5327d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5324a = c1411a;
                    this.f5325b = str;
                    this.f5326c = j;
                    this.f5327d = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC1410g.C1411a c1411a2 = this.f5324a;
                    c1411a2.f5321b.mo43004b(this.f5325b, this.f5326c, this.f5327d);
                }
            });
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41444a(boolean z) throws ExoPlaybackException {
        super.mo41444a(z);
        AbstractC1410g.C1411a c1411a = this.f5390c;
        C1441d c1441d = this.f6591a;
        if (c1411a.f5321b != null) {
            c1411a.f5320a.post(new Runnable(c1411a, c1441d) { // from class: androidx.media2.exoplayer.external.audio.h

                /* renamed from: a */
                private final AbstractC1410g.C1411a f5322a;

                /* renamed from: b */
                private final C1441d f5323b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5322a = c1411a;
                    this.f5323b = c1441d;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC1410g.C1411a c1411a2 = this.f5322a;
                    c1411a2.f5321b.mo43003c(this.f5323b);
                }
            });
        }
        int i = m42916u().tunnelingAudioSessionId;
        if (i != 0) {
            this.f5391d.mo43076a(i);
        } else {
            this.f5391d.mo43052g();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41176a(Format[] formatArr, long j) throws ExoPlaybackException {
        super.mo41176a(formatArr, j);
        if (this.f5405r != -9223372036854775807L) {
            int i = this.f5406s;
            long[] jArr = this.f5392e;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(67);
                sb.append("Too many stream changes, so dropping change at ");
                sb.append(j2);
                C2009j.m41584a("MediaCodecAudioRenderer", sb.toString());
            } else {
                this.f5406s = i + 1;
            }
            this.f5392e[this.f5406s - 1] = this.f5405r;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final boolean mo41462a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2) throws ExoPlaybackException {
        char c = j3;
        if (this.f5396i) {
            c = j3;
            if (j3 == 0) {
                c = j3;
                if ((i2 & 4) != 0) {
                    ?? r0 = this.f5405r;
                    c = j3;
                    if (r0 != -9223372036854775807L) {
                        c = r0;
                    }
                }
            }
        }
        if (this.f5394g && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f6591a.f5489f++;
            this.f5391d.mo43063b();
            return true;
        } else {
            try {
                if (!this.f5391d.mo43065a(byteBuffer, c)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.f6591a.f5488e++;
                return true;
            } catch (AudioSink.InitializationException | AudioSink.WriteException e) {
                throw ExoPlaybackException.m43169a(e, m42915v());
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b, androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: c */
    public final AbstractC2011l mo42929c() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: c */
    public final void mo41438c(long j) {
        while (this.f5406s != 0 && j >= this.f5392e[0]) {
            this.f5391d.mo43063b();
            int i = this.f5406s - 1;
            this.f5406s = i;
            long[] jArr = this.f5392e;
            System.arraycopy(jArr, 1, jArr, 0, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: d */
    public final C1368ad mo41496d() {
        return this.f5391d.mo43053f();
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: h_ */
    public final long mo41495h_() {
        if (mo42923i_() == 2) {
            m42972H();
        }
        return this.f5402o;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: p */
    public final void mo41435p() {
        super.mo41435p();
        this.f5391d.mo43078a();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: q */
    public final void mo41434q() {
        m42972H();
        this.f5391d.mo43051h();
        super.mo41434q();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: r */
    public final void mo41429r() {
        try {
            this.f5405r = -9223372036854775807L;
            this.f5406s = 0;
            this.f5391d.mo43050i();
            try {
                super.mo41429r();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo41429r();
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: s */
    public final void mo41433s() {
        try {
            super.mo41433s();
        } finally {
            this.f5391d.mo43049j();
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: x */
    public final boolean mo41174x() {
        return this.f5391d.mo43055e() || super.mo41174x();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: y */
    public final boolean mo41173y() {
        return super.mo41173y() && this.f5391d.mo43057d();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: z */
    public final void mo42454z() throws ExoPlaybackException {
        try {
            this.f5391d.mo43059c();
        } catch (AudioSink.WriteException e) {
            throw ExoPlaybackException.m43169a(e, m42915v());
        }
    }
}
