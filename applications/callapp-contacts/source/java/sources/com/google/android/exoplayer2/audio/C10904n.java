package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.AbstractC10851af;
import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AbstractC10893f;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.decoder.C10935e;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.mediacodec.AbstractC11184f;
import com.google.android.exoplayer2.mediacodec.AbstractC11188h;
import com.google.android.exoplayer2.mediacodec.C11187g;
import com.google.android.exoplayer2.mediacodec.C11189i;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.AbstractC11619p;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11620q;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.audio.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/n.class */
public final class C10904n extends MediaCodecRenderer implements AbstractC11619p {

    /* renamed from: a */
    boolean f35211a;

    /* renamed from: f */
    private final Context f35212f;

    /* renamed from: g */
    private final AbstractC10893f.C10894a f35213g;

    /* renamed from: h */
    private final AudioSink f35214h;

    /* renamed from: i */
    private int f35215i;

    /* renamed from: j */
    private boolean f35216j;

    /* renamed from: k */
    private Format f35217k;

    /* renamed from: l */
    private long f35218l;

    /* renamed from: m */
    private boolean f35219m;

    /* renamed from: n */
    private boolean f35220n;

    /* renamed from: o */
    private boolean f35221o;

    /* renamed from: p */
    private AbstractC10851af.AbstractC10852a f35222p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.audio.n$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/n$a.class */
    public final class C10906a implements AudioSink.AbstractC10871a {
        private C10906a() {
            C10904n.this = r4;
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC10871a
        /* renamed from: a */
        public final void mo22004a() {
            C10904n.this.f35211a = true;
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC10871a
        /* renamed from: a */
        public final void mo22003a(int i, long j, long j2) {
            C10904n.this.f35213g.m22057a(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC10871a
        /* renamed from: a */
        public final void mo22002a(long j) {
            C10904n.this.f35213g.m22056a(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC10871a
        /* renamed from: a */
        public final void mo22001a(Exception exc) {
            C10904n.this.f35213g.m22053a(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC10871a
        /* renamed from: a */
        public final void mo22000a(boolean z) {
            C10904n.this.f35213g.m22050a(z);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC10871a
        /* renamed from: b */
        public final void mo21999b() {
            if (C10904n.this.f35222p != null) {
                C10904n.this.f35222p.mo21040a();
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC10871a
        /* renamed from: b */
        public final void mo21998b(long j) {
            if (C10904n.this.f35222p != null) {
                C10904n.this.f35222p.mo21039a(j);
            }
        }
    }

    public C10904n(Context context, AbstractC11184f.AbstractC11185a abstractC11185a, AbstractC11188h abstractC11188h, boolean z, Handler handler, AbstractC10893f abstractC10893f, AudioSink audioSink) {
        super(1, abstractC11185a, abstractC11188h, z, 44100.0f);
        this.f35212f = context.getApplicationContext();
        this.f35214h = audioSink;
        this.f35213g = new AbstractC10893f.C10894a(handler, abstractC10893f);
        audioSink.mo22148a(new C10906a());
    }

    public C10904n(Context context, AbstractC11188h abstractC11188h) {
        this(context, abstractC11188h, null, null);
    }

    public C10904n(Context context, AbstractC11188h abstractC11188h, Handler handler, AbstractC10893f abstractC10893f) {
        this(context, abstractC11188h, handler, abstractC10893f, (C10892e) null, new AudioProcessor[0]);
    }

    public C10904n(Context context, AbstractC11188h abstractC11188h, Handler handler, AbstractC10893f abstractC10893f, AudioSink audioSink) {
        this(context, AbstractC11184f.AbstractC11185a.f36735a, abstractC11188h, false, handler, abstractC10893f, audioSink);
    }

    public C10904n(Context context, AbstractC11188h abstractC11188h, Handler handler, AbstractC10893f abstractC10893f, C10892e c10892e, AudioProcessor... audioProcessorArr) {
        this(context, abstractC11188h, handler, abstractC10893f, new DefaultAudioSink(c10892e, audioProcessorArr));
    }

    public C10904n(Context context, AbstractC11188h abstractC11188h, boolean z, Handler handler, AbstractC10893f abstractC10893f, AudioSink audioSink) {
        this(context, AbstractC11184f.AbstractC11185a.f36735a, abstractC11188h, z, handler, abstractC10893f, audioSink);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: N */
    private void m22008N() {
        char mo22142a = this.f35214h.mo22142a(mo19746z());
        if (mo22142a != Long.MIN_VALUE) {
            if (!this.f35211a) {
                mo22142a = Math.max(this.f35218l, (long) mo22142a);
            }
            this.f35218l = mo22142a;
            this.f35211a = false;
        }
    }

    /* renamed from: a */
    private int m22006a(C11187g c11187g, Format format) {
        if (!"OMX.google.raw.decoder".equals(c11187g.f36736a) || C11599af.f38648a >= 24 || (C11599af.f38648a == 23 && C11599af.m19932c(this.f35212f))) {
            return format.maxInputSize;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: A */
    public final void mo19731A() {
        super.mo19731A();
        this.f35214h.mo22141b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: B */
    public final void mo21347B() throws ExoPlaybackException {
        try {
            this.f35214h.mo22132c();
        } catch (AudioSink.WriteException e) {
            throw m21806a(e, e.f35042c, e.f35041b);
        }
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: B_ */
    public final long mo19763B_() {
        if (mo21813C_() == 2) {
            m22008N();
        }
        return this.f35218l;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final float mo19720a(float f, Format[] formatArr) {
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

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final int mo19706a(AbstractC11188h abstractC11188h, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!C11620q.m19853a(format.sampleMimeType)) {
            return 0;
        }
        int i = C11599af.f38648a >= 21 ? 32 : 0;
        boolean z = format.exoMediaCryptoType != null;
        boolean c = m21314c(format);
        if (c && this.f35214h.mo22154a(format) && (!z || MediaCodecUtil.m21309a() != null)) {
            return i | 12;
        }
        if (("audio/raw".equals(format.sampleMimeType) && !this.f35214h.mo22154a(format)) || !this.f35214h.mo22154a(C11599af.m19949b(2, format.channelCount, format.sampleRate))) {
            return 1;
        }
        List<C11187g> mo19705a = mo19705a(abstractC11188h, format, false);
        if (mo19705a.isEmpty()) {
            return 1;
        }
        if (!c) {
            return 2;
        }
        C11187g c11187g = mo19705a.get(0);
        boolean m21247a = c11187g.m21247a(format);
        return ((!m21247a || !c11187g.m21241b(format)) ? 8 : 16) | (m21247a ? 4 : 3) | i;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final C10935e mo19709a(C11187g c11187g, Format format, Format format2) {
        C10935e m21246a = c11187g.m21246a(format, format2);
        int i = m21246a.f35372e;
        int i2 = i;
        if (m22006a(c11187g, format2) > this.f35215i) {
            i2 = i | 64;
        }
        return new C10935e(c11187g.f36736a, format, format2, i2 != 0 ? 0 : m21246a.f35371d, i2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final C10935e mo19703a(C11258q c11258q) throws ExoPlaybackException {
        C10935e mo19703a = super.mo19703a(c11258q);
        this.f35213g.m22055a(c11258q.f36928b, mo19703a);
        return mo19703a;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final List<C11187g> mo19705a(AbstractC11188h abstractC11188h, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        C11187g m21309a;
        String str = format.sampleMimeType;
        if (str == null) {
            return Collections.emptyList();
        }
        if (this.f35214h.mo22154a(format) && (m21309a = MediaCodecUtil.m21309a()) != null) {
            return Collections.singletonList(m21309a);
        }
        List<C11187g> m21297a = MediaCodecUtil.m21297a(abstractC11188h.getDecoderInfos(str, z, false), format);
        ArrayList arrayList = m21297a;
        if ("audio/eac3-joc".equals(str)) {
            arrayList = new ArrayList(m21297a);
            arrayList.addAll(abstractC11188h.getDecoderInfos("audio/eac3", z, false));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e, com.google.android.exoplayer2.C10847ad.AbstractC10849b
    /* renamed from: a */
    public final void mo19719a(int i, Object obj) throws ExoPlaybackException {
        if (i == 2) {
            this.f35214h.mo22160a(((Float) obj).floatValue());
        } else if (i == 3) {
            this.f35214h.mo22146a((C10889d) obj);
        } else if (i == 5) {
            this.f35214h.mo22145a((C10899i) obj);
        } else {
            switch (i) {
                case 101:
                    this.f35214h.mo22133b(((Boolean) obj).booleanValue());
                    return;
                case 102:
                    this.f35214h.mo22159a(((Integer) obj).intValue());
                    return;
                case 103:
                    this.f35222p = (AbstractC10851af.AbstractC10852a) obj;
                    return;
                default:
                    super.mo19719a(i, obj);
                    return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19716a(long j, boolean z) throws ExoPlaybackException {
        super.mo19716a(j, z);
        if (this.f35221o) {
            this.f35214h.mo22115k();
        } else {
            this.f35214h.mo22116j();
        }
        this.f35218l = j;
        this.f35219m = true;
        this.f35211a = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19715a(Format format, MediaFormat mediaFormat) throws ExoPlaybackException {
        int[] iArr;
        Format format2 = this.f35217k;
        if (format2 != null) {
            format = format2;
            iArr = null;
        } else if (m21345E() == null) {
            iArr = null;
        } else {
            int m19951b = "audio/raw".equals(format.sampleMimeType) ? format.pcmEncoding : (C11599af.f38648a < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? C11599af.m19951b(mediaFormat.getInteger("v-bits-per-sample")) : "audio/raw".equals(format.sampleMimeType) ? format.pcmEncoding : 2 : mediaFormat.getInteger("pcm-encoding");
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34792k = "audio/raw";
            c10828a.f34807z = m19951b;
            c10828a.f34778A = format.encoderDelay;
            c10828a.f34779B = format.encoderPadding;
            c10828a.f34805x = mediaFormat.getInteger("channel-count");
            c10828a.f34806y = mediaFormat.getInteger("sample-rate");
            Format m22321a = c10828a.m22321a();
            iArr = null;
            if (this.f35216j) {
                iArr = null;
                if (m22321a.channelCount == 6) {
                    iArr = null;
                    if (format.channelCount < 6) {
                        int[] iArr2 = new int[format.channelCount];
                        int i = 0;
                        while (true) {
                            iArr = iArr2;
                            if (i >= format.channelCount) {
                                break;
                            }
                            iArr2[i] = i;
                            i++;
                        }
                    }
                }
            }
            format = m22321a;
        }
        try {
            this.f35214h.mo22151a(format, iArr);
        } catch (AudioSink.ConfigurationException e) {
            throw m21807a(e, e.format);
        }
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: a */
    public final void mo19760a(C10840aa c10840aa) {
        this.f35214h.mo22150a(c10840aa);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19714a(DecoderInputBuffer decoderInputBuffer) {
        if (!this.f35219m || decoderInputBuffer.m21920E_()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.f35338e - this.f35218l) > 500000) {
            this.f35218l = decoderInputBuffer.f35338e;
        }
        this.f35219m = false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19708a(C11187g c11187g, AbstractC11184f abstractC11184f, Format format, MediaCrypto mediaCrypto, float f) {
        Format[] u = m21790u();
        int m22006a = m22006a(c11187g, format);
        int i = m22006a;
        if (u.length != 1) {
            int length = u.length;
            int i2 = 0;
            while (true) {
                i = m22006a;
                if (i2 >= length) {
                    break;
                }
                Format format2 = u[i2];
                int i3 = m22006a;
                if (c11187g.m21246a(format, format2).f35371d != 0) {
                    i3 = Math.max(m22006a, m22006a(c11187g, format2));
                }
                i2++;
                m22006a = i3;
            }
        }
        this.f35215i = i;
        this.f35216j = C11599af.f38648a < 24 && "OMX.SEC.aac.dec".equals(c11187g.f36736a) && "samsung".equals(C11599af.f38650c) && (C11599af.f38649b.startsWith("zeroflte") || C11599af.f38649b.startsWith("herolte") || C11599af.f38649b.startsWith("heroqlte"));
        String str = c11187g.f36738c;
        int i4 = this.f35215i;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.channelCount);
        mediaFormat.setInteger("sample-rate", format.sampleRate);
        C11189i.m21235a(mediaFormat, format.initializationData);
        C11189i.m21236a(mediaFormat, "max-input-size", i4);
        if (C11599af.f38648a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                if (!(C11599af.f38648a == 23 && ("ZTE B2017G".equals(C11599af.f38651d) || "AXON 7 mini".equals(C11599af.f38651d)))) {
                    mediaFormat.setFloat("operating-rate", f);
                }
            }
        }
        if (C11599af.f38648a <= 28 && "audio/ac4".equals(format.sampleMimeType)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (C11599af.f38648a >= 24 && this.f35214h.mo22137b(C11599af.m19949b(4, format.channelCount, format.sampleRate)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        abstractC11184f.mo21227a(mediaFormat, (Surface) null, mediaCrypto);
        boolean z = false;
        if ("audio/raw".equals(c11187g.f36737b)) {
            z = false;
            if (!"audio/raw".equals(format.sampleMimeType)) {
                z = true;
            }
        }
        if (!z) {
            format = null;
        }
        this.f35217k = format;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19700a(String str) {
        this.f35213g.m22052a(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19699a(String str, long j, long j2) {
        this.f35213g.m22051a(str, j, j2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19697a(boolean z, boolean z2) throws ExoPlaybackException {
        super.mo19697a(z, z2);
        this.f35213g.m22054a(this.f36655e);
        if (m21789v().tunneling) {
            this.f35214h.mo22120g();
        } else {
            this.f35214h.mo22118h();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final boolean mo19717a(long j, long j2, AbstractC11184f abstractC11184f, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException {
        C11593a.m20020b(byteBuffer);
        if (this.f35217k != null && (i2 & 2) != 0) {
            ((AbstractC11184f) C11593a.m20020b(abstractC11184f)).mo21229a(i, false);
            return true;
        } else if (z) {
            if (abstractC11184f != null) {
                abstractC11184f.mo21229a(i, false);
            }
            this.f36655e.f35362f += i3;
            this.f35214h.mo22141b();
            return true;
        } else {
            try {
                if (!this.f35214h.mo22143a(byteBuffer, j3, i3)) {
                    return false;
                }
                if (abstractC11184f != null) {
                    abstractC11184f.mo21229a(i, false);
                }
                this.f36655e.f35361e += i3;
                return true;
            } catch (AudioSink.InitializationException e) {
                throw m21806a(e, e.f35039c, e.f35038b);
            } catch (AudioSink.WriteException e2) {
                throw m21806a(e2, format, e2.f35041b);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: b */
    public final boolean mo21317b(Format format) {
        return this.f35214h.mo22154a(format);
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e, com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: c */
    public final AbstractC11619p mo21802c() {
        return this;
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: d */
    public final C10840aa mo19758d() {
        return this.f35214h.mo22123f();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: p */
    public final void mo19686p() {
        super.mo19686p();
        this.f35214h.mo22161a();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: q */
    public final void mo19685q() {
        m22008N();
        this.f35214h.mo22117i();
        super.mo19685q();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: r */
    public final void mo19684r() {
        this.f35220n = true;
        try {
            this.f35214h.mo22116j();
            try {
                super.mo19684r();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo19684r();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: s */
    public final void mo19683s() {
        try {
            super.mo19683s();
            if (!this.f35220n) {
                return;
            }
            this.f35220n = false;
            this.f35214h.mo22114l();
        } catch (Throwable th) {
            if (this.f35220n) {
                this.f35220n = false;
                this.f35214h.mo22114l();
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af, com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: x */
    public final String mo19682x() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: y */
    public final boolean mo19681y() {
        return this.f35214h.mo22126e() || super.mo19681y();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: z */
    public final boolean mo19746z() {
        return super.mo19746z() && this.f35214h.mo22129d();
    }
}
