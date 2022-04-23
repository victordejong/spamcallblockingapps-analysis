package com.google.android.exoplayer2.ui.spherical;

import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.video.a.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.FloatBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f22071a = {"uniform mat4 uMvpMatrix;", "uniform mat3 uTexMatrix;", "attribute vec4 aPosition;", "attribute vec2 aTexCoords;", "varying vec2 vTexCoords;", "void main() {", "  gl_Position = uMvpMatrix * aPosition;", "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;", "}"};

    /* renamed from: b  reason: collision with root package name */
    static final String[] f22072b = {"#extension GL_OES_EGL_image_external : require", "precision mediump float;", "uniform samplerExternalOES uTexture;", "varying vec2 vTexCoords;", "void main() {", "  gl_FragColor = texture2D(uTexture, vTexCoords);", "}"};

    /* renamed from: c  reason: collision with root package name */
    static final float[] f22073c = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};

    /* renamed from: d  reason: collision with root package name */
    static final float[] f22074d = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};
    static final float[] e = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};
    static final float[] f = {0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};
    static final float[] g = {0.5f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f, 1.0f};
    int h;
    a i;
    a j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/b$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f22075a;

        /* renamed from: b  reason: collision with root package name */
        final FloatBuffer f22076b;

        /* renamed from: c  reason: collision with root package name */
        final FloatBuffer f22077c;

        /* renamed from: d  reason: collision with root package name */
        final int f22078d;

        public a(d.b bVar) {
            this.f22075a = bVar.f22384c.length / 3;
            this.f22076b = j.a(bVar.f22384c);
            this.f22077c = j.a(bVar.f22385d);
            int i = bVar.f22383b;
            if (i == 1) {
                this.f22078d = 5;
            } else if (i != 2) {
                this.f22078d = 4;
            } else {
                this.f22078d = 6;
            }
        }
    }

    public static boolean a(d dVar) {
        d.a aVar = dVar.f22377a;
        d.a aVar2 = dVar.f22378b;
        return aVar.f22381a.length == 1 && aVar.f22381a[0].f22382a == 0 && aVar2.f22381a.length == 1 && aVar2.f22381a[0].f22382a == 0;
    }
}
