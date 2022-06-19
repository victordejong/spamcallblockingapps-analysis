package p065d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
/* renamed from: d.a */
/* loaded from: classes-dex2jar.jar:d/a.class */
public abstract class AbstractC2130a<I, O> {

    /* renamed from: d.a$a */
    /* loaded from: classes-dex2jar.jar:d/a$a.class */
    public static final class C2131a<T> {
        @SuppressLint({"UnknownNullness"})

        /* renamed from: a */
        public final T f7831a;

        public C2131a(@SuppressLint({"UnknownNullness"}) T t) {
            this.f7831a = t;
        }
    }

    /* renamed from: a */
    public abstract Intent mo3848a(Context context, @SuppressLint({"UnknownNullness"}) I i);

    /* renamed from: b */
    public C2131a<O> mo3849b(Context context, @SuppressLint({"UnknownNullness"}) I i) {
        return null;
    }

    @SuppressLint({"UnknownNullness"})
    /* renamed from: c */
    public abstract O mo3847c(int i, Intent intent);
}
