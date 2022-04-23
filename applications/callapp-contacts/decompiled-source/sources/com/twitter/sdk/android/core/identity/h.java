package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Context;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.m;
import com.twitter.sdk.android.core.n;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    final r f35126a;

    /* renamed from: b  reason: collision with root package name */
    public final com.twitter.sdk.android.core.identity.b f35127b;

    /* renamed from: c  reason: collision with root package name */
    final m<t> f35128c;

    /* renamed from: d  reason: collision with root package name */
    final TwitterAuthConfig f35129d;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/h$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final com.twitter.sdk.android.core.identity.b f35130a = new com.twitter.sdk.android.core.identity.b();

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/h$b.class */
    public static final class b extends com.twitter.sdk.android.core.b<t> {

        /* renamed from: a  reason: collision with root package name */
        private final m<t> f35131a;

        /* renamed from: b  reason: collision with root package name */
        private final com.twitter.sdk.android.core.b<t> f35132b;

        b(m<t> mVar, com.twitter.sdk.android.core.b<t> bVar) {
            this.f35131a = mVar;
            this.f35132b = bVar;
        }

        @Override // com.twitter.sdk.android.core.b
        public final void a(TwitterException twitterException) {
            n.c().a("Twitter", "Authorization completed with an error", twitterException);
            this.f35132b.a(twitterException);
        }

        @Override // com.twitter.sdk.android.core.b
        public final void a(k<t> kVar) {
            n.c().a("Twitter", "Authorization completed successfully");
            this.f35131a.a((m<t>) kVar.f35182a);
            this.f35132b.a(kVar);
        }
    }

    public h() {
        this(r.a(), r.a().e, r.a().f35203b, a.f35130a);
    }

    h(r rVar, TwitterAuthConfig twitterAuthConfig, m<t> mVar, com.twitter.sdk.android.core.identity.b bVar) {
        this.f35126a = rVar;
        this.f35127b = bVar;
        this.f35129d = twitterAuthConfig;
        this.f35128c = mVar;
    }

    private boolean a(Activity activity, b bVar) {
        if (!g.a((Context) activity)) {
            return false;
        }
        n.c().a("Twitter", "Using SSO");
        com.twitter.sdk.android.core.identity.b bVar2 = this.f35127b;
        TwitterAuthConfig twitterAuthConfig = this.f35129d;
        return bVar2.a(activity, new g(twitterAuthConfig, bVar, twitterAuthConfig.getRequestCode()));
    }

    private void b(Activity activity, com.twitter.sdk.android.core.b<t> bVar) {
        b bVar2 = new b(this.f35128c, bVar);
        if (!a(activity, bVar2) && !b(activity, bVar2)) {
            bVar2.a(new TwitterAuthException("Authorize failed."));
        }
    }

    private boolean b(Activity activity, b bVar) {
        n.c().a("Twitter", "Using OAuth");
        com.twitter.sdk.android.core.identity.b bVar2 = this.f35127b;
        TwitterAuthConfig twitterAuthConfig = this.f35129d;
        return bVar2.a(activity, new d(twitterAuthConfig, bVar, twitterAuthConfig.getRequestCode()));
    }

    public final void a(Activity activity, com.twitter.sdk.android.core.b<t> bVar) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity must not be null.");
        } else if (bVar == null) {
            throw new IllegalArgumentException("Callback must not be null.");
        } else if (activity.isFinishing()) {
            n.c().a("Twitter", "Cannot authorize, activity is finishing.", null);
        } else {
            b(activity, bVar);
        }
    }
}
