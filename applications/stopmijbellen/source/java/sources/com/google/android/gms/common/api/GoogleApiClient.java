package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.ActivityC0455o;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.api.internal.zacv;
import com.google.android.gms.common.api.internal.zak;
import com.google.android.gms.common.api.internal.zas;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zab;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import com.google.android.gms.signin.zae;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.concurrent.GuardedBy;
import p226s.C4251a;
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient.class */
public abstract class GoogleApiClient {
    @RecentlyNonNull
    @KeepForSdk
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;
    @GuardedBy("sAllClients")
    private static final Set<GoogleApiClient> zaa = Collections.newSetFromMap(new WeakHashMap());

    @KeepForSdk
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$Builder.class */
    public static final class Builder {
        private Account zaa;
        private final Set<Scope> zab;
        private final Set<Scope> zac;
        private int zad;
        private View zae;
        private String zaf;
        private String zag;
        private final Map<Api<?>, zab> zah;
        private final Context zai;
        private final Map<Api<?>, Api.ApiOptions> zaj;
        private LifecycleActivity zak;
        private int zal;
        private OnConnectionFailedListener zam;
        private Looper zan;
        private GoogleApiAvailability zao;
        private Api.AbstractClientBuilder<? extends zae, SignInOptions> zap;
        private final ArrayList<ConnectionCallbacks> zaq;
        private final ArrayList<OnConnectionFailedListener> zar;

        @KeepForSdk
        public Builder(@RecentlyNonNull Context context) {
            this.zab = new HashSet();
            this.zac = new HashSet();
            this.zah = new C4251a();
            this.zaj = new C4251a();
            this.zal = -1;
            this.zao = GoogleApiAvailability.getInstance();
            this.zap = zad.zac;
            this.zaq = new ArrayList<>();
            this.zar = new ArrayList<>();
            this.zai = context;
            this.zan = context.getMainLooper();
            this.zaf = context.getPackageName();
            this.zag = context.getClass().getName();
        }

        @KeepForSdk
        public Builder(@RecentlyNonNull Context context, @RecentlyNonNull ConnectionCallbacks connectionCallbacks, @RecentlyNonNull OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            Preconditions.checkNotNull(connectionCallbacks, "Must provide a connected listener");
            this.zaq.add(connectionCallbacks);
            Preconditions.checkNotNull(onConnectionFailedListener, "Must provide a connection failed listener");
            this.zar.add(onConnectionFailedListener);
        }

        private final <O extends Api.ApiOptions> void zaa(Api<O> api, O o, Scope... scopeArr) {
            HashSet hashSet = new HashSet(((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zaa(), "Base client builder must not be null")).getImpliedScopes(o));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.zah.put(api, new zab(hashSet));
        }

        @RecentlyNonNull
        public Builder addApi(@RecentlyNonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            Preconditions.checkNotNull(api, "Api must not be null");
            this.zaj.put(api, null);
            List<Scope> impliedScopes = ((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zaa(), "Base client builder must not be null")).getImpliedScopes(null);
            this.zac.addAll(impliedScopes);
            this.zab.addAll(impliedScopes);
            return this;
        }

        @RecentlyNonNull
        public <O extends Api.ApiOptions.HasOptions> Builder addApi(@RecentlyNonNull Api<O> api, @RecentlyNonNull O o) {
            Preconditions.checkNotNull(api, "Api must not be null");
            Preconditions.checkNotNull(o, "Null options are not permitted for this Api");
            this.zaj.put(api, o);
            List<Scope> impliedScopes = ((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zaa(), "Base client builder must not be null")).getImpliedScopes(o);
            this.zac.addAll(impliedScopes);
            this.zab.addAll(impliedScopes);
            return this;
        }

        @RecentlyNonNull
        public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(@RecentlyNonNull Api<O> api, @RecentlyNonNull O o, @RecentlyNonNull Scope... scopeArr) {
            Preconditions.checkNotNull(api, "Api must not be null");
            Preconditions.checkNotNull(o, "Null options are not permitted for this Api");
            this.zaj.put(api, o);
            zaa(api, o, scopeArr);
            return this;
        }

        @RecentlyNonNull
        public <T extends Api.ApiOptions.NotRequiredOptions> Builder addApiIfAvailable(@RecentlyNonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api, @RecentlyNonNull Scope... scopeArr) {
            Preconditions.checkNotNull(api, "Api must not be null");
            this.zaj.put(api, null);
            zaa(api, null, scopeArr);
            return this;
        }

