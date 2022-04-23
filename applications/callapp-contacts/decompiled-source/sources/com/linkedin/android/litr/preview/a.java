package com.linkedin.android.litr.preview;

import android.opengl.GLSurfaceView;
import android.os.Build;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/a.class */
final class a implements GLSurfaceView.EGLConfigChooser {
    private static final boolean h;

    /* renamed from: a  reason: collision with root package name */
    private final int[] f33755a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33756b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33757c;

    /* renamed from: d  reason: collision with root package name */
    private final int f33758d;
    private final int e;
    private final int f;
    private final int g;

    static {
        h = Build.VERSION.SDK_INT >= 17;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a() {
        /*
            r9 = this;
            boolean r0 = com.linkedin.android.litr.preview.a.h
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x000e
            r0 = 8
            r11 = r0
            goto L_0x0010
        L_0x000e:
            r0 = 5
            r11 = r0
        L_0x0010:
            r0 = r10
            if (r0 == 0) goto L_0x001a
            r0 = 8
            r12 = r0
            goto L_0x001d
        L_0x001a:
            r0 = 6
            r12 = r0
        L_0x001d:
            r0 = r10
            if (r0 == 0) goto L_0x0028
            r0 = 8
            r13 = r0
            goto L_0x002b
        L_0x0028:
            r0 = 5
            r13 = r0
        L_0x002b:
            r0 = r9
            r1 = r11
            r2 = r12
            r3 = r13
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 2
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.android.litr.preview.a.<init>():void");
    }

    a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int[] iArr;
        int[] iArr2 = {12324, i, 12323, i2, 12322, i3, 12321, i4, 12325, i5, 12326, i6, 12344};
        if (i7 != 2) {
            iArr = iArr2;
        } else {
            iArr = new int[15];
            System.arraycopy(iArr2, 0, iArr, 0, 12);
            iArr[12] = 12352;
            iArr[13] = 4;
            iArr[14] = 12344;
        }
        this.f33755a = iArr;
        this.f33756b = i;
        this.f33757c = i2;
        this.f33758d = i3;
        this.e = i4;
        this.f = i5;
        this.g = i6;
    }

    private static int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        int[] iArr = new int[1];
        if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, iArr)) {
            return iArr[0];
        }
        return 0;
    }

    private EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        for (EGLConfig eGLConfig : eGLConfigArr) {
            int a2 = a(egl10, eGLDisplay, eGLConfig, 12325);
            int a3 = a(egl10, eGLDisplay, eGLConfig, 12326);
            if (a2 >= this.f && a3 >= this.g) {
                int a4 = a(egl10, eGLDisplay, eGLConfig, 12324);
                int a5 = a(egl10, eGLDisplay, eGLConfig, 12323);
                int a6 = a(egl10, eGLDisplay, eGLConfig, 12322);
                int a7 = a(egl10, eGLDisplay, eGLConfig, 12321);
                if (a4 == this.f33756b && a5 == this.f33757c && a6 == this.f33758d && a7 == this.e) {
                    return eGLConfig;
                }
            }
        }
        return null;
    }

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public final EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        if (egl10.eglChooseConfig(eGLDisplay, this.f33755a, null, 0, iArr)) {
            int i = iArr[0];
            if (i > 0) {
                EGLConfig[] eGLConfigArr = new EGLConfig[i];
                if (egl10.eglChooseConfig(eGLDisplay, this.f33755a, eGLConfigArr, i, iArr)) {
                    EGLConfig a2 = a(egl10, eGLDisplay, eGLConfigArr);
                    if (a2 != null) {
                        return a2;
                    }
                    throw new IllegalArgumentException("No config chosen");
                }
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            throw new IllegalArgumentException("No configs match configSpec");
        }
        throw new IllegalArgumentException("eglChooseConfig failed");
    }
}
