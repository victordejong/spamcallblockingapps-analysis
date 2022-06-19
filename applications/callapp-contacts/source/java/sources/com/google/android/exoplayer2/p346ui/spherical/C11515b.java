package com.google.android.exoplayer2.p346ui.spherical;

import com.google.android.exoplayer2.util.C11610j;
import com.google.android.exoplayer2.video.p347a.C11644d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.FloatBuffer;
/* renamed from: com.google.android.exoplayer2.ui.spherical.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/b.class */
final class C11515b {

    /* renamed from: a */
    static final String[] f38285a = {"uniform mat4 uMvpMatrix;", "uniform mat3 uTexMatrix;", "attribute vec4 aPosition;", "attribute vec2 aTexCoords;", "varying vec2 vTexCoords;", "void main() {", "  gl_Position = uMvpMatrix * aPosition;", "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;", "}"};

    /* renamed from: b */
    static final String[] f38286b = {"#extension GL_OES_EGL_image_external : require", "precision mediump float;", "uniform samplerExternalOES uTexture;", "varying vec2 vTexCoords;", "void main() {", "  gl_FragColor = texture2D(uTexture, vTexCoords);", "}"};

    /* renamed from: c */
    static final float[] f38287c = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};

    /* renamed from: d */
    static final float[] f38288d = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};

    /* renamed from: e */
    static final float[] f38289e = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};

    /* renamed from: f */
    static final float[] f38290f = {0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};

    /* renamed from: g */
    static final float[] f38291g = {0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f, 1.0f};

    /* renamed from: h */
    int f38292h;

    /* renamed from: i */
    C11516a f38293i;

    /* renamed from: j */
    C11516a f38294j;

    /* renamed from: k */
    int f38295k;

    /* renamed from: l */
    int f38296l;

    /* renamed from: m */
    int f38297m;

    /* renamed from: n */
    int f38298n;

    /* renamed from: o */
    int f38299o;

    /* renamed from: p */
    int f38300p;

    /* renamed from: com.google.android.exoplayer2.ui.spherical.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/b$a.class */
    static final class C11516a {

        /* renamed from: a */
        final int f38301a;

        /* renamed from: b */
        final FloatBuffer f38302b;

        /* renamed from: c */
        final FloatBuffer f38303c;

        /* renamed from: d */
        final int f38304d;

        public C11516a(C11644d.C11646b c11646b) {
            this.f38301a = c11646b.f38796c.length / 3;
            this.f38302b = C11610j.m19888a(c11646b.f38796c);
            this.f38303c = C11610j.m19888a(c11646b.f38797d);
            int i = c11646b.f38795b;
            if (i == 1) {
                this.f38304d = 5;
            } else if (i != 2) {
                this.f38304d = 4;
            } else {
                this.f38304d = 6;
            }
        }
    }

    /* renamed from: a */
    public static boolean m20219a(C11644d c11644d) {
        C11644d.C11645a c11645a = c11644d.f38789a;
        C11644d.C11645a c11645a2 = c11644d.f38790b;
        return c11645a.f38793a.length == 1 && c11645a.f38793a[0].f38794a == 0 && c11645a2.f38793a.length == 1 && c11645a2.f38793a[0].f38794a == 0;
    }
}
