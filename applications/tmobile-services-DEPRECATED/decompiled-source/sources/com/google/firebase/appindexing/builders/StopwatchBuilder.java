package com.google.firebase.appindexing.builders;

import com.google.firebase.appindexing.internal.zzad;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/StopwatchBuilder.class */
public final class StopwatchBuilder extends IndexableBuilder<StopwatchBuilder> {
    public static final String PAUSED = "Paused";
    public static final String STARTED = "Started";
    public static final String UNKNOWN = "Unknown";

    /* JADX INFO: Access modifiers changed from: package-private */
    public StopwatchBuilder() {
        super("Stopwatch");
    }

    public final StopwatchBuilder setElapsedTime(long j) {
        return put("elapsedTime", j);
    }

    public final StopwatchBuilder setLaps(StopwatchLapBuilder... stopwatchLapBuilderArr) {
        return put("laps", stopwatchLapBuilderArr);
    }

    public final StopwatchBuilder setStartTime(Calendar calendar) {
        return put("startTime", zzad.zza(calendar));
    }

    public final StopwatchBuilder setStopwatchStatus(String str) {
        if ("Started".equals(str) || "Paused".equals(str) || "Unknown".equals(str)) {
            return put("stopwatchStatus", str);
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid stopwatch status ".concat(valueOf) : new String("Invalid stopwatch status "));
    }
}
