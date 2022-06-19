package com.twitter.sdk.android.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.twitter.sdk.android.core.C17208d;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.internal.C17233a;
import com.twitter.sdk.android.core.internal.C17249d;
import com.twitter.sdk.android.core.internal.C17254g;
import com.twitter.sdk.android.core.internal.C17255h;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import com.twitter.sdk.android.core.internal.p486b.C17245b;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.twitter.sdk.android.core.r */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/r.class */
public class C17288r {

    /* renamed from: a */
    static volatile C17288r f61071a;

    /* renamed from: b */
    public AbstractC17279m<C17292t> f61072b;

    /* renamed from: c */
    AbstractC17279m<C17208d> f61073c;

    /* renamed from: d */
    C17249d<C17292t> f61074d;

    /* renamed from: e */
    public final TwitterAuthConfig f61075e;

    /* renamed from: f */
    public volatile C17283o f61076f;

    /* renamed from: g */
    private final ConcurrentHashMap<C17278l, C17283o> f61077g;

    /* renamed from: h */
    private final Context f61078h;

    /* renamed from: i */
    private volatile C17210e f61079i;

    C17288r(TwitterAuthConfig twitterAuthConfig) {
        this(twitterAuthConfig, new ConcurrentHashMap(), null);
    }

    C17288r(TwitterAuthConfig twitterAuthConfig, ConcurrentHashMap<C17278l, C17283o> concurrentHashMap, C17283o c17283o) {
        this.f61075e = twitterAuthConfig;
        this.f61077g = concurrentHashMap;
        this.f61076f = c17283o;
        Context context = C17282n.m5632a().f61051c;
        C17287q c17287q = new C17287q(context, "com.twitter.sdk.android:twitter-core", ".TwitterKit" + File.separator + "com.twitter.sdk.android:twitter-core");
        this.f61078h = c17287q;
        this.f61072b = new C17215i(new C17245b(c17287q, "session_store"), new C17292t.C17293a(), "active_twittersession", "twittersession");
        this.f61073c = new C17215i(new C17245b(c17287q, "session_store"), new C17208d.C17209a(), "active_guestsession", "guestsession");
        this.f61074d = new C17249d<>(this.f61072b, C17282n.m5632a().f61052d, new C17255h());
    }

    /* renamed from: a */
    public static C17288r m5626a() {
        if (f61071a == null) {
            synchronized (C17288r.class) {
                try {
                    if (f61071a == null) {
                        f61071a = new C17288r(C17282n.m5632a().f61053e);
                        C17282n.m5632a().f61052d.execute(_$$Lambda$r$z2vXB79wm2oiJx7gBIFZblxiemk.INSTANCE);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f61071a;
    }

    /* renamed from: b */
    public static String m5624b() {
        return "3.3.0.12";
    }

    /* renamed from: e */
    private void m5621e() {
        synchronized (this) {
            if (this.f61079i == null) {
                this.f61079i = new C17210e(new OAuth2Service(this, new C17254g()), this.f61073c);
            }
        }
    }

    /* renamed from: f */
    public static /* synthetic */ void m5620f() {
        C17288r c17288r = f61071a;
        c17288r.f61072b.mo5637a();
        c17288r.f61073c.mo5637a();
        c17288r.m5623c();
        final C17249d<C17292t> c17249d = c17288r.f61074d;
        C17233a c17233a = C17282n.m5632a().f61054f;
        final C17233a.AbstractC17236b abstractC17236b = new C17233a.AbstractC17236b() { // from class: com.twitter.sdk.android.core.internal.d.1
            @Override // com.twitter.sdk.android.core.internal.C17233a.AbstractC17236b
            /* renamed from: a */
            public final void mo5663a() {
                c17249d.m5665a();
            }
        };
        if (c17233a.f60982a != null) {
            final C17233a.C17234a c17234a = c17233a.f60982a;
            if (c17234a.f60984b == null) {
                return;
            }
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
                    abstractC17236b.mo5663a();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStopped(Activity activity) {
                }
            };
            c17234a.f60984b.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            c17234a.f60983a.add(activityLifecycleCallbacks);
        }
    }

    /* renamed from: a */
    public final C17283o m5625a(C17292t c17292t) {
        if (!this.f61077g.containsKey(c17292t)) {
            this.f61077g.putIfAbsent(c17292t, new C17283o(c17292t));
        }
        return this.f61077g.get(c17292t);
    }

    /* renamed from: c */
    public final C17210e m5623c() {
        if (this.f61079i == null) {
            m5621e();
        }
        return this.f61079i;
    }

    /* renamed from: d */
    public final void m5622d() {
        synchronized (this) {
            if (this.f61076f == null) {
                this.f61076f = new C17283o();
            }
        }
    }
}
