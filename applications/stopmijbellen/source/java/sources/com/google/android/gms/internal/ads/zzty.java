package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.zztz;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzty.class */
public final class zzty<T extends zztz> extends Handler implements Runnable {
    public final /* synthetic */ zzud zza;
    private final T zzb;
    private final long zzc;
    private zztv<T> zzd;
    private IOException zze;
    private int zzf;
    private Thread zzg;
    private boolean zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzty(zzud zzudVar, Looper looper, T t, zztv<T> zztvVar, int i, long j) {
        super(looper);
        this.zza = zzudVar;
        this.zzb = t;
        this.zzd = zztvVar;
        this.zzc = j;
    }

    private final void zzd() {
        ExecutorService executorService;
        zzty zztyVar;
        this.zze = null;
        executorService = this.zza.zze;
        zztyVar = this.zza.zzf;
        Objects.requireNonNull(zztyVar);
        executorService.execute(zztyVar);
    }

    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i;
        int i2;
        int i3;
        long j;
        char c;
        ?? r0;
        if (this.zzi) {
            return;
        }
        int i4 = message.what;
        if (i4 == 0) {
            zzd();
        } else if (i4 == 3) {
            throw ((Error) message.obj);
        } else {
            this.zza.zzf = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = elapsedRealtime - this.zzc;
            zztv<T> zztvVar = this.zzd;
            Objects.requireNonNull(zztvVar);
            if (this.zzh) {
                zztvVar.zzG(this.zzb, elapsedRealtime, j2, false);
                return;
            }
            int i5 = message.what;
            if (i5 == 1) {
                try {
                    zztvVar.zzH(this.zzb, elapsedRealtime, j2);
                } catch (RuntimeException e) {
                    zzep.zza("LoadTask", "Unexpected exception handling load completed", e);
                    this.zza.zzg = new zzuc(e);
                }
            } else if (i5 != 2) {
            } else {
                IOException iOException = (IOException) message.obj;
                this.zze = iOException;
                int i6 = this.zzf + 1;
                this.zzf = i6;
                zztx zzt = zztvVar.zzt(this.zzb, elapsedRealtime, j2, iOException, i6);
                i = zzt.zza;
                if (i == 3) {
                    this.zza.zzg = this.zze;
                    return;
                }
                i2 = zzt.zza;
                if (i2 == 2) {
                    return;
                }
                i3 = zzt.zza;
                if (i3 == 1) {
                    this.zzf = 1;
                }
                j = zzt.zzb;
                if (j != -9223372036854775807L) {
                    r0 = zzt.zzb;
                    c = r0;
                } else {
                    c = Math.min((this.zzf - 1) * 1000, 5000);
                }
                zzc(c);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.zzh;
                this.zzg = Thread.currentThread();
            }
            if (!z) {
                String simpleName = this.zzb.getClass().getSimpleName();
                zzfl.zza(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                try {
                    this.zzb.zzi();
                    zzfl.zzb();
                } catch (Throwable th) {
                    zzfl.zzb();
                    throw th;
                }
            }
            synchronized (this) {
                this.zzg = null;
                Thread.interrupted();
            }
            if (this.zzi) {
                return;
            }
            sendEmptyMessage(1);
        } catch (IOException e) {
            if (this.zzi) {
                return;
            }
            obtainMessage(2, e).sendToTarget();
        } catch (Exception e2) {
            if (this.zzi) {
                return;
            }
            zzep.zza("LoadTask", "Unexpected exception loading stream", e2);
            obtainMessage(2, new zzuc(e2)).sendToTarget();
        } catch (OutOfMemoryError e3) {
            if (this.zzi) {
                return;
            }
            zzep.zza("LoadTask", "OutOfMemory error loading stream", e3);
            obtainMessage(2, new zzuc(e3)).sendToTarget();
        } catch (Error e4) {
            if (!this.zzi) {
                zzep.zza("LoadTask", "Unexpected error loading stream", e4);
                obtainMessage(3, e4).sendToTarget();
            }
            throw e4;
        }
    }

    public final void zza(boolean z) {
        this.zzi = z;
        this.zze = null;
        if (hasMessages(0)) {
            this.zzh = true;
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                this.zzh = true;
                this.zzb.zzh();
                Thread thread = this.zzg;
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
        if (z) {
            this.zza.zzf = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            zztv<T> zztvVar = this.zzd;
            Objects.requireNonNull(zztvVar);
            zztvVar.zzG(this.zzb, elapsedRealtime, elapsedRealtime - this.zzc, true);
            this.zzd = null;
        }
    }

    public final void zzb(int i) throws IOException {
        IOException iOException = this.zze;
        if (iOException == null || this.zzf <= i) {
            return;
        }
        throw iOException;
    }

    public final void zzc(long j) {
        zzty zztyVar;
        zztyVar = this.zza.zzf;
        zzdy.zzf(zztyVar == null);
        this.zza.zzf = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            zzd();
        }
    }
}
