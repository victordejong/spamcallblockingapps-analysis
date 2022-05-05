package com.google.firebase.appindexing.builders;

import com.google.firebase.appindexing.internal.zzad;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/AlarmInstanceBuilder.class */
public class AlarmInstanceBuilder extends IndexableBuilder<AlarmInstanceBuilder> {
    public static final String DISMISSED = "Dismissed";
    public static final String FIRED = "Fired";
    public static final String MISSED = "Missed";
    public static final String SCHEDULED = "Scheduled";
    public static final String SNOOZED = "Snoozed";
    public static final String UNKNOWN = "Unknown";

    /* JADX INFO: Access modifiers changed from: package-private */
    public AlarmInstanceBuilder() {
        super("AlarmInstance");
    }

    public AlarmInstanceBuilder setAlarmStatus(String str) {
        if (FIRED.equals(str) || SNOOZED.equals(str) || "Missed".equals(str) || DISMISSED.equals(str) || SCHEDULED.equals(str) || "Unknown".equals(str)) {
            return put("alarmStatus", str);
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid alarm status ".concat(valueOf) : new String("Invalid alarm status "));
    }

    public AlarmInstanceBuilder setScheduledTime(Calendar calendar) {
        return put("scheduledTime", zzad.zza(calendar));
    }
}
