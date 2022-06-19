package io.agora.rtc.gdp;

import android.graphics.Bitmap;
import android.opengl.EGL14;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gdp/EglSurfaceBase.class */
public class EglSurfaceBase {
    public static final String TAG = "GDPGlUtil";
    public EglCore mEglCore;
    private EGLSurface mEGLSurface = EGL14.EGL_NO_SURFACE;
    private int mWidth = -1;
    private int mHeight = -1;

    public EglSurfaceBase(EglCore eglCore) {
        this.mEglCore = eglCore;
    }

    public void createOffscreenSurface(int i, int i2) {
        if (this.mEGLSurface == EGL14.EGL_NO_SURFACE) {
            this.mEGLSurface = this.mEglCore.createOffscreenSurface(i, i2);
            this.mWidth = i;
            this.mHeight = i2;
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public void createWindowSurface(Object obj) {
        if (this.mEGLSurface == EGL14.EGL_NO_SURFACE) {
            this.mEGLSurface = this.mEglCore.createWindowSurface(obj);
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public int getHeight() {
        int i = this.mHeight;
        int i2 = i;
        if (i < 0) {
            i2 = this.mEglCore.querySurface(this.mEGLSurface, 12374);
        }
        return i2;
    }

    public int getWidth() {
        int i = this.mWidth;
        int i2 = i;
        if (i < 0) {
            i2 = this.mEglCore.querySurface(this.mEGLSurface, 12375);
        }
        return i2;
    }

    public void makeCurrent() {
        this.mEglCore.makeCurrent(this.mEGLSurface);
    }

    public void makeCurrentReadFrom(EglSurfaceBase eglSurfaceBase) {
        this.mEglCore.makeCurrent(this.mEGLSurface, eglSurfaceBase.mEGLSurface);
    }

    public void releaseEglSurface() {
        this.mEglCore.releaseSurface(this.mEGLSurface);
        this.mEGLSurface = EGL14.EGL_NO_SURFACE;
        this.mHeight = -1;
        this.mWidth = -1;
    }

    public void saveFrame(File file) throws IOException {
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        if (this.mEglCore.isCurrent(this.mEGLSurface)) {
            String file2 = file.toString();
            int width = getWidth();
            int height = getHeight();
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(width * height * 4);
            allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
            GLES20.glReadPixels(0, 0, width, height, 6408, 5121, allocateDirect);
            GlUtil.checkGlError("glReadPixels");
            allocateDirect.rewind();
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                createBitmap.copyPixelsFromBuffer(allocateDirect);
                createBitmap.compress(Bitmap.CompressFormat.PNG, 90, bufferedOutputStream);
                createBitmap.recycle();
                bufferedOutputStream.close();
                return;
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream2 = bufferedOutputStream;
                if (bufferedOutputStream2 != null) {
                    bufferedOutputStream2.close();
                }
                throw th;
            }
        }
        throw new RuntimeException("Expected EGL context/surface is not current");
    }

    public void setPresentationTime(long j) {
        this.mEglCore.setPresentationTime(this.mEGLSurface, j);
    }

    public boolean swapBuffers() {
        return this.mEglCore.swapBuffers(this.mEGLSurface);
    }
}
