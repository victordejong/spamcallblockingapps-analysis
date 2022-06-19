package com.twitter.sdk.android.core.internal;

import android.app.Application;
import android.content.Context;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.twitter.sdk.android.core.internal.a */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a.class */
public final class C17233a {

    /* renamed from: a */
    public final C17234a f60982a;

    /* renamed from: com.twitter.sdk.android.core.internal.a$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a$a.class */
    public static final class C17234a {

        /* renamed from: a */
        public final Set<Application.ActivityLifecycleCallbacks> f60983a = new HashSet();

        /* renamed from: b */
        public final Application f60984b;

        C17234a(Application application) {
            this.f60984b = application;
        }
    }

    /* renamed from: com.twitter.sdk.android.core.internal.a$b */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a$b.class */
    public static abstract class AbstractC17236b {
        /* renamed from: a */
        public void mo5663a() {
        }
    }

    public C17233a(Context context) {
        this.f60982a = new C17234a((Application) context.getApplicationContext());
    }
}
