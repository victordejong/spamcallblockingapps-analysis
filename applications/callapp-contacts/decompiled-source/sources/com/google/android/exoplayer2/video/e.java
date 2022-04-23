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
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.f;
import com.google.android.exoplayer2.mediacodec.g;
import com.google.android.exoplayer2.mediacodec.h;
import com.google.android.exoplayer2.mediacodec.i;
import com.google.android.exoplayer2.util.ae;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.q;
import com.google.android.exoplayer2.video.j;
import com.google.android.exoplayer2.video.l;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/e.class */
public class e extends MediaCodecRenderer {
    private static final int[] f = {Constants.BIG_SIZE_SCREEN, 1600, 1440, Constants.SMALL_SIZE_SCREEN, 960, 854, 640, 540, 480};
    private static boolean g;
    private static boolean h;
    private long A;
    private int B;
    private int C;
    private int D;
    private long E;
    private long F;
    private long G;
    private int H;
    private int I;
    private int J;
    private int K;
    private float L;
    private int M;
    private int N;
    private int O;
    private float P;
    private boolean Q;
    private int R;
    private i S;

    /* renamed from: a  reason: collision with root package name */
    b f22400a;
    private final Context i;
    private final j j;
    private final l.a k;
    private final long l;
    private final int m;
    private final boolean n;
    private a o;
    private boolean p;
    private boolean q;
    private Surface r;
    private Surface s;
    private boolean t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private long y;
    private long z;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/e$a.class */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f22401a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22402b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22403c;

