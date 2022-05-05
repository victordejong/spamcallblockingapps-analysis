package androidx.media2.widget;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.media2.widget.VideoViewInterface;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoTextureView.class */
public class VideoTextureView extends TextureView implements VideoViewInterface, TextureView.SurfaceTextureListener {
    public PlayerWrapper mPlayer;
    public Surface mSurface;
    public VideoViewInterface.SurfaceListener mSurfaceListener;
    public static final String TAG = "VideoTextureView";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);

    public VideoTextureView(Context context) {
        super(context, null);
        setSurfaceTextureListener(this);
    }

    @Override // androidx.media2.widget.VideoViewInterface
    public boolean assignSurfaceToPlayerWrapper(PlayerWrapper playerWrapper) {
        this.mPlayer = playerWrapper;
        if (playerWrapper == null || !hasAvailableSurface()) {
            return false;
        }
        playerWrapper.setSurface(this.mSurface).addListener(new Runnable() { // from class: androidx.media2.widget.VideoTextureView.1
            @Override // java.lang.Runnable
            public void run() {
                VideoTextureView videoTextureView = VideoTextureView.this;
                VideoViewInterface.SurfaceListener surfaceListener = videoTextureView.mSurfaceListener;
                if (surfaceListener != null) {
                    surfaceListener.onSurfaceTakeOverDone(videoTextureView);
                }
            }
        }, ContextCompat.getMainExecutor(getContext()));
        return true;
    }

    @Override // androidx.media2.widget.VideoViewInterface
    public int getViewType() {
        return 1;
    }

    @Override // androidx.media2.widget.VideoViewInterface
    public boolean hasAvailableSurface() {
        Surface surface = this.mSurface;
        return surface != null && surface.isValid();
    }

    @Override // android.view.View
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
            setMeasuredDimension(TextureView.getDefaultSize(width, i), TextureView.getDefaultSize(i4, i2));
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

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.mSurface = new Surface(surfaceTexture);
        VideoViewInterface.SurfaceListener surfaceListener = this.mSurfaceListener;
        if (surfaceListener != null) {
            surfaceListener.onSurfaceCreated(this, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        VideoViewInterface.SurfaceListener surfaceListener = this.mSurfaceListener;
        if (surfaceListener != null) {
            surfaceListener.onSurfaceDestroyed(this);
        }
        this.mSurface = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        VideoViewInterface.SurfaceListener surfaceListener = this.mSurfaceListener;
        if (surfaceListener != null) {
            surfaceListener.onSurfaceChanged(this, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // androidx.media2.widget.VideoViewInterface
    public void setSurfaceListener(VideoViewInterface.SurfaceListener surfaceListener) {
        this.mSurfaceListener = surfaceListener;
    }
}
