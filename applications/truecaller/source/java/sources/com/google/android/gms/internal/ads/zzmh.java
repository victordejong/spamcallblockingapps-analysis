package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmh.class */
public final class zzmh implements Choreographer.FrameCallback, Handler.Callback {
    private static final zzmh zzb = new zzmh();
    public volatile long zza = -9223372036854775807L;
    private final Handler zzc;
    private final HandlerThread zzd;
    private Choreographer zze;
    private int zzf;

    private zzmh() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        this.zzd = handlerThread;
        handlerThread.start();
        Handler zzi = zzamq.zzi(handlerThread.getLooper(), this);
        this.zzc = zzi;
        zzi.sendEmptyMessage(0);
    }

    public static zzmh zza() {
        return zzb;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.zza = j;
        Choreographer choreographer = this.zze;
        Objects.requireNonNull(choreographer);
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.zze = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            int i2 = this.zzf + 1;
            this.zzf = i2;
            if (i2 != 1) {
                return true;
            }
            Choreographer choreographer = this.zze;
            Objects.requireNonNull(choreographer);
            choreographer.postFrameCallback(this);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = this.zzf - 1;
            this.zzf = i3;
            if (i3 != 0) {
                return true;
            }
            Choreographer choreographer2 = this.zze;
            Objects.requireNonNull(choreographer2);
            choreographer2.removeFrameCallback(this);
            this.zza = -9223372036854775807L;
            return true;
        }
    }

    public final void zzb() {
        this.zzc.sendEmptyMessage(1);
    }

    public final void zzc() {
        this.zzc.sendEmptyMessage(2);
    }
}