        public a(int i, int i2, int i3) {
            this.f22401a = i;
            this.f22402b = i2;
            this.f22403c = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/e$b.class */
    public final class b implements Handler.Callback, f.b {

        /* renamed from: b  reason: collision with root package name */
        private final Handler f22405b;

        public b(f fVar) {
            Handler a2 = af.a((Handler.Callback) this);
            this.f22405b = a2;
            fVar.a(this, a2);
        }

        private void b(long j) {
            if (this == e.this.f22400a) {
                if (j == Long.MAX_VALUE) {
                    e.this.L();
                    return;
                }
                try {
                    e.this.e(j);
                } catch (ExoPlaybackException e) {
                    e.this.a(e);
                }
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.f.b
        public final void a(long j) {
            if (af.f22275a < 30) {
                this.f22405b.sendMessageAtFrontOfQueue(Message.obtain(this.f22405b, 0, (int) (j >> 32), (int) j));
                return;
            }
            b(j);
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(af.b(message.arg1, message.arg2));
            return true;
        }
    }

    public e(Context context, f.a aVar, h hVar, long j, boolean z, Handler handler, l lVar, int i) {
        super(2, aVar, hVar, z, 30.0f);
        this.l = j;
        this.m = i;
        Context applicationContext = context.getApplicationContext();
        this.i = applicationContext;
        this.j = new j(applicationContext);
        this.k = new l.a(handler, lVar);
        this.n = "NVIDIA".equals(af.f22277c);
        this.z = -9223372036854775807L;
        this.I = -1;
        this.J = -1;
        this.L = -1.0f;
        this.u = 1;
        this.R = 0;
        Q();
    }

    public e(Context context, h hVar) {
        this(context, hVar, 0L);
    }

    public e(Context context, h hVar, long j) {
        this(context, hVar, j, null, null, -1);
    }

    public e(Context context, h hVar, long j, Handler handler, l lVar, int i) {
        this(context, f.a.f21427a, hVar, j, false, handler, lVar, i);
    }

    public e(Context context, h hVar, long j, boolean z, Handler handler, l lVar, int i) {
        this(context, f.a.f21427a, hVar, j, z, handler, lVar, i);
    }

    private void N() {
        this.z = this.l > 0 ? SystemClock.elapsedRealtime() + this.l : -9223372036854775807L;
    }

    private void O() {
        f E;
        this.v = false;
        if (af.f22275a >= 23 && this.Q && (E = E()) != null) {
            this.f22400a = new b(E);
        }
    }

    private void P() {
        this.x = true;
        if (!this.v) {
            this.v = true;
            this.k.a(this.r);
            this.t = true;
        }
    }

    private void Q() {
        this.M = -1;
        this.N = -1;
        this.P = -1.0f;
        this.O = -1;
    }

    private void R() {
        int i = this.I;
        if (i != -1 || this.J != -1) {
            if (this.M != i || this.N != this.J || this.O != this.K || this.P != this.L) {
                this.k.a(i, this.J, this.K, this.L);
                this.M = this.I;
                this.N = this.J;
                this.O = this.K;
                this.P = this.L;
            }
        }
    }

    private void S() {
        int i = this.M;
        if (i != -1 || this.N != -1) {
            this.k.a(i, this.N, this.O, this.P);
        }
    }

    private void T() {
        if (this.B > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.k.a(this.B, elapsedRealtime - this.A);
            this.B = 0;
            this.A = elapsedRealtime;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(g gVar, String str, int i, int i2) {
        char c2;
        int i3;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        int i4 = 4;
        switch (str.hashCode()) {
            case -1851077871:
                if (str.equals("video/dolby-vision")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 4:
                if (!"BRAVIA 4K 2015".equals(af.f22278d)) {
                    if ("Amazon".equals(af.f22277c)) {
                        if ("KFSOWI".equals(af.f22278d)) {
                            return -1;
                        }
                        if ("AFTS".equals(af.f22278d) && gVar.g) {
                            return -1;
                        }
                    }
                    i3 = af.a(i, 16) * af.a(i2, 16) * 16 * 16;
                    i4 = 2;
                    break;
                } else {
                    return -1;
                }
            case 1:
            case 3:
            case 5:
                i3 = i * i2;
                i4 = 2;
                break;
            case 2:
            case 6:
                i3 = i * i2;
                break;
            default:
                return -1;
        }
        return (i3 * 3) / (i4 * 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0102, code lost:
        if (r9 == false) goto L_0x010b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0105, code lost:
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x010b, code lost:
        r8 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010f, code lost:
        if (r9 == false) goto L_0x0115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0115, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0125, code lost:
        return new android.graphics.Point(r8, r16);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point a(com.google.android.exoplayer2.mediacodec.g r6, com.google.android.exoplayer2.Format r7) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.e.a(com.google.android.exoplayer2.mediacodec.g, com.google.android.exoplayer2.Format):android.graphics.Point");
    }

    private static List<g> a(h hVar, Format format, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
        Pair<Integer, Integer> a2;
        String str = format.sampleMimeType;
        if (str == null) {
            return Collections.emptyList();
        }
        List<g> a3 = MediaCodecUtil.a(hVar.getDecoderInfos(str, z, z2), format);
        if ("video/dolby-vision".equals(str) && (a2 = MediaCodecUtil.a(format)) != null) {
            int intValue = ((Integer) a2.first).intValue();
            if (intValue == 16 || intValue == 256) {
                a3.addAll(hVar.getDecoderInfos("video/hevc", z, z2));
            } else if (intValue == 512) {
                a3.addAll(hVar.getDecoderInfos("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(a3);
    }

    private void a(long j, long j2, Format format) {
        i iVar = this.S;
        if (iVar != null) {
            F();
            iVar.a(j, j2, format);
        }
    }

    private void a(f fVar, int i) {
        ae.a("skipVideoBuffer");
        fVar.a(i, false);
        ae.a();
        this.e.f++;
    }

    private void a(f fVar, int i, long j) {
        R();
        ae.a("releaseOutputBuffer");
        fVar.a(i, j);
        ae.a();
        this.F = SystemClock.elapsedRealtime() * 1000;
        this.e.e++;
        this.C = 0;
        P();
    }

    private static int b(g gVar, Format format) {
        if (format.maxInputSize == -1) {
            return a(gVar, format.sampleMimeType, format.width, format.height);
        }
        int size = format.initializationData.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += format.initializationData.get(i2).length;
        }
        return format.maxInputSize + i;
    }

    private void b(int i) {
        this.e.g += i;
        this.B += i;
        this.C += i;
        this.e.h = Math.max(this.C, this.e.h);
        int i2 = this.m;
        if (i2 > 0 && this.B >= i2) {
            T();
        }
    }

    private void b(f fVar, int i) {
        R();
        ae.a("releaseOutputBuffer");
        fVar.a(i, true);
        ae.a();
        this.F = SystemClock.elapsedRealtime() * 1000;
        this.e.e++;
        this.C = 0;
        P();
    }

    private boolean b(g gVar) {
        if (af.f22275a < 23 || this.Q || b(gVar.f21428a)) {
            return false;
        }
        return !gVar.g || DummySurface.isSecureSupported(this.i);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0113 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean b(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 4404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.e.b(java.lang.String):boolean");
    }

    private void f(long j) {
        this.e.a(j);
        this.G += j;
        this.H++;
    }

    private static boolean g(long j) {
        return j < -30000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void A() {
        super.A();
        O();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final boolean D() {
        return this.Q && af.f22275a < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void J() {
        super.J();
        this.D = 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final float a(float f2, Format[] formatArr) {
        float f3 = -1.0f;
        for (Format format : formatArr) {
            float f4 = format.frameRate;
            f3 = f3;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 == -1.0f) {
            return -1.0f;
        }
        return f3 * f2;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final int a(h hVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!q.b(format.sampleMimeType)) {
            return 0;
        }
        boolean z = format.drmInitData != null;
        List<g> a2 = a(hVar, format, z, false);
        List<g> list = a2;
        if (z) {
            list = a2;
            if (a2.isEmpty()) {
                list = a(hVar, format, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!c(format)) {
            return 2;
        }
        g gVar = list.get(0);
        boolean a3 = gVar.a(format);
        int i = gVar.b(format) ? 16 : 8;
        int i2 = 0;
        if (a3) {
            List<g> a4 = a(hVar, format, z, true);
            i2 = 0;
            if (!a4.isEmpty()) {
                g gVar2 = a4.get(0);
                i2 = 0;
                if (gVar2.a(format)) {
                    i2 = 0;
                    if (gVar2.b(format)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (a3 ? 4 : 3) | i | i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002c, code lost:
        if (r11.height > r8.o.f22402b) goto L_0x002f;
     */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.decoder.e a(com.google.android.exoplayer2.mediacodec.g r9, com.google.android.exoplayer2.Format r10, com.google.android.exoplayer2.Format r11) {
        /*
            r8 = this;
            r0 = r9
            r1 = r10
            r2 = r11
            com.google.android.exoplayer2.decoder.e r0 = r0.a(r1, r2)
            r12 = r0
            r0 = r12
            int r0 = r0.e
            r13 = r0
            r0 = r11
            int r0 = r0.width
            r1 = r8
            com.google.android.exoplayer2.video.e$a r1 = r1.o
            int r1 = r1.f22401a
            if (r0 > r1) goto L_0x002f
            r0 = r13
            r14 = r0
            r0 = r11
            int r0 = r0.height
            r1 = r8
            com.google.android.exoplayer2.video.e$a r1 = r1.o
            int r1 = r1.f22402b
            if (r0 <= r1) goto L_0x0037
        L_0x002f:
            r0 = r13
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 | r1
            r14 = r0
        L_0x0037:
            r0 = r14
            r13 = r0
            r0 = r9
            r1 = r11
            int r0 = b(r0, r1)
            r1 = r8
            com.google.android.exoplayer2.video.e$a r1 = r1.o
            int r1 = r1.f22403c
            if (r0 <= r1) goto L_0x0051
            r0 = r14
            r1 = 64
            r0 = r0 | r1
            r13 = r0
        L_0x0051:
            r0 = r9
            java.lang.String r0 = r0.f21428a
            r9 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0061
            r0 = 0
            r14 = r0
            goto L_0x0068
        L_0x0061:
            r0 = r12
            int r0 = r0.f20840d
            r14 = r0
        L_0x0068:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.e.a(com.google.android.exoplayer2.mediacodec.g, com.google.android.exoplayer2.Format, com.google.android.exoplayer2.Format):com.google.android.exoplayer2.decoder.e");
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final com.google.android.exoplayer2.decoder.e a(com.google.android.exoplayer2.q qVar) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.e a2 = super.a(qVar);
        this.k.a(qVar.f21512b, a2);
        return a2;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final MediaCodecDecoderException a(Throwable th, g gVar) {
        return new MediaCodecVideoDecoderException(th, gVar, this.r);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final List<g> a(h hVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return a(hVar, format, z, this.Q);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e, com.google.android.exoplayer2.af
    public final void a(float f2, float f3) throws ExoPlaybackException {
        super.a(f2, f3);
        j jVar = this.j;
        jVar.h = f2;
        jVar.a();
        jVar.a(false);
    }

    @Override // com.google.android.exoplayer2.e, com.google.android.exoplayer2.ad.b
    public final void a(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            Surface surface = (Surface) obj;
            Surface surface2 = surface;
            if (surface == null) {
                surface2 = this.s;
                if (surface2 == null) {
                    g G = G();
                    surface2 = surface;
                    if (G != null) {
                        surface2 = surface;
                        if (b(G)) {
                            surface2 = DummySurface.newInstanceV17(this.i, G.g);
                            this.s = surface2;
                        }
                    }
                }
            }
            if (this.r != surface2) {
                this.r = surface2;
                j jVar = this.j;
                Surface surface3 = surface2 instanceof DummySurface ? null : surface2;
                if (jVar.f != surface3) {
                    jVar.c();
                    jVar.f = surface3;
                    jVar.a(true);
                }
                this.t = false;
                int C_ = C_();
                f E = E();
                if (E != null) {
                    if (af.f22275a < 23 || surface2 == null || this.p) {
                        H();
                        C();
                    } else {
                        E.a(surface2);
                    }
                }
                if (surface2 == null || surface2 == this.s) {
                    Q();
                    O();
                    return;
                }
                S();
                O();
                if (C_ == 2) {
                    N();
                }
            } else if (surface2 != null && surface2 != this.s) {
                S();
                if (this.t) {
                    this.k.a(this.r);
                }
            }
        } else if (i == 4) {
            this.u = ((Integer) obj).intValue();
            f E2 = E();
            if (E2 != null) {
                E2.c(this.u);
            }
        } else if (i == 6) {
            this.S = (i) obj;
        } else if (i != 102) {
            super.a(i, obj);
        } else {
            int intValue = ((Integer) obj).intValue();
            if (this.R != intValue) {
                this.R = intValue;
                if (this.Q) {
                    H();
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void a(long j, boolean z) throws ExoPlaybackException {
        super.a(j, z);
        O();
        this.j.a();
        this.E = -9223372036854775807L;
        this.y = -9223372036854775807L;
        this.C = 0;
        if (z) {
            N();
        } else {
            this.z = -9223372036854775807L;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(Format format, MediaFormat mediaFormat) {
        int i;
        f E = E();
        if (E != null) {
            E.c(this.u);
        }
        if (this.Q) {
            this.I = format.width;
            i = format.height;
        } else {
            com.google.android.exoplayer2.util.a.b(mediaFormat);
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            this.I = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            i = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        }
        this.J = i;
        this.L = format.pixelWidthHeightRatio;
        if (af.f22275a < 21) {
            this.K = format.rotationDegrees;
        } else if (format.rotationDegrees == 90 || format.rotationDegrees == 270) {
            int i2 = this.I;
            this.I = this.J;
            this.J = i2;
            this.L = 1.0f / this.L;
        }
        j jVar = this.j;
        jVar.g = format.frameRate;
        c cVar = jVar.f22411a;
        cVar.f22389a.a();
        cVar.f22390b.a();
        cVar.f22391c = false;
        cVar.e = -9223372036854775807L;
        cVar.f = 0;
        jVar.b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (!this.Q) {
            this.D++;
        }
        if (af.f22275a < 23 && this.Q) {
            e(decoderInputBuffer.e);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(g gVar, f fVar, Format format, MediaCrypto mediaCrypto, float f2) {
        a aVar;
        Pair<Integer, Integer> a2;
        String str = gVar.f21430c;
        Format[] u = u();
        int i = format.width;
        int i2 = format.height;
        int b2 = b(gVar, format);
        if (u.length == 1) {
            int i3 = b2;
            if (b2 != -1) {
                int a3 = a(gVar, format.sampleMimeType, format.width, format.height);
                i3 = b2;
                if (a3 != -1) {
                    i3 = Math.min((int) (b2 * 1.5f), a3);
                }
            }
            aVar = new a(i, i2, i3);
        } else {
            boolean z = false;
            int i4 = i2;
            for (Format format2 : u) {
                Format format3 = format2;
                if (format.colorInfo != null) {
                    format3 = format2;
                    if (format2.colorInfo == null) {
                        Format.a buildUpon = format2.buildUpon();
                        buildUpon.w = format.colorInfo;
                        format3 = buildUpon.a();
                    }
                }
                i = i;
                i4 = i4;
                b2 = b2;
                z = z;
                if (gVar.a(format, format3).f20840d != 0) {
                    z |= format3.width == -1 || format3.height == -1;
                    i = Math.max(i, format3.width);
                    i4 = Math.max(i4, format3.height);
                    b2 = Math.max(b2, b(gVar, format3));
                }
            }
            int i5 = i;
            int i6 = i4;
            int i7 = b2;
            if (z) {
                n.a("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i + "x" + i4);
                Point a4 = a(gVar, format);
                i5 = i;
                i6 = i4;
                i7 = b2;
                if (a4 != null) {
                    i5 = Math.max(i, a4.x);
                    i6 = Math.max(i4, a4.y);
                    i7 = Math.max(b2, a(gVar, format.sampleMimeType, i5, i6));
                    n.a("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i5 + "x" + i6);
                }
            }
            aVar = new a(i5, i6, i7);
        }
        this.o = aVar;
        boolean z2 = this.n;
        int i8 = this.Q ? this.R : 0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        i.a(mediaFormat, format.initializationData);
        float f3 = format.frameRate;
        if (f3 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f3);
        }
        i.a(mediaFormat, "rotation-degrees", format.rotationDegrees);
        ColorInfo colorInfo = format.colorInfo;
        if (colorInfo != null) {
            i.a(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            i.a(mediaFormat, "color-standard", colorInfo.colorSpace);
            i.a(mediaFormat, "color-range", colorInfo.colorRange);
            byte[] bArr = colorInfo.hdrStaticInfo;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(format.sampleMimeType) && (a2 = MediaCodecUtil.a(format)) != null) {
            i.a(mediaFormat, "profile", ((Integer) a2.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.f22401a);
        mediaFormat.setInteger("max-height", aVar.f22402b);
        i.a(mediaFormat, "max-input-size", aVar.f22403c);
        if (af.f22275a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f2 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (z2) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i8 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i8);
        }
        if (this.r == null) {
            if (b(gVar)) {
                if (this.s == null) {
                    this.s = DummySurface.newInstanceV17(this.i, gVar.g);
                }
                this.r = this.s;
            } else {
                throw new IllegalStateException();
            }
        }
        fVar.a(mediaFormat, this.r, mediaCrypto);
        if (af.f22275a >= 23 && this.Q) {
            this.f22400a = new b(fVar);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(String str) {
        this.k.a(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void a(String str, long j, long j2) {
        this.k.a(str, j, j2);
        this.p = b(str);
        g gVar = (g) com.google.android.exoplayer2.util.a.b(G());
        boolean z = false;
        if (af.f22275a >= 29) {
            z = false;
            if ("video/x-vnd.on2.vp9".equals(gVar.f21429b)) {
                MediaCodecInfo.CodecProfileLevel[] a2 = gVar.a();
                int length = a2.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (a2[i].profile == 16384) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.q = z;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void a(boolean z, boolean z2) throws ExoPlaybackException {
        super.a(z, z2);
        boolean z3 = v().tunneling;
        com.google.android.exoplayer2.util.a.b(!z3 || this.R != 0);
        if (this.Q != z3) {
            this.Q = z3;
            H();
        }
        this.k.a(this.e);
        j jVar = this.j;
        if (jVar.f22412b != null) {
            ((j.b) com.google.android.exoplayer2.util.a.b(jVar.f22413c)).f22419b.sendEmptyMessage(1);
            if (jVar.f22414d != null) {
                j.a aVar = jVar.f22414d;
                aVar.f22415a.registerDisplayListener(aVar, af.a());
            }
            jVar.d();
        }
        this.w = z2;
        this.x = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c8, code lost:
        if ((r0.f22393a == 0 ? false : r0.f22395c[(int) ((r0.f22393a - 1) % 15)]) != false) goto L_0x00cb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0243, code lost:
        if ((g(r19) && r0 - r0 > 100000) != false) goto L_0x0246;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0285  */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v14 */
    /* JADX WARN: Type inference failed for: r19v15 */
    /* JADX WARN: Type inference failed for: r19v2, types: [long] */
    /* JADX WARN: Type inference failed for: r25v2, types: [long] */
    /* JADX WARN: Type inference failed for: r25v3, types: [long] */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.exoplayer2.video.e] */
    /* JADX WARN: Unknown variable types count: 6 */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r10, long r12, com.google.android.exoplayer2.mediacodec.f r14, java.nio.ByteBuffer r15, int r16, int r17, int r18, long r19, boolean r21, boolean r22, com.google.android.exoplayer2.Format r23) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 1319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.e.a(long, long, com.google.android.exoplayer2.mediacodec.f, java.nio.ByteBuffer, int, int, int, long, boolean, boolean, com.google.android.exoplayer2.Format):boolean");
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final boolean a(g gVar) {
        return this.r != null || b(gVar);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void b(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (this.q) {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.b(decoderInputBuffer.f);
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4 && b4 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    f E = E();
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("hdr10-plus-info", bArr);
                    E.a(bundle);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public final void d(long j) {
        super.d(j);
        if (!this.Q) {
            this.D--;
        }
    }

    protected final void e(long j) throws ExoPlaybackException {
        c(j);
        R();
        this.e.e++;
        P();
        d(j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void p() {
        super.p();
        this.B = 0;
        this.A = SystemClock.elapsedRealtime();
        this.F = SystemClock.elapsedRealtime() * 1000;
        this.G = 0L;
        this.H = 0;
        j jVar = this.j;
        jVar.e = true;
        jVar.a();
        jVar.a(false);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void q() {
        this.z = -9223372036854775807L;
        T();
        int i = this.H;
        if (i != 0) {
            this.k.a(this.G, i);
            this.G = 0L;
            this.H = 0;
        }
        j jVar = this.j;
        jVar.e = false;
        jVar.c();
        super.q();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void r() {
        Q();
        O();
        this.t = false;
        j jVar = this.j;
        if (jVar.f22412b != null) {
            if (jVar.f22414d != null) {
                j.a aVar = jVar.f22414d;
                aVar.f22415a.unregisterDisplayListener(aVar);
            }
            ((j.b) com.google.android.exoplayer2.util.a.b(jVar.f22413c)).f22419b.sendEmptyMessage(2);
        }
        this.f22400a = null;
        try {
            super.r();
        } finally {
            this.k.b(this.e);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e
    public final void s() {
        try {
            super.s();
            Surface surface = this.s;
            if (surface != null) {
                if (this.r == surface) {
                    this.r = null;
                }
                surface.release();
                this.s = null;
            }
        } catch (Throwable th) {
            if (this.s != null) {
                Surface surface2 = this.r;
                Surface surface3 = this.s;
                if (surface2 == surface3) {
                    this.r = null;
                }
                surface3.release();
                this.s = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.af, com.google.android.exoplayer2.ag
    public final String x() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.af
    public final boolean y() {
        Surface surface;
        if (super.y() && (this.v || (((surface = this.s) != null && this.r == surface) || E() == null || this.Q))) {
            this.z = -9223372036854775807L;
            return true;
        } else if (this.z == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.z) {
                return true;
            }
            this.z = -9223372036854775807L;
            return false;
        }
    }
}
