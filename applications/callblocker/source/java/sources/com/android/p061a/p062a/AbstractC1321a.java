package com.android.p061a.p062a;

import android.content.Context;
/* renamed from: com.android.a.a.a */
/* loaded from: classes-dex2jar.jar:com/android/a/a/a.class */
public abstract class AbstractC1321a {

    /* renamed from: com.android.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/android/a/a/a$a.class */
    public static final class C1323a {

        /* renamed from: a */
        private final Context f4386a;

        private C1323a(Context context) {
            this.f4386a = context;
        }

        /* renamed from: a */
        public AbstractC1321a m17496a() {
            if (this.f4386a == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            return new C1324b(this.f4386a);
        }
    }

    /* renamed from: a */
    public static C1323a m17497a(Context context) {
        return new C1323a(context);
    }

    /* renamed from: a */
    public abstract C1328d mo17495a();

    /* renamed from: a */
    public abstract void mo17492a(AbstractC1327c abstractC1327c);
}
