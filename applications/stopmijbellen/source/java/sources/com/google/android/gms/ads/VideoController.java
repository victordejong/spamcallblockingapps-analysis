package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbiz;
import com.google.android.gms.internal.ads.zzbkp;
import com.google.android.gms.internal.ads.zzciz;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoController.class */
public final class VideoController {
    @KeepForSdk
    public static final int PLAYBACK_STATE_ENDED = 3;
    @KeepForSdk
    public static final int PLAYBACK_STATE_PAUSED = 2;
    @KeepForSdk
    public static final int PLAYBACK_STATE_PLAYING = 1;
    @KeepForSdk
    public static final int PLAYBACK_STATE_READY = 5;
    @KeepForSdk
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object zza = new Object();
    @GuardedBy("lock")
    private zzbiz zzb;
    @GuardedBy("lock")
    private VideoLifecycleCallbacks zzc;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoController$VideoLifecycleCallbacks.class */
    public static abstract class VideoLifecycleCallbacks {
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

    @KeepForSdk
    public int getPlaybackState() {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar == null) {
                return 0;
            }
            try {
                return zzbizVar.zzh();
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    @RecentlyNullable
    public VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.zza) {
            videoLifecycleCallbacks = this.zzc;
        }
        return videoLifecycleCallbacks;
    }

    public boolean hasVideoContent() {
        boolean z;
        synchronized (this.zza) {
            z = this.zzb != null;
        }
        return z;
    }

    public boolean isClickToExpandEnabled() {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar == null) {
                return false;
            }
            try {
                return zzbizVar.zzo();
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public boolean isCustomControlsEnabled() {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar == null) {
                return false;
            }
            try {
                return zzbizVar.zzp();
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public boolean isMuted() {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar == null) {
                return true;
            }
            try {
                return zzbizVar.zzq();
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public void mute(boolean z) {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar != null) {
                try {
                    zzbizVar.zzj(z);
                } catch (RemoteException e) {
                    zzciz.zzh("Unable to call mute on video controller.", e);
                }
            }
        }
    }

    public void pause() {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar != null) {
                try {
                    zzbizVar.zzk();
                } catch (RemoteException e) {
                    zzciz.zzh("Unable to call pause on video controller.", e);
                }
            }
        }
    }

    public void play() {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar != null) {
                try {
                    zzbizVar.zzl();
                } catch (RemoteException e) {
                    zzciz.zzh("Unable to call play on video controller.", e);
                }
            }
        }
    }

    public void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzbkp zzbkpVar;
        synchronized (this.zza) {
            this.zzc = videoLifecycleCallbacks;
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar != null) {
                if (videoLifecycleCallbacks == null) {
                    zzbkpVar = null;
                } else {
                    try {
                        zzbkpVar = new zzbkp(videoLifecycleCallbacks);
                    } catch (RemoteException e) {
                        zzciz.zzh("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                    }
                }
                zzbizVar.zzm(zzbkpVar);
            }
        }
    }

    public void stop() {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar != null) {
                try {
                    zzbizVar.zzn();
                } catch (RemoteException e) {
                    zzciz.zzh("Unable to call stop on video controller.", e);
                }
            }
        }
    }

    public final zzbiz zza() {
        zzbiz zzbizVar;
        synchronized (this.zza) {
            zzbizVar = this.zzb;
        }
        return zzbizVar;
    }

    public final void zzb(zzbiz zzbizVar) {
        synchronized (this.zza) {
            this.zzb = zzbizVar;
            VideoLifecycleCallbacks videoLifecycleCallbacks = this.zzc;
            if (videoLifecycleCallbacks != null) {
                setVideoLifecycleCallbacks(videoLifecycleCallbacks);
            }
        }
    }
}
