package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegisterListenerMethod;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.UnregisterListenerMethod;
import com.google.android.gms.common.api.internal.zaad;
import com.google.android.gms.common.api.internal.zabn;
import com.google.android.gms.common.api.internal.zace;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi.class */
public class GoogleApi<O extends Api.ApiOptions> implements HasApiKey<O> {
    private final Api<O> mApi;
    private final Context mContext;
    private final int mId;
    private final O zabj;
    private final ApiKey<O> zabk;
    private final Looper zabl;
    private final GoogleApiClient zabm;
    private final StatusExceptionMapper zabn;
    protected final GoogleApiManager zabo;

    @KeepForSdk
    /* renamed from: com.google.android.gms.common.api.GoogleApi$Settings */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings.class */
    public static class C1018Settings {

        /* renamed from: a */
        public final StatusExceptionMapper f7011a;

        /* renamed from: b */
        public final Looper f7012b;

        @KeepForSdk
        /* renamed from: com.google.android.gms.common.api.GoogleApi$Settings$Builder */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings$Builder.class */
        public static class Builder {

            /* renamed from: a */
            private StatusExceptionMapper f7013a;

            /* renamed from: b */
            private Looper f7014b;

            @KeepForSdk
            /* renamed from: a */
            public C1018Settings m15013a() {
                if (this.f7013a == null) {
                    this.f7013a = new ApiExceptionMapper();
                }
                if (this.f7014b == null) {
                    this.f7014b = Looper.getMainLooper();
                }
                return new C1018Settings(this.f7013a, this.f7014b);
            }

            @KeepForSdk
            /* renamed from: b */
            public Builder m15012b(Looper looper) {
                Preconditions.m14522l(looper, "Looper must not be null.");
                this.f7014b = looper;
                return this;
            }

            @KeepForSdk
            /* renamed from: c */
            public Builder m15011c(StatusExceptionMapper statusExceptionMapper) {
                Preconditions.m14522l(statusExceptionMapper, "StatusExceptionMapper must not be null.");
                this.f7013a = statusExceptionMapper;
                return this;
            }
        }

        static {
            new Builder().m15013a();
        }

        @KeepForSdk
        private C1018Settings(StatusExceptionMapper statusExceptionMapper, Account account, Looper looper) {
            this.f7011a = statusExceptionMapper;
            this.f7012b = looper;
        }
    }

