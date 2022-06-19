package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.api.internal.zacv;
import com.google.android.gms.common.api.internal.zak;
import com.google.android.gms.common.api.internal.zas;
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
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24936o0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24938p0;
@KeepForSdk
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient.class */
public abstract class GoogleApiClient {

    /* renamed from: a */
    public static final Set<GoogleApiClient> f5703a = Collections.newSetFromMap(new WeakHashMap());

    @KeepForSdk
    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$Builder.class */
    public static final class Builder {

        /* renamed from: c */
        public String f5706c;

        /* renamed from: d */
        public String f5707d;

        /* renamed from: f */
        public final Context f5709f;

        /* renamed from: h */
        public LifecycleActivity f5711h;

        /* renamed from: j */
        public OnConnectionFailedListener f5713j;

        /* renamed from: k */
        public Looper f5714k;

        /* renamed from: a */
        public final Set<Scope> f5704a = new HashSet();

        /* renamed from: b */
        public final Set<Scope> f5705b = new HashSet();

        /* renamed from: e */
        public final Map<Api<?>, zab> f5708e = new C26174a();

        /* renamed from: g */
        public final Map<Api<?>, Api.ApiOptions> f5710g = new C26174a();

        /* renamed from: i */
        public int f5712i = -1;

        /* renamed from: l */
        public GoogleApiAvailability f5715l = GoogleApiAvailability.f5673d;

        /* renamed from: m */
        public Api.AbstractClientBuilder<? extends zae, SignInOptions> f5716m = zad.f6468c;

        /* renamed from: n */
        public final ArrayList<ConnectionCallbacks> f5717n = new ArrayList<>();

        /* renamed from: o */
        public final ArrayList<OnConnectionFailedListener> f5718o = new ArrayList<>();

        @KeepForSdk
        public Builder(@RecentlyNonNull Context context) {
            this.f5709f = context;
            this.f5714k = context.getMainLooper();
            this.f5706c = context.getPackageName();
            this.f5707d = context.getClass().getName();
        }

        @RecentlyNonNull
        /* renamed from: a */
        public <O extends Api.ApiOptions.HasOptions> Builder m39051a(@RecentlyNonNull Api<O> api, @RecentlyNonNull O o) {
            Preconditions.m38897k(api, "Api must not be null");
            Preconditions.m38897k(o, "Null options are not permitted for this Api");
            this.f5710g.put(api, o);
            Api.AbstractClientBuilder<?, O> abstractClientBuilder = api.f5689a;
            Preconditions.m38897k(abstractClientBuilder, "Base client builder must not be null");
            List<Scope> impliedScopes = abstractClientBuilder.getImpliedScopes(o);
            this.f5705b.addAll(impliedScopes);
            this.f5704a.addAll(impliedScopes);
            return this;
        }

