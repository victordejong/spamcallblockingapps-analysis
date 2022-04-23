package android.support.rastermill;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.rastermill.FrameSequence;
/* loaded from: classes-dex2jar.jar:android/support/rastermill/FrameSequenceDrawable.class */
public class FrameSequenceDrawable extends Drawable implements Animatable, Runnable {
    public static final int LOOP_DEFAULT = 3;
    public static final int LOOP_INF = 2;
    public static final int LOOP_ONCE = 1;
    public static final int STATE_DECODING = 2;
    public static final int STATE_READY_TO_SWAP = 4;
    public static final int STATE_SCHEDULED = 1;
    public static final int STATE_WAITING_TO_SWAP = 3;
    public static HandlerThread sDecodingThread;
    public static Handler sDecodingThreadHandler;
    public Bitmap mBackBitmap;
    public final BitmapProvider mBitmapProvider;
    public Runnable mCallbackRunnable;
    public int mCurrentLoop;
    public Runnable mDecodeRunnable;
    public boolean mDestroyed;
    public final FrameSequence mFrameSequence;
    public final FrameSequence.State mFrameSequenceState;
    public Bitmap mFrontBitmap;
    public long mLastSwap;
    public final Object mLock;
    public int mLoopBehavior;
    public int mNextFrameToDecode;
    public long mNextSwap;
    public OnFinishedListener mOnFinishedListener;
    public final Paint mPaint;
    public final Rect mSrcRect;
    public int mState;
    public static final Object sLock = new Object();
    public static BitmapProvider sAllocatingBitmapProvider = new BitmapProvider() { // from class: android.support.rastermill.FrameSequenceDrawable.1
        @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
        public Bitmap acquireBitmap(int i, int i2) {
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        }

        @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
        public void releaseBitmap(Bitmap bitmap) {
        }
    };

    /* loaded from: classes-dex2jar.jar:android/support/rastermill/FrameSequenceDrawable$BitmapProvider.class */
    public interface BitmapProvider {
        Bitmap acquireBitmap(int i, int i2);

        void releaseBitmap(Bitmap bitmap);
    }

    /* loaded from: classes-dex2jar.jar:android/support/rastermill/FrameSequenceDrawable$OnFinishedListener.class */
    public interface OnFinishedListener {
        void onFinished(FrameSequenceDrawable frameSequenceDrawable);
    }

    public FrameSequenceDrawable(FrameSequence frameSequence) {
        this(frameSequence, sAllocatingBitmapProvider);
    }

