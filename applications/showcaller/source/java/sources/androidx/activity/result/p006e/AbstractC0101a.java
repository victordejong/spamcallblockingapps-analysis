package androidx.activity.result.p006e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
/* renamed from: androidx.activity.result.e.a */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/e/a.class */
public abstract class AbstractC0101a<I, O> {

    /* renamed from: androidx.activity.result.e.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/e/a$a.class */
    public static final class C0102a<T> {
        @SuppressLint({"UnknownNullness"})

        /* renamed from: a */
        private final T f207a;

        public C0102a(@SuppressLint({"UnknownNullness"}) T t) {
            this.f207a = t;
        }

        @SuppressLint({"UnknownNullness"})
        /* renamed from: a */
        public T m35719a() {
            return this.f207a;
        }
    }

    /* renamed from: a */
    public abstract Intent mo32732a(Context context, @SuppressLint({"UnknownNullness"}) I i);

    /* renamed from: b */
    public C0102a<O> mo35718b(Context context, @SuppressLint({"UnknownNullness"}) I i) {
        return null;
    }

    @SuppressLint({"UnknownNullness"})
    /* renamed from: c */
    public abstract O mo32731c(int i, Intent intent);
}
