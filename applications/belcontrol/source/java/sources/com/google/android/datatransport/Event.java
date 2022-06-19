package com.google.android.datatransport;

import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/Event.class */
public abstract class Event<T> {
    public static <T> Event<T> ofData(int i, T t) {
        return new AutoValue_Event(Integer.valueOf(i), t, Priority.DEFAULT);
    }

    public static <T> Event<T> ofData(T t) {
        return new AutoValue_Event((Integer) null, t, Priority.DEFAULT);
    }

    public static <T> Event<T> ofTelemetry(int i, T t) {
        return new AutoValue_Event(Integer.valueOf(i), t, Priority.VERY_LOW);
    }

    public static <T> Event<T> ofTelemetry(T t) {
        return new AutoValue_Event((Integer) null, t, Priority.VERY_LOW);
    }

    public static <T> Event<T> ofUrgent(int i, T t) {
        return new AutoValue_Event(Integer.valueOf(i), t, Priority.HIGHEST);
    }

    public static <T> Event<T> ofUrgent(T t) {
        return new AutoValue_Event((Integer) null, t, Priority.HIGHEST);
    }

    public abstract Integer getCode();

    public abstract T getPayload();

    public abstract Priority getPriority();
}
