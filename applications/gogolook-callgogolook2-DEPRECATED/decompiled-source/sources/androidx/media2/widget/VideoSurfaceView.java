package androidx.media2.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.media2.widget.VideoViewInterface;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoSurfaceView.class */
public class VideoSurfaceView extends SurfaceView implements VideoViewInterface, SurfaceHolder.Callback {
    public PlayerWrapper mPlayer;
    public Surface mSurface = null;
    public VideoViewInterface.SurfaceListener mSurfaceListener = null;
    public static final String TAG = "VideoSurfaceView";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);

    public VideoSurfaceView(Context context) {
        super(context, null);
        getHolder().addCallback(this);
    }

    @Override // androidx.media2.widget.VideoViewInterface
    public boolean assignSurfaceToPlayerWrapper(PlayerWrapper playerWrapper) {
        this.mPlayer = playerWrapper;
        if (playerWrapper == null || !hasAvailableSurface()) {
            return false;
        }
        playerWrapper.setSurface(this.mSurface).addListener(new Runnable() { // from class: androidx.media2.widget.VideoSurfaceView.1
            @Override // java.lang.Runnable
            public void run() {
                VideoSurfaceView videoSurfaceView = VideoSurfaceView.this;
                VideoViewInterface.SurfaceListener surfaceListener = videoSurfaceView.mSurfaceListener;
                if (surfaceListener != null) {
                    surfaceListener.onSurfaceTakeOverDone(videoSurfaceView);
                }
            }
        }, ContextCompat.getMainExecutor(getContext()));
        return true;
    }

    @Override // androidx.media2.widget.VideoViewInterface
    public int getViewType() {
        return 0;
    }

    @Override // androidx.media2.widget.VideoViewInterface
    public boolean hasAvailableSurface() {
        Surface surface = this.mSurface;
        return surface != null && surface.isValid();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        PlayerWrapper playerWrapper = this.mPlayer;
        int i4 = 0;
        int width = playerWrapper != null ? playerWrapper.getVideoSize().getWidth() : 0;
        PlayerWrapper playerWrapper2 = this.mPlayer;
        if (playerWrapper2 != null) {
            i4 = playerWrapper2.getVideoSize().getHeight();
        }
        if (width == 0 || i4 == 0) {
            setMeasuredDimension(SurfaceView.getDefaultSize(width, i), SurfaceView.getDefaultSize(i4, i2));
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824 && mode2 == 1073741824) {
            int i5 = width * size2;
            int i6 = size * i4;
            if (i5 < i6) {
                i3 = i5 / i4;
            } else {
                i3 = size;
                if (i5 > i6) {
                    size2 = i6 / width;
                    i3 = size;
                }
            }
        } else if (mode == 1073741824) {
            int i7 = (i4 * size) / width;
            if (mode2 != Integer.MIN_VALUE || i7 <= size2) {
                size2 = i7;
                i3 = size;
            } else {
                size2 |= 16777216;
                i3 = size;
            }
        } else if (mode2 == 1073741824) {
            i3 = (width * size2) / i4;
            if (mode == Integer.MIN_VALUE && i3 > size) {
                i3 = size | 16777216;
            }
        } else {
            if (mode2 != Integer.MIN_VALUE || i4 <= size2) {
                i3 = width;
                size2 = i4;
            } else {
                i3 = (size2 * width) / i4;
            }
            if (mode == Integer.MIN_VALUE && i3 > size) {
                size2 = (i4 * size) / width;
                i3 = size;
            }
        }
        setMeasuredDimension(i3, size2);
    }

    @Override // androidx.media2.widget.VideoViewInterface
    public void setSurfaceListener(VideoViewInterface.SurfaceListener surfaceListener) {
        this.mSurfaceListener = surfaceListener;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        VideoViewInterface.SurfaceListener surfaceListener = this.mSurfaceListener;
        if (surfaceListener != null) {
            surfaceListener.onSurfaceChanged(this, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mSurface = surfaceHolder.getSurface();
        if (this.mSurfaceListener != null) {
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            this.mSurfaceListener.onSurfaceCreated(this, surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mSurface = null;
        VideoViewInterface.SurfaceListener surfaceListener = this.mSurfaceListener;
        if (surfaceListener != null) {
            surfaceListener.onSurfaceDestroyed(this);
        }
    }
}