        @RecentlyNonNull
        public Builder addConnectionCallbacks(@RecentlyNonNull ConnectionCallbacks connectionCallbacks) {
            Preconditions.checkNotNull(connectionCallbacks, "Listener must not be null");
            this.zaq.add(connectionCallbacks);
            return this;
        }

        @RecentlyNonNull
        public Builder addOnConnectionFailedListener(@RecentlyNonNull OnConnectionFailedListener onConnectionFailedListener) {
            Preconditions.checkNotNull(onConnectionFailedListener, "Listener must not be null");
            this.zar.add(onConnectionFailedListener);
            return this;
        }

        @RecentlyNonNull
        public Builder addScope(@RecentlyNonNull Scope scope) {
            Preconditions.checkNotNull(scope, "Scope must not be null");
            this.zab.add(scope);
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder addScopeNames(@RecentlyNonNull String[] strArr) {
            for (String str : strArr) {
                this.zab.add(new Scope(str));
            }
            return this;
        }

        @RecentlyNonNull
        public GoogleApiClient build() {
            Preconditions.checkArgument(!this.zaj.isEmpty(), "must call addApi() to add at least one API");
            ClientSettings buildClientSettings = buildClientSettings();
            Map<Api<?>, zab> zaa = buildClientSettings.zaa();
            C4251a c4251a = new C4251a();
            C4251a c4251a2 = new C4251a();
            ArrayList arrayList = new ArrayList();
            Api<?> api = null;
            boolean z = false;
            for (Api<?> api2 : this.zaj.keySet()) {
                Api.ApiOptions apiOptions = this.zaj.get(api2);
                boolean z2 = zaa.get(api2) != null;
                c4251a.put(api2, Boolean.valueOf(z2));
                zas zasVar = new zas(api2, z2);
                arrayList.add(zasVar);
                Api.AbstractClientBuilder abstractClientBuilder = (Api.AbstractClientBuilder) Preconditions.checkNotNull(api2.zab());
                Api.Client buildClient = abstractClientBuilder.buildClient(this.zai, this.zan, buildClientSettings, (ClientSettings) apiOptions, (ConnectionCallbacks) zasVar, (OnConnectionFailedListener) zasVar);
                c4251a2.put(api2.zac(), buildClient);
                boolean z3 = z;
                if (abstractClientBuilder.getPriority() == 1) {
                    z3 = apiOptions != null;
                }
                z = z3;
                if (buildClient.providesSignIn()) {
                    if (api != null) {
                        String zad = api2.zad();
                        String zad2 = api.zad();
                        throw new IllegalStateException(C0608b.m7625j(new StringBuilder(String.valueOf(zad).length() + 21 + String.valueOf(zad2).length()), zad, " cannot be used with ", zad2));
                    }
                    api = api2;
                    z = z3;
                }
            }
            if (api != null) {
                if (z) {
                    String zad3 = api.zad();
                    throw new IllegalStateException(C0608b.m7625j(new StringBuilder(String.valueOf(zad3).length() + 82), "With using ", zad3, ", GamesOptions can only be specified within GoogleSignInOptions.Builder"));
                }
                Preconditions.checkState(this.zaa == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api.zad());
                Preconditions.checkState(this.zab.equals(this.zac), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api.zad());
            }
            zaaz zaazVar = new zaaz(this.zai, new ReentrantLock(), this.zan, buildClientSettings, this.zao, this.zap, c4251a, this.zaq, this.zar, c4251a2, this.zal, zaaz.zaf(c4251a2.values(), true), arrayList);
            synchronized (GoogleApiClient.zaa) {
                GoogleApiClient.zaa.add(zaazVar);
            }
            if (this.zal >= 0) {
                zak.zaa(this.zak).zab(this.zal, zaazVar, this.zam);
            }
            return zaazVar;
        }

        @RecentlyNonNull
        @VisibleForTesting
        @KeepForSdk
        public ClientSettings buildClientSettings() {
            SignInOptions signInOptions = SignInOptions.zaa;
            Map<Api<?>, Api.ApiOptions> map = this.zaj;
            Api<SignInOptions> api = zad.zag;
            if (map.containsKey(api)) {
                signInOptions = (SignInOptions) this.zaj.get(api);
            }
            return new ClientSettings(this.zaa, this.zab, this.zah, this.zad, this.zae, this.zaf, this.zag, signInOptions, false);
        }

        @RecentlyNonNull
        public Builder enableAutoManage(@RecentlyNonNull ActivityC0455o activityC0455o, int i, OnConnectionFailedListener onConnectionFailedListener) {
            LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) activityC0455o);
            Preconditions.checkArgument(i >= 0, "clientId must be non-negative");
            this.zal = i;
            this.zam = onConnectionFailedListener;
            this.zak = lifecycleActivity;
            return this;
        }