    public FrameSequenceDrawable(FrameSequence frameSequence, BitmapProvider bitmapProvider) {
        this.mLock = new Object();
        this.mDestroyed = false;
        this.mLoopBehavior = 3;
        this.mDecodeRunnable = new Runnable() { // from class: android.support.rastermill.FrameSequenceDrawable.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                Bitmap bitmap;
                synchronized (FrameSequenceDrawable.this.mLock) {
                    if (!FrameSequenceDrawable.this.mDestroyed) {
                        int i = FrameSequenceDrawable.this.mNextFrameToDecode;
                        if (i >= 0) {
                            Bitmap bitmap2 = FrameSequenceDrawable.this.mBackBitmap;
                            FrameSequenceDrawable.this.mState = 2;
                            long frame = FrameSequenceDrawable.this.mFrameSequenceState.getFrame(i, bitmap2, i - 2);
                            synchronized (FrameSequenceDrawable.this.mLock) {
                                if (FrameSequenceDrawable.this.mDestroyed) {
                                    bitmap = FrameSequenceDrawable.this.mBackBitmap;
                                    FrameSequenceDrawable.this.mBackBitmap = null;
                                    z = false;
                                } else {
                                    z = false;
                                    bitmap = null;
                                    if (FrameSequenceDrawable.this.mNextFrameToDecode >= 0) {
                                        z = false;
                                        bitmap = null;
                                        if (FrameSequenceDrawable.this.mState == 2) {
                                            z = true;
                                            FrameSequenceDrawable.this.mNextSwap = frame + FrameSequenceDrawable.this.mLastSwap;
                                            FrameSequenceDrawable.this.mState = 3;
                                            bitmap = null;
                                        }
                                    }
                                }
                            }
                            if (z) {
                                FrameSequenceDrawable frameSequenceDrawable = FrameSequenceDrawable.this;
                                frameSequenceDrawable.scheduleSelf(frameSequenceDrawable, frameSequenceDrawable.mNextSwap);
                            }
                            if (bitmap != null) {
                                FrameSequenceDrawable.this.mBitmapProvider.releaseBitmap(bitmap);
                            }
                        }
                    }
                }
            }
        };
        this.mCallbackRunnable = new Runnable() { // from class: android.support.rastermill.FrameSequenceDrawable.3
            @Override // java.lang.Runnable
            public void run() {
                if (FrameSequenceDrawable.this.mOnFinishedListener != null) {
                    FrameSequenceDrawable.this.mOnFinishedListener.onFinished(FrameSequenceDrawable.this);
                }
            }
        };
        if (frameSequence == null || bitmapProvider == null) {
            throw new IllegalArgumentException();
        }
        this.mFrameSequence = frameSequence;
        this.mFrameSequenceState = frameSequence.createState();
        int width = frameSequence.getWidth();
        int height = frameSequence.getHeight();
        this.mBitmapProvider = bitmapProvider;
        this.mFrontBitmap = acquireAndValidateBitmap(bitmapProvider, width, height);
        this.mBackBitmap = acquireAndValidateBitmap(bitmapProvider, width, height);
        this.mSrcRect = new Rect(0, 0, width, height);
        this.mPaint = new Paint();
        this.mPaint.setFilterBitmap(true);
        this.mLastSwap = 0L;
        this.mNextFrameToDecode = -1;
        this.mFrameSequenceState.getFrame(0, this.mFrontBitmap, -1);
        initializeDecodingThread();
    }

    public static Bitmap acquireAndValidateBitmap(BitmapProvider bitmapProvider, int i, int i2) {
        Bitmap acquireBitmap = bitmapProvider.acquireBitmap(i, i2);
        if (acquireBitmap.getWidth() >= i && acquireBitmap.getHeight() >= i2 && acquireBitmap.getConfig() == Bitmap.Config.ARGB_8888) {
            return acquireBitmap;
        }
        throw new IllegalArgumentException("Invalid bitmap provided");
    }

    private void checkDestroyedLocked() {
        if (this.mDestroyed) {
            throw new IllegalStateException("Cannot perform operation on recycled drawable");
        }
    }

    public static void initializeDecodingThread() {
        synchronized (sLock) {
            if (sDecodingThread == null) {
                sDecodingThread = new HandlerThread("FrameSequence decoding thread", 10);
                sDecodingThread.start();
                sDecodingThreadHandler = new Handler(sDecodingThread.getLooper());
            }
        }
    }

    private void scheduleDecodeLocked() {
        this.mState = 1;
        this.mNextFrameToDecode = (this.mNextFrameToDecode + 1) % this.mFrameSequence.getFrameCount();
        sDecodingThreadHandler.post(this.mDecodeRunnable);
    }

    public void destroy() {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this.mBitmapProvider != null) {
            synchronized (this.mLock) {
                checkDestroyedLocked();
                bitmap = this.mFrontBitmap;
                bitmap2 = null;
                this.mFrontBitmap = null;
                if (this.mState != 2) {
                    bitmap2 = this.mBackBitmap;
                    this.mBackBitmap = null;
                }
                this.mDestroyed = true;
            }
            this.mBitmapProvider.releaseBitmap(bitmap);
            if (bitmap2 != null) {
                this.mBitmapProvider.releaseBitmap(bitmap2);
                return;
            }
            return;
        }
        throw new IllegalStateException("BitmapProvider must be non-null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a1, code lost:
        if (r6.mCurrentLoop == r6.mFrameSequence.getDefaultLoopCount()) goto L_0x00a4;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.rastermill.FrameSequenceDrawable.draw(android.graphics.Canvas):void");
    }

    public void finalize() throws Throwable {
        try {
            this.mFrameSequenceState.destroy();
        } finally {
            super.finalize();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mFrameSequence.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mFrameSequence.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mFrameSequence.isOpaque() ? -1 : -2;
    }

    public boolean isDestroyed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mDestroyed;
        }
        return z;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mNextFrameToDecode > -1 && !this.mDestroyed;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        synchronized (this.mLock) {
            if (this.mNextFrameToDecode < 0 || this.mState != 3) {
                z = false;
            } else {
                this.mState = 4;
                z = true;
            }
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.mPaint.setFilterBitmap(z);
    }

    public void setLoopBehavior(int i) {
        this.mLoopBehavior = i;
    }

    public void setOnFinishedListener(OnFinishedListener onFinishedListener) {
        this.mOnFinishedListener = onFinishedListener;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!z) {
            stop();
        } else if (z2 || visible) {
            stop();
            start();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!isRunning()) {
            synchronized (this.mLock) {
                checkDestroyedLocked();
                if (this.mState != 1) {
                    this.mCurrentLoop = 0;
                    scheduleDecodeLocked();
                }
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            unscheduleSelf(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        synchronized (this.mLock) {
            this.mNextFrameToDecode = -1;
        }
        super.unscheduleSelf(runnable);
    }
}
