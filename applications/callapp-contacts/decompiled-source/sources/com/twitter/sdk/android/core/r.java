package com.twitter.sdk.android.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.twitter.sdk.android.core.d;
import com.twitter.sdk.android.core.internal.a;
import com.twitter.sdk.android.core.internal.b.b;
import com.twitter.sdk.android.core.internal.d;
import com.twitter.sdk.android.core.internal.g;
import com.twitter.sdk.android.core.internal.h;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import com.twitter.sdk.android.core.t;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/r.class */
public class r {

    /* renamed from: a  reason: collision with root package name */
    static volatile r f35202a;

    /* renamed from: b  reason: collision with root package name */
    public m<t> f35203b;

    /* renamed from: c  reason: collision with root package name */
    m<d> f35204c;

    /* renamed from: d  reason: collision with root package name */
    d<t> f35205d;
    public final TwitterAuthConfig e;
    public volatile o f;
    private final ConcurrentHashMap<l, o> g;
    private final Context h;
    private volatile e i;

    r(TwitterAuthConfig twitterAuthConfig) {
        this(twitterAuthConfig, new ConcurrentHashMap(), null);
    }

    r(TwitterAuthConfig twitterAuthConfig, ConcurrentHashMap<l, o> concurrentHashMap, o oVar) {
        this.e = twitterAuthConfig;
        this.g = concurrentHashMap;
        this.f = oVar;
        Context context = n.a().f35188c;
        q qVar = new q(context, "com.twitter.sdk.android:twitter-core", ".TwitterKit" + File.separator + "com.twitter.sdk.android:twitter-core");
        this.h = qVar;
        this.f35203b = new i(new b(qVar, "session_store"), new t.a(), "active_twittersession", "twittersession");
        this.f35204c = new i(new b(qVar, "session_store"), new d.a(), "active_guestsession", "guestsession");
        this.f35205d = new com.twitter.sdk.android.core.internal.d<>(this.f35203b, n.a().f35189d, new h());
    }

    public static r a() {
        if (f35202a == null) {
            synchronized (r.class) {
                try {
                    if (f35202a == null) {
                        f35202a = new r(n.a().e);
                        n.a().f35189d.execute(_$$Lambda$r$z2vXB79wm2oiJx7gBIFZblxiemk.INSTANCE);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f35202a;
    }

    public static String b() {
        return "3.3.0.12";
    }

    private void e() {
        synchronized (this) {
            if (this.i == null) {
                this.i = new e(new OAuth2Service(this, new g()), this.f35204c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f() {
        r rVar = f35202a;
        rVar.f35203b.a();
        rVar.f35204c.a();
        rVar.c();
        final com.twitter.sdk.android.core.internal.d<t> dVar = rVar.f35205d;
        a aVar = n.a().f;
        final a.b bVar = new a.b() { // from class: com.twitter.sdk.android.core.internal.d.1
            @Override // com.twitter.sdk.android.core.internal.a.b
            public final void a() {
                dVar.a();
            }
        };
        if (aVar.f35135a != null) {
            final a.C0559a aVar2 = aVar.f35135a;
            if (aVar2.f35137b != null) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: com.twitter.sdk.android.core.internal.a.a.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityCreated(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityDestroyed(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPaused(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityResumed(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStarted(Activity activity) {
                        bVar.a();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStopped(Activity activity) {
                    }
                };
                aVar2.f35137b.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
                aVar2.f35136a.add(activityLifecycleCallbacks);
            }
        }
    }

    public final o a(t tVar) {
        if (!this.g.containsKey(tVar)) {
            this.g.putIfAbsent(tVar, new o(tVar));
        }
        return this.g.get(tVar);
    }

    public final e c() {
        if (this.i == null) {
            e();
        }
        return this.i;
    }

    public final void d() {
        synchronized (this) {
            if (this.f == null) {
                this.f = new o();
            }
        }
    }
}
