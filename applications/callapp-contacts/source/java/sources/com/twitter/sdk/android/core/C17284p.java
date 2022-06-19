package com.twitter.sdk.android.core;

import android.content.Context;
import java.util.concurrent.ExecutorService;
/* renamed from: com.twitter.sdk.android.core.p */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/p.class */
public final class C17284p {

    /* renamed from: a */
    final Context f61059a;

    /* renamed from: b */
    final AbstractC17212f f61060b;

    /* renamed from: c */
    final TwitterAuthConfig f61061c;

    /* renamed from: d */
    final ExecutorService f61062d;

    /* renamed from: e */
    final Boolean f61063e;

    /* renamed from: com.twitter.sdk.android.core.p$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/p$a.class */
    public static final class C17286a {

        /* renamed from: a */
        public final Context f61064a;

        /* renamed from: b */
        public AbstractC17212f f61065b;

        /* renamed from: c */
        public TwitterAuthConfig f61066c;

        /* renamed from: d */
        public ExecutorService f61067d;

        /* renamed from: e */
        public Boolean f61068e;

        public C17286a(Context context) {
            if (context != null) {
                this.f61064a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C17284p(Context context, AbstractC17212f abstractC17212f, TwitterAuthConfig twitterAuthConfig, ExecutorService executorService, Boolean bool) {
        this.f61059a = context;
        this.f61060b = abstractC17212f;
        this.f61061c = twitterAuthConfig;
        this.f61062d = executorService;
        this.f61063e = bool;
    }
}
