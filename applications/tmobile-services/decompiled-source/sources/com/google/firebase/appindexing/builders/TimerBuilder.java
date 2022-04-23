package com.google.firebase.appindexing.builders;

import com.google.firebase.appindexing.internal.zzad;
import java.util.Calendar;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/TimerBuilder.class */
public final class TimerBuilder extends IndexableBuilder<TimerBuilder> {
    public static final String EXPIRED = "Expired";
    public static final String MISSED = "Missed";
    public static final String PAUSED = "Paused";
    public static final String RESET = "Reset";
    public static final String STARTED = "Started";
    public static final String UNKNOWN = "Unknown";

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimerBuilder() {
        super("Timer");
    }

    public final TimerBuilder setExpireTime(Calendar calendar) {
        return put("expireTime", zzad.zza(calendar));
    }

    public final TimerBuilder setIdentifier(String str) {
        return put("identifier", str);
    }

    public final TimerBuilder setLength(long j) {
        return put(Name.LENGTH, j);
    }

    public final TimerBuilder setMessage(String str) {
        return put("message", str);
    }

    public final TimerBuilder setRemainingTime(long j) {
        return put("remainingTime", j);
    }

    public final TimerBuilder setRingtone(String str) {
        return put("ringtone", str);
    }

    public final TimerBuilder setTimerStatus(String str) {
        if ("Started".equals(str) || "Paused".equals(str) || EXPIRED.equals(str) || "Missed".equals(str) || RESET.equals(str) || "Unknown".equals(str)) {
            return put("timerStatus", str);
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid timer status ".concat(valueOf) : new String("Invalid timer status "));
    }

    public final TimerBuilder setVibrate(boolean z) {
        return put("vibrate", z);
    }
}
