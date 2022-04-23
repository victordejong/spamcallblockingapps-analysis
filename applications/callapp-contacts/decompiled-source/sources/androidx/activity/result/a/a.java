package androidx.activity.result.a;

import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/a/a.class */
public abstract class a<I, O> {

    /* renamed from: androidx.activity.result.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/a/a$a.class */
    public static final class C0016a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final T f545a;

        public C0016a(T t) {
            this.f545a = t;
        }
    }

    public abstract Intent a(I i);

    public C0016a<O> a(Context context, I i) {
        return null;
    }

    public abstract O a(int i, Intent intent);
}
