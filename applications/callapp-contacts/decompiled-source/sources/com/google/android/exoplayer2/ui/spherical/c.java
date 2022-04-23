package com.google.android.exoplayer2.ui.spherical;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.ac;
import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.video.a.a;
import com.google.android.exoplayer2.video.a.d;
import com.google.android.exoplayer2.video.a.e;
import com.google.android.exoplayer2.video.i;
import java.nio.IntBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/c.class */
final class c implements a, i {
    int i;
    SurfaceTexture j;
    private byte[] m;

    /* renamed from: a  reason: collision with root package name */
    final AtomicBoolean f22079a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f22080b = new AtomicBoolean(true);

    /* renamed from: c  reason: collision with root package name */
    final b f22081c = new b();

    /* renamed from: d  reason: collision with root package name */
    final com.google.android.exoplayer2.video.a.c f22082d = new com.google.android.exoplayer2.video.a.c();
    final ac<Long> e = new ac<>();
    final ac<d> f = new ac<>();
    final float[] g = new float[16];
    final float[] h = new float[16];
    volatile int k = 0;
    private int l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SurfaceTexture surfaceTexture) {
        this.f22079a.set(true);
    }

    public final SurfaceTexture a() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        j.a();
        b bVar = this.f22081c;
        bVar.k = j.a(TextUtils.join(StringUtils.LF, b.f22071a), TextUtils.join(StringUtils.LF, b.f22072b));
        bVar.l = GLES20.glGetUniformLocation(bVar.k, "uMvpMatrix");
        bVar.m = GLES20.glGetUniformLocation(bVar.k, "uTexMatrix");
        bVar.n = GLES20.glGetAttribLocation(bVar.k, "aPosition");
        bVar.o = GLES20.glGetAttribLocation(bVar.k, "aTexCoords");
        bVar.p = GLES20.glGetUniformLocation(bVar.k, "uTexture");
        j.a();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        j.a();
        this.i = iArr[0];
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.i);
        this.j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.ui.spherical._$$Lambda$c$K0HsjgasoenV6pP_qpPEBSOSQeQ
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                c.this.a(surfaceTexture2);
            }
        });
        return this.j;
    }

    @Override // com.google.android.exoplayer2.video.i
    public final void a(long j, long j2, Format format) {
        this.e.a(j2, (long) Long.valueOf(j));
        byte[] bArr = format.projectionData;
        int i = format.stereoMode;
        byte[] bArr2 = this.m;
        int i2 = this.l;
        this.m = bArr;
        int i3 = i;
        if (i == -1) {
            i3 = this.k;
        }
        this.l = i3;
        if (i2 != i3 || !Arrays.equals(bArr2, this.m)) {
            d dVar = null;
            byte[] bArr3 = this.m;
            if (bArr3 != null) {
                dVar = e.a(bArr3, this.l);
            }
            if (dVar == null || !b.a(dVar)) {
                int i4 = this.l;
                com.google.android.exoplayer2.util.a.a(true);
                com.google.android.exoplayer2.util.a.a(true);
                com.google.android.exoplayer2.util.a.a(true);
                com.google.android.exoplayer2.util.a.a(true);
                com.google.android.exoplayer2.util.a.a(true);
                float radians = (float) Math.toRadians(180.0d);
                float radians2 = (float) Math.toRadians(360.0d);
                float f = radians / 36.0f;
                float f2 = radians2 / 72.0f;
                float[] fArr = new float[15984];
                float[] fArr2 = new float[10656];
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (i5 < 36) {
                    float f3 = radians / 2.0f;
                    float f4 = (i5 * f) - f3;
                    int i8 = i5 + 1;
                    float f5 = i8;
                    f = f;
                    for (int i9 = 0; i9 < 73; i9++) {
                        for (int i10 = 0; i10 < 2; i10++) {
                            if (i10 != 0) {
                                f4 = (f5 * f) - f3;
                            }
                            float f6 = i9 * f2;
                            float f7 = radians2 / 2.0f;
                            int i11 = i6 + 1;
                            double d2 = (3.1415927f + f6) - f7;
                            double sin = Math.sin(d2);
                            double d3 = f4;
                            fArr[i6] = -((float) (sin * 50.0d * Math.cos(d3)));
                            int i12 = i11 + 1;
                            fArr[i11] = (float) (Math.sin(d3) * 50.0d);
                            int i13 = i12 + 1;
                            fArr[i12] = (float) (Math.cos(d2) * 50.0d * Math.cos(d3));
                            int i14 = i7 + 1;
                            fArr2[i7] = f6 / radians2;
                            int i15 = i14 + 1;
                            fArr2[i14] = ((i5 + i10) * f) / radians;
                            if (!(i9 == 0 && i10 == 0)) {
                                if (i9 == 72) {
                                    i7 = i15;
                                    i6 = i13;
                                    if (i10 != 1) {
                                    }
                                } else {
                                    i6 = i13;
                                    i7 = i15;
                                }
                            }
                            System.arraycopy(fArr, i13 - 3, fArr, i13, 3);
                            i6 = i13 + 3;
                            System.arraycopy(fArr2, i15 - 2, fArr2, i15, 2);
                            i7 = i15 + 2;
                        }
                    }
                    i4 = i4;
                    i5 = i8;
                }
                dVar = new d(new d.a(new d.b(0, fArr, fArr2, 1)), i4);
            }
            this.f.a(j2, (long) dVar);
        }
    }

    @Override // com.google.android.exoplayer2.video.a.a
    public final void a(long j, float[] fArr) {
        this.f22082d.f22375c.a(j, (long) fArr);
    }

    @Override // com.google.android.exoplayer2.video.a.a
    public final void b() {
        this.e.a();
        com.google.android.exoplayer2.video.a.c cVar = this.f22082d;
        cVar.f22375c.a();
        cVar.f22376d = false;
        this.f22080b.set(true);
    }
}
