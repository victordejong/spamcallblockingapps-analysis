package net.pubnative.lite.sdk.vpaid.helpers;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/TimerWithPause.class */
public abstract class TimerWithPause {
    private static final int MSG = 1;
    private final long mCountdownInterval;
    private Handler mHandler = new Handler() { // from class: net.pubnative.lite.sdk.vpaid.helpers.TimerWithPause.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            TimerWithPause.this.handleTimerMessage();
        }
    };
    private long mMillisInFuture;
    private long mPauseTimeRemaining;
    private boolean mRunAtStart;
    private long mStopTimeInFuture;
    private final long mTotalCountdown;

    public TimerWithPause(long j, long j2, boolean z) {
        this.mMillisInFuture = j;
        this.mTotalCountdown = j;
        this.mCountdownInterval = j2;
        this.mRunAtStart = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTimerMessage() {
        synchronized (this) {
            long timeLeft = timeLeft();
            if (timeLeft <= 0) {
                cancel();
                onFinish();
            } else if (timeLeft < this.mCountdownInterval) {
                Handler handler = this.mHandler;
                handler.sendMessageDelayed(handler.obtainMessage(1), timeLeft);
            } else {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                onTick(timeLeft);
                long elapsedRealtime2 = this.mCountdownInterval - (SystemClock.elapsedRealtime() - elapsedRealtime);
                while (elapsedRealtime2 < 0) {
                    elapsedRealtime2 += this.mCountdownInterval;
                }
                Handler handler2 = this.mHandler;
                handler2.sendMessageDelayed(handler2.obtainMessage(1), elapsedRealtime2);
            }
        }
    }

    public final void cancel() {
        this.mHandler.removeMessages(1);
    }

    public final TimerWithPause create() {
        synchronized (this) {
            long j = this.mMillisInFuture;
            if (j <= 0) {
                onFinish();
            } else {
                this.mPauseTimeRemaining = j;
            }
            if (this.mRunAtStart) {
                resume();
            }
        }
        return this;
    }

    public boolean hasBeenStarted() {
        return this.mPauseTimeRemaining <= this.mMillisInFuture;
    }

    public boolean isPaused() {
        return this.mPauseTimeRemaining > 0;
    }

    public boolean isRunning() {
        return !isPaused();
    }

    public abstract void onFinish();

    public abstract void onTick(long j);

    public void pause() {
        if (isRunning()) {
            this.mPauseTimeRemaining = timeLeft();
            cancel();
        }
    }

    public void resume() {
        if (isPaused()) {
            this.mMillisInFuture = this.mPauseTimeRemaining;
            this.mStopTimeInFuture = SystemClock.elapsedRealtime() + this.mMillisInFuture;
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(1));
            this.mPauseTimeRemaining = 0L;
        }
    }

    public long timeLeft() {
        long j = 0;
        if (isPaused()) {
            j = this.mPauseTimeRemaining;
        } else {
            j = this.mStopTimeInFuture - SystemClock.elapsedRealtime();
            if (j < 0) {
            }
        }
        return j;
    }

    public long timePassed() {
        return this.mTotalCountdown - timeLeft();
    }

    public long totalCountdown() {
        return this.mTotalCountdown;
    }
}
