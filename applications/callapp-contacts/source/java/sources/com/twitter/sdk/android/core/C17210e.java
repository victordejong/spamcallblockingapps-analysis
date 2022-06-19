package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import java.util.concurrent.CountDownLatch;
/* renamed from: com.twitter.sdk.android.core.e */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/e.class */
public final class C17210e {

    /* renamed from: a */
    final AbstractC17279m<C17208d> f60933a;

    /* renamed from: b */
    private final OAuth2Service f60934b;

    public C17210e(OAuth2Service oAuth2Service, AbstractC17279m<C17208d> abstractC17279m) {
        this.f60934b = oAuth2Service;
        this.f60933a = abstractC17279m;
    }

    /* renamed from: b */
    private void m5715b() {
        C17282n.m5628c().mo5714a("GuestSessionProvider", "Refreshing expired guest session.");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f60934b.m5650a(new AbstractC17206b<GuestAuthToken>() { // from class: com.twitter.sdk.android.core.e.1
            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5601a(TwitterException twitterException) {
                C17210e.this.f60933a.mo5636a(0L);
                countDownLatch.countDown();
            }

            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5600a(C17277k<GuestAuthToken> c17277k) {
                C17210e.this.f60933a.mo5635a((AbstractC17279m<C17208d>) new C17208d(c17277k.f61033a));
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            this.f60933a.mo5636a(0L);
        }
    }

    /* renamed from: a */
    public final C17208d m5717a() {
        synchronized (this) {
            C17208d mo5637a = this.f60933a.mo5637a();
            if ((mo5637a == null || mo5637a.f61035a == 0 || ((GuestAuthToken) mo5637a.f61035a).isExpired()) ? false : true) {
                return mo5637a;
            }
            m5715b();
            return this.f60933a.mo5637a();
        }
    }

    /* renamed from: a */
    public final C17208d m5716a(C17208d c17208d) {
        C17208d mo5637a;
        synchronized (this) {
            C17208d mo5637a2 = this.f60933a.mo5637a();
            if (c17208d != null && c17208d.equals(mo5637a2)) {
                m5715b();
            }
            mo5637a = this.f60933a.mo5637a();
        }
        return mo5637a;
    }
}
