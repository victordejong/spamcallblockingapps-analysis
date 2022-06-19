package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient;
import com.google.android.gms.common.api.internal.RegisterListenerMethod;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.UnregisterListenerMethod;
import com.google.android.gms.common.api.internal.zaab;
import com.google.android.gms.common.api.internal.zabl;
import com.google.android.gms.common.api.internal.zabp;
import com.google.android.gms.common.api.internal.zacb;
import com.google.android.gms.common.api.internal.zaco;
import com.google.android.gms.common.api.internal.zae;
import com.google.android.gms.common.api.internal.zag;
import com.google.android.gms.common.api.internal.zah;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import p1727n3.p1788g.C26177c;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.RunnableC24960c;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24905a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/GoogleApi.class */
public abstract class GoogleApi<O extends Api.ApiOptions> implements HasApiKey<O> {
    @RecentlyNonNull
    public final GoogleApiManager zaa;
    private final Context zab;
    private final String zac;
    private final Api<O> zad;
    private final O zae;
    private final ApiKey<O> zaf;
    private final Looper zag;
    private final int zah;
    @NotOnlyInitialized
    private final GoogleApiClient zai;
    private final StatusExceptionMapper zaj;

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings.class */
    public static class Settings {
        @RecentlyNonNull
        @KeepForSdk

        /* renamed from: c */
        public static final Settings f5696c = new Builder().m39054a();
        @RecentlyNonNull

        /* renamed from: a */
        public final StatusExceptionMapper f5697a;
        @RecentlyNonNull

        /* renamed from: b */
        public final Looper f5698b;

        @KeepForSdk
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings$Builder.class */
        public static class Builder {

            /* renamed from: a */
            public StatusExceptionMapper f5699a;

            /* renamed from: b */
            public Looper f5700b;

            @RecentlyNonNull
            @KeepForSdk
            /* renamed from: a */
            public Settings m39054a() {
                if (this.f5699a == null) {
                    this.f5699a = new ApiExceptionMapper();
                }
                if (this.f5700b == null) {
                    this.f5700b = Looper.getMainLooper();
                }
                return new Settings(this.f5699a, null, this.f5700b);
            }

            @RecentlyNonNull
            @KeepForSdk
            /* renamed from: b */
            public Builder m39053b(@RecentlyNonNull StatusExceptionMapper statusExceptionMapper) {
                Preconditions.m38897k(statusExceptionMapper, "StatusExceptionMapper must not be null.");
                this.f5699a = statusExceptionMapper;
                return this;
            }
        }

        public Settings(StatusExceptionMapper statusExceptionMapper, Account account, Looper looper) {
            this.f5697a = statusExceptionMapper;
            this.f5698b = looper;
        }
    }

