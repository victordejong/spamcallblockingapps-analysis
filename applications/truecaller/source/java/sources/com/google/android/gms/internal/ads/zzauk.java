package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzaul;
import com.mopub.mobileads.AdData;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauk.class */
public final class zzauk<T extends zzaul> extends Handler implements Runnable {
    public final int zza;
    public final /* synthetic */ zzaun zzb;
    private final T zzc;
    private final zzauj<T> zzd;
    private final long zze;
    private IOException zzf;
    private int zzg;
    private volatile Thread zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzauk(zzaun zzaunVar, Looper looper, T t, zzauj<T> zzaujVar, int i, long j) {
        super(looper);
        this.zzb = zzaunVar;
        this.zzc = t;
        this.zzd = zzaujVar;
        this.zza = i;
        this.zze = j;
    }

    private final void zzd() {
        ExecutorService executorService;
        zzauk zzaukVar;
        this.zzf = null;
        executorService = this.zzb.zza;
        zzaukVar = this.zzb.zzb;
        executorService.execute(zzaukVar);
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
            if (this.zzc.zzd()) {
                this.zzd.zzz(this.zzc, elapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            int i3 = 1;
            if (i2 == 1) {
                this.zzd.zzz(this.zzc, elapsedRealtime, j, false);
            } else if (i2 == 2) {
                this.zzd.zzA(this.zzc, elapsedRealtime, j);
            } else if (i2 != 3) {
            } else {
                IOException iOException = (IOException) message.obj;
                this.zzf = iOException;
                int zzy = this.zzd.zzy(this.zzc, elapsedRealtime, j, iOException);
                if (zzy == 3) {
                    this.zzb.zzc = this.zzf;
                } else if (zzy == 2) {
                } else {
                    if (zzy != 1) {
                        i3 = 1 + this.zzg;
                    }
                    this.zzg = i3;
                    zzb(Math.min((i3 - 1) * 1000, (int) AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS));
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzh = Thread.currentThread();
            if (!this.zzc.zzd()) {
                String simpleName = this.zzc.getClass().getSimpleName();
                zzavc.zza(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                try {
                    this.zzc.zze();
                    zzavc.zzb();
                } catch (Throwable th) {
                    zzavc.zzb();
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
            zzaup.zzd(this.zzc.zzd());
            if (this.zzi) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e4) {
            if (this.zzi) {
                return;
            }
            obtainMessage(3, new zzaum(e4)).sendToTarget();
        } catch (OutOfMemoryError e5) {
            if (this.zzi) {
                return;
            }
            obtainMessage(3, new zzaum(e5)).sendToTarget();
        }
    }

    public final void zza(int i) throws IOException {
        IOException iOException = this.zzf;
        if (iOException == null || this.zzg <= i) {
            return;
        }
        throw iOException;
    }

    public final void zzb(long j) {
        zzauk zzaukVar;
        zzaukVar = this.zzb.zzb;
        zzaup.zzd(zzaukVar == null);
        this.zzb.zzb = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            zzd();
        }
    }

    public final void zzc(boolean z) {
        this.zzi = z;
        this.zzf = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
                return;
            }
        } else {
            this.zzc.zzc();
            if (this.zzh != null) {
                this.zzh.interrupt();
            }
            if (!z) {
                return;
            }
        }
        this.zzb.zzb = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.zzd.zzz(this.zzc, elapsedRealtime, elapsedRealtime - this.zze, true);
    }
}
