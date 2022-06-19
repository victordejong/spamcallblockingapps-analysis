package com.google.android.exoplayer2;

import android.os.Handler;
import com.google.android.exoplayer2.util.Assertions;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/PlayerMessage.class */
public final class PlayerMessage {
    private Handler handler;
    private boolean isCanceled;
    private boolean isDelivered;
    private boolean isProcessed;
    private boolean isSent;
    private Object payload;
    private final Sender sender;
    private final Target target;
    private final Timeline timeline;
    private int type;
    private int windowIndex;
    private long positionMs = C0515C.TIME_UNSET;
    private boolean deleteAfterDelivery = true;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/PlayerMessage$Sender.class */
    public interface Sender {
        void sendMessage(PlayerMessage playerMessage);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/PlayerMessage$Target.class */
    public interface Target {
        void handleMessage(int i, Object obj);
    }

    public PlayerMessage(Sender sender, Target target, Timeline timeline, int i, Handler handler) {
        this.sender = sender;
        this.target = target;
        this.timeline = timeline;
        this.handler = handler;
        this.windowIndex = i;
    }

    public boolean blockUntilDelivered() {
        boolean z;
        synchronized (this) {
            Assertions.checkState(this.isSent);
            Assertions.checkState(this.handler.getLooper().getThread() != Thread.currentThread());
            while (!this.isProcessed) {
                wait();
            }
            z = this.isDelivered;
        }
        return z;
    }

    public PlayerMessage cancel() {
        synchronized (this) {
            Assertions.checkState(this.isSent);
            this.isCanceled = true;
            markAsProcessed(false);
        }
        return this;
    }

    public boolean getDeleteAfterDelivery() {
        return this.deleteAfterDelivery;
    }

    public Handler getHandler() {
        return this.handler;
    }

    public Object getPayload() {
        return this.payload;
    }

    public long getPositionMs() {
        return this.positionMs;
    }

    public Target getTarget() {
        return this.target;
    }

    public Timeline getTimeline() {
        return this.timeline;
    }

    public int getType() {
        return this.type;
    }

    public int getWindowIndex() {
        return this.windowIndex;
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this) {
            z = this.isCanceled;
        }
        return z;
    }

    public void markAsProcessed(boolean z) {
        synchronized (this) {
            this.isDelivered = z | this.isDelivered;
            this.isProcessed = true;
            notifyAll();
        }
    }

    public PlayerMessage send() {
        Assertions.checkState(!this.isSent);
        if (this.positionMs == C0515C.TIME_UNSET) {
            Assertions.checkArgument(this.deleteAfterDelivery);
        }
        this.isSent = true;
        this.sender.sendMessage(this);
        return this;
    }

    public PlayerMessage setDeleteAfterDelivery(boolean z) {
        Assertions.checkState(!this.isSent);
        this.deleteAfterDelivery = z;
        return this;
    }

    public PlayerMessage setHandler(Handler handler) {
        Assertions.checkState(!this.isSent);
        this.handler = handler;
        return this;
    }

    public PlayerMessage setPayload(Object obj) {
        Assertions.checkState(!this.isSent);
        this.payload = obj;
        return this;
    }

    public PlayerMessage setPosition(int i, long j) {
        boolean z = true;
        Assertions.checkState(!this.isSent);
        if (j == C0515C.TIME_UNSET) {
            z = false;
        }
        Assertions.checkArgument(z);
        if (i < 0 || (!this.timeline.isEmpty() && i >= this.timeline.getWindowCount())) {
            throw new IllegalSeekPositionException(this.timeline, i, j);
        }
        this.windowIndex = i;
        this.positionMs = j;
        return this;
    }

    public PlayerMessage setPosition(long j) {
        Assertions.checkState(!this.isSent);
        this.positionMs = j;
        return this;
    }

    public PlayerMessage setType(int i) {
        Assertions.checkState(!this.isSent);
        this.type = i;
        return this;
    }
}
