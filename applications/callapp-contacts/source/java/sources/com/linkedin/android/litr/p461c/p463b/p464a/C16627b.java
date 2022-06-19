package com.linkedin.android.litr.p461c.p463b.p464a;

import android.graphics.PointF;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.p461c.AbstractC16624b;
import com.linkedin.android.litr.p461c.C16628c;
import com.linkedin.android.litr.p461c.p462a.C16623a;
import com.linkedin.android.litr.p461c.p463b.p464a.p465a.AbstractC16626a;
import com.linkedin.android.litr.p467e.C16638a;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* renamed from: com.linkedin.android.litr.c.b.a.b */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/c/b/a/b.class */
public class C16627b implements AbstractC16624b {

    /* renamed from: a */
    private final String f58498a;

    /* renamed from: b */
    private final String f58499b;

    /* renamed from: c */
    private final AbstractC16626a[] f58500c;

    /* renamed from: d */
    private final C16628c f58501d;

    /* renamed from: e */
    private float[] f58502e;

    /* renamed from: f */
    private float[] f58503f;

    /* renamed from: g */
    private int f58504g;

    /* renamed from: h */
    private FloatBuffer f58505h;

    /* renamed from: i */
    private final float[] f58506i;

    /* renamed from: j */
    private int f58507j;

    /* renamed from: k */
    private int f58508k;

    /* renamed from: l */
    private int f58509l;

    /* renamed from: m */
    private int f58510m;

    /* renamed from: n */
    private int f58511n;

    /* renamed from: o */
    private int f58512o;

    /* renamed from: p */
    private int f58513p;

    /* renamed from: q */
    private int f58514q;

    protected C16627b(String str, String str2, AbstractC16626a[] abstractC16626aArr) {
        this(str, str2, abstractC16626aArr, null);
    }

    public C16627b(String str, String str2, AbstractC16626a[] abstractC16626aArr, C16628c c16628c) {
        this.f58502e = new float[16];
        this.f58503f = new float[16];
        float[] fArr = {-1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, -1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};
        this.f58506i = fArr;
        this.f58498a = str;
        this.f58499b = str2;
        this.f58500c = abstractC16626aArr;
        this.f58501d = c16628c == null ? new C16628c(new PointF(1.0f, 1.0f), new PointF(0.5f, 0.5f), BitmapDescriptorFactory.HUE_RED) : c16628c;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f58505h = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6874a() {
        Matrix.setIdentityM(this.f58503f, 0);
        int m6838a = C16638a.m6838a(35633, this.f58498a);
        this.f58507j = m6838a;
        if (m6838a != 0) {
            int m6838a2 = C16638a.m6838a(35632, this.f58499b);
            this.f58508k = m6838a2;
            if (m6838a2 == 0) {
                mo6870b();
                throw new RuntimeException("failed loading fragment shader");
            }
            int m6839a = C16638a.m6839a(this.f58507j, m6838a2);
            this.f58509l = m6839a;
            if (m6839a == 0) {
                mo6870b();
                throw new RuntimeException("failed creating glProgram");
            }
            this.f58513p = GLES20.glGetAttribLocation(m6839a, "aPosition");
            C16638a.m6837a("glGetAttribLocation aPosition");
            if (this.f58513p == -1) {
                throw new RuntimeException("Could not get attrib location for aPosition");
            }
            this.f58514q = GLES20.glGetAttribLocation(this.f58509l, "aTextureCoord");
            C16638a.m6837a("glGetAttribLocation aTextureCoord");
            if (this.f58514q == -1) {
                throw new RuntimeException("Could not get attrib location for aTextureCoord");
            }
            this.f58510m = GLES20.glGetUniformLocation(this.f58509l, "uMVPMatrix");
            C16638a.m6837a("glGetUniformLocation uMVPMatrix");
            if (this.f58510m == -1) {
                throw new RuntimeException("Could not get attrib location for uMVPMatrix");
            }
            this.f58511n = GLES20.glGetUniformLocation(this.f58509l, "uSTMatrix");
            C16638a.m6837a("glGetUniformLocation uSTMatrix");
            if (this.f58511n == -1) {
                throw new RuntimeException("Could not get attrib location for uSTMatrix");
            }
            return;
        }
        throw new RuntimeException("failed loading vertex shader");
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16624b
    /* renamed from: a */
    public final void mo6873a(int i, float[] fArr) {
        this.f58512o = i;
        this.f58503f = fArr;
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6872a(long j) {
        this.f58505h.position(0);
        GLES20.glVertexAttribPointer(this.f58513p, 3, 5126, false, 20, (Buffer) this.f58505h);
        C16638a.m6837a("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(this.f58513p);
        C16638a.m6837a("glEnableVertexAttribArray aPositionHandle");
        this.f58505h.position(3);
        GLES20.glVertexAttribPointer(this.f58514q, 2, 5126, false, 20, (Buffer) this.f58505h);
        C16638a.m6837a("glVertexAttribPointer aTextureHandle");
        GLES20.glEnableVertexAttribArray(this.f58514q);
        C16638a.m6837a("glEnableVertexAttribArray aTextureHandle");
        C16638a.m6837a("onDrawFrame start");
        GLES20.glUseProgram(this.f58509l);
        C16638a.m6837a("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.f58512o);
        GLES20.glUniformMatrix4fv(this.f58510m, 1, false, this.f58502e, this.f58504g);
        GLES20.glUniformMatrix4fv(this.f58511n, 1, false, this.f58503f, 0);
        GLES20.glDrawArrays(5, 0, 4);
        C16638a.m6837a("glDrawArrays");
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6871a(float[] fArr, int i) {
        this.f58502e = C16623a.m6875a(fArr, this.f58501d);
        this.f58504g = i;
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: b */
    public final void mo6870b() {
        GLES20.glDeleteProgram(this.f58509l);
        GLES20.glDeleteShader(this.f58507j);
        GLES20.glDeleteShader(this.f58508k);
        GLES20.glDeleteBuffers(1, new int[]{this.f58514q}, 0);
        this.f58509l = 0;
        this.f58507j = 0;
        this.f58508k = 0;
        this.f58514q = 0;
    }
}
