package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.NotificationLite;
/* loaded from: classes-dex2jar.jar:io/reactivex/Notification.class */
public final class Notification<T> {

    /* renamed from: b */
    static final Notification<Object> f15086b = new Notification<>(null);

    /* renamed from: a */
    final Object f15087a;

    private Notification(Object obj) {
        this.f15087a = obj;
    }

    @NonNull
    /* renamed from: a */
    public static <T> Notification<T> m4484a() {
        return (Notification<T>) f15086b;
    }

    @NonNull
    /* renamed from: b */
    public static <T> Notification<T> m4483b(@NonNull Throwable th) {
        ObjectHelper.m4363e(th, "error is null");
        return new Notification<>(NotificationLite.error(th));
    }

    @NonNull
    /* renamed from: c */
    public static <T> Notification<T> m4482c(@NonNull T t) {
        ObjectHelper.m4363e(t, "value is null");
        return new Notification<>(t);
    }

    @Nullable
    /* renamed from: d */
    public Throwable m4481d() {
        Object obj = this.f15087a;
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Nullable
    /* renamed from: e */
    public T m4480e() {
        Object obj = this.f15087a;
        if (obj == null || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) this.f15087a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Notification) {
            return ObjectHelper.m4365c(this.f15087a, ((Notification) obj).f15087a);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m4479f() {
        return this.f15087a == null;
    }

    /* renamed from: g */
    public boolean m4478g() {
        return NotificationLite.isError(this.f15087a);
    }

    /* renamed from: h */
    public boolean m4477h() {
        Object obj = this.f15087a;
        return obj != null && !NotificationLite.isError(obj);
    }

    public int hashCode() {
        Object obj = this.f15087a;
        return obj != null ? obj.hashCode() : 0;
    }

    public String toString() {
        Object obj = this.f15087a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.isError(obj)) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f15087a + "]";
    }
}
