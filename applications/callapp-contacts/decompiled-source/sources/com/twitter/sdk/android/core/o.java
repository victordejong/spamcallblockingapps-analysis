package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.a.e;
import com.twitter.sdk.android.core.internal.g;
import com.twitter.sdk.android.core.models.BindingValues;
import com.twitter.sdk.android.core.models.BindingValuesAdapter;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.services.MediaService;
import com.twitter.sdk.android.core.services.StatusesService;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.a.a.a;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/o.class */
public class o {

    /* renamed from: b  reason: collision with root package name */
    final ConcurrentHashMap<Class, Object> f35190b;

    /* renamed from: c  reason: collision with root package name */
    final Retrofit f35191c;

    public o() {
        this(e.a(new OkHttpClient.Builder(), r.a().c()).build(), new g());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public o(com.twitter.sdk.android.core.t r6) {
        /*
            r5 = this;
            com.twitter.sdk.android.core.r r0 = com.twitter.sdk.android.core.r.a()
            com.twitter.sdk.android.core.TwitterAuthConfig r0 = r0.e
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r5
            okhttp3.OkHttpClient$Builder r1 = new okhttp3.OkHttpClient$Builder
            r2 = r1
            r2.<init>()
            r2 = r6
            r3 = r7
            okhttp3.OkHttpClient$Builder r1 = com.twitter.sdk.android.core.internal.a.e.a(r1, r2, r3)
            okhttp3.OkHttpClient r1 = r1.build()
            com.twitter.sdk.android.core.internal.g r2 = new com.twitter.sdk.android.core.internal.g
            r3 = r2
            r3.<init>()
            r0.<init>(r1, r2)
            return
        L_0x0026:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Session must not be null."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.core.o.<init>(com.twitter.sdk.android.core.t):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public o(com.twitter.sdk.android.core.t r6, okhttp3.OkHttpClient r7) {
        /*
            r5 = this;
            com.twitter.sdk.android.core.r r0 = com.twitter.sdk.android.core.r.a()
            com.twitter.sdk.android.core.TwitterAuthConfig r0 = r0.e
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0031
            r0 = r7
            if (r0 == 0) goto L_0x0027
            r0 = r5
            r1 = r7
            okhttp3.OkHttpClient$Builder r1 = r1.newBuilder()
            r2 = r6
            r3 = r8
            okhttp3.OkHttpClient$Builder r1 = com.twitter.sdk.android.core.internal.a.e.a(r1, r2, r3)
            okhttp3.OkHttpClient r1 = r1.build()
            com.twitter.sdk.android.core.internal.g r2 = new com.twitter.sdk.android.core.internal.g
            r3 = r2
            r3.<init>()
            r0.<init>(r1, r2)
            return
        L_0x0027:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "HttpClient must not be null."
            r1.<init>(r2)
            throw r0
        L_0x0031:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Session must not be null."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.core.o.<init>(com.twitter.sdk.android.core.t, okhttp3.OkHttpClient):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public o(okhttp3.OkHttpClient r6) {
        /*
            r5 = this;
            com.twitter.sdk.android.core.r r0 = com.twitter.sdk.android.core.r.a()
            com.twitter.sdk.android.core.e r0 = r0.c()
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0022
            r0 = r5
            r1 = r6
            okhttp3.OkHttpClient$Builder r1 = r1.newBuilder()
            r2 = r7
            okhttp3.OkHttpClient$Builder r1 = com.twitter.sdk.android.core.internal.a.e.a(r1, r2)
            okhttp3.OkHttpClient r1 = r1.build()
            com.twitter.sdk.android.core.internal.g r2 = new com.twitter.sdk.android.core.internal.g
            r3 = r2
            r3.<init>()
            r0.<init>(r1, r2)
            return
        L_0x0022:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "HttpClient must not be null."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.core.o.<init>(okhttp3.OkHttpClient):void");
    }

    o(OkHttpClient okHttpClient, g gVar) {
        this.f35190b = new ConcurrentHashMap<>();
        this.f35191c = new Retrofit.a().a(okHttpClient).a(gVar.f35159a).a(a.a(new com.google.gson.g().a(new SafeListAdapter()).a(new SafeMapAdapter()).a(BindingValues.class, new BindingValuesAdapter()).a())).a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <T> T a(Class<T> cls) {
        if (!this.f35190b.contains(cls)) {
            this.f35190b.putIfAbsent(cls, this.f35191c.a(cls));
        }
        return (T) this.f35190b.get(cls);
    }

    public AccountService getAccountService() {
        return (AccountService) a(AccountService.class);
    }

    public MediaService getMediaService() {
        return (MediaService) a(MediaService.class);
    }

    public StatusesService getStatusesService() {
        return (StatusesService) a(StatusesService.class);
    }
}
