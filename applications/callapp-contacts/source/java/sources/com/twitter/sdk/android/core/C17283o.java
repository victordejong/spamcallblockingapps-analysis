package com.twitter.sdk.android.core;

import com.google.gson.C15972g;
import com.twitter.sdk.android.core.internal.C17254g;
import com.twitter.sdk.android.core.internal.p485a.C17241e;
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
import retrofit2.p604a.p605a.C21037a;
/* renamed from: com.twitter.sdk.android.core.o */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/o.class */
public class C17283o {

    /* renamed from: b */
    final ConcurrentHashMap<Class, Object> f61057b;

    /* renamed from: c */
    final Retrofit f61058c;

    public C17283o() {
        this(C17241e.m5683a(new OkHttpClient.Builder(), C17288r.m5626a().m5623c()).build(), new C17254g());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C17283o(com.twitter.sdk.android.core.C17292t r6) {
        /*
            r5 = this;
            com.twitter.sdk.android.core.r r0 = com.twitter.sdk.android.core.C17288r.m5626a()
            com.twitter.sdk.android.core.TwitterAuthConfig r0 = r0.f61075e
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r5
            okhttp3.OkHttpClient$Builder r1 = new okhttp3.OkHttpClient$Builder
            r2 = r1
            r2.<init>()
            r2 = r6
            r3 = r7
            okhttp3.OkHttpClient$Builder r1 = com.twitter.sdk.android.core.internal.p485a.C17241e.m5682a(r1, r2, r3)
            okhttp3.OkHttpClient r1 = r1.build()
            com.twitter.sdk.android.core.internal.g r2 = new com.twitter.sdk.android.core.internal.g
            r3 = r2
            r3.<init>()
            r0.<init>(r1, r2)
            return
        L26:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Session must not be null."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.core.C17283o.<init>(com.twitter.sdk.android.core.t):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C17283o(com.twitter.sdk.android.core.C17292t r6, okhttp3.OkHttpClient r7) {
        /*
            r5 = this;
            com.twitter.sdk.android.core.r r0 = com.twitter.sdk.android.core.C17288r.m5626a()
            com.twitter.sdk.android.core.TwitterAuthConfig r0 = r0.f61075e
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L31
            r0 = r7
            if (r0 == 0) goto L27
            r0 = r5
            r1 = r7
            okhttp3.OkHttpClient$Builder r1 = r1.newBuilder()
            r2 = r6
            r3 = r8
            okhttp3.OkHttpClient$Builder r1 = com.twitter.sdk.android.core.internal.p485a.C17241e.m5682a(r1, r2, r3)
            okhttp3.OkHttpClient r1 = r1.build()
            com.twitter.sdk.android.core.internal.g r2 = new com.twitter.sdk.android.core.internal.g
            r3 = r2
            r3.<init>()
            r0.<init>(r1, r2)
            return
        L27:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "HttpClient must not be null."
            r1.<init>(r2)
            throw r0
        L31:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Session must not be null."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.core.C17283o.<init>(com.twitter.sdk.android.core.t, okhttp3.OkHttpClient):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C17283o(okhttp3.OkHttpClient r6) {
        /*
            r5 = this;
            com.twitter.sdk.android.core.r r0 = com.twitter.sdk.android.core.C17288r.m5626a()
            com.twitter.sdk.android.core.e r0 = r0.m5623c()
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L22
            r0 = r5
            r1 = r6
            okhttp3.OkHttpClient$Builder r1 = r1.newBuilder()
            r2 = r7
            okhttp3.OkHttpClient$Builder r1 = com.twitter.sdk.android.core.internal.p485a.C17241e.m5683a(r1, r2)
            okhttp3.OkHttpClient r1 = r1.build()
            com.twitter.sdk.android.core.internal.g r2 = new com.twitter.sdk.android.core.internal.g
            r3 = r2
            r3.<init>()
            r0.<init>(r1, r2)
            return
        L22:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "HttpClient must not be null."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.core.C17283o.<init>(okhttp3.OkHttpClient):void");
    }

    C17283o(OkHttpClient okHttpClient, C17254g c17254g) {
        this.f61057b = new ConcurrentHashMap<>();
        this.f61058c = new Retrofit.C21029a().m97a(okHttpClient).m100a(c17254g.f61007a).m96a(C21037a.m94a(new C15972g().m7959a(new SafeListAdapter()).m7959a(new SafeMapAdapter()).m7957a(BindingValues.class, new BindingValuesAdapter()).m7960a())).m101a();
    }

    /* renamed from: a */
    public final <T> T m5627a(Class<T> cls) {
        if (!this.f61057b.contains(cls)) {
            this.f61057b.putIfAbsent(cls, this.f61058c.m109a(cls));
        }
        return (T) this.f61057b.get(cls);
    }

    public AccountService getAccountService() {
        return (AccountService) m5627a(AccountService.class);
    }

    public MediaService getMediaService() {
        return (MediaService) m5627a(MediaService.class);
    }

    public StatusesService getStatusesService() {
        return (StatusesService) m5627a(StatusesService.class);
    }
}
