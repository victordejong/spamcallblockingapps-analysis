package com.twitter.sdk.android.core;

import android.content.Context;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    final Context f35192a;

    /* renamed from: b  reason: collision with root package name */
    final f f35193b;

    /* renamed from: c  reason: collision with root package name */
    final TwitterAuthConfig f35194c;

    /* renamed from: d  reason: collision with root package name */
    final ExecutorService f35195d;
    final Boolean e;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/p$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Context f35196a;

        /* renamed from: b  reason: collision with root package name */
        public f f35197b;

        /* renamed from: c  reason: collision with root package name */
        public TwitterAuthConfig f35198c;

        /* renamed from: d  reason: collision with root package name */
        public ExecutorService f35199d;
        public Boolean e;

        public a(Context context) {
            if (context != null) {
                this.f35196a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }
    }

    private p(Context context, f fVar, TwitterAuthConfig twitterAuthConfig, ExecutorService executorService, Boolean bool) {
        this.f35192a = context;
        this.f35193b = fVar;
        this.f35194c = twitterAuthConfig;
        this.f35195d = executorService;
        this.e = bool;
    }
}
