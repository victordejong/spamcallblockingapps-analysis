package p193e.p1577m.p1578a.p1596c.p1612h1;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.h1.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/e.class */
public final class C24446e {

    /* renamed from: a */
    public final String f68209a;

    /* renamed from: b */
    public final String f68210b;

    /* renamed from: c */
    public final String f68211c;

    /* renamed from: d */
    public final MediaCodecInfo.CodecCapabilities f68212d;

    /* renamed from: e */
    public final boolean f68213e;

    /* renamed from: f */
    public final boolean f68214f;

    /* renamed from: g */
    public final boolean f68215g;

    /* renamed from: h */
    public final boolean f68216h;

    /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C24446e(java.lang.String r4, java.lang.String r5, java.lang.String r6, android.media.MediaCodecInfo.CodecCapabilities r7, boolean r8, boolean r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r4
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r3
            r1 = r4
            r0.f68209a = r1
            r0 = r3
            r1 = r5
            r0.f68210b = r1
            r0 = r3
            r1 = r6
            r0.f68211c = r1
            r0 = r3
            r1 = r7
            r0.f68212d = r1
            r0 = r3
            r1 = r8
            r0.f68215g = r1
            r0 = 1
            r9 = r0
            r0 = r12
            if (r0 != 0) goto L57
            r0 = r7
            if (r0 == 0) goto L57
            int r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.f69427a
            r1 = 19
            if (r0 < r1) goto L49
            r0 = r7
            java.lang.String r1 = "adaptive-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L49
            r0 = 1
            r14 = r0
            goto L4c
        L49:
            r0 = 0
            r14 = r0
        L4c:
            r0 = r14
            if (r0 == 0) goto L57
            r0 = 1
            r8 = r0
            goto L5a
        L57:
            r0 = 0
            r8 = r0
        L5a:
            r0 = r3
            r1 = r8
            r0.f68213e = r1
            r0 = r7
            if (r0 == 0) goto L7a
            int r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.f69427a
            r1 = 21
            if (r0 < r1) goto L7a
            r0 = r7
            java.lang.String r1 = "tunneled-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L7a
            goto L7a
        L7a:
            r0 = r9
            r8 = r0
            r0 = r13
            if (r0 != 0) goto Lb2
            r0 = r7
            if (r0 == 0) goto Laf
            int r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.f69427a
            r1 = 21
            if (r0 < r1) goto La0
            r0 = r7
            java.lang.String r1 = "secure-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto La0
            r0 = 1
            r14 = r0
            goto La3
        La0:
            r0 = 0
            r14 = r0
        La3:
            r0 = r14
            if (r0 == 0) goto Laf
            r0 = r9
            r8 = r0
            goto Lb2
        Laf:
            r0 = 0
            r8 = r0
        Lb2:
            r0 = r3
            r1 = r8
            r0.f68214f = r1
            r0 = r3
            r1 = r5
            boolean r1 = p193e.p1577m.p1578a.p1596c.p1636q1.C24792q.m4567g(r1)
            r0.f68216h = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.C24446e.<init>(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean, boolean):void");
    }

    /* renamed from: a */
    public static Point m5119a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(C24773d0.m4620d(i, widthAlignment) * widthAlignment, C24773d0.m4620d(i2, heightAlignment) * heightAlignment);
    }

    /* renamed from: b */
    public static boolean m5118b(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point m5119a = m5119a(videoCapabilities, i, i2);
        int i3 = m5119a.x;
        int i4 = m5119a.y;
        return (d == -1.0d || d <= PlaceLikelihood.LIKELIHOOD_MIN_VALUE) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    /* renamed from: h */
    public static C24446e m5112h(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new C24446e(str, str2, str3, codecCapabilities, false, z, z2, z3, z4, z5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L6;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.media.MediaCodecInfo.CodecProfileLevel[] m5117c() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.f68212d
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L14
            r0 = r3
            android.media.MediaCodecInfo$CodecProfileLevel[] r0 = r0.profileLevels
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L19
        L14:
            r0 = 0
            android.media.MediaCodecInfo$CodecProfileLevel[] r0 = new android.media.MediaCodecInfo.CodecProfileLevel[r0]
            r3 = r0
        L19:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.C24446e.m5117c():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x0280, code lost:
        if (r11 == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x015a, code lost:
        if (r11 == false) goto L120;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b5  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5116d(com.google.android.exoplayer2.Format r7) throws p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.C24454c {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.C24446e.m5116d(com.google.android.exoplayer2.Format):boolean");
    }

    /* renamed from: e */
    public boolean m5115e(Format format) {
        if (this.f68216h) {
            return this.f68213e;
        }
        Pair<Integer, Integer> m5089c = C24451h.m5089c(format);
        return m5089c != null && ((Integer) m5089c.first).intValue() == 42;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r5.f4859u != null) goto L18;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5114f(com.google.android.exoplayer2.Format r4, com.google.android.exoplayer2.Format r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.C24446e.m5114f(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.Format, boolean):boolean");
    }

    /* renamed from: g */
    public boolean m5113g(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f68212d;
        if (codecCapabilities == null) {
            String str = C24773d0.f69431e;
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            String str2 = C24773d0.f69431e;
            return false;
        } else if (m5118b(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i < i2) {
                if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(this.f68209a) || !"mcv5a".equals(C24773d0.f69428b)) && m5118b(videoCapabilities, i2, i, d)) {
                    String str3 = C24773d0.f69431e;
                    return true;
                }
            }
            String str4 = C24773d0.f69431e;
            return false;
        }
    }

    public String toString() {
        return this.f68209a;
    }
}
