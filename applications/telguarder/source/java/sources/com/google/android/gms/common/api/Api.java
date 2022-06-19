package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api.class */
public final class Api<O extends ApiOptions> {
    private final AbstractClientBuilder<?, O> zaa;
    private final ClientKey<?> zab;
    private final String zac;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AbstractClientBuilder.class */
    public static abstract class AbstractClientBuilder<T extends Client, O> extends BaseClientBuilder<T, O> {
        @Deprecated
        public T buildClient(Context context, Looper looper, ClientSettings clientSettings, O o, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return buildClient(context, looper, clientSettings, (ClientSettings) o, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
        }

        public T buildClient(Context context, Looper looper, ClientSettings clientSettings, O o, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClient.class */
    public interface AnyClient {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClientKey.class */
    public static class AnyClientKey<C extends AnyClient> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions.class */
    public interface ApiOptions {
        public static final NoOptions NO_OPTIONS = new NoOptions(null);

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasAccountOptions.class */
        public interface HasAccountOptions extends HasOptions, NotRequiredOptions {
            Account getAccount();
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions.class */
        public interface HasGoogleSignInAccountOptions extends HasOptions {
            GoogleSignInAccount getGoogleSignInAccount();
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasOptions.class */
        public interface HasOptions extends ApiOptions {
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$NoOptions.class */
        public static final class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }

            /* synthetic */ NoOptions(zaa zaaVar) {
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions.class */
        public interface NotRequiredOptions extends ApiOptions {
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$Optional.class */
        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$BaseClientBuilder.class */
    public static abstract class BaseClientBuilder<T extends AnyClient, O> {
        public static final int API_PRIORITY_GAMES = 1;
        public static final int API_PRIORITY_OTHER = Integer.MAX_VALUE;
        public static final int API_PRIORITY_PLUS = 2;

        public List<Scope> getImpliedScopes(O o) {
            return Collections.emptyList();
        }

        public int getPriority() {
            return Integer.MAX_VALUE;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$Client.class */
    public interface Client extends AnyClient {
        void connect(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks);

        void disconnect();

        void disconnect(String str);

        void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        Feature[] getAvailableFeatures();

        String getEndpointPackageName();

        String getLastDisconnectMessage();

        int getMinApkVersion();

        void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set);

        Feature[] getRequiredFeatures();

        Set<Scope> getScopesForConnectionlessNonSignIn();

        IBinder getServiceBrokerBinder();

        Intent getSignInIntent();

        boolean isConnected();

        boolean isConnecting();

        void onUserSignOut(BaseGmsClient.SignOutCallbacks signOutCallbacks);

        boolean providesSignIn();

        boolean requiresAccount();

        boolean requiresGooglePlayServices();

        boolean requiresSignIn();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ClientKey.class */
    public static final class ClientKey<C extends Client> extends AnyClientKey<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends Client> Api(String str, AbstractClientBuilder<C, O> abstractClientBuilder, ClientKey<C> clientKey) {
        Preconditions.checkNotNull(abstractClientBuilder, "Cannot construct an Api with a null ClientBuilder");
        Preconditions.checkNotNull(clientKey, "Cannot construct an Api with a null ClientKey");
        this.zac = str;
        this.zaa = abstractClientBuilder;
        this.zab = clientKey;
    }

    public final BaseClientBuilder<?, O> zaa() {
        return this.zaa;
    }

    public final AbstractClientBuilder<?, O> zab() {
        return this.zaa;
    }

    public final AnyClientKey<?> zac() {
        return this.zab;
    }

    public final String zad() {
        return this.zac;
    }
}