    @KeepForSdk
    public GoogleApi(@RecentlyNonNull Activity activity, @RecentlyNonNull Api<O> api, @RecentlyNonNull O o, @RecentlyNonNull Settings settings) {
        Preconditions.m38897k(activity, "Null activity is not permitted.");
        Preconditions.m38897k(api, "Api must not be null.");
        Preconditions.m38897k(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = activity.getApplicationContext();
        this.zab = applicationContext;
        String zaf = zaf(activity);
        this.zac = zaf;
        this.zad = api;
        this.zae = o;
        this.zag = settings.f5698b;
        ApiKey<O> apiKey = new ApiKey<>(api, o, zaf);
        this.zaf = apiKey;
        this.zai = new zabp(this);
        GoogleApiManager m39031f = GoogleApiManager.m39031f(applicationContext);
        this.zaa = m39031f;
        this.zah = m39031f.f5753h.getAndIncrement();
        this.zaj = settings.f5697a;
        if (!(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            LifecycleFragment m39024c = LifecycleCallback.m39024c(new LifecycleActivity(activity));
            zaab zaabVar = (zaab) m39024c.mo38921q9("ConnectionlessLifecycleHelper", zaab.class);
            zaab zaabVar2 = zaabVar == null ? new zaab(m39024c, m39031f, GoogleApiAvailability.f5673d) : zaabVar;
            Preconditions.m38897k(apiKey, "ApiKey cannot be null");
            zaabVar2.f5782f.add(apiKey);
            m39031f.m39030g(zaabVar2);
        }
        Handler handler = m39031f.f5759n;
        handler.sendMessage(handler.obtainMessage(7, this));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleApi(@androidx.annotation.RecentlyNonNull android.app.Activity r7, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.Api<O> r8, @androidx.annotation.RecentlyNonNull O r9, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.internal.StatusExceptionMapper r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = new com.google.android.gms.common.api.GoogleApi$Settings$Builder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m39053b(r1)
            r0 = r7
            android.os.Looper r0 = r0.getMainLooper()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "Looper must not be null."
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m38897k(r0, r1)
            r0 = r11
            r1 = r10
            r0.f5700b = r1
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.GoogleApi$Settings r4 = r4.m39054a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.GoogleApi.<init>(android.app.Activity, com.google.android.gms.common.api.Api, com.google.android.gms.common.api.Api$ApiOptions, com.google.android.gms.common.api.internal.StatusExceptionMapper):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleApi(@androidx.annotation.RecentlyNonNull android.content.Context r7, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.Api<O> r8, @androidx.annotation.RecentlyNonNull O r9, @androidx.annotation.RecentlyNonNull android.os.Looper r10, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.internal.StatusExceptionMapper r11) {
        /*
            r6 = this;
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = new com.google.android.gms.common.api.GoogleApi$Settings$Builder
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r10
            java.lang.String r1 = "Looper must not be null."
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m38897k(r0, r1)
            r0 = r12
            r1 = r10
            r0.f5700b = r1
            r0 = r12
            r1 = r11
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m39053b(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r12
            com.google.android.gms.common.api.GoogleApi$Settings r4 = r4.m39054a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.GoogleApi.<init>(android.content.Context, com.google.android.gms.common.api.Api, com.google.android.gms.common.api.Api$ApiOptions, android.os.Looper, com.google.android.gms.common.api.internal.StatusExceptionMapper):void");
    }

    @KeepForSdk
    public GoogleApi(@RecentlyNonNull Context context, @RecentlyNonNull Api<O> api, @RecentlyNonNull O o, @RecentlyNonNull Settings settings) {
        Preconditions.m38897k(context, "Null context is not permitted.");
        Preconditions.m38897k(api, "Api must not be null.");
        Preconditions.m38897k(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        this.zab = applicationContext;
        String zaf = zaf(context);
        this.zac = zaf;
        this.zad = api;
        this.zae = o;
        this.zag = settings.f5698b;
        this.zaf = new ApiKey<>(api, o, zaf);
        this.zai = new zabp(this);
        GoogleApiManager m39031f = GoogleApiManager.m39031f(applicationContext);
        this.zaa = m39031f;
        this.zah = m39031f.f5753h.getAndIncrement();
        this.zaj = settings.f5697a;
        Handler handler = m39031f.f5759n;
        handler.sendMessage(handler.obtainMessage(7, this));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleApi(@androidx.annotation.RecentlyNonNull android.content.Context r7, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.Api<O> r8, @androidx.annotation.RecentlyNonNull O r9, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.internal.StatusExceptionMapper r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = new com.google.android.gms.common.api.GoogleApi$Settings$Builder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m39053b(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.GoogleApi$Settings r4 = r4.m39054a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.GoogleApi.<init>(android.content.Context, com.google.android.gms.common.api.Api, com.google.android.gms.common.api.Api$ApiOptions, com.google.android.gms.common.api.internal.StatusExceptionMapper):void");
    }

    private final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zad(int i, T t) {
        t.zak();
        GoogleApiManager googleApiManager = this.zaa;
        Objects.requireNonNull(googleApiManager);
        zae zaeVar = new zae(i, t);
        Handler handler = googleApiManager.f5759n;
        handler.sendMessage(handler.obtainMessage(4, new zacb(zaeVar, googleApiManager.f5754i.get(), this)));
        return t;
    }

    private final <TResult, A extends Api.AnyClient> Task<TResult> zae(int i, TaskApiCall<A, TResult> taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        GoogleApiManager googleApiManager = this.zaa;
        StatusExceptionMapper statusExceptionMapper = this.zaj;
        Objects.requireNonNull(googleApiManager);
        googleApiManager.m39034c(taskCompletionSource, taskApiCall.zab(), this);
        zag zagVar = new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = googleApiManager.f5759n;
        handler.sendMessage(handler.obtainMessage(4, new zacb(zagVar, googleApiManager.f5754i.get(), this)));
        return taskCompletionSource.f6493a;
    }

    private static String zaf(Object obj) {
        if (PlatformVersion.m38774c()) {
            try {
                return (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                return null;
            }
        }
        return null;
    }

    @RecentlyNonNull
    @KeepForSdk
    public GoogleApiClient asGoogleApiClient() {
        return this.zai;
    }

    @RecentlyNonNull
    @KeepForSdk
    public ClientSettings.Builder createClientSettingsBuilder() {
        Account account;
        Set set;
        GoogleSignInAccount m39055V1;
        ClientSettings.Builder builder = new ClientSettings.Builder();
        O o = this.zae;
        if (!(o instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (m39055V1 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o).m39055V1()) == null) {
            O o2 = this.zae;
            account = o2 instanceof Api.ApiOptions.HasAccountOptions ? ((Api.ApiOptions.HasAccountOptions) o2).m39056I() : null;
        } else {
            account = m39055V1.m39128I();
        }
        builder.f5950a = account;
        O o3 = this.zae;
        if (o3 instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) {
            GoogleSignInAccount m39055V12 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o3).m39055V1();
            set = m39055V12 == null ? Collections.emptySet() : m39055V12.m39127o2();
        } else {
            set = Collections.emptySet();
        }
        if (builder.f5951b == null) {
            builder.f5951b = new C26177c<>(0);
        }
        builder.f5951b.addAll(set);
        builder.f5953d = this.zab.getClass().getName();
        builder.f5952c = this.zab.getPackageName();
        return builder;
    }

    @RecentlyNonNull
    @KeepForSdk
    public Task<Boolean> disconnectService() {
        GoogleApiManager googleApiManager = this.zaa;
        Objects.requireNonNull(googleApiManager);
        C24905a c24905a = new C24905a(getApiKey());
        Handler handler = googleApiManager.f5759n;
        handler.sendMessage(handler.obtainMessage(14, c24905a));
        return c24905a.f69805b.f6493a;
    }

    @RecentlyNonNull
    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doBestEffortWrite(@RecentlyNonNull T t) {
        zad(2, t);
        return t;
    }

    @RecentlyNonNull
    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doBestEffortWrite(@RecentlyNonNull TaskApiCall<A, TResult> taskApiCall) {
        return zae(2, taskApiCall);
    }

    @RecentlyNonNull
    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doRead(@RecentlyNonNull T t) {
        zad(0, t);
        return t;
    }

    @RecentlyNonNull
    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doRead(@RecentlyNonNull TaskApiCall<A, TResult> taskApiCall) {
        return zae(0, taskApiCall);
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public <A extends Api.AnyClient, T extends RegisterListenerMethod<A, ?>, U extends UnregisterListenerMethod<A, ?>> Task<Void> doRegisterEventListener(@RecentlyNonNull T t, @RecentlyNonNull U u) {
        Objects.requireNonNull(t, "null reference");
        Objects.requireNonNull(u, "null reference");
        Preconditions.m38897k(t.f5769a.f5765c, "Listener has already been released.");
        Preconditions.m38897k(u.f5779a, "Listener has already been released.");
        Preconditions.m38906b(com.google.android.gms.common.internal.Objects.m38910a(t.f5769a.f5765c, u.f5779a), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.zaa.m39028i(this, t, u, RunnableC24960c.f69903a);
    }

    @RecentlyNonNull
    @KeepForSdk
    public <A extends Api.AnyClient> Task<Void> doRegisterEventListener(@RecentlyNonNull RegistrationMethods<A, ?> registrationMethods) {
        Objects.requireNonNull(registrationMethods, "null reference");
        throw null;
    }

    @RecentlyNonNull
    @KeepForSdk
    public Task<Boolean> doUnregisterEventListener(@RecentlyNonNull ListenerHolder.ListenerKey<?> listenerKey) {
        return doUnregisterEventListener(listenerKey, 0);
    }

    @RecentlyNonNull
    @KeepForSdk
    public Task<Boolean> doUnregisterEventListener(@RecentlyNonNull ListenerHolder.ListenerKey<?> listenerKey, int i) {
        Preconditions.m38897k(listenerKey, "Listener key cannot be null.");
        GoogleApiManager googleApiManager = this.zaa;
        Objects.requireNonNull(googleApiManager);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        googleApiManager.m39034c(taskCompletionSource, i, this);
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = googleApiManager.f5759n;
        handler.sendMessage(handler.obtainMessage(13, new zacb(zahVar, googleApiManager.f5754i.get(), this)));
        return taskCompletionSource.f6493a;
    }

    @RecentlyNonNull
    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doWrite(@RecentlyNonNull T t) {
        zad(1, t);
        return t;
    }

    @RecentlyNonNull
    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doWrite(@RecentlyNonNull TaskApiCall<A, TResult> taskApiCall) {
        return zae(1, taskApiCall);
    }

    @RecentlyNonNull
    public final ApiKey<O> getApiKey() {
        return this.zaf;
    }

    @RecentlyNonNull
    @KeepForSdk
    public O getApiOptions() {
        return this.zae;
    }

    @RecentlyNonNull
    @KeepForSdk
    public Context getApplicationContext() {
        return this.zab;
    }

    @RecentlyNullable
    @KeepForSdk
    public String getContextAttributionTag() {
        return this.zac;
    }

    @RecentlyNullable
    @KeepForSdk
    @Deprecated
    public String getContextFeatureId() {
        return this.zac;
    }

    @RecentlyNonNull
    @KeepForSdk
    public Looper getLooper() {
        return this.zag;
    }

    @RecentlyNonNull
    @KeepForSdk
    public <L> ListenerHolder<L> registerListener(@RecentlyNonNull L l, @RecentlyNonNull String str) {
        return ListenerHolders.m39021a(l, this.zag, str);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.gms.common.api.Api$Client] */
    public final Api.Client zaa(Looper looper, zabl<O> zablVar) {
        ClientSettings m38919a = createClientSettingsBuilder().m38919a();
        Api.AbstractClientBuilder<?, O> abstractClientBuilder = this.zad.f5689a;
        Objects.requireNonNull(abstractClientBuilder, "null reference");
        ?? buildClient = abstractClientBuilder.buildClient(this.zab, looper, m38919a, (ClientSettings) this.zae, (GoogleApiClient.ConnectionCallbacks) zablVar, (GoogleApiClient.OnConnectionFailedListener) zablVar);
        String contextAttributionTag = getContextAttributionTag();
        if (contextAttributionTag != null && (buildClient instanceof BaseGmsClient)) {
            ((BaseGmsClient) buildClient).setAttributionTag(contextAttributionTag);
        }
        if (contextAttributionTag != null && (buildClient instanceof NonGmsServiceBrokerClient)) {
            Objects.requireNonNull((NonGmsServiceBrokerClient) buildClient);
        }
        return buildClient;
    }

    public final int zab() {
        return this.zah;
    }

    public final zaco zac(Context context, Handler handler) {
        return new zaco(context, handler, createClientSettingsBuilder().m38919a());
    }
}
