package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzaav;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoController.class */
public final class VideoController {
    public static final int PLAYBACK_STATE_ENDED = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_READY = 5;
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object lock = new Object();
    private zzzc zzadt;
    private VideoLifecycleCallbacks zzadu;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoController$VideoLifecycleCallbacks.class */
    public static class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    @Deprecated
    public final float getAspectRatio() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return 0.0f;
            }
            try {
                return zzzcVar.getAspectRatio();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call getAspectRatio on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final int getPlaybackState() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return 0;
            }
            try {
                return zzzcVar.getPlaybackState();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    public final float getVideoCurrentTime() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return 0.0f;
            }
            try {
                return zzzcVar.getCurrentTime();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call getCurrentTime on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final float getVideoDuration() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return 0.0f;
            }
            try {
                return zzzcVar.getDuration();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call getDuration on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.lock) {
            videoLifecycleCallbacks = this.zzadu;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean hasVideoContent() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzadt != null;
        }
        return z;
    }

    public final boolean isClickToExpandEnabled() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return false;
            }
            try {
                return zzzcVar.isClickToExpandEnabled();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public final boolean isCustomControlsEnabled() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return false;
            }
            try {
                return zzzcVar.isCustomControlsEnabled();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public final boolean isMuted() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return true;
            }
            try {
                return zzzcVar.isMuted();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public final void mute(boolean z) {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return;
            }
            try {
                zzzcVar.mute(z);
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call mute on video controller.", e);
            }
        }
    }

    public final void pause() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return;
            }
            try {
                zzzcVar.pause();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call pause on video controller.", e);
            }
        }
    }

    public final void play() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return;
            }
            try {
                zzzcVar.play();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call play on video controller.", e);
            }
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        Preconditions.checkNotNull(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.lock) {
            this.zzadu = videoLifecycleCallbacks;
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return;
            }
            try {
                zzzcVar.zza(new zzaav(videoLifecycleCallbacks));
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
        }
    }

    public final void stop() {
        synchronized (this.lock) {
            zzzc zzzcVar = this.zzadt;
            if (zzzcVar == null) {
                return;
            }
            try {
                zzzcVar.stop();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call stop on video controller.", e);
            }
        }
    }

    public final void zza(zzzc zzzcVar) {
        synchronized (this.lock) {
            this.zzadt = zzzcVar;
            VideoLifecycleCallbacks videoLifecycleCallbacks = this.zzadu;
            if (videoLifecycleCallbacks != null) {
                setVideoLifecycleCallbacks(videoLifecycleCallbacks);
            }
        }
    }

    public final zzzc zzdw() {
        zzzc zzzcVar;
        synchronized (this.lock) {
            zzzcVar = this.zzadt;
        }
        return zzzcVar;
    }
}
