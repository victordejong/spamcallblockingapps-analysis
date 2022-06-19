package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.facebook.AccessToken;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
/* renamed from: com.twitter.sdk.android.core.identity.a */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/a.class */
public abstract class AbstractC17218a {

    /* renamed from: a */
    protected final int f60959a;

    /* renamed from: b */
    private final TwitterAuthConfig f60960b;

    /* renamed from: c */
    private final AbstractC17206b<C17292t> f60961c;

    public AbstractC17218a(TwitterAuthConfig twitterAuthConfig, AbstractC17206b<C17292t> abstractC17206b, int i) {
        this.f60960b = twitterAuthConfig;
        this.f60961c = abstractC17206b;
        this.f60959a = i;
    }

    /* renamed from: a */
    public final TwitterAuthConfig m5705a() {
        return this.f60960b;
    }

    /* renamed from: a */
    public final boolean m5704a(int i, int i2, Intent intent) {
        if (this.f60959a != i) {
            return false;
        }
        AbstractC17206b<C17292t> abstractC17206b = this.f60961c;
        if (abstractC17206b == null) {
            return true;
        }
        if (i2 == -1) {
            String stringExtra = intent.getStringExtra("tk");
            String stringExtra2 = intent.getStringExtra("ts");
            String stringExtra3 = intent.getStringExtra("screen_name");
            abstractC17206b.mo5600a(new C17277k<>(new C17292t(new TwitterAuthToken(stringExtra, stringExtra2), intent.getLongExtra(AccessToken.USER_ID_KEY, 0L), stringExtra3), null));
            return true;
        } else if (intent == null || !intent.hasExtra("auth_error")) {
            abstractC17206b.mo5601a(new TwitterAuthException("Authorize failed."));
            return true;
        } else {
            abstractC17206b.mo5601a((TwitterAuthException) intent.getSerializableExtra("auth_error"));
            return true;
        }
    }

    /* renamed from: a */
    public abstract boolean mo5694a(Activity activity);
}
