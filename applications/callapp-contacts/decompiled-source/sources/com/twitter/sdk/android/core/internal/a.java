package com.twitter.sdk.android.core.internal;

import android.app.Application;
import android.content.Context;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final C0559a f35135a;

    /* renamed from: com.twitter.sdk.android.core.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a$a.class */
    public static final class C0559a {

        /* renamed from: a  reason: collision with root package name */
        public final Set<Application.ActivityLifecycleCallbacks> f35136a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        public final Application f35137b;

        C0559a(Application application) {
            this.f35137b = application;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a$b.class */
    public static abstract class b {
        public void a() {
        }
    }

    public a(Context context) {
        this.f35135a = new C0559a((Application) context.getApplicationContext());
    }
}
