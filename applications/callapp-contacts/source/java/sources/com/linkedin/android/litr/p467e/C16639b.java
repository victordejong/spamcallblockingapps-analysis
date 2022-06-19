package com.linkedin.android.litr.p467e;

import android.media.MediaFormat;
import android.opengl.EGL14;
import android.opengl.EGLExt;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Build;
import android.view.Surface;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.p460b.C16616c;
import com.linkedin.android.litr.p461c.AbstractC16622a;
import com.linkedin.android.litr.p461c.AbstractC16624b;
import com.linkedin.android.litr.p461c.p463b.p464a.C16625a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.linkedin.android.litr.e.b */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/b.class */
public final class C16639b implements AbstractC16641d {

    /* renamed from: a */
    protected static final String f58548a = "rotation-degrees";

    /* renamed from: b */
    public C16642e f58549b;

    /* renamed from: c */
    public C16643f f58550c;

    /* renamed from: d */
    public List<AbstractC16622a> f58551d;

    /* renamed from: e */
    private float[] f58552e = new float[16];

    /* renamed from: f */
    private boolean f58553f;

    static {
        int i = Build.VERSION.SDK_INT;
    }

    public C16639b(List<AbstractC16622a> list) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        this.f58551d = arrayList;
        if (list == null) {
            arrayList.add(new C16625a());
            return;
        }
        Iterator<AbstractC16622a> it2 = list.iterator();
        while (true) {
            z = false;
            if (it2.hasNext()) {
                if (it2.next() instanceof AbstractC16624b) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (!z) {
            this.f58551d.add(new C16625a());
        }
        this.f58551d.addAll(list);
    }

    /* renamed from: a */
    private void m6836a(long j) {
        if (!this.f58553f) {
            for (AbstractC16622a abstractC16622a : this.f58551d) {
                if (abstractC16622a instanceof AbstractC16624b) {
                    AbstractC16624b abstractC16624b = (AbstractC16624b) abstractC16622a;
                    int i = this.f58549b.f58562c;
                    float[] fArr = new float[16];
                    this.f58549b.f58560a.getTransformMatrix(fArr);
                    abstractC16624b.mo6873a(i, fArr);
                }
            }
            this.f58553f = true;
        }
        GLES20.glClearColor(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        GLES20.glClear(16640);
        for (AbstractC16622a abstractC16622a2 : this.f58551d) {
            abstractC16622a2.mo6872a(j);
        }
        GLES20.glFinish();
    }

    @Override // com.linkedin.android.litr.p467e.AbstractC16641d
    /* renamed from: a */
    public final void mo6833a(MediaFormat mediaFormat, MediaFormat mediaFormat2) {
    }

    @Override // com.linkedin.android.litr.p467e.AbstractC16641d
    /* renamed from: a */
    public final void mo6832a(Surface surface, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        float f;
        float f2;
        if (surface != null) {
            if (mediaFormat2 == null) {
                throw new IllegalArgumentException("GlVideoRenderer requires target media format");
            }
            String str = f58548a;
            int integer = mediaFormat2.containsKey(str) ? mediaFormat2.getInteger(str) : (mediaFormat == null || !mediaFormat.containsKey(str)) ? 0 : mediaFormat.getInteger(str);
            float integer2 = (!mediaFormat2.containsKey("width") || !mediaFormat2.containsKey("height")) ? 1.0f : mediaFormat2.getInteger("width") / mediaFormat2.getInteger("height");
            this.f58550c = new C16643f(surface);
            this.f58549b = new C16642e();
            float[] fArr = new float[16];
            Matrix.setIdentityM(fArr, 0);
            Matrix.orthoM(fArr, 0, -integer2, integer2, -1.0f, 1.0f, -1.0f, 1.0f);
            float[] fArr2 = new float[16];
            Matrix.setIdentityM(fArr2, 0);
            if (integer != 0) {
                if (integer == 90) {
                    f2 = 1.0f;
                } else if (integer == 180) {
                    f2 = 0.0f;
                    f = -1.0f;
                } else if (integer != 270) {
                    double d = integer / 3.141592653589793d;
                    f2 = (float) Math.sin(d);
                    f = (float) Math.cos(d);
                } else {
                    f2 = -1.0f;
                }
                f = 0.0f;
            } else {
                f2 = 0.0f;
                f = 1.0f;
            }
            Matrix.setLookAtM(fArr2, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, f, BitmapDescriptorFactory.HUE_RED);
            Matrix.setIdentityM(this.f58552e, 0);
            Matrix.multiplyMM(this.f58552e, 0, fArr, 0, fArr2, 0);
            for (AbstractC16622a abstractC16622a : this.f58551d) {
                abstractC16622a.mo6874a();
                float[] fArr3 = this.f58552e;
                abstractC16622a.mo6871a(Arrays.copyOf(fArr3, fArr3.length), 0);
            }
            return;
        }
        throw new IllegalArgumentException("GlVideoRenderer requires an output surface");
    }

    @Override // com.linkedin.android.litr.p467e.AbstractC16641d
    /* renamed from: a */
    public final void mo6831a(C16616c c16616c, long j) {
        C16642e c16642e = this.f58549b;
        synchronized (c16642e.f58563d) {
            while (!c16642e.f58564e) {
                try {
                    c16642e.f58563d.wait(10000L);
                    if (!c16642e.f58564e) {
                        throw new RuntimeException("Surface frame wait timed out");
                    }
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
            c16642e.f58564e = false;
        }
        C16638a.m6837a("before updateTexImage");
        c16642e.f58560a.updateTexImage();
        m6836a(j);
        C16643f c16643f = this.f58550c;
        EGLExt.eglPresentationTimeANDROID(c16643f.f58565a, c16643f.f58567c, j);
        C16643f c16643f2 = this.f58550c;
        EGL14.eglSwapBuffers(c16643f2.f58565a, c16643f2.f58567c);
    }

    @Override // com.linkedin.android.litr.p467e.AbstractC16641d
    /* renamed from: a */
    public final boolean mo6834a() {
        List<AbstractC16622a> list = this.f58551d;
        return list != null && !list.isEmpty();
    }
}
