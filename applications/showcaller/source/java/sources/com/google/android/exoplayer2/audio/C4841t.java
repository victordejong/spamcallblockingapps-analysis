package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.AbstractC5415u;
import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.C5102l0;
import com.google.android.exoplayer2.C5191s0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AbstractC4830l;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5049o;
import com.google.android.exoplayer2.mediacodec.AbstractC5116f;
import com.google.android.exoplayer2.mediacodec.C5115e;
import com.google.android.exoplayer2.mediacodec.C5118g;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.util.AbstractC5528q;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5529r;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.audio.t */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/t.class */
public class C4841t extends MediaCodecRenderer implements AbstractC5528q {

    /* renamed from: A0 */
    private int f14683A0;

    /* renamed from: B0 */
    private boolean f14684B0;

    /* renamed from: C0 */
    private boolean f14685C0;

    /* renamed from: D0 */
    private boolean f14686D0;

    /* renamed from: E0 */
    private MediaFormat f14687E0;

    /* renamed from: F0 */
    private Format f14688F0;

    /* renamed from: G0 */
    private long f14689G0;

    /* renamed from: H0 */
    private boolean f14690H0;

    /* renamed from: I0 */
    private boolean f14691I0;

    /* renamed from: K0 */
    private int f14693K0;

    /* renamed from: w0 */
    private final Context f14694w0;

    /* renamed from: x0 */
    private final AbstractC4830l.C4831a f14695x0;

    /* renamed from: y0 */
    private final AudioSink f14696y0;

    /* renamed from: J0 */
    private long f14692J0 = -9223372036854775807L;

