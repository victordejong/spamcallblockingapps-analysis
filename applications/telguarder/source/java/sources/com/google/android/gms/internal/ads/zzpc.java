package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.zzpb;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpc.class */
public final class zzpc<T extends zzpb> extends Handler implements Runnable {
    private volatile boolean zzafw;
    private final T zzbjl;
    private final zzoz<T> zzbjm;
    public final int zzbjn;
    private final long zzbjo;
    private IOException zzbjp;
    private int zzbjq;
    private volatile Thread zzbjr;
    private final /* synthetic */ zzpa zzbjs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzpc(zzpa zzpaVar, Looper looper, T t, zzoz<T> zzozVar, int i, long j) {
        super(looper);
        this.zzbjs = zzpaVar;
        this.zzbjl = t;
        this.zzbjm = zzozVar;
        this.zzbjn = i;
        this.zzbjo = j;
    }

    private final void execute() {
        ExecutorService executorService;
        zzpc zzpcVar;
        this.zzbjp = null;
        executorService = this.zzbjs.zzbji;
        zzpcVar = this.zzbjs.zzbjj;
        executorService.execute(zzpcVar);
    }

    private final void finish() {
        this.zzbjs.zzbjj = null;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.zzafw) {
            return;
        }
        if (message.what == 0) {
            execute();
        } else if (message.what == 4) {
            throw ((Error) message.obj);
        } else {
            finish();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.zzbjo;
            if (this.zzbjl.zzhx()) {
                this.zzbjm.zza((zzoz<T>) this.zzbjl, elapsedRealtime, j, false);
                return;
            }
            int i = message.what;
            if (i == 1) {
                this.zzbjm.zza((zzoz<T>) this.zzbjl, elapsedRealtime, j, false);
            } else if (i == 2) {
                this.zzbjm.zza(this.zzbjl, elapsedRealtime, j);
            } else if (i != 3) {
            } else {
                IOException iOException = (IOException) message.obj;
                this.zzbjp = iOException;
                int zza = this.zzbjm.zza((zzoz<T>) this.zzbjl, elapsedRealtime, j, iOException);
                if (zza == 3) {
                    this.zzbjs.zzbjk = this.zzbjp;
                } else if (zza == 2) {
                } else {
                    int i2 = zza == 1 ? 1 : this.zzbjq + 1;
                    this.zzbjq = i2;
                    zzek(Math.min((i2 - 1) * 1000, 5000));
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzbjr = Thread.currentThread();
            if (!this.zzbjl.zzhx()) {
                String valueOf = String.valueOf(this.zzbjl.getClass().getSimpleName());
                zzpu.beginSection(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                try {
                    this.zzbjl.zzhy();
                    zzpu.endSection();
                } catch (Throwable th) {
                    zzpu.endSection();
                    throw th;
                }
            }
            if (this.zzafw) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.zzafw) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.zzafw) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            zzpg.checkState(this.zzbjl.zzhx());
            if (this.zzafw) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (this.zzafw) {
                return;
            }
            obtainMessage(3, new zzpe(e4)).sendToTarget();
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (this.zzafw) {
                return;
            }
            obtainMessage(3, new zzpe(e5)).sendToTarget();
        }
    }

    public final void zzbg(int i) throws IOException {
        IOException iOException = this.zzbjp;
        if (iOException == null || this.zzbjq <= i) {
            return;
        }
        throw iOException;
    }

    public final void zzek(long j) {
        zzpc zzpcVar;
        zzpcVar = this.zzbjs.zzbjj;
        zzpg.checkState(zzpcVar == null);
        this.zzbjs.zzbjj = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            execute();
        }
    }

    public final void zzl(boolean z) {
        this.zzafw = z;
        this.zzbjp = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.zzbjl.cancelLoad();
            if (this.zzbjr != null) {
                this.zzbjr.interrupt();
            }
        }
        if (z) {
            finish();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzbjm.zza((zzoz<T>) this.zzbjl, elapsedRealtime, elapsedRealtime - this.zzbjo, true);
        }
    }
}
