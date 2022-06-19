package com.google.android.exoplayer2.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.google.android.exoplayer2.AbstractC5415u;
import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.C5191s0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5049o;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.mediacodec.AbstractC5116f;
import com.google.android.exoplayer2.mediacodec.C5115e;
import com.google.android.exoplayer2.mediacodec.C5118g;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.p242b1.C4857d;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5511f0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5529r;
import com.google.android.exoplayer2.video.AbstractC5569q;
import com.zhy.http.okhttp.OkHttpUtils;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer.class */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {

    /* renamed from: w0 */
    private static final int[] f17980w0 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: x0 */
    private static boolean f17981x0;

    /* renamed from: y0 */
    private static boolean f17982y0;

    /* renamed from: A0 */
    private final C5564n f17983A0;

    /* renamed from: B0 */
    private final AbstractC5569q.C5570a f17984B0;

    /* renamed from: C0 */
    private final long f17985C0;

    /* renamed from: D0 */
    private final int f17986D0;

    /* renamed from: H0 */
    private C5548a f17990H0;

    /* renamed from: I0 */
    private boolean f17991I0;

    /* renamed from: J0 */
    private boolean f17992J0;

    /* renamed from: K0 */
    private Surface f17993K0;

    /* renamed from: L0 */
    private Surface f17994L0;

    /* renamed from: N0 */
    private boolean f17996N0;

    /* renamed from: O0 */
    private long f17997O0;

    /* renamed from: Q0 */
    private long f17999Q0;

    /* renamed from: R0 */
    private int f18000R0;

    /* renamed from: S0 */
    private int f18001S0;

    /* renamed from: T0 */
    private int f18002T0;

    /* renamed from: U0 */
    private long f18003U0;

    /* renamed from: V0 */
    private int f18004V0;

    /* renamed from: X0 */
    private MediaFormat f18006X0;

    /* renamed from: a1 */
    private int f18009a1;

    /* renamed from: c1 */
    private int f18011c1;

    /* renamed from: d1 */
    private int f18012d1;

    /* renamed from: e1 */
    private int f18013e1;

    /* renamed from: f1 */
    private float f18014f1;

    /* renamed from: g1 */
    private boolean f18015g1;

    /* renamed from: h1 */
    private int f18016h1;

    /* renamed from: i1 */
    C5549b f18017i1;

    /* renamed from: l1 */
    private int f18020l1;

    /* renamed from: m1 */
    private AbstractC5563m f18021m1;

    /* renamed from: z0 */
    private final Context f18022z0;

    /* renamed from: E0 */
    private final boolean f17987E0 = m18584g1();

    /* renamed from: F0 */
    private final long[] f17988F0 = new long[10];

    /* renamed from: G0 */
    private final long[] f17989G0 = new long[10];

    /* renamed from: k1 */
    private long f18019k1 = -9223372036854775807L;

    /* renamed from: j1 */
    private long f18018j1 = -9223372036854775807L;

    /* renamed from: P0 */
    private long f17998P0 = -9223372036854775807L;

    /* renamed from: Y0 */
    private int f18007Y0 = -1;

    /* renamed from: Z0 */
    private int f18008Z0 = -1;

    /* renamed from: b1 */
    private float f18010b1 = -1.0f;

    /* renamed from: W0 */
    private float f18005W0 = -1.0f;

    /* renamed from: M0 */
    private int f17995M0 = 1;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoDecoderException.class */
    public static final class VideoDecoderException extends MediaCodecRenderer.DecoderException {
        public final boolean isSurfaceValid;
        public final int surfaceIdentityHashCode;

        public VideoDecoderException(Throwable th, C5115e c5115e, Surface surface) {
            super(th, c5115e);
            this.surfaceIdentityHashCode = System.identityHashCode(surface);
            this.isSurfaceValid = surface == null || surface.isValid();
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.MediaCodecVideoRenderer$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer$a.class */
    public static final class C5548a {

        /* renamed from: a */
        public final int f18023a;

        /* renamed from: b */
        public final int f18024b;

        /* renamed from: c */
        public final int f18025c;

        public C5548a(int i, int i2, int i3) {
            this.f18023a = i;
            this.f18024b = i2;
            this.f18025c = i3;
        }
    }

    @TargetApi(23)
    /* renamed from: com.google.android.exoplayer2.video.MediaCodecVideoRenderer$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer$b.class */
    public final class C5549b implements MediaCodec.OnFrameRenderedListener, Handler.Callback {

        /* renamed from: d */
        private final Handler f18026d;

        public C5549b(MediaCodec mediaCodec) {
            MediaCodecVideoRenderer.this = r5;
            Handler handler = new Handler(this);
            this.f18026d = handler;
            mediaCodec.setOnFrameRenderedListener(this, handler);
        }

        /* renamed from: a */
        private void m18560a(long j) {
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (this != mediaCodecVideoRenderer.f18017i1) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                mediaCodecVideoRenderer.m18562y1();
            } else {
                mediaCodecVideoRenderer.m18563x1(j);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            m18560a(C5515h0.m18806t0(message.arg1, message.arg2));
            return true;
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
            if (C5515h0.f17876a >= 30) {
                m18560a(j);
                return;
            }
            this.f18026d.sendMessageAtFrontOfQueue(Message.obtain(this.f18026d, 0, (int) (j >> 32), (int) j));
        }
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, AbstractC5116f abstractC5116f, long j, AbstractC5040k<C5049o> abstractC5040k, boolean z, boolean z2, Handler handler, AbstractC5569q abstractC5569q, int i) {
        super(2, abstractC5116f, abstractC5040k, z, z2, 30.0f);
        this.f17985C0 = j;
        this.f17986D0 = i;
        Context applicationContext = context.getApplicationContext();
        this.f18022z0 = applicationContext;
        this.f17983A0 = new C5564n(applicationContext);
        this.f17984B0 = new AbstractC5569q.C5570a(handler, abstractC5569q);
        m18588d1();
    }

    @TargetApi(29)
    /* renamed from: C1 */
    private static void m18613C1(MediaCodec mediaCodec, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodec.setParameters(bundle);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: D1 */
    private void m18611D1() {
        this.f17998P0 = this.f17985C0 > 0 ? SystemClock.elapsedRealtime() + this.f17985C0 : (char) 1;
    }

    @TargetApi(23)
    /* renamed from: E1 */
    private static void m18609E1(MediaCodec mediaCodec, Surface surface) {
        mediaCodec.setOutputSurface(surface);
    }

    /* renamed from: F1 */
    private void m18607F1(Surface surface) {
        DummySurface dummySurface = surface;
        if (surface == null) {
            dummySurface = this.f17994L0;
            if (dummySurface == null) {
                C5115e m20478k0 = m20478k0();
                dummySurface = surface;
                if (m20478k0 != null) {
                    dummySurface = surface;
                    if (m18600J1(m20478k0)) {
                        dummySurface = DummySurface.m18622d(this.f18022z0, m20478k0.f16078g);
                        this.f17994L0 = dummySurface;
                    }
                }
            }
        }
        if (this.f17993K0 == dummySurface) {
            if (dummySurface == null || dummySurface == this.f17994L0) {
                return;
            }
            m18565v1();
            m18566u1();
            return;
        }
        this.f17993K0 = dummySurface;
        int state = getState();
        MediaCodec m20480i0 = m20480i0();
        if (m20480i0 != null) {
            if (C5515h0.f17876a < 23 || dummySurface == null || this.f17991I0) {
                mo18595M0();
                m20468y0();
            } else {
                m18609E1(m20480i0, dummySurface);
            }
        }
        if (dummySurface == null || dummySurface == this.f17994L0) {
            m18588d1();
            m18589c1();
            return;
        }
        m18565v1();
        m18589c1();
        if (state != 2) {
            return;
        }
        m18611D1();
    }

    /* renamed from: J1 */
    private boolean m18600J1(C5115e c5115e) {
        return C5515h0.f17876a >= 23 && !this.f18015g1 && !m18587e1(c5115e.f16072a) && (!c5115e.f16078g || DummySurface.m18623c(this.f18022z0));
    }

    /* renamed from: c1 */
    private void m18589c1() {
        MediaCodec m20480i0;
        this.f17996N0 = false;
        if (C5515h0.f17876a < 23 || !this.f18015g1 || (m20480i0 = m20480i0()) == null) {
            return;
        }
        this.f18017i1 = new C5549b(m20480i0);
    }

    /* renamed from: d1 */
    private void m18588d1() {
        this.f18011c1 = -1;
        this.f18012d1 = -1;
        this.f18014f1 = -1.0f;
        this.f18013e1 = -1;
    }

    @TargetApi(21)
    /* renamed from: f1 */
    private static void m18586f1(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    /* renamed from: g1 */
    private static boolean m18584g1() {
        return "NVIDIA".equals(C5515h0.f17878c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: i1 */
    private static int m18582i1(C5115e c5115e, String str, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
                i5 = i * i2;
                i3 = i5;
                i4 = 2;
                break;
            case true:
            case true:
                i3 = i * i2;
                i4 = 4;
                break;
            case true:
                String str2 = C5515h0.f17879d;
                if ("BRAVIA 4K 2015".equals(str2)) {
                    return -1;
                }
                if ("Amazon".equals(C5515h0.f17878c)) {
                    if ("KFSOWI".equals(str2)) {
                        return -1;
                    }
                    if ("AFTS".equals(str2) && c5115e.f16078g) {
                        return -1;
                    }
                }
                i5 = C5515h0.m18829i(i, 16) * C5515h0.m18829i(i2, 16) * 16 * 16;
                i3 = i5;
                i4 = 2;
                break;
                break;
            default:
                return -1;
        }
        return (i3 * 3) / (i4 * 2);
    }

    /* renamed from: j1 */
    private static Point m18581j1(C5115e c5115e, Format format) {
        int[] iArr;
        int i = format.f14467r;
        int i2 = format.f14466q;
        boolean z = i > i2;
        int i3 = z ? i : i2;
        if (z) {
            i = i2;
        }
        float f = i / i3;
        for (int i4 : f17980w0) {
            int i5 = (int) (i4 * f);
            if (i4 <= i3 || i5 <= i) {
                return null;
            }
            if (C5515h0.f17876a >= 21) {
                int i6 = z ? i5 : i4;
                if (z) {
                    i5 = i4;
                }
                Point m20425b = c5115e.m20425b(i6, i5);
                if (c5115e.m20407t(m20425b.x, m20425b.y, format.f14468s)) {
                    return m20425b;
                }
            } else {
                try {
                    int m18829i = C5515h0.m18829i(i4, 16) * 16;
                    int m18829i2 = C5515h0.m18829i(i5, 16) * 16;
                    if (m18829i * m18829i2 <= MediaCodecUtil.m20461B()) {
                        int i7 = z ? m18829i2 : m18829i;
                        if (!z) {
                            m18829i = m18829i2;
                        }
                        return new Point(i7, m18829i);
                    }
                } catch (MediaCodecUtil.DecoderQueryException e) {
                    return null;
                }
            }
        }
        return null;
    }

    /* renamed from: l1 */
    private static List<C5115e> m18578l1(AbstractC5116f abstractC5116f, Format format, boolean z, boolean z2) {
        Pair<Integer, Integer> m20452h;
        String str = format.f14461l;
        if (str == null) {
            return Collections.emptyList();
        }
        List<C5115e> m20448l = MediaCodecUtil.m20448l(abstractC5116f.mo20401b(str, z, z2), format);
        if ("video/dolby-vision".equals(str) && (m20452h = MediaCodecUtil.m20452h(format)) != null) {
            int intValue = ((Integer) m20452h.first).intValue();
            if (intValue == 16 || intValue == 256) {
                m20448l.addAll(abstractC5116f.mo20401b("video/hevc", z, z2));
            } else if (intValue == 512) {
                m20448l.addAll(abstractC5116f.mo20401b("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(m20448l);
    }

    /* renamed from: m1 */
    private static int m18576m1(C5115e c5115e, Format format) {
        if (format.f14462m != -1) {
            int size = format.f14463n.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += format.f14463n.get(i2).length;
            }
            return format.f14462m + i;
        }
        return m18582i1(c5115e, format.f14461l, format.f14466q, format.f14467r);
    }

    /* renamed from: o1 */
    private static boolean m18573o1(long j) {
        return j < -30000;
    }

    /* renamed from: p1 */
    private static boolean m18572p1(long j) {
        return j < -500000;
    }

    /* renamed from: r1 */
    private void m18570r1() {
        if (this.f18000R0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f17984B0.m18533c(this.f18000R0, elapsedRealtime - this.f17999Q0);
            this.f18000R0 = 0;
            this.f17999Q0 = elapsedRealtime;
        }
    }

    /* renamed from: t1 */
    private void m18567t1() {
        int i = this.f18007Y0;
        if (i == -1 && this.f18008Z0 == -1) {
            return;
        }
        if (this.f18011c1 == i && this.f18012d1 == this.f18008Z0 && this.f18013e1 == this.f18009a1 && this.f18014f1 == this.f18010b1) {
            return;
        }
        this.f17984B0.m18515u(i, this.f18008Z0, this.f18009a1, this.f18010b1);
        this.f18011c1 = this.f18007Y0;
        this.f18012d1 = this.f18008Z0;
        this.f18013e1 = this.f18009a1;
        this.f18014f1 = this.f18010b1;
    }

    /* renamed from: u1 */
    private void m18566u1() {
        if (this.f17996N0) {
            this.f17984B0.m18516t(this.f17993K0);
        }
    }

    /* renamed from: v1 */
    private void m18565v1() {
        int i = this.f18011c1;
        if (i == -1 && this.f18012d1 == -1) {
            return;
        }
        this.f17984B0.m18515u(i, this.f18012d1, this.f18013e1, this.f18014f1);
    }

    /* renamed from: w1 */
    private void m18564w1(long j, long j2, Format format, MediaFormat mediaFormat) {
        AbstractC5563m abstractC5563m = this.f18021m1;
        if (abstractC5563m != null) {
            abstractC5563m.mo18553c(j, j2, format, mediaFormat);
        }
    }

    /* renamed from: y1 */
    public void m18562y1() {
        m20500S0();
    }

    /* renamed from: z1 */
    private void m18561z1(MediaCodec mediaCodec, int i, int i2) {
        this.f18007Y0 = i;
        this.f18008Z0 = i2;
        float f = this.f18005W0;
        this.f18010b1 = f;
        if (C5515h0.f17876a >= 21) {
            int i3 = this.f18004V0;
            if (i3 == 90 || i3 == 270) {
                this.f18007Y0 = i2;
                this.f18008Z0 = i;
                this.f18010b1 = 1.0f / f;
            }
        } else {
            this.f18009a1 = this.f18004V0;
        }
        mediaCodec.setVideoScalingMode(this.f17995M0);
    }

    /* renamed from: A1 */
    protected void m18617A1(MediaCodec mediaCodec, int i, long j) {
        m18567t1();
        C5511f0.m18893a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        C5511f0.m18891c();
        this.f18003U0 = SystemClock.elapsedRealtime() * 1000;
        this.f16046v0.f14769e++;
        this.f18001S0 = 0;
        m18568s1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: B0 */
    protected void mo18616B0(String str, long j, long j2) {
        this.f17984B0.m18535a(str, j, j2);
        this.f17991I0 = m18587e1(str);
        this.f17992J0 = ((C5115e) C5508e.m18911e(m20478k0())).m20414m();
    }

    @TargetApi(21)
    /* renamed from: B1 */
    protected void m18615B1(MediaCodec mediaCodec, int i, long j, long j2) {
        m18567t1();
        C5511f0.m18893a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        C5511f0.m18891c();
        this.f18003U0 = SystemClock.elapsedRealtime() * 1000;
        this.f16046v0.f14769e++;
        this.f18001S0 = 0;
        m18568s1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: C0 */
    public void mo18614C0(C5090f0 c5090f0) {
        super.mo18614C0(c5090f0);
        Format format = c5090f0.f15930c;
        this.f17984B0.m18531e(format);
        this.f18005W0 = format.f14470u;
        this.f18004V0 = format.f14469t;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: D0 */
    protected void mo18612D0(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        this.f18006X0 = mediaFormat;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        m18561z1(mediaCodec, z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width"), z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height"));
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: E0 */
    protected void mo18610E0(long j) {
        if (!this.f18015g1) {
            this.f18002T0--;
        }
        while (true) {
            int i = this.f18020l1;
            if (i == 0 || j < this.f17989G0[0]) {
                return;
            }
            long[] jArr = this.f17988F0;
            this.f18019k1 = jArr[0];
            int i2 = i - 1;
            this.f18020l1 = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.f17989G0;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f18020l1);
            m18589c1();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: F0 */
    protected void mo18608F0(C4858e c4858e) {
        if (!this.f18015g1) {
            this.f18002T0++;
        }
        this.f18018j1 = Math.max(c4858e.f14776f, this.f18018j1);
        if (C5515h0.f17876a >= 23 || !this.f18015g1) {
            return;
        }
        m18563x1(c4858e.f14776f);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: G */
    public void mo18512G() {
        this.f18018j1 = -9223372036854775807L;
        this.f18019k1 = -9223372036854775807L;
        this.f18020l1 = 0;
        this.f18006X0 = null;
        m18588d1();
        m18589c1();
        this.f17983A0.m18549d();
        this.f18017i1 = null;
        try {
            super.mo18512G();
        } finally {
            this.f17984B0.m18534b(this.f16046v0);
        }
    }

    /* renamed from: G1 */
    protected boolean m18606G1(long j, long j2, boolean z) {
        return m18572p1(j) && !z;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: H */
    public void mo18605H(boolean z) {
        super.mo18605H(z);
        int i = this.f18016h1;
        int i2 = m19270A().f17405b;
        this.f18016h1 = i2;
        this.f18015g1 = i2 != 0;
        if (i2 != i) {
            mo18595M0();
        }
        this.f17984B0.m18532d(this.f16046v0);
        this.f17983A0.m18548e();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: H0 */
    protected boolean mo18604H0(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2, Format format) {
        if (this.f17997O0 == -9223372036854775807L) {
            this.f17997O0 = j;
        }
        long j4 = j3 - this.f18019k1;
        if (z && !z2) {
            m18598K1(mediaCodec, i, j4);
            return true;
        }
        long j5 = j3 - j;
        if (this.f17993K0 == this.f17994L0) {
            if (!m18573o1(j5)) {
                return false;
            }
            m18598K1(mediaCodec, i, j4);
            return true;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j6 = this.f18003U0;
        boolean z3 = getState() == 2;
        if (this.f17998P0 == -9223372036854775807L && j >= this.f18019k1 && (!this.f17996N0 || (z3 && m18602I1(j5, elapsedRealtime - j6)))) {
            long nanoTime = System.nanoTime();
            m18564w1(j4, nanoTime, format, this.f18006X0);
            if (C5515h0.f17876a >= 21) {
                m18615B1(mediaCodec, i, j4, nanoTime);
                return true;
            }
            m18617A1(mediaCodec, i, j4);
            return true;
        } else if (!z3 || j == this.f17997O0) {
            return false;
        } else {
            long nanoTime2 = System.nanoTime();
            long m18551b = this.f17983A0.m18551b(j3, ((j5 - (elapsedRealtime - j2)) * 1000) + nanoTime2);
            long j7 = (m18551b - nanoTime2) / 1000;
            boolean z4 = this.f17998P0 != -9223372036854775807L;
            if (m18606G1(j7, j2, z2) && m18571q1(mediaCodec, i, j4, j, z4)) {
                return false;
            }
            if (m18603H1(j7, j2, z2)) {
                if (z4) {
                    m18598K1(mediaCodec, i, j4);
                    return true;
                }
                m18583h1(mediaCodec, i, j4);
                return true;
            } else if (C5515h0.f17876a >= 21) {
                if (j7 >= 50000) {
                    return false;
                }
                m18564w1(j4, m18551b, format, this.f18006X0);
                m18615B1(mediaCodec, i, j4, m18551b);
                return true;
            } else if (j7 >= 30000) {
                return false;
            } else {
                if (j7 > 11000) {
                    try {
                        Thread.sleep((j7 - OkHttpUtils.DEFAULT_MILLISECONDS) / 1000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                m18564w1(j4, m18551b, format, this.f18006X0);
                m18617A1(mediaCodec, i, j4);
                return true;
            }
        }
    }

    /* renamed from: H1 */
    protected boolean m18603H1(long j, long j2, boolean z) {
        return m18573o1(j) && !z;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: I */
    public void mo18511I(long j, boolean z) {
        super.mo18511I(j, z);
        m18589c1();
        this.f17997O0 = -9223372036854775807L;
        this.f18001S0 = 0;
        this.f18018j1 = -9223372036854775807L;
        int i = this.f18020l1;
        if (i != 0) {
            this.f18019k1 = this.f17988F0[i - 1];
            this.f18020l1 = 0;
        }
        if (z) {
            m18611D1();
        } else {
            this.f17998P0 = -9223372036854775807L;
        }
    }

    /* renamed from: I1 */
    protected boolean m18602I1(long j, long j2) {
        return m18573o1(j) && j2 > 100000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: J */
    public void mo18601J() {
        try {
            super.mo18601J();
            Surface surface = this.f17994L0;
            if (surface == null) {
                return;
            }
            if (this.f17993K0 == surface) {
                this.f17993K0 = null;
            }
            surface.release();
            this.f17994L0 = null;
        } catch (Throwable th) {
            if (this.f17994L0 != null) {
                Surface surface2 = this.f17993K0;
                Surface surface3 = this.f17994L0;
                if (surface2 == surface3) {
                    this.f17993K0 = null;
                }
                surface3.release();
                this.f17994L0 = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: K */
    public void mo18599K() {
        super.mo18599K();
        this.f18000R0 = 0;
        this.f17999Q0 = SystemClock.elapsedRealtime();
        this.f18003U0 = SystemClock.elapsedRealtime() * 1000;
    }

    /* renamed from: K1 */
    protected void m18598K1(MediaCodec mediaCodec, int i, long j) {
        C5511f0.m18893a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C5511f0.m18891c();
        this.f16046v0.f14770f++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: L */
    public void mo18597L() {
        this.f17998P0 = -9223372036854775807L;
        m18570r1();
        super.mo18597L();
    }

    /* renamed from: L1 */
    protected void m18596L1(int i) {
        C4857d c4857d = this.f16046v0;
        c4857d.f14771g += i;
        this.f18000R0 += i;
        int i2 = this.f18001S0 + i;
        this.f18001S0 = i2;
        c4857d.f14772h = Math.max(i2, c4857d.f14772h);
        int i3 = this.f17986D0;
        if (i3 <= 0 || this.f18000R0 < i3) {
            return;
        }
        m18570r1();
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: M */
    public void mo18510M(Format[] formatArr, long j) {
        if (this.f18019k1 == -9223372036854775807L) {
            this.f18019k1 = j;
        } else {
            int i = this.f18020l1;
            if (i == this.f17988F0.length) {
                C5526o.m18742f("MediaCodecVideoRenderer", "Too many stream changes, so dropping offset: " + this.f17988F0[this.f18020l1 - 1]);
            } else {
                this.f18020l1 = i + 1;
            }
            long[] jArr = this.f17988F0;
            int i2 = this.f18020l1;
            jArr[i2 - 1] = j;
            this.f17989G0[i2 - 1] = this.f18018j1;
        }
        super.mo18510M(formatArr, j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: M0 */
    public void mo18595M0() {
        try {
            super.mo18595M0();
        } finally {
            this.f18002T0 = 0;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: Q */
    protected int mo18594Q(MediaCodec mediaCodec, C5115e c5115e, Format format, Format format2) {
        if (c5115e.m20412o(format, format2, true)) {
            int i = format2.f14466q;
            C5548a c5548a = this.f17990H0;
            if (i > c5548a.f18023a || format2.f14467r > c5548a.f18024b || m18576m1(c5115e, format2) > this.f17990H0.f18025c) {
                return 0;
            }
            return format.m21755G(format2) ? 3 : 2;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: V0 */
    protected boolean mo18593V0(C5115e c5115e) {
        return this.f17993K0 != null || m18600J1(c5115e);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: X0 */
    protected int mo18592X0(AbstractC5116f abstractC5116f, AbstractC5040k<C5049o> abstractC5040k, Format format) {
        if (!C5529r.m18723n(format.f14461l)) {
            return C5191s0.m20194a(0);
        }
        DrmInitData drmInitData = format.f14464o;
        boolean z = drmInitData != null;
        List<C5115e> m18578l1 = m18578l1(abstractC5116f, format, z, false);
        List<C5115e> list = m18578l1;
        if (z) {
            list = m18578l1;
            if (m18578l1.isEmpty()) {
                list = m18578l1(abstractC5116f, format, false, false);
            }
        }
        if (list.isEmpty()) {
            return C5191s0.m20194a(1);
        }
        if (!(drmInitData == null || C5049o.class.equals(format.f14451F) || (format.f14451F == null && AbstractC5415u.m19262P(abstractC5040k, drmInitData)))) {
            return C5191s0.m20194a(2);
        }
        C5115e c5115e = list.get(0);
        boolean m20415l = c5115e.m20415l(format);
        int i = c5115e.m20413n(format) ? 16 : 8;
        int i2 = 0;
        if (m20415l) {
            List<C5115e> m18578l12 = m18578l1(abstractC5116f, format, z, true);
            i2 = 0;
            if (!m18578l12.isEmpty()) {
                C5115e c5115e2 = m18578l12.get(0);
                i2 = 0;
                if (c5115e2.m20415l(format)) {
                    i2 = 0;
                    if (c5115e2.m20413n(format)) {
                        i2 = 32;
                    }
                }
            }
        }
        return C5191s0.m20193b(m20415l ? 4 : 3, i, i2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: Z */
    protected void mo18591Z(C5115e c5115e, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        String str = c5115e.f16074c;
        C5548a m18580k1 = m18580k1(c5115e, format, m19267D());
        this.f17990H0 = m18580k1;
        MediaFormat m18574n1 = m18574n1(format, str, m18580k1, f, this.f17987E0, this.f18016h1);
        if (this.f17993K0 == null) {
            C5508e.m18910f(m18600J1(c5115e));
            if (this.f17994L0 == null) {
                this.f17994L0 = DummySurface.m18622d(this.f18022z0, c5115e.f16078g);
            }
            this.f17993K0 = this.f17994L0;
        }
        mediaCodec.configure(m18574n1, this.f17993K0, mediaCrypto, 0);
        if (C5515h0.f17876a < 23 || !this.f18015g1) {
            return;
        }
        this.f18017i1 = new C5549b(mediaCodec);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: e */
    public boolean mo18505e() {
        Surface surface;
        if (super.mo18505e() && (this.f17996N0 || (((surface = this.f17994L0) != null && this.f17993K0 == surface) || m20480i0() == null || this.f18015g1))) {
            this.f17998P0 = -9223372036854775807L;
            return true;
        } else if (this.f17998P0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f17998P0) {
                return true;
            }
            this.f17998P0 = -9223372036854775807L;
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:553:0x0f20  */
    /* renamed from: e1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean m18587e1(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 3908
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.m18587e1(java.lang.String):boolean");
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: g0 */
    public boolean mo18585g0() {
        try {
            return super.mo18585g0();
        } finally {
            this.f18002T0 = 0;
        }
    }

    /* renamed from: h1 */
    protected void m18583h1(MediaCodec mediaCodec, int i, long j) {
        C5511f0.m18893a("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C5511f0.m18891c();
        m18596L1(1);
    }

    /* renamed from: k1 */
    protected C5548a m18580k1(C5115e c5115e, Format format, Format[] formatArr) {
        int i = format.f14466q;
        int i2 = format.f14467r;
        int m18576m1 = m18576m1(c5115e, format);
        if (formatArr.length == 1) {
            int i3 = m18576m1;
            if (m18576m1 != -1) {
                int m18582i1 = m18582i1(c5115e, format.f14461l, format.f14466q, format.f14467r);
                i3 = m18576m1;
                if (m18582i1 != -1) {
                    i3 = Math.min((int) (m18576m1 * 1.5f), m18582i1);
                }
            }
            return new C5548a(i, i2, i3);
        }
        int length = formatArr.length;
        int i4 = 0;
        boolean z = false;
        int i5 = i2;
        while (i4 < length) {
            Format format2 = formatArr[i4];
            int i6 = i;
            int i7 = i5;
            int i8 = m18576m1;
            boolean z2 = z;
            if (c5115e.m20412o(format, format2, false)) {
                int i9 = format2.f14466q;
                z2 = z | (i9 == -1 || format2.f14467r == -1);
                i6 = Math.max(i, i9);
                i7 = Math.max(i5, format2.f14467r);
                i8 = Math.max(m18576m1, m18576m1(c5115e, format2));
            }
            i4++;
            i = i6;
            i5 = i7;
            m18576m1 = i8;
            z = z2;
        }
        int i10 = i;
        int i11 = i5;
        int i12 = m18576m1;
        if (z) {
            C5526o.m18742f("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i + "x" + i5);
            Point m18581j1 = m18581j1(c5115e, format);
            i10 = i;
            i11 = i5;
            i12 = m18576m1;
            if (m18581j1 != null) {
                i10 = Math.max(i, m18581j1.x);
                i11 = Math.max(i5, m18581j1.y);
                i12 = Math.max(m18576m1, m18582i1(c5115e, format.f14461l, i10, i11));
                C5526o.m18742f("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i10 + "x" + i11);
            }
        }
        return new C5548a(i10, i11, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: l0 */
    protected boolean mo18579l0() {
        return this.f18015g1 && C5515h0.f17876a < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: m0 */
    protected float mo18577m0(float f, Format format, Format[] formatArr) {
        float f2;
        int length = formatArr.length;
        int i = 0;
        float f3 = -1.0f;
        while (true) {
            f2 = f3;
            if (i >= length) {
                break;
            }
            float f4 = formatArr[i].f14468s;
            float f5 = f2;
            if (f4 != -1.0f) {
                f5 = Math.max(f2, f4);
            }
            i++;
            f3 = f5;
        }
        return f2 == -1.0f ? -1.0f : f2 * f;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: n0 */
    protected List<C5115e> mo18575n0(AbstractC5116f abstractC5116f, Format format, boolean z) {
        return m18578l1(abstractC5116f, format, z, this.f18015g1);
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: n1 */
    protected MediaFormat m18574n1(Format format, String str, C5548a c5548a, float f, boolean z, int i) {
        Pair<Integer, Integer> m20452h;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.f14466q);
        mediaFormat.setInteger("height", format.f14467r);
        C5118g.m20396e(mediaFormat, format.f14463n);
        C5118g.m20398c(mediaFormat, "frame-rate", format.f14468s);
        C5118g.m20397d(mediaFormat, "rotation-degrees", format.f14469t);
        C5118g.m20399b(mediaFormat, format.f14473x);
        if ("video/dolby-vision".equals(format.f14461l) && (m20452h = MediaCodecUtil.m20452h(format)) != null) {
            C5118g.m20397d(mediaFormat, "profile", ((Integer) m20452h.first).intValue());
        }
        mediaFormat.setInteger("max-width", c5548a.f18023a);
        mediaFormat.setInteger("max-height", c5548a.f18024b);
        C5118g.m20397d(mediaFormat, "max-input-size", c5548a.f18025c);
        if (C5515h0.f17876a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            m18586f1(mediaFormat, i);
        }
        return mediaFormat;
    }

    /* renamed from: q1 */
    protected boolean m18571q1(MediaCodec mediaCodec, int i, long j, long j2, boolean z) {
        int m19263O = m19263O(j2);
        if (m19263O == 0) {
            return false;
        }
        C4857d c4857d = this.f16046v0;
        c4857d.f14773i++;
        int i2 = this.f18002T0 + m19263O;
        if (z) {
            c4857d.f14770f += i2;
        } else {
            m18596L1(i2);
        }
        m20482f0();
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u, com.google.android.exoplayer2.C5179p0.AbstractC5181b
    /* renamed from: r */
    public void mo18503r(int i, Object obj) {
        if (i == 1) {
            m18607F1((Surface) obj);
        } else if (i != 4) {
            if (i == 6) {
                this.f18021m1 = (AbstractC5563m) obj;
            } else {
                super.mo18503r(i, obj);
            }
        } else {
            this.f17995M0 = ((Integer) obj).intValue();
            MediaCodec m20480i0 = m20480i0();
            if (m20480i0 == null) {
                return;
            }
            m20480i0.setVideoScalingMode(this.f17995M0);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: s0 */
    protected void mo18569s0(C4858e c4858e) {
        if (!this.f17992J0) {
            return;
        }
        ByteBuffer byteBuffer = (ByteBuffer) C5508e.m18911e(c4858e.f14777g);
        if (byteBuffer.remaining() < 7) {
            return;
        }
        byte b = byteBuffer.get();
        short s = byteBuffer.getShort();
        short s2 = byteBuffer.getShort();
        byte b2 = byteBuffer.get();
        byte b3 = byteBuffer.get();
        byteBuffer.position(0);
        if (b != -75 || s != 60 || s2 != 1 || b2 != 4 || b3 != 0) {
            return;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        byteBuffer.position(0);
        m18613C1(m20480i0(), bArr);
    }

    /* renamed from: s1 */
    void m18568s1() {
        if (!this.f17996N0) {
            this.f17996N0 = true;
            this.f17984B0.m18516t(this.f17993K0);
        }
    }

    /* renamed from: x1 */
    protected void m18563x1(long j) {
        Format m20487a1 = m20487a1(j);
        if (m20487a1 != null) {
            m18561z1(m20480i0(), m20487a1.f14466q, m20487a1.f14467r);
        }
        m18567t1();
        m18568s1();
        mo18610E0(j);
    }
}
