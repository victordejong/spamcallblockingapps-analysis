package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.C24959b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api.class */
public final class Api<O extends ApiOptions> {

    /* renamed from: a */
    public final AbstractClientBuilder<?, O> f5689a;

    /* renamed from: b */
    public final ClientKey<?> f5690b;

    /* renamed from: c */
    public final String f5691c;

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$AbstractClientBuilder.class */
    public static abstract class AbstractClientBuilder<T extends Client, O> extends BaseClientBuilder<T, O> {
        @RecentlyNonNull
        @KeepForSdk
        @Deprecated
        public T buildClient(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull ClientSettings clientSettings, @RecentlyNonNull O o, @RecentlyNonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks, @RecentlyNonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return buildClient(context, looper, clientSettings, (ClientSettings) o, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
        }

        @RecentlyNonNull
        @KeepForSdk
        public T buildClient(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull ClientSettings clientSettings, @RecentlyNonNull O o, @RecentlyNonNull ConnectionCallbacks connectionCallbacks, @RecentlyNonNull OnConnectionFailedListener onConnectionFailedListener) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClient.class */
    public interface AnyClient {
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClientKey.class */
    public static class AnyClientKey<C extends AnyClient> {
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions.class */
    public interface ApiOptions {
        @RecentlyNonNull

        /* renamed from: a0 */
        public static final NoOptions f5692a0 = new NoOptions(null);

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasAccountOptions.class */
        public interface HasAccountOptions extends HasOptions, NotRequiredOptions {
            @RecentlyNonNull
            /* renamed from: I */
            Account m39056I();
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions.class */
        public interface HasGoogleSignInAccountOptions extends HasOptions {
            @RecentlyNullable
            /* renamed from: V1 */
            GoogleSignInAccount m39055V1();
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasOptions.class */
        public interface HasOptions extends ApiOptions {
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$NoOptions.class */
        public static final class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }

            public /* synthetic */ NoOptions(C24959b c24959b) {
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions.class */
        public interface NotRequiredOptions extends ApiOptions {
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$Optional.class */
        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$BaseClientBuilder.class */
    public static abstract class BaseClientBuilder<T extends AnyClient, O> {
        @KeepForSdk
        public static final int API_PRIORITY_GAMES = 1;
        @KeepForSdk
        public static final int API_PRIORITY_OTHER = Integer.MAX_VALUE;
        @KeepForSdk
        public static final int API_PRIORITY_PLUS = 2;

        @RecentlyNonNull
        @KeepForSdk
        public List<Scope> getImpliedScopes(O o) {
            return Collections.emptyList();
        }

        @KeepForSdk
        public int getPriority() {
            return Integer.MAX_VALUE;
        }
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$Client.class */
    public interface Client extends AnyClient {
        @KeepForSdk
        void connect(@RecentlyNonNull BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks);

        @KeepForSdk
        void disconnect();

        @KeepForSdk
        void disconnect(@RecentlyNonNull String str);

        @KeepForSdk
        void dump(@RecentlyNonNull String str, FileDescriptor fileDescriptor, @RecentlyNonNull PrintWriter printWriter, String[] strArr);

        @RecentlyNonNull
        @KeepForSdk
        Feature[] getAvailableFeatures();

        @RecentlyNonNull
        @KeepForSdk
        String getEndpointPackageName();

        @RecentlyNullable
        @KeepForSdk
        String getLastDisconnectMessage();

        @KeepForSdk
        int getMinApkVersion();

        @KeepForSdk
        void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set);

        @KeepForSdk
        Set<Scope> getScopesForConnectionlessNonSignIn();

        @RecentlyNonNull
        @KeepForSdk
        Intent getSignInIntent();

        @KeepForSdk
        boolean isConnected();

        @KeepForSdk
        boolean isConnecting();

        @KeepForSdk
        void onUserSignOut(@RecentlyNonNull BaseGmsClient.SignOutCallbacks signOutCallbacks);

        @KeepForSdk
        boolean providesSignIn();

        @KeepForSdk
        boolean requiresGooglePlayServices();

        @KeepForSdk
        boolean requiresSignIn();
    }

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Api$ClientKey.class */
    public static final class ClientKey<C extends Client> extends AnyClientKey<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @KeepForSdk
    public <C extends Client> Api(@RecentlyNonNull String str, @RecentlyNonNull AbstractClientBuilder<C, O> abstractClientBuilder, @RecentlyNonNull ClientKey<C> clientKey) {
        Preconditions.m38897k(abstractClientBuilder, "Cannot construct an Api with a null ClientBuilder");
        Preconditions.m38897k(clientKey, "Cannot construct an Api with a null ClientKey");
        this.f5691c = str;
        this.f5689a = abstractClientBuilder;
        this.f5690b = clientKey;
    }
}
