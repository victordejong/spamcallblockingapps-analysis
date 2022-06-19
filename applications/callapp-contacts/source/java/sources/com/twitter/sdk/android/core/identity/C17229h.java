package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Context;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.AbstractC17279m;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterException;
/* renamed from: com.twitter.sdk.android.core.identity.h */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/h.class */
public final class C17229h {

    /* renamed from: a */
    final C17288r f60973a;

    /* renamed from: b */
    public final C17219b f60974b;

    /* renamed from: c */
    final AbstractC17279m<C17292t> f60975c;

    /* renamed from: d */
    final TwitterAuthConfig f60976d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.core.identity.h$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/h$a.class */
    public static final class C17230a {

        /* renamed from: a */
        private static final C17219b f60977a = new C17219b();

        private C17230a() {
        }
    }

    /* renamed from: com.twitter.sdk.android.core.identity.h$b */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/h$b.class */
    public static final class C17231b extends AbstractC17206b<C17292t> {

        /* renamed from: a */
        private final AbstractC17279m<C17292t> f60978a;

        /* renamed from: b */
        private final AbstractC17206b<C17292t> f60979b;

        C17231b(AbstractC17279m<C17292t> abstractC17279m, AbstractC17206b<C17292t> abstractC17206b) {
            this.f60978a = abstractC17279m;
            this.f60979b = abstractC17206b;
        }

        @Override // com.twitter.sdk.android.core.AbstractC17206b
        /* renamed from: a */
        public final void mo5601a(TwitterException twitterException) {
            C17282n.m5628c().mo5713a("Twitter", "Authorization completed with an error", twitterException);
            this.f60979b.mo5601a(twitterException);
        }

        @Override // com.twitter.sdk.android.core.AbstractC17206b
        /* renamed from: a */
        public final void mo5600a(C17277k<C17292t> c17277k) {
            C17282n.m5628c().mo5714a("Twitter", "Authorization completed successfully");
            this.f60978a.mo5635a((AbstractC17279m<C17292t>) c17277k.f61033a);
            this.f60979b.mo5600a(c17277k);
        }
    }

    public C17229h() {
        this(C17288r.m5626a(), C17288r.m5626a().f61075e, C17288r.m5626a().f61072b, C17230a.f60977a);
    }

    C17229h(C17288r c17288r, TwitterAuthConfig twitterAuthConfig, AbstractC17279m<C17292t> abstractC17279m, C17219b c17219b) {
        this.f60973a = c17288r;
        this.f60974b = c17219b;
        this.f60976d = twitterAuthConfig;
        this.f60975c = abstractC17279m;
    }

    /* renamed from: a */
    private boolean m5689a(Activity activity, C17231b c17231b) {
        if (C17228g.m5693a((Context) activity)) {
            C17282n.m5628c().mo5714a("Twitter", "Using SSO");
            C17219b c17219b = this.f60974b;
            TwitterAuthConfig twitterAuthConfig = this.f60976d;
            return c17219b.m5702a(activity, new C17228g(twitterAuthConfig, c17231b, twitterAuthConfig.getRequestCode()));
        }
        return false;
    }

    /* renamed from: b */
    private void m5688b(Activity activity, AbstractC17206b<C17292t> abstractC17206b) {
        C17231b c17231b = new C17231b(this.f60975c, abstractC17206b);
        if (m5689a(activity, c17231b) || m5687b(activity, c17231b)) {
            return;
        }
        c17231b.mo5601a(new TwitterAuthException("Authorize failed."));
    }

    /* renamed from: b */
    private boolean m5687b(Activity activity, C17231b c17231b) {
        C17282n.m5628c().mo5714a("Twitter", "Using OAuth");
        C17219b c17219b = this.f60974b;
        TwitterAuthConfig twitterAuthConfig = this.f60976d;
        return c17219b.m5702a(activity, new C17224d(twitterAuthConfig, c17231b, twitterAuthConfig.getRequestCode()));
    }

    /* renamed from: a */
    public final void m5690a(Activity activity, AbstractC17206b<C17292t> abstractC17206b) {
        if (activity != null) {
            if (abstractC17206b == null) {
                throw new IllegalArgumentException("Callback must not be null.");
            }
            if (activity.isFinishing()) {
                C17282n.m5628c().mo5713a("Twitter", "Cannot authorize, activity is finishing.", null);
                return;
            } else {
                m5688b(activity, abstractC17206b);
                return;
            }
        }
        throw new IllegalArgumentException("Activity must not be null.");
    }
}
