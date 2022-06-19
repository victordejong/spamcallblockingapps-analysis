package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api.class */
public final class Api<O extends ApiOptions> {
    private final AbstractClientBuilder<?, O> zaa;
    private final ClientKey<?> zac;
    private final String zae;
    private final zac<?, O> zab = null;
    private final zab<?> zad = null;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClient.class */
    public interface AnyClient {
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClientKey.class */
    public static class AnyClientKey<C extends AnyClient> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions.class */
    public interface ApiOptions {
        public static final NoOptions NO_OPTIONS = new NoOptions((zaa) null);
    }

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$BaseClientBuilder.class */
    public static class BaseClientBuilder<T extends AnyClient, O> {
        @KeepForSdk
        public static final int API_PRIORITY_GAMES = 1;
        @KeepForSdk
        public static final int API_PRIORITY_OTHER = Integer.MAX_VALUE;
        @KeepForSdk
        public static final int API_PRIORITY_PLUS = 2;

        @KeepForSdk
        public List<Scope> getImpliedScopes(O o) {
            return Collections.emptyList();
        }

        @KeepForSdk
        public int getPriority() {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends Client> Api(String str, AbstractClientBuilder<C, O> abstractClientBuilder, ClientKey<C> clientKey) {
        Preconditions.checkNotNull(abstractClientBuilder, "Cannot construct an Api with a null ClientBuilder");
        Preconditions.checkNotNull(clientKey, "Cannot construct an Api with a null ClientKey");
        this.zae = str;
        this.zaa = abstractClientBuilder;
        this.zac = clientKey;
    }

    public final BaseClientBuilder<?, O> zaa() {
        return (BaseClientBuilder) Preconditions.checkNotNull(this.zaa);
    }

    public final AbstractClientBuilder<?, O> zab() {
        Preconditions.checkState(this.zaa != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.zaa;
    }

    public final AnyClientKey<?> zac() {
        ClientKey<?> clientKey = this.zac;
        if (clientKey != null) {
            return clientKey;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    public final String zad() {
        return this.zae;
    }
}
