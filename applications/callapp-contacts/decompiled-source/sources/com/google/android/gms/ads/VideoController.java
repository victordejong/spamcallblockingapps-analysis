package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.emk;
import com.google.android.gms.internal.ads.w;
import com.google.android.gms.internal.ads.za;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/VideoController.class */
public final class VideoController {
    public static final int PLAYBACK_STATE_ENDED = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_READY = 5;
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object lock = new Object();
    private emk zzaea;
    private VideoLifecycleCallbacks zzaeb;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/VideoController$VideoLifecycleCallbacks.class */
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
            emk emkVar = this.zzaea;
            if (emkVar == null) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            try {
                return emkVar.i();
            } catch (RemoteException e) {
                za.zzc("Unable to call getAspectRatio on video controller.", e);
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
    }

    public final int getPlaybackState() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar == null) {
                return 0;
            }
            try {
                return emkVar.e();
            } catch (RemoteException e) {
                za.zzc("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    public final float getVideoCurrentTime() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar == null) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            try {
                return emkVar.g();
            } catch (RemoteException e) {
                za.zzc("Unable to call getCurrentTime on video controller.", e);
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
    }

    public final float getVideoDuration() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar == null) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            try {
                return emkVar.f();
            } catch (RemoteException e) {
                za.zzc("Unable to call getDuration on video controller.", e);
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
    }

    public final VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.lock) {
            videoLifecycleCallbacks = this.zzaeb;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean hasVideoContent() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzaea != null;
        }
        return z;
    }

    public final boolean isClickToExpandEnabled() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar == null) {
                return false;
            }
            try {
                return emkVar.k();
            } catch (RemoteException e) {
                za.zzc("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public final boolean isCustomControlsEnabled() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar == null) {
                return false;
            }
            try {
                return emkVar.j();
            } catch (RemoteException e) {
                za.zzc("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public final boolean isMuted() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar == null) {
                return true;
            }
            try {
                return emkVar.d();
            } catch (RemoteException e) {
                za.zzc("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public final void mute(boolean z) {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar != null) {
                try {
                    emkVar.a(z);
                } catch (RemoteException e) {
                    za.zzc("Unable to call mute on video controller.", e);
                }
            }
        }
    }

    public final void pause() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar != null) {
                try {
                    emkVar.b();
                } catch (RemoteException e) {
                    za.zzc("Unable to call pause on video controller.", e);
                }
            }
        }
    }

    public final void play() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar != null) {
                try {
                    emkVar.a();
                } catch (RemoteException e) {
                    za.zzc("Unable to call play on video controller.", e);
                }
            }
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        o.a(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.lock) {
            this.zzaeb = videoLifecycleCallbacks;
            emk emkVar = this.zzaea;
            if (emkVar != null) {
                try {
                    emkVar.a(new w(videoLifecycleCallbacks));
                } catch (RemoteException e) {
                    za.zzc("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    public final void stop() {
        synchronized (this.lock) {
            emk emkVar = this.zzaea;
            if (emkVar != null) {
                try {
                    emkVar.c();
                } catch (RemoteException e) {
                    za.zzc("Unable to call stop on video controller.", e);
                }
            }
        }
    }

    public final void zza(emk emkVar) {
        synchronized (this.lock) {
            this.zzaea = emkVar;
            VideoLifecycleCallbacks videoLifecycleCallbacks = this.zzaeb;
            if (videoLifecycleCallbacks != null) {
                setVideoLifecycleCallbacks(videoLifecycleCallbacks);
            }
        }
    }

    public final emk zzdz() {
        emk emkVar;
        synchronized (this.lock) {
            emkVar = this.zzaea;
        }
        return emkVar;
    }
}
