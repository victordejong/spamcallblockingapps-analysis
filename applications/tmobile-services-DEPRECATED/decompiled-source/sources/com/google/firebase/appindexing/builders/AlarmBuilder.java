package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/AlarmBuilder.class */
public final class AlarmBuilder extends IndexableBuilder<AlarmBuilder> {
    public static final String FRIDAY = "Friday";
    public static final String MONDAY = "Monday";
    public static final String SATURDAY = "Saturday";
    public static final String SUNDAY = "Sunday";
    public static final String THURSDAY = "Thursday";
    public static final String TUESDAY = "Tuesday";
    public static final String WEDNESDAY = "Wednesday";

    /* JADX INFO: Access modifiers changed from: package-private */
    public AlarmBuilder() {
        super("Alarm");
    }

    public final AlarmBuilder setAlarmInstances(AlarmInstanceBuilder... alarmInstanceBuilderArr) {
        return put("alarmInstances", alarmInstanceBuilderArr);
    }

    public final AlarmBuilder setDayOfWeek(@NonNull String... strArr) {
        for (String str : strArr) {
            if (!SUNDAY.equals(str) && !MONDAY.equals(str) && !TUESDAY.equals(str) && !WEDNESDAY.equals(str) && !THURSDAY.equals(str) && !FRIDAY.equals(str) && !SATURDAY.equals(str)) {
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid weekday ".concat(valueOf) : new String("Invalid weekday "));
            }
        }
        return put("dayOfWeek", strArr);
    }

    public final AlarmBuilder setEnabled(boolean z) {
        return put("enabled", z);
    }

    public final AlarmBuilder setHour(int i) {
        if (i >= 0 && i <= 23) {
            return put("hour", i);
        }
        throw new IllegalArgumentException("Invalid alarm hour");
    }

    public final AlarmBuilder setIdentifier(String str) {
        return put("identifier", str);
    }

    public final AlarmBuilder setMessage(String str) {
        return put("message", str);
    }

    public final AlarmBuilder setMinute(int i) {
        if (i >= 0 && i <= 59) {
            return put("minute", i);
        }
        throw new IllegalArgumentException("Invalid alarm minute");
    }

    public final AlarmBuilder setRingtone(String str) {
        return put("ringtone", str);
    }

    public final AlarmBuilder setVibrate(boolean z) {
        return put("vibrate", z);
    }
}