    /* renamed from: z0 */
    private final long[] f14697z0 = new long[10];

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.audio.t$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/t$b.class */
    public final class C4843b implements AudioSink.AbstractC4805a {
        private C4843b() {
            C4841t.this = r4;
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC4805a
        /* renamed from: a */
        public void mo21492a(int i) {
            C4841t.this.f14695x0.m21573a(i);
            C4841t.this.m21496n1(i);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC4805a
        /* renamed from: b */
        public void mo21491b(int i, long j, long j2) {
            C4841t.this.f14695x0.m21572b(i, j, j2);
            C4841t.this.m21494p1(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC4805a
        /* renamed from: c */
        public void mo21490c() {
            C4841t.this.m21495o1();
            C4841t.this.f14691I0 = true;
        }
    }

    @Deprecated
    public C4841t(Context context, AbstractC5116f abstractC5116f, AbstractC5040k<C5049o> abstractC5040k, boolean z, boolean z2, Handler handler, AbstractC4830l abstractC4830l, AudioSink audioSink) {
        super(1, abstractC5116f, abstractC5040k, z, z2, 44100.0f);
        this.f14694w0 = context.getApplicationContext();
        this.f14696y0 = audioSink;
        this.f14695x0 = new AbstractC4830l.C4831a(handler, abstractC4830l);
        audioSink.mo21616u(new C4843b());
    }

    /* renamed from: f1 */
    private static boolean m21504f1(String str) {
        boolean z;
        if (C5515h0.f17876a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(C5515h0.f17878c)) {
            String str2 = C5515h0.f17877b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: g1 */
    private static boolean m21503g1(String str) {
        boolean z;
        if (C5515h0.f17876a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(C5515h0.f17878c)) {
            String str2 = C5515h0.f17877b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: h1 */
    private static boolean m21502h1() {
        boolean z;
        if (C5515h0.f17876a == 23) {
            String str = C5515h0.f17879d;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: i1 */
    private int m21501i1(C5115e c5115e, Format format) {
        int i;
        if (!"OMX.google.raw.decoder".equals(c5115e.f16072a) || (i = C5515h0.f17876a) >= 24 || (i == 23 && C5515h0.m18848X(this.f14694w0))) {
            return format.f14462m;
        }
        return -1;
    }

    /* renamed from: m1 */
    private static int m21497m1(Format format) {
        return "audio/raw".equals(format.f14461l) ? format.f14446A : 2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: q1 */
    private void m21493q1() {
        char mo21624m = this.f14696y0.mo21624m(mo18506c());
        if (mo21624m != Long.MIN_VALUE) {
            if (!this.f14691I0) {
                mo21624m = Math.max(this.f14689G0, (long) mo21624m);
            }
            this.f14689G0 = mo21624m;
            this.f14691I0 = false;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: B0 */
    protected void mo18616B0(String str, long j, long j2) {
        this.f14695x0.m21571c(str, j, j2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: C0 */
    public void mo18614C0(C5090f0 c5090f0) {
        super.mo18614C0(c5090f0);
        Format format = c5090f0.f15930c;
        this.f14688F0 = format;
        this.f14695x0.m21568f(format);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: D0 */
    protected void mo18612D0(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int i;
        int[] iArr;
        int i2;
        MediaFormat mediaFormat2 = this.f14687E0;
        if (mediaFormat2 != null) {
            i = m21498l1(mediaFormat2.getInteger("channel-count"), mediaFormat2.getString("mime"));
            mediaFormat = mediaFormat2;
        } else {
            i = mediaFormat.containsKey("v-bits-per-sample") ? C5515h0.m18864H(mediaFormat.getInteger("v-bits-per-sample")) : m21497m1(this.f14688F0);
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.f14685C0 || integer != 6 || (i2 = this.f14688F0.f14474y) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i3 < this.f14688F0.f14474y) {
                    iArr2[i3] = i3;
                    i3++;
                }
            }
        }
        try {
            AudioSink audioSink = this.f14696y0;
            Format format = this.f14688F0;
            audioSink.mo21627j(i, integer, integer2, 0, iArr, format.f14447B, format.f14448C);
        } catch (AudioSink.ConfigurationException e) {
            throw m19244z(e, this.f14688F0);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: E0 */
    protected void mo18610E0(long j) {
        while (this.f14693K0 != 0 && j >= this.f14697z0[0]) {
            this.f14696y0.mo21621p();
            int i = this.f14693K0 - 1;
            this.f14693K0 = i;
            long[] jArr = this.f14697z0;
            System.arraycopy(jArr, 1, jArr, 0, i);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: F0 */
    protected void mo18608F0(C4858e c4858e) {
        if (this.f14690H0 && !c4858e.isDecodeOnly()) {
            if (Math.abs(c4858e.f14776f - this.f14689G0) > 500000) {
                this.f14689G0 = c4858e.f14776f;
            }
            this.f14690H0 = false;
        }
        this.f14692J0 = Math.max(c4858e.f14776f, this.f14692J0);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: G */
    public void mo18512G() {
        try {
            this.f14692J0 = -9223372036854775807L;
            this.f14693K0 = 0;
            this.f14696y0.flush();
            try {
                super.mo18512G();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo18512G();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: H */
    public void mo18605H(boolean z) {
        super.mo18605H(z);
        this.f14695x0.m21569e(this.f16046v0);
        int i = m19270A().f17405b;
        if (i != 0) {
            this.f14696y0.mo21618s(i);
        } else {
            this.f14696y0.mo21623n();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: H0 */
    protected boolean mo18604H0(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2, Format format) {
        char c = j3;
        if (this.f14686D0) {
            c = j3;
            if (j3 == 0) {
                c = j3;
                if ((i2 & 4) != 0) {
                    ?? r0 = this.f14692J0;
                    c = j3;
                    if (r0 != -9223372036854775807L) {
                        c = r0;
                    }
                }
            }
        }
        if (this.f14684B0 && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f16046v0.f14770f++;
            this.f14696y0.mo21621p();
            return true;
        } else {
            try {
                if (!this.f14696y0.mo21619r(byteBuffer, c)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.f16046v0.f14769e++;
                return true;
            } catch (AudioSink.InitializationException | AudioSink.WriteException e) {
                throw m19244z(e, this.f14688F0);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: I */
    public void mo18511I(long j, boolean z) {
        super.mo18511I(j, z);
        this.f14696y0.flush();
        this.f14689G0 = j;
        this.f14690H0 = true;
        this.f14691I0 = true;
        this.f14692J0 = -9223372036854775807L;
        this.f14693K0 = 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: J */
    public void mo18601J() {
        try {
            super.mo18601J();
        } finally {
            this.f14696y0.mo21636a();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: K */
    public void mo18599K() {
        super.mo18599K();
        this.f14696y0.mo21617t();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: L */
    public void mo18597L() {
        m21493q1();
        this.f14696y0.pause();
        super.mo18597L();
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: M */
    public void mo18510M(Format[] formatArr, long j) {
        super.mo18510M(formatArr, j);
        if (this.f14692J0 != -9223372036854775807L) {
            int i = this.f14693K0;
            if (i == this.f14697z0.length) {
                C5526o.m18742f("MediaCodecAudioRenderer", "Too many stream changes, so dropping change at " + this.f14697z0[this.f14693K0 - 1]);
            } else {
                this.f14693K0 = i + 1;
            }
            this.f14697z0[this.f14693K0 - 1] = this.f14692J0;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: N0 */
    protected void mo20507N0() {
        try {
            this.f14696y0.mo21626k();
        } catch (AudioSink.WriteException e) {
            throw m19244z(e, this.f14688F0);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: Q */
    protected int mo18594Q(MediaCodec mediaCodec, C5115e c5115e, Format format, Format format2) {
        if (m21501i1(c5115e, format2) <= this.f14683A0 && format.f14447B == 0 && format.f14448C == 0 && format2.f14447B == 0 && format2.f14448C == 0) {
            if (c5115e.m20412o(format, format2, true)) {
                return 3;
            }
            return m21505e1(format, format2) ? 1 : 0;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: X0 */
    protected int mo18592X0(AbstractC5116f abstractC5116f, AbstractC5040k<C5049o> abstractC5040k, Format format) {
        String str = format.f14461l;
        if (!C5529r.m18725l(str)) {
            return C5191s0.m20194a(0);
        }
        int i = C5515h0.f17876a >= 21 ? 32 : 0;
        boolean z = format.f14464o == null || C5049o.class.equals(format.f14451F) || (format.f14451F == null && AbstractC5415u.m19262P(abstractC5040k, format.f14464o));
        int i2 = 4;
        if (z && m21506d1(format.f14474y, str) && abstractC5116f.mo20402a() != null) {
            return C5191s0.m20193b(4, 8, i);
        }
        if (("audio/raw".equals(str) && !this.f14696y0.mo21628i(format.f14474y, format.f14446A)) || !this.f14696y0.mo21628i(format.f14474y, 2)) {
            return C5191s0.m20194a(1);
        }
        List<C5115e> mo18575n0 = mo18575n0(abstractC5116f, format, false);
        if (mo18575n0.isEmpty()) {
            return C5191s0.m20194a(1);
        }
        if (!z) {
            return C5191s0.m20194a(2);
        }
        C5115e c5115e = mo18575n0.get(0);
        boolean m20415l = c5115e.m20415l(format);
        int i3 = 8;
        if (m20415l) {
            i3 = 8;
            if (c5115e.m20413n(format)) {
                i3 = 16;
            }
        }
        if (!m20415l) {
            i2 = 3;
        }
        return C5191s0.m20193b(i2, i3, i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: Z */
    protected void mo18591Z(C5115e c5115e, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        this.f14683A0 = m21500j1(c5115e, format, m19267D());
        this.f14685C0 = m21504f1(c5115e.f16072a);
        this.f14686D0 = m21503g1(c5115e.f16072a);
        boolean z = c5115e.f16079h;
        this.f14684B0 = z;
        MediaFormat m21499k1 = m21499k1(format, z ? "audio/raw" : c5115e.f16074c, this.f14683A0, f);
        mediaCodec.configure(m21499k1, (Surface) null, mediaCrypto, 0);
        if (!this.f14684B0) {
            this.f14687E0 = null;
            return;
        }
        this.f14687E0 = m21499k1;
        m21499k1.setString("mime", format.f14461l);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: c */
    public boolean mo18506c() {
        return super.mo18506c() && this.f14696y0.mo21634c();
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: d */
    public C5102l0 mo18326d() {
        return this.f14696y0.mo21633d();
    }

    /* renamed from: d1 */
    protected boolean m21506d1(int i, String str) {
        return m21498l1(i, str) != 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: e */
    public boolean mo18505e() {
        return this.f14696y0.mo21625l() || super.mo18505e();
    }

    /* renamed from: e1 */
    protected boolean m21505e1(Format format, Format format2) {
        return C5515h0.m18843b(format.f14461l, format2.f14461l) && format.f14474y == format2.f14474y && format.f14475z == format2.f14475z && format.f14446A == format2.f14446A && format.m21755G(format2) && !"audio/opus".equals(format.f14461l);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: h */
    public void mo18322h(C5102l0 c5102l0) {
        this.f14696y0.mo21629h(c5102l0);
    }

    /* renamed from: j1 */
    protected int m21500j1(C5115e c5115e, Format format, Format[] formatArr) {
        int m21501i1 = m21501i1(c5115e, format);
        if (formatArr.length == 1) {
            return m21501i1;
        }
        int length = formatArr.length;
        int i = 0;
        while (i < length) {
            Format format2 = formatArr[i];
            int i2 = m21501i1;
            if (c5115e.m20412o(format, format2, false)) {
                i2 = Math.max(m21501i1, m21501i1(c5115e, format2));
            }
            i++;
            m21501i1 = i2;
        }
        return m21501i1;
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: k1 */
    protected MediaFormat m21499k1(Format format, String str, int i, float f) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.f14474y);
        mediaFormat.setInteger("sample-rate", format.f14475z);
        C5118g.m20396e(mediaFormat, format.f14463n);
        C5118g.m20397d(mediaFormat, "max-input-size", i);
        int i2 = C5515h0.f17876a;
        if (i2 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f && !m21502h1()) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (i2 <= 28 && "audio/ac4".equals(format.f14461l)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        return mediaFormat;
    }

    /* renamed from: l1 */
    protected int m21498l1(int i, String str) {
        String str2 = str;
        if ("audio/eac3-joc".equals(str)) {
            if (this.f14696y0.mo21628i(-1, 18)) {
                return C5529r.m18733d("audio/eac3-joc");
            }
            str2 = "audio/eac3";
        }
        int m18733d = C5529r.m18733d(str2);
        if (this.f14696y0.mo21628i(i, m18733d)) {
            return m18733d;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: m0 */
    protected float mo18577m0(float f, Format format, Format[] formatArr) {
        int i;
        int length = formatArr.length;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = formatArr[i2].f14475z;
            int i5 = i;
            if (i4 != -1) {
                i5 = Math.max(i, i4);
            }
            i2++;
            i3 = i5;
        }
        return i == -1 ? -1.0f : f * i;
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: n */
    public long mo18319n() {
        if (getState() == 2) {
            m21493q1();
        }
        return this.f14689G0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: n0 */
    protected List<C5115e> mo18575n0(AbstractC5116f abstractC5116f, Format format, boolean z) {
        C5115e mo20402a;
        String str = format.f14461l;
        if (str == null) {
            return Collections.emptyList();
        }
        if (m21506d1(format.f14474y, str) && (mo20402a = abstractC5116f.mo20402a()) != null) {
            return Collections.singletonList(mo20402a);
        }
        List<C5115e> m20448l = MediaCodecUtil.m20448l(abstractC5116f.mo20401b(str, z, false), format);
        ArrayList arrayList = m20448l;
        if ("audio/eac3-joc".equals(str)) {
            arrayList = new ArrayList(m20448l);
            arrayList.addAll(abstractC5116f.mo20401b("audio/eac3", z, false));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: n1 */
    protected void m21496n1(int i) {
    }

    /* renamed from: o1 */
    protected void m21495o1() {
    }

    /* renamed from: p1 */
    protected void m21494p1(int i, long j, long j2) {
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u, com.google.android.exoplayer2.C5179p0.AbstractC5181b
    /* renamed from: r */
    public void mo18503r(int i, Object obj) {
        if (i == 2) {
            this.f14696y0.mo21620q(((Float) obj).floatValue());
        } else if (i == 3) {
            this.f14696y0.mo21622o((C4825i) obj);
        } else if (i != 5) {
            super.mo18503r(i, obj);
        } else {
            this.f14696y0.mo21615v((C4836o) obj);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u, com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: x */
    public AbstractC5528q mo19246x() {
        return this;
    }
}
