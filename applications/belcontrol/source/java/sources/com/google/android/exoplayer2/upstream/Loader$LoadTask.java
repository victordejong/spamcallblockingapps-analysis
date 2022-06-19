package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.exoplayer2.upstream.Loader$Loadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.TraceUtil;
import java.io.IOException;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$LoadTask.class */
public final class Loader$LoadTask<T extends Loader$Loadable> extends Handler implements Runnable {
    private static final int MSG_CANCEL = 1;
    private static final int MSG_END_OF_SOURCE = 2;
    private static final int MSG_FATAL_ERROR = 4;
    private static final int MSG_IO_EXCEPTION = 3;
    private static final int MSG_START = 0;
    private static final String TAG = "LoadTask";
    private Loader$Callback<T> callback;
    private volatile boolean canceled;
    private IOException currentError;
    public final int defaultMinRetryCount;
    private int errorCount;
    private volatile Thread executorThread;
    private final T loadable;
    private volatile boolean released;
    private final long startTimeMs;
    public final /* synthetic */ Loader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Loader$LoadTask(Loader loader, Looper looper, T t, Loader$Callback<T> loader$Callback, int i, long j) {
        super(looper);
        this.this$0 = loader;
        this.loadable = t;
        this.callback = loader$Callback;
        this.defaultMinRetryCount = i;
        this.startTimeMs = j;
    }

    private void execute() {
        this.currentError = null;
        Loader.access$200(this.this$0).execute(Loader.access$000(this.this$0));
    }

    private void finish() {
        Loader.access$002(this.this$0, (Loader$LoadTask) null);
    }

    private long getRetryDelayMillis() {
        return Math.min((this.errorCount - 1) * 1000, 5000);
    }

    public void cancel(boolean z) {
        this.released = z;
        this.currentError = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.canceled = true;
            this.loadable.cancelLoad();
            if (this.executorThread != null) {
                this.executorThread.interrupt();
            }
        }
        if (z) {
            finish();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.callback.onLoadCanceled(this.loadable, elapsedRealtime, elapsedRealtime - this.startTimeMs, true);
            this.callback = null;
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.released) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            execute();
        } else if (i == 4) {
            throw ((Error) message.obj);
        } else {
            finish();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.startTimeMs;
            if (this.canceled) {
                this.callback.onLoadCanceled(this.loadable, elapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            int i3 = 1;
            if (i2 == 1) {
                this.callback.onLoadCanceled(this.loadable, elapsedRealtime, j, false);
            } else if (i2 == 2) {
                try {
                    this.callback.onLoadCompleted(this.loadable, elapsedRealtime, j);
                } catch (RuntimeException e) {
                    Log.e(TAG, "Unexpected exception handling load completed", e);
                    Loader.access$102(this.this$0, new Loader$UnexpectedLoaderException(e));
                }
            } else if (i2 != 3) {
            } else {
                IOException iOException = (IOException) message.obj;
                this.currentError = iOException;
                int onLoadError = this.callback.onLoadError(this.loadable, elapsedRealtime, j, iOException);
                if (onLoadError == 3) {
                    Loader.access$102(this.this$0, this.currentError);
                } else if (onLoadError == 2) {
                } else {
                    if (onLoadError != 1) {
                        i3 = 1 + this.errorCount;
                    }
                    this.errorCount = i3;
                    start(getRetryDelayMillis());
                }
            }
        }
    }

    public void maybeThrowError(int i) {
        IOException iOException = this.currentError;
        if (iOException == null || this.errorCount <= i) {
            return;
        }
        throw iOException;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.executorThread = Thread.currentThread();
            if (!this.canceled) {
                TraceUtil.beginSection("load:" + this.loadable.getClass().getSimpleName());
                try {
                    this.loadable.load();
                    TraceUtil.endSection();
                } catch (Throwable th) {
                    TraceUtil.endSection();
                    throw th;
                }
            }
            if (this.released) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            e = e;
            if (this.released) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (OutOfMemoryError e2) {
            Log.e(TAG, "OutOfMemory error loading stream", e2);
            if (this.released) {
                return;
            }
            e = new Loader$UnexpectedLoaderException(e2);
            obtainMessage(3, e).sendToTarget();
        } catch (Error e3) {
            Log.e(TAG, "Unexpected error loading stream", e3);
            if (!this.released) {
                obtainMessage(4, e3).sendToTarget();
            }
            throw e3;
        } catch (InterruptedException e4) {
            Assertions.checkState(this.canceled);
            if (this.released) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e5) {
            Log.e(TAG, "Unexpected exception loading stream", e5);
            if (this.released) {
                return;
            }
            e = new Loader$UnexpectedLoaderException(e5);
            obtainMessage(3, e).sendToTarget();
        }
    }

    public void start(long j) {
        Assertions.checkState(Loader.access$000(this.this$0) == null);
        Loader.access$002(this.this$0, this);
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            execute();
        }
    }
}
