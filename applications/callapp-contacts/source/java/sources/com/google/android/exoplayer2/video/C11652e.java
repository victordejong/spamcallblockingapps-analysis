package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.callapp.contacts.model.Constants;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.C10935e;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.mediacodec.AbstractC11184f;
import com.google.android.exoplayer2.mediacodec.AbstractC11188h;
import com.google.android.exoplayer2.mediacodec.C11187g;
import com.google.android.exoplayer2.mediacodec.C11189i;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11598ae;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11620q;
import com.google.android.exoplayer2.video.AbstractC11663l;
import com.google.android.exoplayer2.video.C11659j;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.video.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/e.class */
public class C11652e extends MediaCodecRenderer {

    /* renamed from: f */
    private static final int[] f38818f = {Constants.BIG_SIZE_SCREEN, 1600, 1440, Constants.SMALL_SIZE_SCREEN, 960, 854, 640, 540, 480};

    /* renamed from: g */
    private static boolean f38819g;

    /* renamed from: h */
    private static boolean f38820h;

    /* renamed from: A */
    private long f38821A;

    /* renamed from: B */
    private int f38822B;

    /* renamed from: C */
    private int f38823C;

    /* renamed from: D */
    private int f38824D;

    /* renamed from: E */
    private long f38825E;

    /* renamed from: F */
    private long f38826F;

    /* renamed from: G */
    private long f38827G;

    /* renamed from: H */
    private int f38828H;

    /* renamed from: I */
    private int f38829I;

    /* renamed from: J */
    private int f38830J;

    /* renamed from: K */
    private int f38831K;

    /* renamed from: L */
    private float f38832L;

    /* renamed from: M */
    private int f38833M;

    /* renamed from: N */
    private int f38834N;

    /* renamed from: O */
    private int f38835O;

    /* renamed from: P */
    private float f38836P;

    /* renamed from: Q */
    private boolean f38837Q;

    /* renamed from: R */
    private int f38838R;

    /* renamed from: S */
    private AbstractC11658i f38839S;

    /* renamed from: a */
    C11654b f38840a;

    /* renamed from: i */
    private final Context f38841i;

    /* renamed from: j */
    private final C11659j f38842j;

    /* renamed from: k */
    private final AbstractC11663l.C11664a f38843k;

    /* renamed from: l */
    private final long f38844l;

    /* renamed from: m */
    private final int f38845m;

    /* renamed from: n */
    private final boolean f38846n;

    /* renamed from: o */
    private C11653a f38847o;

    /* renamed from: p */
    private boolean f38848p;

    /* renamed from: q */
    private boolean f38849q;

    /* renamed from: r */
    private Surface f38850r;

    /* renamed from: s */
    private Surface f38851s;

    /* renamed from: t */
    private boolean f38852t;

    /* renamed from: u */
    private int f38853u;

    /* renamed from: v */
    private boolean f38854v;

    /* renamed from: w */
    private boolean f38855w;

    /* renamed from: x */
    private boolean f38856x;

    /* renamed from: y */
    private long f38857y;

    /* renamed from: z */
    private long f38858z;

    /* renamed from: com.google.android.exoplayer2.video.e$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/e$a.class */
    protected static final class C11653a {

        /* renamed from: a */
        public final int f38859a;

        /* renamed from: b */
        public final int f38860b;

        /* renamed from: c */
        public final int f38861c;

