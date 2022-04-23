package com.linkedin.android.litr.c.a;

import android.opengl.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.c.c;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/c/a/a.class */
public final class a {
    public static float[] a(float[] fArr, c cVar) {
        float f;
        float f2;
        float f3;
        float f4;
        boolean z = fArr[0] == BitmapDescriptorFactory.HUE_RED;
        float abs = 1.0f / (z ? Math.abs(fArr[4]) : Math.abs(fArr[0]));
        if (z) {
            f = cVar.f33691a.x;
            f2 = cVar.f33691a.y * abs;
        } else {
            f = cVar.f33691a.x * abs;
            f2 = cVar.f33691a.y;
        }
        if (z) {
            f3 = (cVar.f33692b.x * 2.0f) - 1.0f;
            f4 = (1.0f - (cVar.f33692b.y * 2.0f)) * abs;
        } else {
            f3 = ((cVar.f33692b.x * 2.0f) - 1.0f) * abs;
            f4 = 1.0f - (cVar.f33692b.y * 2.0f);
        }
        float[] fArr2 = new float[16];
        Matrix.setIdentityM(fArr2, 0);
        Matrix.translateM(fArr2, 0, f3, f4, BitmapDescriptorFactory.HUE_RED);
        Matrix.rotateM(fArr2, 0, cVar.f33693c, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        Matrix.scaleM(fArr2, 0, f, f2, 1.0f);
        float[] fArr3 = new float[16];
        Matrix.multiplyMM(fArr3, 0, fArr, 0, fArr2, 0);
        return fArr3;
    }
}
