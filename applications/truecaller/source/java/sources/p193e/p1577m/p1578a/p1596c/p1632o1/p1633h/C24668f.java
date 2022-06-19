package p193e.p1577m.p1578a.p1596c.p1632o1.p1633h;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.tenor.android.core.constant.StringConstant;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24769b0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24828o;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.AbstractC24836a;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.C24838c;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.C24839d;
/* renamed from: e.m.a.c.o1.h.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/f.class */
public final class C24668f implements AbstractC24828o, AbstractC24836a {

    /* renamed from: i */
    public int f69119i;

    /* renamed from: j */
    public SurfaceTexture f69120j;

    /* renamed from: m */
    public byte[] f69123m;

    /* renamed from: a */
    public final AtomicBoolean f69111a = new AtomicBoolean();

    /* renamed from: b */
    public final AtomicBoolean f69112b = new AtomicBoolean(true);

    /* renamed from: c */
    public final C24666e f69113c = new C24666e();

    /* renamed from: d */
    public final C24838c f69114d = new C24838c();

    /* renamed from: e */
    public final C24769b0<Long> f69115e = new C24769b0<>();

    /* renamed from: f */
    public final C24769b0<C24839d> f69116f = new C24769b0<>();

    /* renamed from: g */
    public final float[] f69117g = new float[16];

    /* renamed from: h */
    public final float[] f69118h = new float[16];

    /* renamed from: k */
    public volatile int f69121k = 0;

