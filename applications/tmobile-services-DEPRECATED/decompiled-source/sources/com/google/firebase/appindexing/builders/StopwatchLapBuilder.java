package com.google.firebase.appindexing.builders;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/StopwatchLapBuilder.class */
public class StopwatchLapBuilder extends IndexableBuilder<StopwatchLapBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public StopwatchLapBuilder() {
        super("StopwatchLap");
    }

    public StopwatchLapBuilder setAccumulatedTime(long j) {
        return put("accumulatedTime", j);
    }

    public StopwatchLapBuilder setElapsedTime(long j) {
        return put("elapsedTime", j);
    }
}
