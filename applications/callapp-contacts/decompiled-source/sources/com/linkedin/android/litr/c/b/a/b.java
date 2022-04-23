package com.linkedin.android.litr.c.b.a;

import android.graphics.PointF;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.c.b.a.a.a;
import com.linkedin.android.litr.c.c;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/c/b/a/b.class */
public class b implements com.linkedin.android.litr.c.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f33687a;

    /* renamed from: b  reason: collision with root package name */
    private final String f33688b;

    /* renamed from: c  reason: collision with root package name */
    private final a[] f33689c;

    /* renamed from: d  reason: collision with root package name */
    private final c f33690d;
    private float[] e;
    private float[] f;
    private int g;
    private FloatBuffer h;
    private final float[] i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;

    protected b(String str, String str2, a[] aVarArr) {
        this(str, str2, aVarArr, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(String str, String str2, a[] aVarArr, c cVar) {
        this.e = new float[16];
        this.f = new float[16];
        float[] fArr = {-1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, -1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};
        this.i = fArr;
        this.f33687a = str;
        this.f33688b = str2;
        this.f33689c = aVarArr;
        this.f33690d = cVar == null ? new c(new PointF(1.0f, 1.0f), new PointF(0.5f, 0.5f), BitmapDescriptorFactory.HUE_RED) : cVar;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.h = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
    }

    @Override // com.linkedin.android.litr.c.a
    public final void a() {
        Matrix.setIdentityM(this.f, 0);
        int a2 = com.linkedin.android.litr.e.a.a(35633, this.f33687a);
        this.j = a2;
        if (a2 != 0) {
            int a3 = com.linkedin.android.litr.e.a.a(35632, this.f33688b);
            this.k = a3;
            if (a3 != 0) {
                int a4 = com.linkedin.android.litr.e.a.a(this.j, a3);
                this.l = a4;
                if (a4 != 0) {
                    this.p = GLES20.glGetAttribLocation(a4, "aPosition");
                    com.linkedin.android.litr.e.a.a("glGetAttribLocation aPosition");
                    if (this.p != -1) {
                        this.q = GLES20.glGetAttribLocation(this.l, "aTextureCoord");
                        com.linkedin.android.litr.e.a.a("glGetAttribLocation aTextureCoord");
                        if (this.q != -1) {
                            this.m = GLES20.glGetUniformLocation(this.l, "uMVPMatrix");
                            com.linkedin.android.litr.e.a.a("glGetUniformLocation uMVPMatrix");
                            if (this.m != -1) {
                                this.n = GLES20.glGetUniformLocation(this.l, "uSTMatrix");
                                com.linkedin.android.litr.e.a.a("glGetUniformLocation uSTMatrix");
                                if (this.n == -1) {
                                    throw new RuntimeException("Could not get attrib location for uSTMatrix");
                                }
                                return;
                            }
                            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
                        }
                        throw new RuntimeException("Could not get attrib location for aTextureCoord");
                    }
                    throw new RuntimeException("Could not get attrib location for aPosition");
                }
                b();
                throw new RuntimeException("failed creating glProgram");
            }
            b();
            throw new RuntimeException("failed loading fragment shader");
        }
        throw new RuntimeException("failed loading vertex shader");
    }

    @Override // com.linkedin.android.litr.c.b
    public final void a(int i, float[] fArr) {
        this.o = i;
        this.f = fArr;
    }

    @Override // com.linkedin.android.litr.c.a
    public final void a(long j) {
        this.h.position(0);
        GLES20.glVertexAttribPointer(this.p, 3, 5126, false, 20, (Buffer) this.h);
        com.linkedin.android.litr.e.a.a("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(this.p);
        com.linkedin.android.litr.e.a.a("glEnableVertexAttribArray aPositionHandle");
        this.h.position(3);
        GLES20.glVertexAttribPointer(this.q, 2, 5126, false, 20, (Buffer) this.h);
        com.linkedin.android.litr.e.a.a("glVertexAttribPointer aTextureHandle");
        GLES20.glEnableVertexAttribArray(this.q);
        com.linkedin.android.litr.e.a.a("glEnableVertexAttribArray aTextureHandle");
        com.linkedin.android.litr.e.a.a("onDrawFrame start");
        GLES20.glUseProgram(this.l);
        com.linkedin.android.litr.e.a.a("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.o);
        GLES20.glUniformMatrix4fv(this.m, 1, false, this.e, this.g);
        GLES20.glUniformMatrix4fv(this.n, 1, false, this.f, 0);
        GLES20.glDrawArrays(5, 0, 4);
        com.linkedin.android.litr.e.a.a("glDrawArrays");
    }

    @Override // com.linkedin.android.litr.c.a
    public final void a(float[] fArr, int i) {
        this.e = com.linkedin.android.litr.c.a.a.a(fArr, this.f33690d);
        this.g = i;
    }

    @Override // com.linkedin.android.litr.c.a
    public final void b() {
        GLES20.glDeleteProgram(this.l);
        GLES20.glDeleteShader(this.j);
        GLES20.glDeleteShader(this.k);
        GLES20.glDeleteBuffers(1, new int[]{this.q}, 0);
        this.l = 0;
        this.j = 0;
        this.k = 0;
        this.q = 0;
    }
}