    /* renamed from: l */
    public int f69122l = -1;

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24828o
    /* renamed from: a */
    public void mo4445a(long j, long j2, Format format, MediaFormat mediaFormat) {
        ArrayList<C24839d.C24840a> arrayList;
        int m4541e;
        this.f69115e.m4638a(j2, Long.valueOf(j));
        byte[] bArr = format.f4858t;
        int i = format.f4857s;
        byte[] bArr2 = this.f69123m;
        int i2 = this.f69122l;
        this.f69123m = bArr;
        int i3 = i;
        if (i == -1) {
            i3 = this.f69121k;
        }
        this.f69122l = i3;
        if (i2 != i3 || !Arrays.equals(bArr2, this.f69123m)) {
            byte[] bArr3 = this.f69123m;
            C24839d c24839d = null;
            if (bArr3 != null) {
                int i4 = this.f69122l;
                C24798t c24798t = new C24798t(bArr3);
                try {
                    c24798t.m4546D(4);
                    m4541e = c24798t.m4541e();
                    c24798t.m4547C(0);
                } catch (ArrayIndexOutOfBoundsException e) {
                }
                if (m4541e == 1886547818) {
                    c24798t.m4546D(8);
                    int i5 = c24798t.f69505b;
                    int i6 = c24798t.f69506c;
                    while (i5 < i6) {
                        int m4541e2 = c24798t.m4541e() + i5;
                        if (m4541e2 <= i5 || m4541e2 > i6) {
                            break;
                        }
                        int m4541e3 = c24798t.m4541e();
                        if (m4541e3 == 2037673328 || m4541e3 == 1836279920) {
                            c24798t.m4548B(m4541e2);
                            arrayList = C26232y.m2292v1(c24798t);
                            break;
                        }
                        c24798t.m4547C(m4541e2);
                        i5 = m4541e2;
                    }
                    arrayList = null;
                } else {
                    arrayList = C26232y.m2292v1(c24798t);
                }
                if (arrayList == null) {
                    c24839d = null;
                } else {
                    int size = arrayList.size();
                    c24839d = size != 1 ? size != 2 ? null : new C24839d(arrayList.get(0), arrayList.get(1), i4) : new C24839d(arrayList.get(0), i4);
                }
            }
            if (c24839d == null || !C24666e.m4782a(c24839d)) {
                int i7 = this.f69122l;
                C26232y.m2310r(true);
                C26232y.m2310r(true);
                C26232y.m2310r(true);
                C26232y.m2310r(true);
                C26232y.m2310r(true);
                float radians = (float) Math.toRadians(180.0f);
                float radians2 = (float) Math.toRadians(360.0f);
                float f = radians / 36;
                float f2 = radians2 / 72;
                float[] fArr = new float[15984];
                float[] fArr2 = new float[10656];
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                while (i8 < 36) {
                    float f3 = radians / 2.0f;
                    float f4 = (i8 * f) - f3;
                    int i11 = i8 + 1;
                    float f5 = (i11 * f) - f3;
                    int i12 = 0;
                    int i13 = i9;
                    float f6 = f;
                    float f7 = radians;
                    while (i12 < 73) {
                        int i14 = 0;
                        int i15 = i12;
                        float f8 = f4;
                        for (int i16 = 2; i14 < i16; i16 = 2) {
                            float f9 = i14 == 0 ? f8 : f5;
                            float f10 = i15 * f2;
                            float f11 = radians2 / 2.0f;
                            int i17 = i13 + 1;
                            double d = 50.0f;
                            double d2 = (f10 + 3.1415927f) - f11;
                            double sin = Math.sin(d2);
                            double d3 = f9;
                            fArr[i13] = -((float) (Math.cos(d3) * sin * d));
                            int i18 = i17 + 1;
                            fArr[i17] = (float) (Math.sin(d3) * d);
                            int i19 = i18 + 1;
                            fArr[i18] = (float) (Math.cos(d3) * Math.cos(d2) * d);
                            int i20 = i10 + 1;
                            fArr2[i10] = f10 / radians2;
                            i10 = i20 + 1;
                            fArr2[i20] = ((i8 + i14) * f6) / f7;
                            if ((i15 == 0 && i14 == 0) || (i15 == 72 && i14 == 1)) {
                                System.arraycopy(fArr, i19 - 3, fArr, i19, 3);
                                i19 += 3;
                                System.arraycopy(fArr2, i10 - 2, fArr2, i10, 2);
                                i10 += 2;
                            }
                            i13 = i19;
                            i14++;
                        }
                        i12 = i15 + 1;
                        f4 = f8;
                    }
                    radians = f7;
                    f = f6;
                    i8 = i11;
                    i9 = i13;
                }
                c24839d = new C24839d(new C24839d.C24840a(new C24839d.C24841b(0, fArr, fArr2, 1)), i7);
            }
            this.f69116f.m4638a(j2, c24839d);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.AbstractC24836a
    /* renamed from: b */
    public void mo4429b(long j, float[] fArr) {
        this.f69114d.f69657c.m4638a(j, fArr);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.AbstractC24836a
    /* renamed from: c */
    public void mo4428c() {
        this.f69115e.m4637b();
        C24838c c24838c = this.f69114d;
        c24838c.f69657c.m4637b();
        c24838c.f69658d = false;
        this.f69112b.set(true);
    }

    /* renamed from: d */
    public SurfaceTexture m4781d() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        C26232y.m2294v();
        C24666e c24666e = this.f69113c;
        Objects.requireNonNull(c24666e);
        int m2484B = C26232y.m2484B(TextUtils.join(StringConstant.NEW_LINE, C24666e.f69091j), TextUtils.join(StringConstant.NEW_LINE, C24666e.f69092k));
        c24666e.f69101d = m2484B;
        c24666e.f69102e = GLES20.glGetUniformLocation(m2484B, "uMvpMatrix");
        c24666e.f69103f = GLES20.glGetUniformLocation(c24666e.f69101d, "uTexMatrix");
        c24666e.f69104g = GLES20.glGetAttribLocation(c24666e.f69101d, "aPosition");
        c24666e.f69105h = GLES20.glGetAttribLocation(c24666e.f69101d, "aTexCoords");
        c24666e.f69106i = GLES20.glGetUniformLocation(c24666e.f69101d, "uTexture");
        C26232y.m2294v();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        C26232y.m2294v();
        this.f69119i = iArr[0];
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f69119i);
        this.f69120j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: e.m.a.c.o1.h.a
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                C24668f.this.f69111a.set(true);
            }
        });
        return this.f69120j;
    }
}
