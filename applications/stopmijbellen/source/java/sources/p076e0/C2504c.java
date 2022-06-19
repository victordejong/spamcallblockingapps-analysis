package p076e0;

import android.content.res.ColorStateList;
import android.graphics.Shader;
/* renamed from: e0.c */
/* loaded from: classes-dex2jar.jar:e0/c.class */
public final class C2504c {

    /* renamed from: a */
    public final Shader f8759a;

    /* renamed from: b */
    public final ColorStateList f8760b;

    /* renamed from: c */
    public int f8761c;

    public C2504c(Shader shader, ColorStateList colorStateList, int i) {
        this.f8759a = shader;
        this.f8760b = colorStateList;
        this.f8761c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x030d, code lost:
        if (r11 == 2) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0310, code lost:
        r0 = r10.f8773a;
        r0 = r10.f8774b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x031d, code lost:
        if (r26 == 1) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0323, code lost:
        if (r26 == 2) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0326, code lost:
        r10 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x032d, code lost:
        r10 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0334, code lost:
        r10 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0338, code lost:
        r10 = new android.graphics.LinearGradient(r16, r17, r18, r19, r0, r0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x034e, code lost:
        r10 = new android.graphics.SweepGradient(r0, r21, r10.f8773a, r10.f8774b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0369, code lost:
        if (r20 <= 0.0f) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x036c, code lost:
        r0 = r10.f8773a;
        r0 = r10.f8774b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0379, code lost:
        if (r26 == 1) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x037f, code lost:
        if (r26 == 2) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0382, code lost:
        r10 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0389, code lost:
        r10 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0390, code lost:
        r10 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0394, code lost:
        r10 = new android.graphics.RadialGradient(r0, r21, r20, r0, r0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x03af, code lost:
        return new p076e0.C2504c(r10, null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x03b9, code lost:
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02c6, code lost:
        if (r0.size() <= 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02c9, code lost:
        r10 = new p076e0.C2510e(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02d8, code lost:
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02db, code lost:
        if (r10 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02e3, code lost:
        if (r0 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02e6, code lost:
        r10 = new p076e0.C2510e(r22, r24, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02f7, code lost:
        r10 = new p076e0.C2510e(r22, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0308, code lost:
        if (r11 == 1) goto L110;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p076e0.C2504c m3503a(android.content.res.Resources r10, int r11, android.content.res.Resources.Theme r12) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p076e0.C2504c.m3503a(android.content.res.Resources, int, android.content.res.Resources$Theme):e0.c");
    }

    /* renamed from: b */
    public boolean m3502b() {
        return this.f8759a != null;
    }

    /* renamed from: c */
    public boolean m3501c() {
        ColorStateList colorStateList;
        return this.f8759a == null && (colorStateList = this.f8760b) != null && colorStateList.isStateful();
    }

    /* renamed from: d */
    public boolean m3500d(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m3501c() || (colorForState = (colorStateList = this.f8760b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f8761c) {
            z = false;
        } else {
            z = true;
            this.f8761c = colorForState;
        }
        return z;
    }
}
