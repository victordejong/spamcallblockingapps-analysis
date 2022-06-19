package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzawi;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawh.class */
public final class zzawh<T extends zzawi> extends Handler implements Runnable {
    public final int zza;
    public final /* synthetic */ zzawk zzb;
    private final T zzc;
    private final zzawg<T> zzd;
    private final long zze;
    private IOException zzf;
    private int zzg;
    private volatile Thread zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzawh(zzawk zzawkVar, Looper looper, T t, zzawg<T> zzawgVar, int i, long j) {
        super(looper);
        this.zzb = zzawkVar;
        this.zzc = t;
        this.zzd = zzawgVar;
        this.zza = i;
        this.zze = j;
    }

    private final void zzd() {
        ExecutorService executorService;
        zzawh zzawhVar;
        this.zzf = null;
        executorService = this.zzb.zza;
        zzawhVar = this.zzb.zzb;
        executorService.execute(zzawhVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.zzi) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            zzd();
        } else if (i == 4) {
            throw ((Error) message.obj);
        } else {
            this.zzb.zzb = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.zze;
            if (this.zzc.zze()) {
                this.zzd.zzt(this.zzc, elapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            int i3 = 1;
            if (i2 == 1) {
                this.zzd.zzt(this.zzc, elapsedRealtime, j, false);
            } else if (i2 == 2) {
                this.zzd.zzu(this.zzc, elapsedRealtime, j);
            } else if (i2 != 3) {
            } else {
                IOException iOException = (IOException) message.obj;
                this.zzf = iOException;
                int zzd = this.zzd.zzd(this.zzc, elapsedRealtime, j, iOException);
                if (zzd == 3) {
                    this.zzb.zzc = this.zzf;
                } else if (zzd == 2) {
                } else {
                    if (zzd != 1) {
                        i3 = 1 + this.zzg;
                    }
                    this.zzg = i3;
                    zzc(Math.min((i3 - 1) * 1000, 5000));
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzh = Thread.currentThread();
            if (!this.zzc.zze()) {
                String simpleName = this.zzc.getClass().getSimpleName();
                zzawz.zza(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                try {
                    this.zzc.zzc();
                    zzawz.zzb();
                } catch (Throwable th) {
                    zzawz.zzb();
                    throw th;
                }
            }
            if (this.zzi) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.zzi) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Error e2) {
            if (!this.zzi) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            zzawm.zze(this.zzc.zze());
            if (this.zzi) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e4) {
            if (this.zzi) {
                return;
            }
            obtainMessage(3, new zzawj(e4)).sendToTarget();
        } catch (OutOfMemoryError e5) {
            if (this.zzi) {
                return;
            }
            obtainMessage(3, new zzawj(e5)).sendToTarget();
        }
    }

    public final void zza(boolean z) {
        this.zzi = z;
        this.zzf = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
                return;
            }
        } else {
            this.zzc.zzb();
            if (this.zzh != null) {
                this.zzh.interrupt();
            }
            if (!z) {
                return;
            }
        }
        this.zzb.zzb = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.zzd.zzt(this.zzc, elapsedRealtime, elapsedRealtime - this.zze, true);
    }

    public final void zzb(int i) throws IOException {
        IOException iOException = this.zzf;
        if (iOException == null || this.zzg <= i) {
            return;
        }
        throw iOException;
    }

    public final void zzc(long j) {
        zzawh zzawhVar;
        zzawhVar = this.zzb.zzb;
        zzawm.zze(zzawhVar == null);
        this.zzb.zzb = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            zzd();
        }
    }
}
