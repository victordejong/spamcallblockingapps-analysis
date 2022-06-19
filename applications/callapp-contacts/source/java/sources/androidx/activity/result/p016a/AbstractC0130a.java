package androidx.activity.result.p016a;

import android.content.Context;
import android.content.Intent;
/* renamed from: androidx.activity.result.a.a */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/a/a.class */
public abstract class AbstractC0130a<I, O> {

    /* renamed from: androidx.activity.result.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/a/a$a.class */
    public static final class C0131a<T> {

        /* renamed from: a */
        public final T f254a;

        public C0131a(T t) {
            this.f254a = t;
        }
    }

    /* renamed from: a */
    public abstract Intent mo43665a(I i);

    /* renamed from: a */
    public C0131a<O> mo46387a(Context context, I i) {
        return null;
    }

    /* renamed from: a */
    public abstract O mo43666a(int i, Intent intent);
}
