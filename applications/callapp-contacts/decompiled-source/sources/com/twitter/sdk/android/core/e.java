package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final m<d> f35092a;

    /* renamed from: b  reason: collision with root package name */
    private final OAuth2Service f35093b;

    public e(OAuth2Service oAuth2Service, m<d> mVar) {
        this.f35093b = oAuth2Service;
        this.f35092a = mVar;
    }

    private void b() {
        n.c().a("GuestSessionProvider", "Refreshing expired guest session.");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f35093b.a(new b<GuestAuthToken>() { // from class: com.twitter.sdk.android.core.e.1
            @Override // com.twitter.sdk.android.core.b
            public final void a(TwitterException twitterException) {
                e.this.f35092a.a(0L);
                countDownLatch.countDown();
            }

            @Override // com.twitter.sdk.android.core.b
            public final void a(k<GuestAuthToken> kVar) {
                e.this.f35092a.a((m<d>) new d(kVar.f35182a));
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            this.f35092a.a(0L);
        }
    }

    public final d a() {
        synchronized (this) {
            d a2 = this.f35092a.a();
            if ((a2 == null || a2.f35184a == 0 || ((GuestAuthToken) a2.f35184a).isExpired()) ? false : true) {
                return a2;
            }
            b();
            return this.f35092a.a();
        }
    }

    public final d a(d dVar) {
        d a2;
        synchronized (this) {
            d a3 = this.f35092a.a();
            if (dVar != null && dVar.equals(a3)) {
                b();
            }
            a2 = this.f35092a.a();
        }
        return a2;
    }
}
