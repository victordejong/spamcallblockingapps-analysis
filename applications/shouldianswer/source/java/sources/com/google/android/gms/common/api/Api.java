package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
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
    private final String mName;
    private final AbstractClientBuilder<?, O> zaau;
    private final ClientKey<?> zaaw;
    private final zaa<?, O> zaav = null;
    private final zab<?> zaax = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AbstractClientBuilder.class */
    public static abstract class AbstractClientBuilder<T extends Client, O> extends BaseClientBuilder<T, O> {
        public abstract T buildClient(Context context, Looper looper, ClientSettings clientSettings, O o, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClient.class */
    public interface AnyClient {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClientKey.class */
    public static class AnyClientKey<C extends AnyClient> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions.class */
    public interface ApiOptions {

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
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions.class */
        public interface NotRequiredOptions extends ApiOptions {
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$Optional.class */
        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$BaseClientBuilder.class */
    public static class BaseClientBuilder<T extends AnyClient, O> {
        public static final int API_PRIORITY_GAMES = 1;
        public static final int API_PRIORITY_OTHER = Integer.MAX_VALUE;
        public static final int API_PRIORITY_PLUS = 2;

        public List<Scope> getImpliedScopes(O o) {
            return Collections.emptyList();
        }

        public int getPriority() {
            return API_PRIORITY_OTHER;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$Client.class */
    public interface Client extends AnyClient {
        void connect(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks);

        void disconnect();

        void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        Feature[] getAvailableFeatures();

        String getEndpointPackageName();

        int getMinApkVersion();

        void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set);

        Feature[] getRequiredFeatures();

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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$SimpleClient.class */
    public interface SimpleClient<T extends IInterface> extends AnyClient {
        T createServiceInterface(IBinder iBinder);

        Context getContext();

        String getServiceDescriptor();

        String getStartServiceAction();

        void setState(int i, T t);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$zaa.class */
    public static class zaa<T extends SimpleClient, O> extends BaseClientBuilder<T, O> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$zab.class */
    public static final class zab<C extends SimpleClient> extends AnyClientKey<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends Client> Api(String str, AbstractClientBuilder<C, O> abstractClientBuilder, ClientKey<C> clientKey) {
        Preconditions.checkNotNull(abstractClientBuilder, "Cannot construct an Api with a null ClientBuilder");
        Preconditions.checkNotNull(clientKey, "Cannot construct an Api with a null ClientKey");
        this.mName = str;
        this.zaau = abstractClientBuilder;
        this.zaaw = clientKey;
    }

    public final AnyClientKey<?> getClientKey() {
        ClientKey<?> clientKey = this.zaaw;
        if (clientKey != null) {
            return clientKey;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    public final String getName() {
        return this.mName;
    }

    public final BaseClientBuilder<?, O> zah() {
        return this.zaau;
    }

    public final AbstractClientBuilder<?, O> zai() {
        Preconditions.checkState(this.zaau != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.zaau;
    }
}
