package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzls.class */
public final class zzls extends HandlerThread implements Handler.Callback {
    private zzalb zza;
    private Handler zzb;
    private Error zzc;
    private RuntimeException zzd;
    private zzlu zze;

    public zzls() {
        super("ExoPlayer:DummySurface");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        try {
            if (i != 1) {
                if (i != 2) {
                    return true;
                }
                try {
                    zzalb zzalbVar = this.zza;
                    Objects.requireNonNull(zzalbVar);
                    zzalbVar.zzb();
                } finally {
                    try {
                        return true;
                    } finally {
                    }
                }
                return true;
            }
            try {
                int i2 = message.arg1;
                zzalb zzalbVar2 = this.zza;
                Objects.requireNonNull(zzalbVar2);
                zzalbVar2.zza(i2);
                this.zze = new zzlu(this, this.zza.zzc(), i2 != 0, null);
                synchronized (this) {
                    notify();
                }
                return true;
            } catch (Error e) {
                zzaln.zzb("DummySurface", "Failed to initialize dummy surface", e);
                this.zzc = e;
                synchronized (this) {
                    notify();
                    return true;
                }
            } catch (RuntimeException e2) {
                zzaln.zzb("DummySurface", "Failed to initialize dummy surface", e2);
                this.zzd = e2;
                synchronized (this) {
                    notify();
                    return true;
                }
            }
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }

    public final zzlu zza(int i) {
        boolean z;
        start();
        Handler handler = new Handler(getLooper(), this);
        this.zzb = handler;
        this.zza = new zzalb(handler, null);
        synchronized (this) {
            this.zzb.obtainMessage(1, i, 0).sendToTarget();
            z = false;
            while (this.zze == null && this.zzd == null && this.zzc == null) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.zzd;
        if (runtimeException == null) {
            Error error = this.zzc;
            if (error != null) {
                throw error;
            }
            zzlu zzluVar = this.zze;
            Objects.requireNonNull(zzluVar);
            return zzluVar;
        }
        throw runtimeException;
    }

    public final void zzb() {
        Handler handler = this.zzb;
        Objects.requireNonNull(handler);
        handler.sendEmptyMessage(2);
    }
}
