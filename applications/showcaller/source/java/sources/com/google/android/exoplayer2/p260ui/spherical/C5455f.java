package com.google.android.exoplayer2.p260ui.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C5507d0;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5524m;
import com.google.android.exoplayer2.video.AbstractC5563m;
import com.google.android.exoplayer2.video.p261r.AbstractC5571a;
import com.google.android.exoplayer2.video.p261r.C5573c;
import com.google.android.exoplayer2.video.p261r.C5574d;
import com.google.android.exoplayer2.video.p261r.C5577e;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.exoplayer2.ui.spherical.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/f.class */
public final class C5455f implements AbstractC5563m, AbstractC5571a {

    /* renamed from: i */
    private int f17657i;

    /* renamed from: j */
    private SurfaceTexture f17658j;

    /* renamed from: m */
    private byte[] f17661m;

    /* renamed from: a */
    private final AtomicBoolean f17649a = new AtomicBoolean();

    /* renamed from: b */
    private final AtomicBoolean f17650b = new AtomicBoolean(true);

    /* renamed from: c */
    private final C5453e f17651c = new C5453e();

    /* renamed from: d */
    private final C5573c f17652d = new C5573c();

    /* renamed from: e */
    private final C5507d0<Long> f17653e = new C5507d0<>();

    /* renamed from: f */
    private final C5507d0<C5574d> f17654f = new C5507d0<>();

    /* renamed from: g */
    private final float[] f17655g = new float[16];

    /* renamed from: h */
    private final float[] f17656h = new float[16];

    /* renamed from: k */
    private volatile int f17659k = 0;

    /* renamed from: l */
    private int f17660l = -1;

    /* renamed from: f */
    public /* synthetic */ void m19063g(SurfaceTexture surfaceTexture) {
        this.f17649a.set(true);
    }

    /* renamed from: i */
    private void m19061i(byte[] bArr, int i, long j) {
        byte[] bArr2 = this.f17661m;
        int i2 = this.f17660l;
        this.f17661m = bArr;
        int i3 = i;
        if (i == -1) {
            i3 = this.f17659k;
        }
        this.f17660l = i3;
        if (i2 != i3 || !Arrays.equals(bArr2, this.f17661m)) {
            C5574d c5574d = null;
            byte[] bArr3 = this.f17661m;
            if (bArr3 != null) {
                c5574d = C5577e.m18492a(bArr3, this.f17660l);
            }
            if (c5574d == null || !C5453e.m19072c(c5574d)) {
                c5574d = C5574d.m18496b(this.f17660l);
            }
            this.f17654f.m18924a(j, c5574d);
        }
    }

    @Override // com.google.android.exoplayer2.video.p261r.AbstractC5571a
    /* renamed from: a */
    public void mo18514a(long j, float[] fArr) {
        this.f17652d.m18498e(j, fArr);
    }

    @Override // com.google.android.exoplayer2.video.p261r.AbstractC5571a
    /* renamed from: b */
    public void mo18513b() {
        this.f17653e.m18922c();
        this.f17652d.m18499d();
        this.f17650b.set(true);
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5563m
    /* renamed from: c */
    public void mo18553c(long j, long j2, Format format, MediaFormat mediaFormat) {
        this.f17653e.m18924a(j2, Long.valueOf(j));
        m19061i(format.f14472w, format.f14471v, j2);
    }

    /* renamed from: d */
    public void m19066d(float[] fArr, boolean z) {
        GLES20.glClear(16384);
        C5524m.m18763b();
        if (this.f17649a.compareAndSet(true, false)) {
            ((SurfaceTexture) C5508e.m18911e(this.f17658j)).updateTexImage();
            C5524m.m18763b();
            if (this.f17650b.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f17655g, 0);
            }
            long timestamp = this.f17658j.getTimestamp();
            Long m18918g = this.f17653e.m18918g(timestamp);
            if (m18918g != null) {
                this.f17652d.m18500c(this.f17655g, m18918g.longValue());
            }
            C5574d m18916i = this.f17654f.m18916i(timestamp);
            if (m18916i != null) {
                this.f17651c.m19071d(m18916i);
            }
        }
        Matrix.multiplyMM(this.f17656h, 0, fArr, 0, this.f17655g, 0);
        this.f17651c.m19074a(this.f17657i, this.f17656h, z);
    }

    /* renamed from: e */
    public SurfaceTexture m19065e() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        C5524m.m18763b();
        this.f17651c.m19073b();
        C5524m.m18763b();
        this.f17657i = C5524m.m18758g();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f17657i);
        this.f17658j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.ui.spherical.a
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                C5455f.this.m19063g(surfaceTexture2);
            }
        });
        return this.f17658j;
    }

    /* renamed from: h */
    public void m19062h(int i) {
        this.f17659k = i;
    }
}