    @KeepForSdk
    @MainThread
    public GoogleApi(@NonNull Activity activity, Api<O> api, @Nullable O o, C1018Settings settings) {
        Preconditions.m14522l(activity, "Null activity is not permitted.");
        Preconditions.m14522l(api, "Api must not be null.");
        Preconditions.m14522l(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.mContext = activity.getApplicationContext();
        this.mApi = api;
        this.zabj = o;
        this.zabl = settings.f7012b;
        this.zabk = ApiKey.m14992b(api, o);
        this.zabm = new zabn(this);
        GoogleApiManager l = GoogleApiManager.m14947l(this.mContext);
        this.zabo = l;
        this.mId = l.m14943p();
        this.zabn = settings.f7011a;
        if (!(activity instanceof GoogleApiActivity)) {
            zaad.m14860q(activity, this.zabo, this.zabk);
        }
        this.zabo.m14952g(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleApi(@androidx.annotation.NonNull android.app.Activity r7, com.google.android.gms.common.api.Api<O> r8, @androidx.annotation.Nullable O r9, com.google.android.gms.common.api.internal.StatusExceptionMapper r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = new com.google.android.gms.common.api.GoogleApi$Settings$Builder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m15011c(r1)
            r0 = r11
            r1 = r7
            android.os.Looper r1 = r1.getMainLooper()
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m15012b(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.GoogleApi$Settings r4 = r4.m15013a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.GoogleApi.<init>(android.app.Activity, com.google.android.gms.common.api.Api, com.google.android.gms.common.api.Api$ApiOptions, com.google.android.gms.common.api.internal.StatusExceptionMapper):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public GoogleApi(@NonNull Context context, Api<O> api, Looper looper) {
        Preconditions.m14522l(context, "Null context is not permitted.");
        Preconditions.m14522l(api, "Api must not be null.");
        Preconditions.m14522l(looper, "Looper must not be null.");
        this.mContext = context.getApplicationContext();
        this.mApi = api;
        this.zabj = null;
        this.zabl = looper;
        this.zabk = ApiKey.m14991c(api);
        this.zabm = new zabn(this);
        GoogleApiManager l = GoogleApiManager.m14947l(this.mContext);
        this.zabo = l;
        this.mId = l.m14943p();
        this.zabn = new ApiExceptionMapper();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleApi(@androidx.annotation.NonNull android.content.Context r7, com.google.android.gms.common.api.Api<O> r8, @androidx.annotation.Nullable O r9, android.os.Looper r10, com.google.android.gms.common.api.internal.StatusExceptionMapper r11) {
        /*
            r6 = this;
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = new com.google.android.gms.common.api.GoogleApi$Settings$Builder
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            r1 = r10
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m15012b(r1)
            r0 = r12
            r1 = r11
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m15011c(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r12
            com.google.android.gms.common.api.GoogleApi$Settings r4 = r4.m15013a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.GoogleApi.<init>(android.content.Context, com.google.android.gms.common.api.Api, com.google.android.gms.common.api.Api$ApiOptions, android.os.Looper, com.google.android.gms.common.api.internal.StatusExceptionMapper):void");
    }

    @KeepForSdk
    public GoogleApi(@NonNull Context context, Api<O> api, @Nullable O o, C1018Settings settings) {
        Preconditions.m14522l(context, "Null context is not permitted.");
        Preconditions.m14522l(api, "Api must not be null.");
        Preconditions.m14522l(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.mContext = context.getApplicationContext();
        this.mApi = api;
        this.zabj = o;
        this.zabl = settings.f7012b;
        this.zabk = ApiKey.m14992b(api, o);
        this.zabm = new zabn(this);
        GoogleApiManager l = GoogleApiManager.m14947l(this.mContext);
        this.zabo = l;
        this.mId = l.m14943p();
        this.zabn = settings.f7011a;
        this.zabo.m14952g(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleApi(@androidx.annotation.NonNull android.content.Context r7, com.google.android.gms.common.api.Api<O> r8, @androidx.annotation.Nullable O r9, com.google.android.gms.common.api.internal.StatusExceptionMapper r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = new com.google.android.gms.common.api.GoogleApi$Settings$Builder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m15011c(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.GoogleApi$Settings r4 = r4.m15013a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.GoogleApi.<init>(android.content.Context, com.google.android.gms.common.api.Api, com.google.android.gms.common.api.Api$ApiOptions, com.google.android.gms.common.api.internal.StatusExceptionMapper):void");
    }

    private final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zaa(int i, @NonNull T t) {
        t.m14964s();
        this.zabo.m14951h(this, i, t);
        return t;
    }

    private final <TResult, A extends Api.AnyClient> Task<TResult> zaa(int i, @NonNull TaskApiCall<A, TResult> taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zabo.m14950i(this, i, taskApiCall, taskCompletionSource, this.zabn);
        return taskCompletionSource.m10830a();
    }

    @KeepForSdk
    public GoogleApiClient asGoogleApiClient() {
        return this.zabm;
    }

    @KeepForSdk
    protected ClientSettings.Builder createClientSettingsBuilder() {
        Account account;
        GoogleSignInAccount h;
        GoogleSignInAccount h2;
        ClientSettings.Builder builder = new ClientSettings.Builder();
        O o = this.zabj;
        if (!(o instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (h2 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o).m15028h()) == null) {
            O o2 = this.zabj;
            account = o2 instanceof Api.ApiOptions.HasAccountOptions ? ((Api.ApiOptions.HasAccountOptions) o2).m15029d() : null;
        } else {
            account = h2.m15166d();
        }
        builder.m14569c(account);
        O o3 = this.zabj;
        builder.m14571a((!(o3 instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (h = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o3).m15028h()) == null) ? Collections.emptySet() : h.m15162v0());
        builder.m14568d(this.mContext.getClass().getName());
        builder.m14567e(this.mContext.getPackageName());
        return builder;
    }

    @KeepForSdk
    protected Task<Boolean> disconnectService() {
        return this.zabo.m14939t(this);
    }

    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doBestEffortWrite(@NonNull T t) {
        return (T) zaa(2, (int) t);
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doBestEffortWrite(TaskApiCall<A, TResult> taskApiCall) {
        return zaa(2, taskApiCall);
    }

    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doRead(@NonNull T t) {
        return (T) zaa(0, (int) t);
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doRead(TaskApiCall<A, TResult> taskApiCall) {
        return zaa(0, taskApiCall);
    }

    @KeepForSdk
    @Deprecated
    public <A extends Api.AnyClient, T extends RegisterListenerMethod<A, ?>, U extends UnregisterListenerMethod<A, ?>> Task<Void> doRegisterEventListener(@NonNull T t, U u) {
        Preconditions.m14523k(t);
        Preconditions.m14523k(u);
        Preconditions.m14522l(t.m14870b(), "Listener has already been released.");
        Preconditions.m14522l(u.m14863a(), "Listener has already been released.");
        Preconditions.m14532b(t.m14870b().equals(u.m14863a()), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.zabo.m14955d(this, t, u);
    }

    @KeepForSdk
    public <A extends Api.AnyClient> Task<Void> doRegisterEventListener(@NonNull RegistrationMethods<A, ?> registrationMethods) {
        Preconditions.m14523k(registrationMethods);
        Preconditions.m14522l(registrationMethods.f7119a.m14870b(), "Listener has already been released.");
        Preconditions.m14522l(registrationMethods.f7120b.m14863a(), "Listener has already been released.");
        return this.zabo.m14955d(this, registrationMethods.f7119a, registrationMethods.f7120b);
    }

    @KeepForSdk
    public Task<Boolean> doUnregisterEventListener(@NonNull ListenerHolder.ListenerKey<?> listenerKey) {
        Preconditions.m14522l(listenerKey, "Listener key cannot be null.");
        return this.zabo.m14956c(this, listenerKey);
    }

    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doWrite(@NonNull T t) {
        return (T) zaa(1, (int) t);
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> doWrite(TaskApiCall<A, TResult> taskApiCall) {
        return zaa(1, taskApiCall);
    }

    public final Api<O> getApi() {
        return this.mApi;
    }

    @Override // com.google.android.gms.common.api.HasApiKey
    public ApiKey<O> getApiKey() {
        return this.zabk;
    }

    @KeepForSdk
    public O getApiOptions() {
        return this.zabj;
    }

    @KeepForSdk
    public Context getApplicationContext() {
        return this.mContext;
    }

    public final int getInstanceId() {
        return this.mId;
    }

    @KeepForSdk
    public Looper getLooper() {
        return this.zabl;
    }

    @KeepForSdk
    public <L> ListenerHolder<L> registerListener(@NonNull L l, String str) {
        return ListenerHolders.m14873a(l, this.zabl, str);
    }

    @WorkerThread
    public Api.Client zaa(Looper looper, GoogleApiManager.zaa<O> zaaVar) {
        return this.mApi.m15030d().buildClient(this.mContext, looper, createClientSettingsBuilder().m14570b(), (ClientSettings) this.zabj, (GoogleApiClient.ConnectionCallbacks) zaaVar, (GoogleApiClient.OnConnectionFailedListener) zaaVar);
    }

    public zace zaa(Context context, Handler handler) {
        return new zace(context, handler, createClientSettingsBuilder().m14570b());
    }
}
