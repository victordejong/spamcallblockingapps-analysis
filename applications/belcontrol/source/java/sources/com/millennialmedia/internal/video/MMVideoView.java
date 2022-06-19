package com.millennialmedia.internal.video;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.RelativeLayout;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.ViewUtils;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/MMVideoView.class */
public class MMVideoView extends RelativeLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnInfoListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnSeekCompleteListener {
    private static final int COMPLETED = 6;
    private static final int ERROR = 7;
    private static final int IDLE = 0;
    private static final int MEDIA_ERROR_EXTRA_AUDIO_NO_INIT = -19;
    private static final int MEDIA_ERROR_STATE_EXCEPTION = -38;
    private static final String PARTNER_CODE = "millennialmedianativeapp775281030677";
    private static final int PAUSED = 5;
    private static final int PLAYING = 4;
    private static final int PREPARED = 2;
    private static final int PREPARING = 1;
    private static final int PROGRESS_POLLING_INTERVAL = 100;
    private static final int READY_TO_PLAY = 3;
    private static final String TAG = MMVideoView.class.getSimpleName();
    private MediaController mediaController;
    private MediaPlayer mediaPlayer;
    private bf1 moatFactory;
    private Map<String, String> moatIdentifiers;
    private boolean muted;
    private gf1 nativeVideoTracker;
    private ProgressRunnable progressRunnable;
    private SurfaceHolder surfaceHolder;
    private VideoSurfaceView surfaceView;
    private volatile int targetState;
    private Uri uri;
    private int videoHeight;
    private MMVideoViewListener videoViewListener;
    private int videoWidth;
    private int seekToMilliseconds = 0;
    private volatile int currentState = 0;
    private volatile int checkedIncrement = 0;
    private SurfaceHolder.Callback surfaceHolderCallback = new SurfaceHolder.Callback() { // from class: com.millennialmedia.internal.video.MMVideoView.1
        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            if (MMVideoView.this.mediaPlayer == null || MMVideoView.this.targetState != 4) {
                return;
            }
            MMVideoView.this.start();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            MMVideoView.this.surfaceHolder = surfaceHolder;
            if (!MMVideoView.this.surfaceHolder.getSurface().isValid()) {
                MMVideoView.this.currentState = 7;
                MMVideoView.this.targetState = 7;
                if (MMVideoView.this.videoViewListener == null) {
                    return;
                }
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.videoViewListener.onError(MMVideoView.this);
                    }
                });
                return;
            }
            if (MMVideoView.this.mediaPlayer != null) {
                MMVideoView.this.mediaPlayer.setDisplay(MMVideoView.this.surfaceHolder);
            }
            if (MMVideoView.this.currentState != 2) {
                return;
            }
            MMVideoView.this.setAudioFocus();
            MMVideoView.this.currentState = 3;
            if (MMVideoView.this.videoWidth != 0 && MMVideoView.this.videoHeight != 0) {
                MMVideoView.this.surfaceHolder.setFixedSize(MMVideoView.this.videoWidth, MMVideoView.this.videoHeight);
            }
            if (MMVideoView.this.videoViewListener != null && MMVideoView.this.targetState != 4) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.videoViewListener.onReadyToStart(MMVideoView.this);
                    }
                });
            }
            if (MMVideoView.this.targetState != 4) {
                return;
            }
            MMVideoView.this.start();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            MMVideoView.this.surfaceHolder = null;
            if (MMVideoView.this.mediaPlayer != null) {
                MMVideoView.this.mediaPlayer.setDisplay(null);
            }
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo.class */
    public static class MMVideoViewInfo extends View.BaseSavedState {
        public static final Parcelable.Creator<MMVideoViewInfo> CREATOR = new Parcelable.Creator<MMVideoViewInfo>() { // from class: com.millennialmedia.internal.video.MMVideoView.MMVideoViewInfo.1
            @Override // android.os.Parcelable.Creator
            public MMVideoViewInfo createFromParcel(Parcel parcel) {
                return new MMVideoViewInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public MMVideoViewInfo[] newArray(int i) {
                return new MMVideoViewInfo[i];
            }
        };
        public int currentPosition;
        public int currentState;
        public boolean muted;
        public int targetState;
        public String uri;

        private MMVideoViewInfo(Parcel parcel) {
            super(parcel);
            this.currentState = parcel.readInt();
            this.targetState = parcel.readInt();
            this.currentPosition = parcel.readInt();
            this.muted = parcel.readInt() != 1 ? false : true;
            this.uri = parcel.readString();
        }

        public MMVideoViewInfo(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.currentState);
            parcel.writeInt(this.targetState);
            parcel.writeInt(this.currentPosition);
            parcel.writeInt(this.muted ? 1 : 0);
            parcel.writeString(this.uri);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/MMVideoView$MMVideoViewListener.class */
    public interface MMVideoViewListener {
        void onBufferingUpdate(MMVideoView mMVideoView, int i);

        void onComplete(MMVideoView mMVideoView);

        void onError(MMVideoView mMVideoView);

        void onMuted(MMVideoView mMVideoView);

        void onPause(MMVideoView mMVideoView);

        void onPrepared(MMVideoView mMVideoView);

        void onProgress(MMVideoView mMVideoView, int i);

        void onReadyToStart(MMVideoView mMVideoView);

        void onSeek(MMVideoView mMVideoView);

        void onStart(MMVideoView mMVideoView);

        void onStop(MMVideoView mMVideoView);

        void onUnmuted(MMVideoView mMVideoView);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/MMVideoView$MediaController.class */
    public interface MediaController {
        void onComplete();

        void onMuted();

        void onPause();

        void onProgress(int i);

        void onStart();

        void onUnmuted();

        void setDuration(int i);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/MMVideoView$ProgressRunnable.class */
    public class ProgressRunnable implements Runnable {
        public int checkedPosition;
        public ThreadUtils.ScheduledRunnable scheduledRunnable;

        private ProgressRunnable() {
            MMVideoView.this = r4;
            this.scheduledRunnable = null;
            this.checkedPosition = 0;
        }

        private int getCheckedCurrentPosition() {
            int currentPosition = MMVideoView.this.mediaPlayer.getCurrentPosition();
            if (this.checkedPosition == currentPosition) {
                if (MMVideoView.this.checkedIncrement == 0 && MMLog.isDebugEnabled()) {
                    MMLog.m4070d(MMVideoView.TAG, "Current position frozen -- activating auto-correction");
                }
                MMVideoView.this.checkedIncrement += 100;
                currentPosition += MMVideoView.this.checkedIncrement;
            } else {
                if (MMVideoView.this.checkedIncrement > 0 && MMLog.isDebugEnabled()) {
                    MMLog.m4070d(MMVideoView.TAG, "Current position unfrozen -- deactivating auto-correction");
                }
                this.checkedPosition = currentPosition;
                MMVideoView.this.checkedIncrement = 0;
            }
            return currentPosition;
        }

        public void resetCheckedPosition() {
            this.checkedPosition = 0;
            MMVideoView.this.checkedIncrement = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.scheduledRunnable == null) {
                    return;
                }
                if (MMVideoView.this.currentState != 4) {
                    this.scheduledRunnable = null;
                    return;
                }
                int checkedCurrentPosition = getCheckedCurrentPosition();
                if (MMVideoView.this.videoViewListener != null) {
                    MMVideoView.this.videoViewListener.onProgress(MMVideoView.this, checkedCurrentPosition);
                }
                if (MMVideoView.this.mediaController != null) {
                    MMVideoView.this.mediaController.onProgress(checkedCurrentPosition);
                }
                this.scheduledRunnable = ThreadUtils.runOnWorkerThreadDelayed(this, 100L);
            }
        }

        public void start() {
            synchronized (this) {
                resetCheckedPosition();
                if (this.scheduledRunnable == null) {
                    this.scheduledRunnable = ThreadUtils.runOnWorkerThreadDelayed(this, 100L);
                }
            }
        }

        public void stop() {
            synchronized (this) {
                ThreadUtils.ScheduledRunnable scheduledRunnable = this.scheduledRunnable;
                if (scheduledRunnable != null) {
                    scheduledRunnable.cancel();
                    this.scheduledRunnable = null;
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/MMVideoView$VideoSurfaceView.class */
    public class VideoSurfaceView extends SurfaceView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VideoSurfaceView(Context context) {
            super(context);
            MMVideoView.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x009c, code lost:
            if ((com.millennialmedia.internal.video.MMVideoView.this.videoWidth * r6) > (com.millennialmedia.internal.video.MMVideoView.this.videoHeight * r0)) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x009f, code lost:
            r10 = (com.millennialmedia.internal.video.MMVideoView.this.videoHeight * r0) / com.millennialmedia.internal.video.MMVideoView.this.videoWidth;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x00da, code lost:
            if (r10 > r6) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0117, code lost:
            if (r0 > r0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0179, code lost:
            if (r10 > r0) goto L15;
         */
        @Override // android.view.SurfaceView, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMeasure(int r5, int r6) {
            /*
                Method dump skipped, instructions count: 392
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.video.MMVideoView.VideoSurfaceView.onMeasure(int, int):void");
        }
    }

    public MMVideoView(Context context, boolean z, boolean z2, Map<String, String> map, MMVideoViewListener mMVideoViewListener) {
        super(new MutableContextWrapper(context));
        if (map == null) {
            this.moatIdentifiers = Collections.emptyMap();
        } else {
            this.moatIdentifiers = map;
        }
        MutableContextWrapper mutableContextWrapper = (MutableContextWrapper) getContext();
        this.muted = z2;
        this.videoViewListener = mMVideoViewListener;
        if (z) {
            this.targetState = 4;
        }
        setBackgroundColor(getResources().getColor(17170444));
        VideoSurfaceView videoSurfaceView = new VideoSurfaceView(mutableContextWrapper);
        this.surfaceView = videoSurfaceView;
        videoSurfaceView.getHolder().addCallback(this.surfaceHolderCallback);
        this.surfaceView.getHolder().setType(3);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.surfaceView, layoutParams);
    }

    private boolean isInPlaybackState() {
        boolean z = true;
        if (this.currentState == 0 || this.currentState == 1 || this.currentState == 2 || this.currentState == 7) {
            z = false;
        }
        return z;
    }

    private void releaseAudioFocus() {
        ((AudioManager) getContext().getSystemService("audio")).abandonAudioFocus(null);
    }

    private void resetProgressRunnable() {
        ProgressRunnable progressRunnable = this.progressRunnable;
        if (progressRunnable != null) {
            progressRunnable.resetCheckedPosition();
        }
    }

    public void setAudioFocus() {
        AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
        if (!this.muted) {
            audioManager.requestAudioFocus(null, 3, 3);
        } else {
            audioManager.abandonAudioFocus(null);
        }
    }

    public void startOnUiThread() {
        bf1 bf1Var;
        if (!isInPlaybackState() || this.currentState == 4) {
            this.targetState = 4;
            return;
        }
        if (this.muted) {
            mute();
        }
        int i = this.seekToMilliseconds;
        if (i != 0) {
            this.mediaPlayer.seekTo(i);
            this.seekToMilliseconds = 0;
        }
        if (!this.moatIdentifiers.isEmpty() && (bf1Var = this.moatFactory) != null && this.nativeVideoTracker == null) {
            gf1 mo1574b = bf1Var.mo1574b(PARTNER_CODE);
            this.nativeVideoTracker = mo1574b;
            mo1574b.mo1478d(this.moatIdentifiers, this.mediaPlayer, this);
            MMLog.m4064v(TAG, "Moat video tracking enabled.");
        }
        this.mediaPlayer.start();
        this.currentState = 4;
        this.targetState = 4;
        if (this.videoViewListener != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.4
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.videoViewListener.onStart(MMVideoView.this);
                }
            });
        }
        if (this.mediaController != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.5
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.mediaController.onStart();
                }
            });
        }
        startProgressRunnable();
    }

    private void startProgressRunnable() {
        if (this.progressRunnable == null) {
            this.progressRunnable = new ProgressRunnable();
        }
        this.progressRunnable.start();
    }

    private void stopProgressRunnable() {
        ProgressRunnable progressRunnable = this.progressRunnable;
        if (progressRunnable != null) {
            progressRunnable.stop();
            this.progressRunnable = null;
        }
    }

    public int getCurrentPosition() {
        if (isInPlaybackState()) {
            return this.mediaPlayer.getCurrentPosition() + this.checkedIncrement;
        }
        return -1;
    }

    public int getDuration() {
        if (isInPlaybackState() || this.currentState == 2) {
            return this.mediaPlayer.getDuration();
        }
        return -1;
    }

    public boolean isPlaying() {
        return isInPlaybackState() && this.mediaPlayer.isPlaying();
    }

    public void mute() {
        this.muted = true;
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        }
        setAudioFocus();
        if (this.videoViewListener != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.9
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.videoViewListener.onMuted(MMVideoView.this);
                }
            });
        }
        if (this.mediaController != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.10
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.mediaController.onMuted();
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setAudioFocus();
        if (this.moatIdentifiers.isEmpty()) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "Moat ad identifiers were not provided. Moat video tracking disabled.");
            return;
        }
        Activity activityForView = ViewUtils.getActivityForView(this);
        if (activityForView != null) {
            this.moatFactory = bf1.m5668a(activityForView);
        } else {
            MMLog.m4062w(TAG, "Cannot determine the activity context. Moat video tracking disabled.");
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, final int i) {
        if (this.videoViewListener != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.20
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.videoViewListener.onBufferingUpdate(MMVideoView.this, i);
                }
            });
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.currentState = 6;
        this.targetState = 6;
        if (this.nativeVideoTracker != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("type", "AdVideoComplete");
            this.nativeVideoTracker.mo1479b(hashMap);
        }
        stopProgressRunnable();
        if (this.videoViewListener != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.13
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoViewListener mMVideoViewListener = MMVideoView.this.videoViewListener;
                    MMVideoView mMVideoView = MMVideoView.this;
                    mMVideoViewListener.onProgress(mMVideoView, mMVideoView.getDuration());
                    MMVideoView.this.videoViewListener.onComplete(MMVideoView.this);
                }
            });
        }
        if (this.mediaController != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.14
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.mediaController.onComplete();
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        releaseAudioFocus();
        super.onDetachedFromWindow();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        if ((i != 1 || i2 != MEDIA_ERROR_EXTRA_AUDIO_NO_INIT) && i != MEDIA_ERROR_STATE_EXCEPTION) {
            this.currentState = 7;
            if (this.videoViewListener == null) {
                return true;
            }
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.15
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.videoViewListener.onError(MMVideoView.this);
                }
            });
            return true;
        } else if (!MMLog.isDebugEnabled()) {
            return true;
        } else {
            String str = TAG;
            MMLog.m4070d(str, "Ignoring acceptable media error: (" + i + "," + i2 + ")");
            return true;
        }
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Runnable runnable;
        if (this.surfaceHolder != null) {
            setAudioFocus();
            this.currentState = 3;
            if (this.targetState == 4) {
                if (this.videoViewListener != null) {
                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.16
                        @Override // java.lang.Runnable
                        public void run() {
                            MMVideoView.this.videoViewListener.onPrepared(MMVideoView.this);
                        }
                    });
                }
                start();
            } else if (this.videoViewListener != null) {
                runnable = new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.17
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.videoViewListener.onReadyToStart(MMVideoView.this);
                    }
                };
                ThreadUtils.runOnWorkerThread(runnable);
            }
        } else {
            this.currentState = 2;
            if (this.videoViewListener != null) {
                runnable = new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.18
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.videoViewListener.onPrepared(MMVideoView.this);
                    }
                };
                ThreadUtils.runOnWorkerThread(runnable);
            }
        }
        if (this.mediaController != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.19
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.mediaController.setDuration(MMVideoView.this.getDuration());
                }
            });
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MMVideoViewInfo mMVideoViewInfo = (MMVideoViewInfo) parcelable;
        super.onRestoreInstanceState(mMVideoViewInfo.getSuperState());
        this.targetState = mMVideoViewInfo.targetState;
        this.seekToMilliseconds = mMVideoViewInfo.currentPosition;
        this.muted = mMVideoViewInfo.muted;
        if (mMVideoViewInfo.currentState == 4 || mMVideoViewInfo.targetState == 4) {
            start();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        MMVideoViewInfo mMVideoViewInfo = new MMVideoViewInfo(super.onSaveInstanceState());
        mMVideoViewInfo.currentState = this.currentState;
        mMVideoViewInfo.targetState = this.targetState;
        mMVideoViewInfo.currentPosition = getCurrentPosition();
        mMVideoViewInfo.muted = this.muted;
        mMVideoViewInfo.uri = this.uri.toString();
        return mMVideoViewInfo;
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        if (this.videoViewListener != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.21
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.videoViewListener.onSeek(MMVideoView.this);
                }
            });
        }
        if (this.mediaController != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.22
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.mediaController.onProgress(MMVideoView.this.getCurrentPosition());
                }
            });
        }
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        if (i2 == 0 || i == 0) {
            return;
        }
        this.videoWidth = i;
        this.videoHeight = i2;
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder == null) {
            return;
        }
        surfaceHolder.setFixedSize(i, i2);
        requestLayout();
    }

    public void pause() {
        if (!isInPlaybackState() || !this.mediaPlayer.isPlaying()) {
            return;
        }
        this.mediaPlayer.pause();
        if (this.videoViewListener != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.7
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.videoViewListener.onPause(MMVideoView.this);
                }
            });
        }
        if (this.mediaController != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.8
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.mediaController.onPause();
                }
            });
        }
        this.currentState = 5;
        this.targetState = 5;
    }

    public void release() {
        stopProgressRunnable();
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setDisplay(null);
            this.mediaPlayer.reset();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
            this.currentState = 0;
        }
    }

    public void restart() {
        if (Build.VERSION.SDK_INT <= 21) {
            Uri uri = this.uri;
            if (uri == null) {
                return;
            }
            setVideoURI(uri);
        } else {
            seekTo(0);
        }
        start();
    }

    public void seekTo(int i) {
        int i2 = i;
        if (isInPlaybackState()) {
            resetProgressRunnable();
            this.mediaPlayer.seekTo(i);
            i2 = 0;
        }
        this.seekToMilliseconds = i2;
    }

    public void setMediaController(MediaController mediaController) {
        this.mediaController = mediaController;
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        this.uri = uri;
        if (uri == null) {
            return;
        }
        release();
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mediaPlayer = mediaPlayer;
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            mediaPlayer.setDisplay(surfaceHolder);
        }
        this.mediaPlayer.setOnPreparedListener(this);
        this.mediaPlayer.setOnCompletionListener(this);
        this.mediaPlayer.setOnErrorListener(this);
        this.mediaPlayer.setOnBufferingUpdateListener(this);
        this.mediaPlayer.setOnSeekCompleteListener(this);
        this.mediaPlayer.setOnInfoListener(this);
        this.mediaPlayer.setOnVideoSizeChangedListener(this);
        try {
            this.mediaPlayer.setDataSource(getContext(), uri, (Map<String, String>) null);
            this.currentState = 1;
            this.mediaPlayer.prepareAsync();
        } catch (IOException e) {
            MMLog.m4067e(TAG, "An error occurred preparing the VideoPlayer.", e);
            this.currentState = 7;
            this.targetState = 7;
            if (this.videoViewListener == null) {
                return;
            }
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.2
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.videoViewListener.onError(MMVideoView.this);
                }
            });
        }
    }

    public void setVideoViewListener(MMVideoViewListener mMVideoViewListener) {
        this.videoViewListener = mMVideoViewListener;
    }

    public void start() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.3
            @Override // java.lang.Runnable
            public void run() {
                MMVideoView.this.startOnUiThread();
            }
        });
    }

    public void stop() {
        releaseAudioFocus();
        if (isInPlaybackState()) {
            if (!this.mediaPlayer.isPlaying() && this.currentState != 5) {
                return;
            }
            this.mediaPlayer.stop();
            if (this.videoViewListener != null) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.6
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.videoViewListener.onStop(MMVideoView.this);
                    }
                });
            }
            this.currentState = 0;
            this.targetState = 0;
        }
    }

    public void unmute() {
        this.muted = false;
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
        setAudioFocus();
        if (this.videoViewListener != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.11
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.videoViewListener.onUnmuted(MMVideoView.this);
                }
            });
        }
        if (this.mediaController != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.12
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.mediaController.onUnmuted();
                }
            });
        }
    }

    public void videoSkipped() {
        if (this.nativeVideoTracker != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("type", "AdSkipped");
            this.nativeVideoTracker.mo1479b(hashMap);
        }
    }
}
