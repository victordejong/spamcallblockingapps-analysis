package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaw.class */
public final class zaw<O extends Api.ApiOptions> extends GoogleApi<O> {

    /* renamed from: a */
    private final Api.Client f7356a;

    /* renamed from: b */
    private final zap f7357b;

    /* renamed from: c */
    private final ClientSettings f7358c;

    /* renamed from: d */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f7359d;

    public zaw(@NonNull Context context, Api<O> api, Looper looper, @NonNull Api.Client client, @NonNull zap zapVar, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder) {
        super(context, api, looper);
        this.f7356a = client;
        this.f7357b = zapVar;
        this.f7358c = clientSettings;
        this.f7359d = abstractClientBuilder;
        this.zabo.m14952g(this);
    }

    /* renamed from: a */
    public final Api.Client m14658a() {
        return this.f7356a;
    }

    @Override // com.google.android.gms.common.api.GoogleApi
    public final Api.Client zaa(Looper looper, GoogleApiManager.zaa<O> zaaVar) {
        this.f7357b.m14713d(zaaVar);
        return this.f7356a;
    }

    @Override // com.google.android.gms.common.api.GoogleApi
    public final zace zaa(Context context, Handler handler) {
        return new zace(context, handler, this.f7358c, this.f7359d);
    }
}
