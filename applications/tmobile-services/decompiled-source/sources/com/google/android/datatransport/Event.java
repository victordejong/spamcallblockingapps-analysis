package com.google.android.datatransport;

import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/Event.class */
public abstract class Event<T> {
    /* renamed from: d */
    public static <T> Event<T> m15556d(T t) {
        return new AutoValue_Event(null, t, Priority.VERY_LOW);
    }

    /* renamed from: e */
    public static <T> Event<T> m15555e(T t) {
        return new AutoValue_Event(null, t, Priority.HIGHEST);
    }

    @Nullable
    /* renamed from: a */
    public abstract Integer mo15559a();

    /* renamed from: b */
    public abstract T mo15558b();

    /* renamed from: c */
    public abstract Priority mo15557c();
}
