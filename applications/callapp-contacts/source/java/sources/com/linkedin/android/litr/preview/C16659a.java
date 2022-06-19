package com.linkedin.android.litr.preview;

import android.opengl.GLSurfaceView;
import android.os.Build;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
/* renamed from: com.linkedin.android.litr.preview.a */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/a.class */
final class C16659a implements GLSurfaceView.EGLConfigChooser {

    /* renamed from: h */
    private static final boolean f58615h;

    /* renamed from: a */
    private final int[] f58616a;

    /* renamed from: b */
    private final int f58617b;

    /* renamed from: c */
    private final int f58618c;

    /* renamed from: d */
    private final int f58619d;

    /* renamed from: e */
    private final int f58620e;

    /* renamed from: f */
    private final int f58621f;

    /* renamed from: g */
    private final int f58622g;

    static {
        f58615h = Build.VERSION.SDK_INT >= 17;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C16659a() {
        /*
            r9 = this;
            boolean r0 = com.linkedin.android.litr.preview.C16659a.f58615h
            r10 = r0
            r0 = r10
            if (r0 == 0) goto Le
            r0 = 8
            r11 = r0
            goto L10
        Le:
            r0 = 5
            r11 = r0
        L10:
            r0 = r10
            if (r0 == 0) goto L1a
            r0 = 8
            r12 = r0
            goto L1d
        L1a:
            r0 = 6
            r12 = r0
        L1d:
            r0 = r10
            if (r0 == 0) goto L28
            r0 = 8
            r13 = r0
            goto L2b
        L28:
            r0 = 5
            r13 = r0
        L2b:
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
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.android.litr.preview.C16659a.<init>():void");
    }

    C16659a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
        this.f58616a = iArr;
        this.f58617b = i;
        this.f58618c = i2;
        this.f58619d = i3;
        this.f58620e = i4;
        this.f58621f = i5;
        this.f58622g = i6;
    }

    /* renamed from: a */
    private static int m6799a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        int[] iArr = new int[1];
        if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, iArr)) {
            return iArr[0];
        }
        return 0;
    }

    /* renamed from: a */
    private EGLConfig m6798a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        for (EGLConfig eGLConfig : eGLConfigArr) {
            int m6799a = m6799a(egl10, eGLDisplay, eGLConfig, 12325);
            int m6799a2 = m6799a(egl10, eGLDisplay, eGLConfig, 12326);
            if (m6799a >= this.f58621f && m6799a2 >= this.f58622g) {
                int m6799a3 = m6799a(egl10, eGLDisplay, eGLConfig, 12324);
                int m6799a4 = m6799a(egl10, eGLDisplay, eGLConfig, 12323);
                int m6799a5 = m6799a(egl10, eGLDisplay, eGLConfig, 12322);
                int m6799a6 = m6799a(egl10, eGLDisplay, eGLConfig, 12321);
                if (m6799a3 == this.f58617b && m6799a4 == this.f58618c && m6799a5 == this.f58619d && m6799a6 == this.f58620e) {
                    return eGLConfig;
                }
            }
        }
        return null;
    }

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public final EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        if (egl10.eglChooseConfig(eGLDisplay, this.f58616a, null, 0, iArr)) {
            int i = iArr[0];
            if (i <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            if (!egl10.eglChooseConfig(eGLDisplay, this.f58616a, eGLConfigArr, i, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            EGLConfig m6798a = m6798a(egl10, eGLDisplay, eGLConfigArr);
            if (m6798a == null) {
                throw new IllegalArgumentException("No config chosen");
            }
            return m6798a;
        }
        throw new IllegalArgumentException("eglChooseConfig failed");
    }
}