        public C11653a(int i, int i2, int i3) {
            this.f38859a = i;
            this.f38860b = i2;
            this.f38861c = i3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.e$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/e$b.class */
    public final class C11654b implements Handler.Callback, AbstractC11184f.AbstractC11186b {

        /* renamed from: b */
        private final Handler f38863b;

        public C11654b(AbstractC11184f abstractC11184f) {
            C11652e.this = r5;
            Handler m19985a = C11599af.m19985a((Handler.Callback) this);
            this.f38863b = m19985a;
            abstractC11184f.mo21223a(this, m19985a);
        }

        /* renamed from: b */
        private void m19679b(long j) {
            if (this != C11652e.this.f38840a) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                C11652e.this.m21339L();
                return;
            }
            try {
                C11652e.this.m19689e(j);
            } catch (ExoPlaybackException e) {
                C11652e.this.m21323a(e);
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f.AbstractC11186b
        /* renamed from: a */
        public final void mo19680a(long j) {
            if (C11599af.f38648a >= 30) {
                m19679b(j);
                return;
            }
            this.f38863b.sendMessageAtFrontOfQueue(Message.obtain(this.f38863b, 0, (int) (j >> 32), (int) j));
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            m19679b(C11599af.m19950b(message.arg1, message.arg2));
            return true;
        }
    }

    public C11652e(Context context, AbstractC11184f.AbstractC11185a abstractC11185a, AbstractC11188h abstractC11188h, long j, boolean z, Handler handler, AbstractC11663l abstractC11663l, int i) {
        super(2, abstractC11185a, abstractC11188h, z, 30.0f);
        this.f38844l = j;
        this.f38845m = i;
        Context applicationContext = context.getApplicationContext();
        this.f38841i = applicationContext;
        this.f38842j = new C11659j(applicationContext);
        this.f38843k = new AbstractC11663l.C11664a(handler, abstractC11663l);
        this.f38846n = "NVIDIA".equals(C11599af.f38650c);
        this.f38858z = -9223372036854775807L;
        this.f38829I = -1;
        this.f38830J = -1;
        this.f38832L = -1.0f;
        this.f38853u = 1;
        this.f38838R = 0;
        m19725Q();
    }

    public C11652e(Context context, AbstractC11188h abstractC11188h) {
        this(context, abstractC11188h, 0L);
    }

    public C11652e(Context context, AbstractC11188h abstractC11188h, long j) {
        this(context, abstractC11188h, j, null, null, -1);
    }

    public C11652e(Context context, AbstractC11188h abstractC11188h, long j, Handler handler, AbstractC11663l abstractC11663l, int i) {
        this(context, AbstractC11184f.AbstractC11185a.f36735a, abstractC11188h, j, false, handler, abstractC11663l, i);
    }

    public C11652e(Context context, AbstractC11188h abstractC11188h, long j, boolean z, Handler handler, AbstractC11663l abstractC11663l, int i) {
        this(context, AbstractC11184f.AbstractC11185a.f36735a, abstractC11188h, j, z, handler, abstractC11663l, i);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: N */
    private void m19728N() {
        this.f38858z = this.f38844l > 0 ? SystemClock.elapsedRealtime() + this.f38844l : (char) 1;
    }

    /* renamed from: O */
    private void m19727O() {
        AbstractC11184f E;
        this.f38854v = false;
        if (C11599af.f38648a < 23 || !this.f38837Q || (E = m21345E()) == null) {
            return;
        }
        this.f38840a = new C11654b(E);
    }

    /* renamed from: P */
    private void m19726P() {
        this.f38856x = true;
        if (!this.f38854v) {
            this.f38854v = true;
            this.f38843k.m19655a(this.f38850r);
            this.f38852t = true;
        }
    }

    /* renamed from: Q */
    private void m19725Q() {
        this.f38833M = -1;
        this.f38834N = -1;
        this.f38836P = -1.0f;
        this.f38835O = -1;
    }

    /* renamed from: R */
    private void m19724R() {
        int i = this.f38829I;
        if (i == -1 && this.f38830J == -1) {
            return;
        }
        if (this.f38833M == i && this.f38834N == this.f38830J && this.f38835O == this.f38831K && this.f38836P == this.f38832L) {
            return;
        }
        this.f38843k.m19658a(i, this.f38830J, this.f38831K, this.f38832L);
        this.f38833M = this.f38829I;
        this.f38834N = this.f38830J;
        this.f38835O = this.f38831K;
        this.f38836P = this.f38832L;
    }

    /* renamed from: S */
    private void m19723S() {
        int i = this.f38833M;
        if (i == -1 && this.f38834N == -1) {
            return;
        }
        this.f38843k.m19658a(i, this.f38834N, this.f38835O, this.f38836P);
    }

    /* renamed from: T */
    private void m19722T() {
        if (this.f38822B > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f38843k.m19657a(this.f38822B, elapsedRealtime - this.f38821A);
            this.f38822B = 0;
            this.f38821A = elapsedRealtime;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static int m19707a(C11187g c11187g, String str, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1851077871:
                if (str.equals("video/dolby-vision")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    z = true;
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
                if ("BRAVIA 4K 2015".equals(C11599af.f38651d)) {
                    return -1;
                }
                if ("Amazon".equals(C11599af.f38650c)) {
                    if ("KFSOWI".equals(C11599af.f38651d)) {
                        return -1;
                    }
                    if ("AFTS".equals(C11599af.f38651d) && c11187g.f36742g) {
                        return -1;
                    }
                }
                i4 = C11599af.m19998a(i, 16) * C11599af.m19998a(i2, 16) * 16 * 16;
                i3 = 2;
                break;
            case true:
            case true:
            case true:
                i4 = i * i2;
                i3 = 2;
                break;
            case true:
            case true:
                i4 = i * i2;
                i3 = 4;
                break;
            default:
                return -1;
        }
        return (i4 * 3) / (i3 * 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0102, code lost:
        if (r9 == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0105, code lost:
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x010b, code lost:
        r8 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010f, code lost:
        if (r9 == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0115, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0125, code lost:
        return new android.graphics.Point(r8, r16);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point m19710a(com.google.android.exoplayer2.mediacodec.C11187g r6, com.google.android.exoplayer2.Format r7) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.C11652e.m19710a(com.google.android.exoplayer2.mediacodec.g, com.google.android.exoplayer2.Format):android.graphics.Point");
    }

    /* renamed from: a */
    private static List<C11187g> m19704a(AbstractC11188h abstractC11188h, Format format, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
        Pair<Integer, Integer> m21306a;
        String str = format.sampleMimeType;
        if (str == null) {
            return Collections.emptyList();
        }
        List<C11187g> m21297a = MediaCodecUtil.m21297a(abstractC11188h.getDecoderInfos(str, z, z2), format);
        if ("video/dolby-vision".equals(str) && (m21306a = MediaCodecUtil.m21306a(format)) != null) {
            int intValue = ((Integer) m21306a.first).intValue();
            if (intValue == 16 || intValue == 256) {
                m21297a.addAll(abstractC11188h.getDecoderInfos("video/hevc", z, z2));
            } else if (intValue == 512) {
                m21297a.addAll(abstractC11188h.getDecoderInfos("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(m21297a);
    }

    /* renamed from: a */
    private void m19718a(long j, long j2, Format format) {
        AbstractC11658i abstractC11658i = this.f38839S;
        if (abstractC11658i != null) {
            m21344F();
            abstractC11658i.mo19677a(j, j2, format);
        }
    }

    /* renamed from: a */
    private void m19713a(AbstractC11184f abstractC11184f, int i) {
        C11598ae.m20002a("skipVideoBuffer");
        abstractC11184f.mo21229a(i, false);
        C11598ae.m20003a();
        this.f36655e.f35362f++;
    }

    /* renamed from: a */
    private void m19712a(AbstractC11184f abstractC11184f, int i, long j) {
        m19724R();
        C11598ae.m20002a("releaseOutputBuffer");
        abstractC11184f.mo21231a(i, j);
        C11598ae.m20003a();
        this.f38826F = SystemClock.elapsedRealtime() * 1000;
        this.f36655e.f35361e++;
        this.f38823C = 0;
        m19726P();
    }

    /* renamed from: b */
    private static int m19692b(C11187g c11187g, Format format) {
        if (format.maxInputSize != -1) {
            int size = format.initializationData.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += format.initializationData.get(i2).length;
            }
            return format.maxInputSize + i;
        }
        return m19707a(c11187g, format.sampleMimeType, format.width, format.height);
    }

    /* renamed from: b */
    private void m19696b(int i) {
        this.f36655e.f35363g += i;
        this.f38822B += i;
        this.f38823C += i;
        this.f36655e.f35364h = Math.max(this.f38823C, this.f36655e.f35364h);
        int i2 = this.f38845m;
        if (i2 <= 0 || this.f38822B < i2) {
            return;
        }
        m19722T();
    }

    /* renamed from: b */
    private void m19694b(AbstractC11184f abstractC11184f, int i) {
        m19724R();
        C11598ae.m20002a("releaseOutputBuffer");
        abstractC11184f.mo21229a(i, true);
        C11598ae.m20003a();
        this.f38826F = SystemClock.elapsedRealtime() * 1000;
        this.f36655e.f35361e++;
        this.f38823C = 0;
        m19726P();
    }

    /* renamed from: b */
    private boolean m19693b(C11187g c11187g) {
        if (C11599af.f38648a < 23 || this.f38837Q || m19691b(c11187g.f36736a)) {
            return false;
        }
        return !c11187g.f36742g || DummySurface.isSecureSupported(this.f38841i);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0113 A[FALL_THROUGH] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m19691b(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 4404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.C11652e.m19691b(java.lang.String):boolean");
    }

    /* renamed from: f */
    private void m19688f(long j) {
        this.f36655e.m21914a(j);
        this.f38827G += j;
        this.f38828H++;
    }

    /* renamed from: g */
    private static boolean m19687g(long j) {
        return j < -30000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: A */
    public final void mo19731A() {
        super.mo19731A();
        m19727O();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: D */
    public final boolean mo19730D() {
        return this.f38837Q && C11599af.f38648a < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: J */
    public final void mo19729J() {
        super.mo19729J();
        this.f38824D = 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final float mo19720a(float f, Format[] formatArr) {
        float f2;
        int length = formatArr.length;
        int i = 0;
        float f3 = -1.0f;
        while (true) {
            f2 = f3;
            if (i >= length) {
                break;
            }
            float f4 = formatArr[i].frameRate;
            float f5 = f2;
            if (f4 != -1.0f) {
                f5 = Math.max(f2, f4);
            }
            i++;
            f3 = f5;
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final int mo19706a(AbstractC11188h abstractC11188h, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!C11620q.m19851b(format.sampleMimeType)) {
            return 0;
        }
        boolean z = format.drmInitData != null;
        List<C11187g> m19704a = m19704a(abstractC11188h, format, z, false);
        List<C11187g> list = m19704a;
        if (z) {
            list = m19704a;
            if (m19704a.isEmpty()) {
                list = m19704a(abstractC11188h, format, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!m21314c(format)) {
            return 2;
        }
        C11187g c11187g = list.get(0);
        boolean m21247a = c11187g.m21247a(format);
        int i = c11187g.m21241b(format) ? 16 : 8;
        int i2 = 0;
        if (m21247a) {
            List<C11187g> m19704a2 = m19704a(abstractC11188h, format, z, true);
            i2 = 0;
            if (!m19704a2.isEmpty()) {
                C11187g c11187g2 = m19704a2.get(0);
                i2 = 0;
                if (c11187g2.m21247a(format)) {
                    i2 = 0;
                    if (c11187g2.m21241b(format)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (m21247a ? 4 : 3) | i | i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002c, code lost:
        if (r11.height > r8.f38847o.f38860b) goto L6;
     */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.decoder.C10935e mo19709a(com.google.android.exoplayer2.mediacodec.C11187g r9, com.google.android.exoplayer2.Format r10, com.google.android.exoplayer2.Format r11) {
        /*
            r8 = this;
            r0 = r9
            r1 = r10
            r2 = r11
            com.google.android.exoplayer2.decoder.e r0 = r0.m21246a(r1, r2)
            r12 = r0
            r0 = r12
            int r0 = r0.f35372e
            r13 = r0
            r0 = r11
            int r0 = r0.width
            r1 = r8
            com.google.android.exoplayer2.video.e$a r1 = r1.f38847o
            int r1 = r1.f38859a
            if (r0 > r1) goto L2f
            r0 = r13
            r14 = r0
            r0 = r11
            int r0 = r0.height
            r1 = r8
            com.google.android.exoplayer2.video.e$a r1 = r1.f38847o
            int r1 = r1.f38860b
            if (r0 <= r1) goto L37
        L2f:
            r0 = r13
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 | r1
            r14 = r0
        L37:
            r0 = r14
            r13 = r0
            r0 = r9
            r1 = r11
            int r0 = m19692b(r0, r1)
            r1 = r8
            com.google.android.exoplayer2.video.e$a r1 = r1.f38847o
            int r1 = r1.f38861c
            if (r0 <= r1) goto L51
            r0 = r14
            r1 = 64
            r0 = r0 | r1
            r13 = r0
        L51:
            r0 = r9
            java.lang.String r0 = r0.f36736a
            r9 = r0
            r0 = r13
            if (r0 == 0) goto L61
            r0 = 0
            r14 = r0
            goto L68
        L61:
            r0 = r12
            int r0 = r0.f35371d
            r14 = r0
        L68:
            com.google.android.exoplayer2.decoder.e r0 = new com.google.android.exoplayer2.decoder.e
            r1 = r0
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r14
            r6 = r13
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.C11652e.mo19709a(com.google.android.exoplayer2.mediacodec.g, com.google.android.exoplayer2.Format, com.google.android.exoplayer2.Format):com.google.android.exoplayer2.decoder.e");
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final C10935e mo19703a(C11258q c11258q) throws ExoPlaybackException {
        C10935e mo19703a = super.mo19703a(c11258q);
        this.f38843k.m19654a(c11258q.f36928b, mo19703a);
        return mo19703a;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final MediaCodecDecoderException mo19698a(Throwable th, C11187g c11187g) {
        return new MediaCodecVideoDecoderException(th, c11187g, this.f38850r);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final List<C11187g> mo19705a(AbstractC11188h abstractC11188h, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return m19704a(abstractC11188h, format, z, this.f38837Q);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e, com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public final void mo19721a(float f, float f2) throws ExoPlaybackException {
        super.mo19721a(f, f2);
        C11659j c11659j = this.f38842j;
        c11659j.f38892h = f;
        c11659j.m19676a();
        c11659j.m19674a(false);
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e, com.google.android.exoplayer2.C10847ad.AbstractC10849b
    /* renamed from: a */
    public final void mo19719a(int i, Object obj) throws ExoPlaybackException {
        if (i != 1) {
            if (i == 4) {
                this.f38853u = ((Integer) obj).intValue();
                AbstractC11184f E = m21345E();
                if (E == null) {
                    return;
                }
                E.mo21219c(this.f38853u);
                return;
            } else if (i == 6) {
                this.f38839S = (AbstractC11658i) obj;
                return;
            } else if (i != 102) {
                super.mo19719a(i, obj);
                return;
            } else {
                int intValue = ((Integer) obj).intValue();
                if (this.f38838R == intValue) {
                    return;
                }
                this.f38838R = intValue;
                if (!this.f38837Q) {
                    return;
                }
                m21342H();
                return;
            }
        }
        Surface surface = (Surface) obj;
        DummySurface dummySurface = surface;
        if (surface == null) {
            dummySurface = this.f38851s;
            if (dummySurface == null) {
                C11187g G = m21343G();
                dummySurface = surface;
                if (G != null) {
                    dummySurface = surface;
                    if (m19693b(G)) {
                        dummySurface = DummySurface.newInstanceV17(this.f38841i, G.f36742g);
                        this.f38851s = dummySurface;
                    }
                }
            }
        }
        if (this.f38850r == dummySurface) {
            if (dummySurface == null || dummySurface == this.f38851s) {
                return;
            }
            m19723S();
            if (!this.f38852t) {
                return;
            }
            this.f38843k.m19655a(this.f38850r);
            return;
        }
        this.f38850r = dummySurface;
        C11659j c11659j = this.f38842j;
        Surface surface2 = dummySurface instanceof DummySurface ? null : dummySurface;
        if (c11659j.f38890f != surface2) {
            c11659j.m19672c();
            c11659j.f38890f = surface2;
            c11659j.m19674a(true);
        }
        this.f38852t = false;
        int C_ = mo21813C_();
        AbstractC11184f E2 = m21345E();
        if (E2 != null) {
            if (C11599af.f38648a < 23 || dummySurface == null || this.f38848p) {
                m21342H();
                m21346C();
            } else {
                E2.mo21225a(dummySurface);
            }
        }
        if (dummySurface == null || dummySurface == this.f38851s) {
            m19725Q();
            m19727O();
            return;
        }
        m19723S();
        m19727O();
        if (C_ != 2) {
            return;
        }
        m19728N();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19716a(long j, boolean z) throws ExoPlaybackException {
        super.mo19716a(j, z);
        m19727O();
        this.f38842j.m19676a();
        this.f38825E = -9223372036854775807L;
        this.f38857y = -9223372036854775807L;
        this.f38823C = 0;
        if (z) {
            m19728N();
        } else {
            this.f38858z = -9223372036854775807L;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19715a(Format format, MediaFormat mediaFormat) {
        int i;
        AbstractC11184f E = m21345E();
        if (E != null) {
            E.mo21219c(this.f38853u);
        }
        if (this.f38837Q) {
            this.f38829I = format.width;
            i = format.height;
        } else {
            C11593a.m20020b(mediaFormat);
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            this.f38829I = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            i = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        }
        this.f38830J = i;
        this.f38832L = format.pixelWidthHeightRatio;
        if (C11599af.f38648a < 21) {
            this.f38831K = format.rotationDegrees;
        } else if (format.rotationDegrees == 90 || format.rotationDegrees == 270) {
            int i2 = this.f38829I;
            this.f38829I = this.f38830J;
            this.f38830J = i2;
            this.f38832L = 1.0f / this.f38832L;
        }
        C11659j c11659j = this.f38842j;
        c11659j.f38891g = format.frameRate;
        C11649c c11649c = c11659j.f38885a;
        c11649c.f38801a.m19736a();
        c11649c.f38802b.m19736a();
        c11649c.f38803c = false;
        c11649c.f38805e = -9223372036854775807L;
        c11649c.f38806f = 0;
        c11659j.m19673b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19714a(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (!this.f38837Q) {
            this.f38824D++;
        }
        if (C11599af.f38648a >= 23 || !this.f38837Q) {
            return;
        }
        m19689e(decoderInputBuffer.f35338e);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19708a(C11187g c11187g, AbstractC11184f abstractC11184f, Format format, MediaCrypto mediaCrypto, float f) {
        C11653a c11653a;
        Pair<Integer, Integer> m21306a;
        String str = c11187g.f36738c;
        Format[] u = m21790u();
        int i = format.width;
        int i2 = format.height;
        int m19692b = m19692b(c11187g, format);
        if (u.length == 1) {
            int i3 = m19692b;
            if (m19692b != -1) {
                int m19707a = m19707a(c11187g, format.sampleMimeType, format.width, format.height);
                i3 = m19692b;
                if (m19707a != -1) {
                    i3 = Math.min((int) (m19692b * 1.5f), m19707a);
                }
            }
            c11653a = new C11653a(i, i2, i3);
        } else {
            int length = u.length;
            int i4 = 0;
            boolean z = false;
            int i5 = i2;
            while (i4 < length) {
                Format format2 = u[i4];
                Format format3 = format2;
                if (format.colorInfo != null) {
                    format3 = format2;
                    if (format2.colorInfo == null) {
                        Format.C10828a buildUpon = format2.buildUpon();
                        buildUpon.f34804w = format.colorInfo;
                        format3 = buildUpon.m22321a();
                    }
                }
                int i6 = i;
                int i7 = i5;
                int i8 = m19692b;
                boolean z2 = z;
                if (c11187g.m21246a(format, format3).f35371d != 0) {
                    z2 = z | (format3.width == -1 || format3.height == -1);
                    i6 = Math.max(i, format3.width);
                    i7 = Math.max(i5, format3.height);
                    i8 = Math.max(m19692b, m19692b(c11187g, format3));
                }
                i4++;
                i = i6;
                i5 = i7;
                m19692b = i8;
                z = z2;
            }
            int i9 = i;
            int i10 = i5;
            int i11 = m19692b;
            if (z) {
                C11617n.m19863a("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i + "x" + i5);
                Point m19710a = m19710a(c11187g, format);
                i9 = i;
                i10 = i5;
                i11 = m19692b;
                if (m19710a != null) {
                    i9 = Math.max(i, m19710a.x);
                    i10 = Math.max(i5, m19710a.y);
                    i11 = Math.max(m19692b, m19707a(c11187g, format.sampleMimeType, i9, i10));
                    C11617n.m19863a("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i9 + "x" + i10);
                }
            }
            c11653a = new C11653a(i9, i10, i11);
        }
        this.f38847o = c11653a;
        boolean z3 = this.f38846n;
        int i12 = this.f38837Q ? this.f38838R : 0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        C11189i.m21235a(mediaFormat, format.initializationData);
        float f2 = format.frameRate;
        if (f2 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f2);
        }
        C11189i.m21236a(mediaFormat, "rotation-degrees", format.rotationDegrees);
        ColorInfo colorInfo = format.colorInfo;
        if (colorInfo != null) {
            C11189i.m21236a(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            C11189i.m21236a(mediaFormat, "color-standard", colorInfo.colorSpace);
            C11189i.m21236a(mediaFormat, "color-range", colorInfo.colorRange);
            byte[] bArr = colorInfo.hdrStaticInfo;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(format.sampleMimeType) && (m21306a = MediaCodecUtil.m21306a(format)) != null) {
            C11189i.m21236a(mediaFormat, "profile", ((Integer) m21306a.first).intValue());
        }
        mediaFormat.setInteger("max-width", c11653a.f38859a);
        mediaFormat.setInteger("max-height", c11653a.f38860b);
        C11189i.m21236a(mediaFormat, "max-input-size", c11653a.f38861c);
        if (C11599af.f38648a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z3) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i12 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i12);
        }
        if (this.f38850r == null) {
            if (!m19693b(c11187g)) {
                throw new IllegalStateException();
            }
            if (this.f38851s == null) {
                this.f38851s = DummySurface.newInstanceV17(this.f38841i, c11187g.f36742g);
            }
            this.f38850r = this.f38851s;
        }
        abstractC11184f.mo21227a(mediaFormat, this.f38850r, mediaCrypto);
        if (C11599af.f38648a < 23 || !this.f38837Q) {
            return;
        }
        this.f38840a = new C11654b(abstractC11184f);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19700a(String str) {
        this.f38843k.m19652a(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo19699a(String str, long j, long j2) {
        this.f38843k.m19651a(str, j, j2);
        this.f38848p = m19691b(str);
        C11187g c11187g = (C11187g) C11593a.m20020b(m21343G());
        boolean z = false;
        if (C11599af.f38648a >= 29) {
            z = false;
            if ("video/x-vnd.on2.vp9".equals(c11187g.f36737b)) {
                MediaCodecInfo.CodecProfileLevel[] m21253a = c11187g.m21253a();
                int length = m21253a.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (m21253a[i].profile == 16384) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.f38849q = z;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19697a(boolean z, boolean z2) throws ExoPlaybackException {
        super.mo19697a(z, z2);
        boolean z3 = m21789v().tunneling;
        C11593a.m20019b(!z3 || this.f38838R != 0);
        if (this.f38837Q != z3) {
            this.f38837Q = z3;
            m21342H();
        }
        this.f38843k.m19653a(this.f36655e);
        C11659j c11659j = this.f38842j;
        if (c11659j.f38886b != null) {
            ((C11659j.Choreographer$FrameCallbackC11661b) C11593a.m20020b(c11659j.f38887c)).f38906b.sendEmptyMessage(1);
            if (c11659j.f38888d != null) {
                C11659j.C11660a c11660a = c11659j.f38888d;
                c11660a.f38902a.registerDisplayListener(c11660a, C11599af.m20001a());
            }
            c11659j.m19671d();
        }
        this.f38855w = z2;
        this.f38856x = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c8, code lost:
        if ((r0.f38807a == 0 ? false : r0.f38809c[(int) ((r0.f38807a - 1) % 15)]) != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0243, code lost:
        if ((m19687g(r19) && r0 - r0 > 100000) != false) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0285  */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v177, types: [long] */
    /* JADX WARN: Type inference failed for: r0v213, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo19717a(long r10, long r12, com.google.android.exoplayer2.mediacodec.AbstractC11184f r14, java.nio.ByteBuffer r15, int r16, int r17, int r18, long r19, boolean r21, boolean r22, com.google.android.exoplayer2.Format r23) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 1319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.C11652e.mo19717a(long, long, com.google.android.exoplayer2.mediacodec.f, java.nio.ByteBuffer, int, int, int, long, boolean, boolean, com.google.android.exoplayer2.Format):boolean");
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final boolean mo19711a(C11187g c11187g) {
        return this.f38850r != null || m19693b(c11187g);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: b */
    public final void mo19695b(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (!this.f38849q) {
            return;
        }
        ByteBuffer byteBuffer = (ByteBuffer) C11593a.m20020b(decoderInputBuffer.f35339f);
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
        AbstractC11184f E = m21345E();
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        E.mo21226a(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: d */
    public final void mo19690d(long j) {
        super.mo19690d(j);
        if (!this.f38837Q) {
            this.f38824D--;
        }
    }

    /* renamed from: e */
    protected final void m19689e(long j) throws ExoPlaybackException {
        m21315c(j);
        m19724R();
        this.f36655e.f35361e++;
        m19726P();
        mo19690d(j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: p */
    public final void mo19686p() {
        super.mo19686p();
        this.f38822B = 0;
        this.f38821A = SystemClock.elapsedRealtime();
        this.f38826F = SystemClock.elapsedRealtime() * 1000;
        this.f38827G = 0L;
        this.f38828H = 0;
        C11659j c11659j = this.f38842j;
        c11659j.f38889e = true;
        c11659j.m19676a();
        c11659j.m19674a(false);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: q */
    public final void mo19685q() {
        this.f38858z = -9223372036854775807L;
        m19722T();
        int i = this.f38828H;
        if (i != 0) {
            this.f38843k.m19656a(this.f38827G, i);
            this.f38827G = 0L;
            this.f38828H = 0;
        }
        C11659j c11659j = this.f38842j;
        c11659j.f38889e = false;
        c11659j.m19672c();
        super.mo19685q();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: r */
    public final void mo19684r() {
        m19725Q();
        m19727O();
        this.f38852t = false;
        C11659j c11659j = this.f38842j;
        if (c11659j.f38886b != null) {
            if (c11659j.f38888d != null) {
                C11659j.C11660a c11660a = c11659j.f38888d;
                c11660a.f38902a.unregisterDisplayListener(c11660a);
            }
            ((C11659j.Choreographer$FrameCallbackC11661b) C11593a.m20020b(c11659j.f38887c)).f38906b.sendEmptyMessage(2);
        }
        this.f38840a = null;
        try {
            super.mo19684r();
        } finally {
            this.f38843k.m19645b(this.f36655e);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: s */
    public final void mo19683s() {
        try {
            super.mo19683s();
            Surface surface = this.f38851s;
            if (surface == null) {
                return;
            }
            if (this.f38850r == surface) {
                this.f38850r = null;
            }
            surface.release();
            this.f38851s = null;
        } catch (Throwable th) {
            if (this.f38851s != null) {
                Surface surface2 = this.f38850r;
                Surface surface3 = this.f38851s;
                if (surface2 == surface3) {
                    this.f38850r = null;
                }
                surface3.release();
                this.f38851s = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af, com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: x */
    public final String mo19682x() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: y */
    public final boolean mo19681y() {
        Surface surface;
        if (super.mo19681y() && (this.f38854v || (((surface = this.f38851s) != null && this.f38850r == surface) || m21345E() == null || this.f38837Q))) {
            this.f38858z = -9223372036854775807L;
            return true;
        } else if (this.f38858z == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f38858z) {
                return true;
            }
            this.f38858z = -9223372036854775807L;
            return false;
        }
    }
}
