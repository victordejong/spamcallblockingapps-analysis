package p1727n3.p1874y.p1876b.p1877a.p1891r0;

import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.r0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/a.class */
public final class C27302a {

    /* renamed from: a */
    public final String f76808a;

    /* renamed from: b */
    public final String f76809b;

    /* renamed from: c */
    public final String f76810c;

    /* renamed from: d */
    public final MediaCodecInfo.CodecCapabilities f76811d;

    /* renamed from: e */
    public final boolean f76812e;

    /* renamed from: f */
    public final boolean f76813f;

    /* renamed from: g */
    public final boolean f76814g;

    /* renamed from: h */
    public final boolean f76815h;

    /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C27302a(java.lang.String r4, java.lang.String r5, java.lang.String r6, android.media.MediaCodecInfo.CodecCapabilities r7, boolean r8, boolean r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r4
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r3
            r1 = r4
            r0.f76808a = r1
            r0 = r3
            r1 = r5
            r0.f76809b = r1
            r0 = r3
            r1 = r6
            r0.f76810c = r1
            r0 = r3
            r1 = r7
            r0.f76811d = r1
            r0 = r3
            r1 = r8
            r0.f76814g = r1
            r0 = 1
            r9 = r0
            r0 = r12
            if (r0 != 0) goto L57
            r0 = r7
            if (r0 == 0) goto L57
            int r0 = p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x.f77229a
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
            r0.f76812e = r1
            r0 = r7
            if (r0 == 0) goto L7a
            int r0 = p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x.f77229a
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
            int r0 = p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x.f77229a
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
            r0.f76813f = r1
            r0 = r3
            r1 = r5
            boolean r1 = p1727n3.p1874y.p1876b.p1877a.p1904x0.C27428j.m357g(r1)
            r0.f76815h = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1891r0.C27302a.<init>(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean, boolean):void");
    }

    /* renamed from: a */
    public static boolean m597a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= PlaceLikelihood.LIKELIHOOD_MIN_VALUE) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, Math.floor(d));
    }

    /* renamed from: h */
    public static C27302a m590h(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new C27302a(str, str2, str3, codecCapabilities, false, z, z2, z3, z4, z5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.media.MediaCodecInfo.CodecProfileLevel[] m596b() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.f76811d
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
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1891r0.C27302a.m596b():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x037c, code lost:
        if (r13 == false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0218, code lost:
        if (r13 == false) goto L121;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0140 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0142  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m595c(androidx.media2.exoplayer.external.Format r8) throws p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.C27312c {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1891r0.C27302a.m595c(androidx.media2.exoplayer.external.Format):boolean");
    }

    /* renamed from: d */
    public boolean m594d(Format format) {
        if (this.f76815h) {
            return this.f76812e;
        }
        Pair<Integer, Integer> m585c = C27309h.m585c(format);
        return m585c != null && ((Integer) m585c.first).intValue() == 42;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r5.f972u != null) goto L18;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m593e(androidx.media2.exoplayer.external.Format r4, androidx.media2.exoplayer.external.Format r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1891r0.C27302a.m593e(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.Format, boolean):boolean");
    }

    /* renamed from: f */
    public boolean m592f(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f76811d;
        if (codecCapabilities == null) {
            m591g("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m591g("sizeAndRate.vCaps");
            return false;
        } else if (m597a(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !m597a(videoCapabilities, i2, i, d)) {
                StringBuilder m8546z = C22128a.m8546z(69, "sizeAndRate.support, ", i, "x", i2);
                m8546z.append("x");
                m8546z.append(d);
                m591g(m8546z.toString());
                return false;
            }
            StringBuilder m8546z2 = C22128a.m8546z(69, "sizeAndRate.rotated, ", i, "x", i2);
            m8546z2.append("x");
            m8546z2.append(d);
            String sb = m8546z2.toString();
            String str = this.f76808a;
            String str2 = this.f76809b;
            String str3 = C27445x.f77233e;
            String.valueOf(sb).length();
            String.valueOf(str).length();
            String.valueOf(str2).length();
            String.valueOf(str3).length();
            return true;
        }
    }

    /* renamed from: g */
    public final void m591g(String str) {
        String str2 = this.f76808a;
        String str3 = this.f76809b;
        String str4 = C27445x.f77233e;
        String.valueOf(str).length();
        String.valueOf(str2).length();
        String.valueOf(str3).length();
        String.valueOf(str4).length();
    }

    public String toString() {
        return this.f76808a;
    }
}
