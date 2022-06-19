package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuo.class */
public final class zzuo extends HandlerThread implements Handler.Callback {
    private zzeg zza;
    private Handler zzb;
    private Error zzc;
    private RuntimeException zzd;
    private zzuq zze;

    public zzuo() {
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
                    zzeg zzegVar = this.zza;
                    Objects.requireNonNull(zzegVar);
                    zzegVar.zzc();
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
                zzeg zzegVar2 = this.zza;
                Objects.requireNonNull(zzegVar2);
                zzegVar2.zzb(i2);
                this.zze = new zzuq(this, this.zza.zza(), i2 != 0, null);
                synchronized (this) {
                    notify();
                }
                return true;
            } catch (Error e) {
                zzep.zza("DummySurface", "Failed to initialize dummy surface", e);
                this.zzc = e;
                synchronized (this) {
                    notify();
                    return true;
                }
            } catch (RuntimeException e2) {
                zzep.zza("DummySurface", "Failed to initialize dummy surface", e2);
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

    public final zzuq zza(int i) {
        boolean z;
        start();
        Handler handler = new Handler(getLooper(), this);
        this.zzb = handler;
        this.zza = new zzeg(handler, null);
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
            zzuq zzuqVar = this.zze;
            Objects.requireNonNull(zzuqVar);
            return zzuqVar;
        }
        throw runtimeException;
    }

    public final void zzb() {
        Handler handler = this.zzb;
        Objects.requireNonNull(handler);
        handler.sendEmptyMessage(2);
    }
}