        /* JADX WARN: Type inference failed for: r0v106, types: [com.google.android.gms.common.api.Api$Client, java.lang.Object] */
        @RecentlyNonNull
        /* renamed from: b */
        public GoogleApiClient m39050b() {
            Preconditions.m38906b(!this.f5710g.isEmpty(), "must call addApi() to add at least one API");
            ClientSettings m39049c = m39049c();
            Map<Api<?>, zab> map = m39049c.f5945d;
            C26174a c26174a = new C26174a();
            C26174a c26174a2 = new C26174a();
            ArrayList arrayList = new ArrayList();
            Iterator<Api<?>> it = this.f5710g.keySet().iterator();
            Api<?> api = null;
            boolean z = false;
            while (true) {
                boolean z2 = true;
                if (!it.hasNext()) {
                    if (api != null) {
                        if (z) {
                            String str = api.f5691c;
                            throw new IllegalStateException(C22128a.m8610j(new StringBuilder(String.valueOf(str).length() + 82), "With using ", str, ", GamesOptions can only be specified within GoogleSignInOptions.Builder"));
                        }
                        Preconditions.m38894n(true, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api.f5691c);
                        Preconditions.m38894n(this.f5704a.equals(this.f5705b), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api.f5691c);
                    }
                    boolean z3 = true;
                    zaaz zaazVar = new zaaz(this.f5709f, new ReentrantLock(), this.f5714k, m39049c, this.f5715l, this.f5716m, c26174a, this.f5717n, this.f5718o, c26174a2, this.f5712i, zaaz.m38989w(c26174a2.values(), true), arrayList);
                    Set<GoogleApiClient> set = GoogleApiClient.f5703a;
                    synchronized (set) {
                        set.add(zaazVar);
                    }
                    if (this.f5712i >= 0) {
                        LifecycleFragment m39024c = LifecycleCallback.m39024c(this.f5711h);
                        zak zakVar = (zak) m39024c.mo38921q9("AutoManageHelper", zak.class);
                        if (zakVar == null) {
                            zakVar = new zak(m39024c);
                        }
                        int i = this.f5712i;
                        OnConnectionFailedListener onConnectionFailedListener = this.f5713j;
                        Preconditions.m38897k(zaazVar, "GoogleApiClient instance cannot be null");
                        if (zakVar.f5898f.indexOfKey(i) >= 0) {
                            z3 = false;
                        }
                        StringBuilder sb = new StringBuilder(54);
                        sb.append("Already managing a GoogleApiClient with id ");
                        sb.append(i);
                        Preconditions.m38895m(z3, sb.toString());
                        C24938p0 c24938p0 = zakVar.f5900c.get();
                        String.valueOf(c24938p0).length();
                        C24936o0 c24936o0 = new C24936o0(zakVar, i, zaazVar, onConnectionFailedListener);
                        zaazVar.f5810c.m38826c(c24936o0);
                        zakVar.f5898f.put(i, c24936o0);
                        if (zakVar.f5899b && c24938p0 == null) {
                            String.valueOf(zaazVar).length();
                            zaazVar.mo39000e();
                        }
                    }
                    return zaazVar;
                }
                Api<?> next = it.next();
                Api.ApiOptions apiOptions = this.f5710g.get(next);
                if (map.get(next) == null) {
                    z2 = false;
                }
                c26174a.put(next, Boolean.valueOf(z2));
                zas zasVar = new zas(next, z2);
                arrayList.add(zasVar);
                Api.AbstractClientBuilder<?, ?> abstractClientBuilder = next.f5689a;
                Objects.requireNonNull(abstractClientBuilder, "null reference");
                ?? buildClient = abstractClientBuilder.buildClient(this.f5709f, this.f5714k, m39049c, (ClientSettings) apiOptions, (ConnectionCallbacks) zasVar, (OnConnectionFailedListener) zasVar);
                c26174a2.put(next.f5690b, buildClient);
                if (abstractClientBuilder.getPriority() == 1) {
                    z = apiOptions != null;
                }
                Api<?> api2 = api;
                if (buildClient.providesSignIn()) {
                    if (api != null) {
                        String str2 = next.f5691c;
                        String str3 = api.f5691c;
                        throw new IllegalStateException(C22128a.m8610j(new StringBuilder(String.valueOf(str2).length() + 21 + String.valueOf(str3).length()), str2, " cannot be used with ", str3));
                    }
                    api2 = next;
                }
                api = api2;
            }
        }

        @RecentlyNonNull
        @VisibleForTesting
        @KeepForSdk
        /* renamed from: c */
        public ClientSettings m39049c() {
            SignInOptions signInOptions = SignInOptions.a;
            Map<Api<?>, Api.ApiOptions> map = this.f5710g;
            Api<SignInOptions> api = zad.f6470e;
            if (map.containsKey(api)) {
                signInOptions = (SignInOptions) this.f5710g.get(api);
            }
            return new ClientSettings(null, this.f5704a, this.f5708e, 0, null, this.f5706c, this.f5707d, signInOptions);
        }
    }

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks.class */
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
    }

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener.class */
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: j */
    public static Set<GoogleApiClient> m39052j() {
        Set<GoogleApiClient> set = f5703a;
        synchronized (set) {
        }
        return set;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public abstract ConnectionResult mo39001d(long j, @RecentlyNonNull TimeUnit timeUnit);

    /* renamed from: e */
    public abstract void mo39000e();

    /* renamed from: f */
    public abstract void mo38999f();

    /* renamed from: g */
    public abstract void mo38998g(@RecentlyNonNull String str, @RecentlyNonNull FileDescriptor fileDescriptor, @RecentlyNonNull PrintWriter printWriter, @RecentlyNonNull String[] strArr);

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: h */
    public <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo38957h(@RecentlyNonNull T t) {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: i */
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo38956i(@RecentlyNonNull T t) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    /* renamed from: k */
    public <C extends Api.Client> C mo38997k(@RecentlyNonNull Api.AnyClientKey<C> anyClientKey) {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: l */
    public Context mo38955l() {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: m */
    public Looper mo38954m() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: n */
    public abstract boolean mo38996n();

    /* renamed from: o */
    public abstract boolean mo38995o();

    @KeepForSdk
    /* renamed from: p */
    public boolean mo38994p(@RecentlyNonNull SignInConnectionListener signInConnectionListener) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    /* renamed from: q */
    public void mo38993q() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: r */
    public abstract void mo38992r(@RecentlyNonNull ConnectionCallbacks connectionCallbacks);

    /* renamed from: s */
    public abstract void mo38991s(@RecentlyNonNull OnConnectionFailedListener onConnectionFailedListener);

    /* renamed from: t */
    public void mo38953t(zacv zacvVar) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: u */
    public void mo38952u(zacv zacvVar) {
        throw new UnsupportedOperationException();
    }
}
