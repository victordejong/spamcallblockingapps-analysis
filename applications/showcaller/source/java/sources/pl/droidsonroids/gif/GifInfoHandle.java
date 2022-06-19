package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.system.Os;
import android.view.Surface;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifInfoHandle.class */
public final class GifInfoHandle {

    /* renamed from: a */
    private volatile long f40925a;

    static {
        C9706h.m40b();
    }

    public GifInfoHandle() {
    }

    public GifInfoHandle(AssetFileDescriptor assetFileDescriptor) {
        try {
            this.f40925a = m97q(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), false);
            try {
                assetFileDescriptor.close();
            } catch (IOException e) {
            }
        } catch (Throwable th) {
            try {
                assetFileDescriptor.close();
            } catch (IOException e2) {
            }
            throw th;
        }
    }

    public GifInfoHandle(FileDescriptor fileDescriptor) {
        this.f40925a = m97q(fileDescriptor, 0L, true);
    }

    public GifInfoHandle(InputStream inputStream) {
        if (inputStream.markSupported()) {
            this.f40925a = openStream(inputStream);
            return;
        }
        throw new IllegalArgumentException("InputStream does not support marking");
    }

    public GifInfoHandle(String str) {
        this.f40925a = openFile(str);
    }

    public GifInfoHandle(ByteBuffer byteBuffer) {
        this.f40925a = openDirectByteBuffer(byteBuffer);
    }

    public GifInfoHandle(byte[] bArr) {
        this.f40925a = openByteArray(bArr);
    }

    private static native void bindSurface(long j, Surface surface, long[] jArr);

    static native int createTempNativeFileDescriptor();

    static native int extractNativeFileDescriptor(FileDescriptor fileDescriptor, boolean z);

    private static native void free(long j);

    private static native long getAllocationByteCount(long j);

    private static native int getCurrentFrameIndex(long j);

    private static native int getCurrentLoop(long j);

    private static native int getCurrentPosition(long j);

    private static native int getDuration(long j);

    private static native int getHeight(long j);

    private static native int getLoopCount(long j);

    private static native long getMetadataByteCount(long j);

    private static native int getNativeErrorCode(long j);

    private static native int getNumberOfFrames(long j);

    private static native long[] getSavedState(long j);

    private static native int getWidth(long j);

    private static native boolean isOpaque(long j);

    /* renamed from: k */
    private static int m103k(FileDescriptor fileDescriptor, boolean z) {
        try {
            int createTempNativeFileDescriptor = createTempNativeFileDescriptor();
            Os.dup2(fileDescriptor, createTempNativeFileDescriptor);
            if (z) {
                Os.close(fileDescriptor);
            }
            return createTempNativeFileDescriptor;
        } catch (Throwable th) {
            if (z) {
                Os.close(fileDescriptor);
            }
            throw th;
        }
    }

    static native long openByteArray(byte[] bArr);

    static native long openDirectByteBuffer(ByteBuffer byteBuffer);

    static native long openFile(String str);

    static native long openNativeFileDescriptor(int i, long j);

    static native long openStream(InputStream inputStream);

    private static native void postUnbindSurface(long j);

    /* renamed from: q */
    private static long m97q(FileDescriptor fileDescriptor, long j, boolean z) {
        int m103k;
        if (Build.VERSION.SDK_INT > 27) {
            try {
                m103k = m103k(fileDescriptor, z);
            } catch (Exception e) {
                throw new GifIOException(GifError.OPEN_FAILED.errorCode, e.getMessage());
            }
        } else {
            m103k = extractNativeFileDescriptor(fileDescriptor, z);
        }
        return openNativeFileDescriptor(m103k, j);
    }

    /* renamed from: r */
    public static GifInfoHandle m96r(ContentResolver contentResolver, Uri uri) {
        if ("file".equals(uri.getScheme())) {
            return new GifInfoHandle(uri.getPath());
        }
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return new GifInfoHandle(openAssetFileDescriptor);
        }
        throw new IOException("Could not open AssetFileDescriptor for " + uri);
    }

    private static native long renderFrame(long j, Bitmap bitmap);

    private static native boolean reset(long j);

    private static native long restoreRemainder(long j);

    private static native int restoreSavedState(long j, long[] jArr, Bitmap bitmap);

    private static native void saveRemainder(long j);

    private static native void seekToTime(long j, int i, Bitmap bitmap);

    private static native void setLoopCount(long j, char c);

    private static native void setOptions(long j, char c, boolean z);

    private static native void setSpeedFactor(long j, float f);

    /* renamed from: A */
    public void m116A(int i) {
        if (i < 0 || i > 65535) {
            throw new IllegalArgumentException("Loop count of range <0, 65535>");
        }
        synchronized (this) {
            setLoopCount(this.f40925a, (char) i);
        }
    }

    /* renamed from: B */
    public void m115B(char c, boolean z) {
        setOptions(this.f40925a, c, z);
    }

    /* renamed from: C */
    public void m114C(float f) {
        if (f <= 0.0f || Float.isNaN(f)) {
            throw new IllegalArgumentException("Speed factor is not positive");
        }
        float f2 = f;
        if (f < 4.656613E-10f) {
            f2 = 4.656613E-10f;
        }
        synchronized (this) {
            setSpeedFactor(this.f40925a, f2);
        }
    }

    /* renamed from: a */
    public void m113a(Surface surface, long[] jArr) {
        bindSurface(this.f40925a, surface, jArr);
    }

    /* renamed from: b */
    public long m112b() {
        long allocationByteCount;
        synchronized (this) {
            allocationByteCount = getAllocationByteCount(this.f40925a);
        }
        return allocationByteCount;
    }

    /* renamed from: c */
    public int m111c() {
        int currentFrameIndex;
        synchronized (this) {
            currentFrameIndex = getCurrentFrameIndex(this.f40925a);
        }
        return currentFrameIndex;
    }

    /* renamed from: d */
    public int m110d() {
        int currentLoop;
        synchronized (this) {
            currentLoop = getCurrentLoop(this.f40925a);
        }
        return currentLoop;
    }

    /* renamed from: e */
    public int m109e() {
        int currentPosition;
        synchronized (this) {
            currentPosition = getCurrentPosition(this.f40925a);
        }
        return currentPosition;
    }

    /* renamed from: f */
    public int m108f() {
        int duration;
        synchronized (this) {
            duration = getDuration(this.f40925a);
        }
        return duration;
    }

    protected void finalize() {
        try {
            m94t();
        } finally {
            super.finalize();
        }
    }

    /* renamed from: g */
    public int m107g() {
        int height;
        synchronized (this) {
            height = getHeight(this.f40925a);
        }
        return height;
    }

    /* renamed from: h */
    public int m106h() {
        int loopCount;
        synchronized (this) {
            loopCount = getLoopCount(this.f40925a);
        }
        return loopCount;
    }

    /* renamed from: i */
    public long m105i() {
        long metadataByteCount;
        synchronized (this) {
            metadataByteCount = getMetadataByteCount(this.f40925a);
        }
        return metadataByteCount;
    }

    /* renamed from: j */
    public int m104j() {
        int nativeErrorCode;
        synchronized (this) {
            nativeErrorCode = getNativeErrorCode(this.f40925a);
        }
        return nativeErrorCode;
    }

    /* renamed from: l */
    public int m102l() {
        int numberOfFrames;
        synchronized (this) {
            numberOfFrames = getNumberOfFrames(this.f40925a);
        }
        return numberOfFrames;
    }

    /* renamed from: m */
    public long[] m101m() {
        long[] savedState;
        synchronized (this) {
            savedState = getSavedState(this.f40925a);
        }
        return savedState;
    }

    /* renamed from: n */
    public int m100n() {
        int width;
        synchronized (this) {
            width = getWidth(this.f40925a);
        }
        return width;
    }

    /* renamed from: o */
    public boolean m99o() {
        boolean isOpaque;
        synchronized (this) {
            isOpaque = isOpaque(this.f40925a);
        }
        return isOpaque;
    }

    /* renamed from: p */
    public boolean m98p() {
        boolean z;
        synchronized (this) {
            z = this.f40925a == 0;
        }
        return z;
    }

    /* renamed from: s */
    public void m95s() {
        synchronized (this) {
            postUnbindSurface(this.f40925a);
        }
    }

    /* renamed from: t */
    public void m94t() {
        synchronized (this) {
            free(this.f40925a);
            this.f40925a = 0L;
        }
    }

    /* renamed from: u */
    public long m93u(Bitmap bitmap) {
        long renderFrame;
        synchronized (this) {
            renderFrame = renderFrame(this.f40925a, bitmap);
        }
        return renderFrame;
    }

    /* renamed from: v */
    public boolean m92v() {
        boolean reset;
        synchronized (this) {
            reset = reset(this.f40925a);
        }
        return reset;
    }

    /* renamed from: w */
    public long m91w() {
        long restoreRemainder;
        synchronized (this) {
            restoreRemainder = restoreRemainder(this.f40925a);
        }
        return restoreRemainder;
    }

    /* renamed from: x */
    public int m90x(long[] jArr, Bitmap bitmap) {
        int restoreSavedState;
        synchronized (this) {
            restoreSavedState = restoreSavedState(this.f40925a, jArr, bitmap);
        }
        return restoreSavedState;
    }

    /* renamed from: y */
    public void m89y() {
        synchronized (this) {
            saveRemainder(this.f40925a);
        }
    }

    /* renamed from: z */
    public void m88z(int i, Bitmap bitmap) {
        synchronized (this) {
            seekToTime(this.f40925a, i, bitmap);
        }
    }
}