        @RecentlyNonNull
        public Builder enableAutoManage(@RecentlyNonNull ActivityC0455o activityC0455o, OnConnectionFailedListener onConnectionFailedListener) {
            enableAutoManage(activityC0455o, 0, onConnectionFailedListener);
            return this;
        }

        @RecentlyNonNull
        public Builder setAccountName(@RecentlyNonNull String str) {
            this.zaa = str == null ? null : new Account(str, AccountType.GOOGLE);
            return this;
        }

        @RecentlyNonNull
        public Builder setGravityForPopups(int i) {
            this.zad = i;
            return this;
        }

        @RecentlyNonNull
        public Builder setHandler(@RecentlyNonNull Handler handler) {
            Preconditions.checkNotNull(handler, "Handler must not be null");
            this.zan = handler.getLooper();
            return this;
        }

        @RecentlyNonNull
        public Builder setViewForPopups(@RecentlyNonNull View view) {
            Preconditions.checkNotNull(view, "View must not be null");
            this.zae = view;
            return this;
        }

        @RecentlyNonNull
        public Builder useDefaultAccount() {
            setAccountName("<<default account>>");
            return this;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks.class */
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener.class */
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    public static void dumpAll(@RecentlyNonNull String str, @RecentlyNonNull FileDescriptor fileDescriptor, @RecentlyNonNull PrintWriter printWriter, @RecentlyNonNull String[] strArr) {
        Set<GoogleApiClient> set = zaa;
        synchronized (set) {
            String concat = String.valueOf(str).concat("  ");
            int i = 0;
            for (GoogleApiClient googleApiClient : set) {
                printWriter.append((CharSequence) str).append("GoogleApiClient#").println(i);
                googleApiClient.dump(concat, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    @RecentlyNonNull
    @KeepForSdk
    public static Set<GoogleApiClient> getAllClients() {
        Set<GoogleApiClient> set = zaa;
        synchronized (set) {
        }
        return set;
    }

    @RecentlyNonNull
    public abstract ConnectionResult blockingConnect();

    @RecentlyNonNull
    public abstract ConnectionResult blockingConnect(long j, @RecentlyNonNull TimeUnit timeUnit);

    @RecentlyNonNull
    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(@RecentlyNonNull String str, @RecentlyNonNull FileDescriptor fileDescriptor, @RecentlyNonNull PrintWriter printWriter, @RecentlyNonNull String[] strArr);

    @RecentlyNonNull
    @KeepForSdk
    public <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(@RecentlyNonNull T t) {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(@RecentlyNonNull T t) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public <C extends Api.Client> C getClient(@RecentlyNonNull Api.AnyClientKey<C> anyClientKey) {
        throw new UnsupportedOperationException();
    }

    public abstract ConnectionResult getConnectionResult(@RecentlyNonNull Api<?> api);

    @RecentlyNonNull
    @KeepForSdk
    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    @KeepForSdk
    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public boolean hasApi(@RecentlyNonNull Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(@RecentlyNonNull Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(@RecentlyNonNull ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(@RecentlyNonNull OnConnectionFailedListener onConnectionFailedListener);

    @KeepForSdk
    public boolean maybeSignIn(@RecentlyNonNull SignInConnectionListener signInConnectionListener) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public void maybeSignOut() {
        throw new UnsupportedOperationException();
    }

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(@RecentlyNonNull ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(@RecentlyNonNull OnConnectionFailedListener onConnectionFailedListener);

    @RecentlyNonNull
    @KeepForSdk
    public <L> ListenerHolder<L> registerListener(@RecentlyNonNull L l) {
        throw new UnsupportedOperationException();
    }

    public abstract void stopAutoManage(@RecentlyNonNull ActivityC0455o activityC0455o);

    public abstract void unregisterConnectionCallbacks(@RecentlyNonNull ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(@RecentlyNonNull OnConnectionFailedListener onConnectionFailedListener);

    public void zao(zacv zacvVar) {
        throw new UnsupportedOperationException();
    }

    public void zap(zacv zacvVar) {
        throw new UnsupportedOperationException();
    }
}
