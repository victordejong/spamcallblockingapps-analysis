package com.google.android.exoplayer2.p346ui.spherical;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11596ac;
import com.google.android.exoplayer2.util.C11610j;
import com.google.android.exoplayer2.video.AbstractC11658i;
import com.google.android.exoplayer2.video.p347a.AbstractC11641a;
import com.google.android.exoplayer2.video.p347a.C11643c;
import com.google.android.exoplayer2.video.p347a.C11644d;
import com.google.android.exoplayer2.video.p347a.C11647e;
import java.nio.IntBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.android.exoplayer2.ui.spherical.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/c.class */
public final class C11517c implements AbstractC11641a, AbstractC11658i {

    /* renamed from: i */
    int f38313i;

    /* renamed from: j */
    SurfaceTexture f38314j;

    /* renamed from: m */
    private byte[] f38317m;

    /* renamed from: a */
    final AtomicBoolean f38305a = new AtomicBoolean();

    /* renamed from: b */
    final AtomicBoolean f38306b = new AtomicBoolean(true);

    /* renamed from: c */
    final C11515b f38307c = new C11515b();

    /* renamed from: d */
    final C11643c f38308d = new C11643c();

    /* renamed from: e */
    final C11596ac<Long> f38309e = new C11596ac<>();

    /* renamed from: f */
    final C11596ac<C11644d> f38310f = new C11596ac<>();

    /* renamed from: g */
    final float[] f38311g = new float[16];

    /* renamed from: h */
    final float[] f38312h = new float[16];

    /* renamed from: k */
    volatile int f38315k = 0;

    /* renamed from: l */
    private int f38316l = -1;

    /* renamed from: a */
    public /* synthetic */ void m20217a(SurfaceTexture surfaceTexture) {
        this.f38305a.set(true);
    }

    /* renamed from: a */
    public final SurfaceTexture m20218a() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        C11610j.m19892a();
        C11515b c11515b = this.f38307c;
        c11515b.f38295k = C11610j.m19889a(TextUtils.join(StringUtils.f67179LF, C11515b.f38285a), TextUtils.join(StringUtils.f67179LF, C11515b.f38286b));
        c11515b.f38296l = GLES20.glGetUniformLocation(c11515b.f38295k, "uMvpMatrix");
        c11515b.f38297m = GLES20.glGetUniformLocation(c11515b.f38295k, "uTexMatrix");
        c11515b.f38298n = GLES20.glGetAttribLocation(c11515b.f38295k, "aPosition");
        c11515b.f38299o = GLES20.glGetAttribLocation(c11515b.f38295k, "aTexCoords");
        c11515b.f38300p = GLES20.glGetUniformLocation(c11515b.f38295k, "uTexture");
        C11610j.m19892a();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        C11610j.m19892a();
        this.f38313i = iArr[0];
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f38313i);
        this.f38314j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.ui.spherical._$$Lambda$c$K0HsjgasoenV6pP_qpPEBSOSQeQ
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                C11517c.this.m20217a(surfaceTexture2);
            }
        });
        return this.f38314j;
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11658i
    /* renamed from: a */
    public final void mo19677a(long j, long j2, Format format) {
        int i;
        int i2;
        this.f38309e.m20015a(j2, (long) Long.valueOf(j));
        byte[] bArr = format.projectionData;
        int i3 = format.stereoMode;
        byte[] bArr2 = this.f38317m;
        int i4 = this.f38316l;
        this.f38317m = bArr;
        int i5 = i3;
        if (i3 == -1) {
            i5 = this.f38315k;
        }
        this.f38316l = i5;
        if (i4 != i5 || !Arrays.equals(bArr2, this.f38317m)) {
            C11644d c11644d = null;
            byte[] bArr3 = this.f38317m;
            if (bArr3 != null) {
                c11644d = C11647e.m19742a(bArr3, this.f38316l);
            }
            if (c11644d == null || !C11515b.m20219a(c11644d)) {
                int i6 = this.f38316l;
                C11593a.m20022a(true);
                C11593a.m20022a(true);
                C11593a.m20022a(true);
                C11593a.m20022a(true);
                C11593a.m20022a(true);
                float radians = (float) Math.toRadians(180.0d);
                float radians2 = (float) Math.toRadians(360.0d);
                float f = radians / 36.0f;
                float f2 = radians2 / 72.0f;
                float[] fArr = new float[15984];
                float[] fArr2 = new float[10656];
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    float f3 = f;
                    if (i7 >= 36) {
                        break;
                    }
                    float f4 = radians / 2.0f;
                    float f5 = (i7 * f3) - f4;
                    int i10 = i7 + 1;
                    float f6 = i10;
                    int i11 = 0;
                    int i12 = i7;
                    f = f3;
                    int i13 = i6;
                    while (i11 < 73) {
                        int i14 = 0;
                        int i15 = i11;
                        while (i14 < 2) {
                            float f7 = i14 == 0 ? f5 : (f6 * f3) - f4;
                            float f8 = i15 * f2;
                            float f9 = radians2 / 2.0f;
                            int i16 = i8 + 1;
                            double d = (3.1415927f + f8) - f9;
                            double sin = Math.sin(d);
                            double d2 = f7;
                            fArr[i8] = -((float) (sin * 50.0d * Math.cos(d2)));
                            int i17 = i16 + 1;
                            fArr[i16] = (float) (Math.sin(d2) * 50.0d);
                            int i18 = i17 + 1;
                            fArr[i17] = (float) (Math.cos(d) * 50.0d * Math.cos(d2));
                            int i19 = i9 + 1;
                            fArr2[i9] = f8 / radians2;
                            int i20 = i19 + 1;
                            fArr2[i19] = ((i12 + i14) * f) / radians;
                            if (i15 != 0 || i14 != 0) {
                                if (i15 == 72) {
                                    i2 = i20;
                                    i = i18;
                                    if (i14 != 1) {
                                    }
                                } else {
                                    i = i18;
                                    i2 = i20;
                                }
                                i14++;
                                i8 = i;
                                i9 = i2;
                            }
                            System.arraycopy(fArr, i18 - 3, fArr, i18, 3);
                            i = i18 + 3;
                            System.arraycopy(fArr2, i20 - 2, fArr2, i20, 2);
                            i2 = i20 + 2;
                            i14++;
                            i8 = i;
                            i9 = i2;
                        }
                        i11 = i15 + 1;
                    }
                    i6 = i13;
                    i7 = i10;
                }
                c11644d = new C11644d(new C11644d.C11645a(new C11644d.C11646b(0, fArr, fArr2, 1)), i6);
            }
            this.f38310f.m20015a(j2, (long) c11644d);
        }
    }

    @Override // com.google.android.exoplayer2.video.p347a.AbstractC11641a
    /* renamed from: a */
    public final void mo19752a(long j, float[] fArr) {
        this.f38308d.f38787c.m20015a(j, (long) fArr);
    }

    @Override // com.google.android.exoplayer2.video.p347a.AbstractC11641a
    /* renamed from: b */
    public final void mo19751b() {
        this.f38309e.m20017a();
        C11643c c11643c = this.f38308d;
        c11643c.f38787c.m20017a();
        c11643c.f38788d = false;
        this.f38306b.set(true);
    }
}
