package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.af;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.f;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.e;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.f;
import com.google.android.exoplayer2.mediacodec.g;
import com.google.android.exoplayer2.mediacodec.h;
import com.google.android.exoplayer2.mediacodec.i;
import com.google.android.exoplayer2.util.p;
import com.google.android.exoplayer2.util.q;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/n.class */
public final class n extends MediaCodecRenderer implements p {

    /* renamed from: a  reason: collision with root package name */
    boolean f20778a;
    private final Context f;
    private final f.a g;
    private final AudioSink h;
    private int i;
    private boolean j;
    private Format k;
    private long l;
    private boolean m;
    private boolean n;
    private boolean o;
    private af.a p;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/n$a.class */
    final class a implements AudioSink.a {
        private a() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public final void a() {
            n.this.f20778a = true;
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public final void a(int i, long j, long j2) {
            n.this.g.a(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public final void a(long j) {
            n.this.g.a(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public final void a(Exception exc) {
            n.this.g.a(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public final void a(boolean z) {
            n.this.g.a(z);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public final void b() {
            if (n.this.p != null) {
                n.this.p.a();
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public final void b(long j) {
            if (n.this.p != null) {
                n.this.p.a(j);
            }
        }
    }

    public n(Context context, f.a aVar, h hVar, boolean z, Handler handler, f fVar, AudioSink audioSink) {
        super(1, aVar, hVar, z, 44100.0f);
        this.f = context.getApplicationContext();
        this.h = audioSink;
        this.g = new f.a(handler, fVar);
        audioSink.a(new a());
    }

    public n(Context context, h hVar) {
        this(context, hVar, null, null);
    }

    public n(Context context, h hVar, Handler handler, f fVar) {
        this(context, hVar, handler, fVar, (e) null, new AudioProcessor[0]);
    }

    public n(Context context, h hVar, Handler handler, f fVar, AudioSink audioSink) {
        this(context, f.a.f21427a, hVar, false, handler, fVar, audioSink);
    }

    public n(Context context, h hVar, Handler handler, f fVar, e eVar, AudioProcessor... audioProcessorArr) {
        this(context, hVar, handler, fVar, new DefaultAudioSink(eVar, audioProcessorArr));
    }

    public n(Context context, h hVar, boolean z, Handler handler, f fVar, AudioSink audioSink) {
        this(context, f.a.f21427a, hVar, z, handler, fVar, audioSink);
    }

    private void N() {
        long a2 = this.h.a(z());
        if (a2 != Long.MIN_VALUE) {
            if (!this.f20778a) {
                a2 = Math.max(this.l, a2);
            }
            this.l = a2;
            this.f20778a = false;
        }
    }

    private int a(g gVar, Format format) {
        if (!"OMX.google.raw.decoder".equals(gVar.f21428a) || com.google.android.exoplayer2.util.af.f22275a >= 24 || (com.google.android.exoplayer2.util.af.f22275a == 23 && com.google.android.exoplayer2.util.af.c(this.f))) {
            return format.maxInputSize;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void A() {
        super.A();
        this.h.b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void B() throws ExoPlaybackException {
        try {
            this.h.c();
        } catch (AudioSink.WriteException e) {
            throw a(e, e.f20701c, e.f20700b);
        }
    }

    @Override // com.google.android.exoplayer2.util.p
    public final long B_() {
        if (C_() == 2) {
            N();
        }
        return this.l;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
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

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final int a(h hVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!q.a(format.sampleMimeType)) {
            return 0;
        }
        int i = com.google.android.exoplayer2.util.af.f22275a >= 21 ? 32 : 0;
        boolean z = format.exoMediaCryptoType != null;
        boolean c2 = c(format);
        if (c2 && this.h.a(format) && (!z || MediaCodecUtil.a() != null)) {
            return i | 12;
        }
        if (("audio/raw".equals(format.sampleMimeType) && !this.h.a(format)) || !this.h.a(com.google.android.exoplayer2.util.af.b(2, format.channelCount, format.sampleRate))) {
            return 1;
        }
        List<g> a2 = a(hVar, format, false);
        if (a2.isEmpty()) {
            return 1;
        }
        if (!c2) {
            return 2;
        }
        g gVar = a2.get(0);
        boolean a3 = gVar.a(format);
        return ((!a3 || !gVar.b(format)) ? 8 : 16) | (a3 ? 4 : 3) | i;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final e a(g gVar, Format format, Format format2) {
        e a2 = gVar.a(format, format2);
        int i = a2.e;
        int i2 = i;
        if (a(gVar, format2) > this.i) {
            i2 = i | 64;
        }
        return new e(gVar.f21428a, format, format2, i2 != 0 ? 0 : a2.f20840d, i2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final e a(com.google.android.exoplayer2.q qVar) throws ExoPlaybackException {
        e a2 = super.a(qVar);
        this.g.a(qVar.f21512b, a2);
        return a2;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final List<g> a(h hVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        g a2;
        String str = format.sampleMimeType;
        if (str == null) {
            return Collections.emptyList();
        }
        if (this.h.a(format) && (a2 = MediaCodecUtil.a()) != null) {
            return Collections.singletonList(a2);
        }
        List<g> a3 = MediaCodecUtil.a(hVar.getDecoderInfos(str, z, false), format);
        List<g> list = a3;
        if ("audio/eac3-joc".equals(str)) {
            list = new ArrayList<>(a3);
            list.addAll(hVar.getDecoderInfos("audio/eac3", z, false));
        }
        return Collections.unmodifiableList(list);
    }

    @Override // com.google.android.exoplayer2.e, com.google.android.exoplayer2.ad.b
    public final void a(int i, Object obj) throws ExoPlaybackException {
        if (i == 2) {
            this.h.a(((Float) obj).floatValue());
        } else if (i == 3) {
            this.h.a((d) obj);
        } else if (i != 5) {
            switch (i) {
                case 101:
                    this.h.b(((Boolean) obj).booleanValue());
                    return;
                case 102:
                    this.h.a(((Integer) obj).intValue());
                    return;
                case 103:
                    this.p = (af.a) obj;
                    return;
                default:
                    super.a(i, obj);
                    return;
            }
        } else {
            this.h.a((i) obj);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void a(long j, boolean z) throws ExoPlaybackException {
        super.a(j, z);
        if (this.o) {
            this.h.k();
        } else {
            this.h.j();
        }
        this.l = j;
        this.m = true;
        this.f20778a = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(Format format, MediaFormat mediaFormat) throws ExoPlaybackException {
        int[] iArr;
        Format format2 = this.k;
        if (format2 != null) {
            format = format2;
            iArr = null;
        } else if (E() == null) {
            iArr = null;
        } else {
            int b2 = "audio/raw".equals(format.sampleMimeType) ? format.pcmEncoding : (com.google.android.exoplayer2.util.af.f22275a < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? com.google.android.exoplayer2.util.af.b(mediaFormat.getInteger("v-bits-per-sample")) : "audio/raw".equals(format.sampleMimeType) ? format.pcmEncoding : 2 : mediaFormat.getInteger("pcm-encoding");
            Format.a aVar = new Format.a();
            aVar.k = "audio/raw";
            aVar.z = b2;
            aVar.A = format.encoderDelay;
            aVar.B = format.encoderPadding;
            aVar.x = mediaFormat.getInteger("channel-count");
            aVar.y = mediaFormat.getInteger("sample-rate");
            Format a2 = aVar.a();
            iArr = null;
            if (this.j) {
                iArr = null;
                if (a2.channelCount == 6) {
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
            format = a2;
        }
        try {
            this.h.a(format, iArr);
        } catch (AudioSink.ConfigurationException e) {
            throw a(e, e.format);
        }
    }

    @Override // com.google.android.exoplayer2.util.p
    public final void a(aa aaVar) {
        this.h.a(aaVar);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(DecoderInputBuffer decoderInputBuffer) {
        if (this.m && !decoderInputBuffer.E_()) {
            if (Math.abs(decoderInputBuffer.e - this.l) > 500000) {
                this.l = decoderInputBuffer.e;
            }
            this.m = false;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(g gVar, com.google.android.exoplayer2.mediacodec.f fVar, Format format, MediaCrypto mediaCrypto, float f) {
        Format[] u = u();
        int a2 = a(gVar, format);
        int i = a2;
        if (u.length != 1) {
            int length = u.length;
            int i2 = 0;
            while (true) {
                i = a2;
                if (i2 >= length) {
                    break;
                }
                Format format2 = u[i2];
                a2 = a2;
                if (gVar.a(format, format2).f20840d != 0) {
                    a2 = Math.max(a2, a(gVar, format2));
                }
                i2++;
            }
        }
        this.i = i;
        this.j = com.google.android.exoplayer2.util.af.f22275a < 24 && "OMX.SEC.aac.dec".equals(gVar.f21428a) && "samsung".equals(com.google.android.exoplayer2.util.af.f22277c) && (com.google.android.exoplayer2.util.af.f22276b.startsWith("zeroflte") || com.google.android.exoplayer2.util.af.f22276b.startsWith("herolte") || com.google.android.exoplayer2.util.af.f22276b.startsWith("heroqlte"));
        String str = gVar.f21430c;
        int i3 = this.i;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.channelCount);
        mediaFormat.setInteger("sample-rate", format.sampleRate);
        i.a(mediaFormat, format.initializationData);
        i.a(mediaFormat, "max-input-size", i3);
        if (com.google.android.exoplayer2.util.af.f22275a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                if (!(com.google.android.exoplayer2.util.af.f22275a == 23 && ("ZTE B2017G".equals(com.google.android.exoplayer2.util.af.f22278d) || "AXON 7 mini".equals(com.google.android.exoplayer2.util.af.f22278d)))) {
                    mediaFormat.setFloat("operating-rate", f);
                }
            }
        }
        if (com.google.android.exoplayer2.util.af.f22275a <= 28 && "audio/ac4".equals(format.sampleMimeType)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (com.google.android.exoplayer2.util.af.f22275a >= 24 && this.h.b(com.google.android.exoplayer2.util.af.b(4, format.channelCount, format.sampleRate)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        fVar.a(mediaFormat, (Surface) null, mediaCrypto);
        boolean z = false;
        if ("audio/raw".equals(gVar.f21429b)) {
            z = false;
            if (!"audio/raw".equals(format.sampleMimeType)) {
                z = true;
            }
        }
        if (!z) {
            format = null;
        }
        this.k = format;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(String str) {
        this.g.a(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(String str, long j, long j2) {
        this.g.a(str, j, j2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void a(boolean z, boolean z2) throws ExoPlaybackException {
        super.a(z, z2);
        this.g.a(this.e);
        if (v().tunneling) {
            this.h.g();
        } else {
            this.h.h();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final boolean a(long j, long j2, com.google.android.exoplayer2.mediacodec.f fVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.b(byteBuffer);
        if (this.k != null && (i2 & 2) != 0) {
            ((com.google.android.exoplayer2.mediacodec.f) com.google.android.exoplayer2.util.a.b(fVar)).a(i, false);
            return true;
        } else if (z) {
            if (fVar != null) {
                fVar.a(i, false);
            }
            this.e.f += i3;
            this.h.b();
            return true;
        } else {
            try {
                if (!this.h.a(byteBuffer, j3, i3)) {
                    return false;
                }
                if (fVar != null) {
                    fVar.a(i, false);
                }
                this.e.e += i3;
                return true;
            } catch (AudioSink.InitializationException e) {
                throw a(e, e.f20698c, e.f20697b);
            } catch (AudioSink.WriteException e2) {
                throw a(e2, format, e2.f20700b);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final boolean b(Format format) {
        return this.h.a(format);
    }

    @Override // com.google.android.exoplayer2.e, com.google.android.exoplayer2.af
    public final p c() {
        return this;
    }

    @Override // com.google.android.exoplayer2.util.p
    public final aa d() {
        return this.h.f();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void p() {
        super.p();
        this.h.a();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void q() {
        N();
        this.h.i();
        super.q();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void r() {
        this.n = true;
        try {
            this.h.j();
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

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void s() {
        try {
            super.s();
            if (this.n) {
                this.n = false;
                this.h.l();
            }
        } catch (Throwable th) {
            if (this.n) {
                this.n = false;
                this.h.l();
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.af, com.google.android.exoplayer2.ag
    public final String x() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.af
    public final boolean y() {
        return this.h.e() || super.y();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.af
    public final boolean z() {
        return super.z() && this.h.d();
    }
}
