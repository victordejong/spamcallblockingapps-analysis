package com.linkedin.android.litr.e;

import android.media.MediaFormat;
import android.opengl.EGL14;
import android.opengl.EGLExt;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Build;
import android.view.Surface;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.b.c;
import com.linkedin.android.litr.c.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/b.class */
public final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    protected static final String f33713a = "rotation-degrees";

    /* renamed from: b  reason: collision with root package name */
    public e f33714b;

    /* renamed from: c  reason: collision with root package name */
    public f f33715c;

    /* renamed from: d  reason: collision with root package name */
    public List<a> f33716d;
    private float[] e = new float[16];
    private boolean f;

    static {
        int i = Build.VERSION.SDK_INT;
    }

    public b(List<a> list) {
        ArrayList arrayList = new ArrayList();
        this.f33716d = arrayList;
        if (list == null) {
            arrayList.add(new com.linkedin.android.litr.c.b.a.a());
            return;
        }
        boolean z = false;
        Iterator<a> it2 = list.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (it2.next() instanceof com.linkedin.android.litr.c.b) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (!z) {
            this.f33716d.add(new com.linkedin.android.litr.c.b.a.a());
        }
        this.f33716d.addAll(list);
    }

    private void a(long j) {
        if (!this.f) {
            for (a aVar : this.f33716d) {
                if (aVar instanceof com.linkedin.android.litr.c.b) {
                    com.linkedin.android.litr.c.b bVar = (com.linkedin.android.litr.c.b) aVar;
                    int i = this.f33714b.f33723c;
                    float[] fArr = new float[16];
                    this.f33714b.f33721a.getTransformMatrix(fArr);
                    bVar.a(i, fArr);
                }
            }
            this.f = true;
        }
        GLES20.glClearColor(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        GLES20.glClear(16640);
        for (a aVar2 : this.f33716d) {
            aVar2.a(j);
        }
        GLES20.glFinish();
    }

    @Override // com.linkedin.android.litr.e.d
    public final void a(MediaFormat mediaFormat, MediaFormat mediaFormat2) {
    }

    @Override // com.linkedin.android.litr.e.d
    public final void a(Surface surface, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        float f;
        float f2;
        if (surface == null) {
            throw new IllegalArgumentException("GlVideoRenderer requires an output surface");
        } else if (mediaFormat2 != null) {
            String str = f33713a;
            int integer = mediaFormat2.containsKey(str) ? mediaFormat2.getInteger(str) : (mediaFormat == null || !mediaFormat.containsKey(str)) ? 0 : mediaFormat.getInteger(str);
            float integer2 = (!mediaFormat2.containsKey("width") || !mediaFormat2.containsKey("height")) ? 1.0f : mediaFormat2.getInteger("width") / mediaFormat2.getInteger("height");
            this.f33715c = new f(surface);
            this.f33714b = new e();
            float[] fArr = new float[16];
            Matrix.setIdentityM(fArr, 0);
            Matrix.orthoM(fArr, 0, -integer2, integer2, -1.0f, 1.0f, -1.0f, 1.0f);
            float[] fArr2 = new float[16];
            Matrix.setIdentityM(fArr2, 0);
            if (integer != 0) {
                if (integer == 90) {
                    f2 = 1.0f;
                } else if (integer == 180) {
                    f2 = BitmapDescriptorFactory.HUE_RED;
                    f = -1.0f;
                } else if (integer != 270) {
                    double d2 = integer / 3.141592653589793d;
                    f2 = (float) Math.sin(d2);
                    f = (float) Math.cos(d2);
                } else {
                    f2 = -1.0f;
                }
                f = BitmapDescriptorFactory.HUE_RED;
            } else {
                f2 = BitmapDescriptorFactory.HUE_RED;
                f = 1.0f;
            }
            Matrix.setLookAtM(fArr2, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, f, BitmapDescriptorFactory.HUE_RED);
            Matrix.setIdentityM(this.e, 0);
            Matrix.multiplyMM(this.e, 0, fArr, 0, fArr2, 0);
            for (a aVar : this.f33716d) {
                aVar.a();
                float[] fArr3 = this.e;
                aVar.a(Arrays.copyOf(fArr3, fArr3.length), 0);
            }
        } else {
            throw new IllegalArgumentException("GlVideoRenderer requires target media format");
        }
    }

    @Override // com.linkedin.android.litr.e.d
    public final void a(c cVar, long j) {
        e eVar = this.f33714b;
        synchronized (eVar.f33724d) {
            while (!eVar.e) {
                try {
                    eVar.f33724d.wait(10000L);
                    if (!eVar.e) {
                        throw new RuntimeException("Surface frame wait timed out");
                    }
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
            eVar.e = false;
        }
        a.a("before updateTexImage");
        eVar.f33721a.updateTexImage();
        a(j);
        f fVar = this.f33715c;
        EGLExt.eglPresentationTimeANDROID(fVar.f33725a, fVar.f33727c, j);
        f fVar2 = this.f33715c;
        EGL14.eglSwapBuffers(fVar2.f33725a, fVar2.f33727c);
    }

    @Override // com.linkedin.android.litr.e.d
    public final boolean a() {
        List<a> list = this.f33716d;
        return list != null && !list.isEmpty();
    }
}
