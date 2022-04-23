package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.zabi;
import com.google.android.gms.common.api.internal.zacc;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi.class */
public class GoogleApi<O extends Api.ApiOptions> implements HasApiKey<O> {

    /* renamed from: a */
    public final Context f23038a;

    /* renamed from: b */
    public final Api<O> f23039b;

    /* renamed from: c */
    public final O f23040c;

    /* renamed from: d */
    public final ApiKey<O> f23041d;

    /* renamed from: e */
    public final Looper f23042e;

    /* renamed from: f */
    public final int f23043f;
    @NotOnlyInitialized

    /* renamed from: g */
    public final GoogleApiClient f23044g;

    /* renamed from: h */
    public final StatusExceptionMapper f23045h;

    /* renamed from: i */
    public final GoogleApiManager f23046i;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings.class */
    public static class Settings {

        /* renamed from: a */
        public final StatusExceptionMapper f23047a;

        /* renamed from: b */
        public final Looper f23048b;

        @KeepForSdk
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings$Builder.class */
        public static class Builder {

            /* renamed from: a */
            public StatusExceptionMapper f23049a;

            /* renamed from: b */
            public Looper f23050b;

            @KeepForSdk
            /* renamed from: a */
            public Builder m17764a(StatusExceptionMapper statusExceptionMapper) {
                Preconditions.m17287a(statusExceptionMapper, "StatusExceptionMapper must not be null.");
                this.f23049a = statusExceptionMapper;
                return this;
            }

            @KeepForSdk
            /* renamed from: a */
            public Settings m17765a() {
                if (this.f23049a == null) {
                    this.f23049a = new ApiExceptionMapper();
                }
                if (this.f23050b == null) {
                    this.f23050b = Looper.getMainLooper();
                }
                return new Settings(this.f23049a, this.f23050b);
            }
        }

        static {
            new Builder().m17765a();
        }

        @KeepForSdk
        public Settings(StatusExceptionMapper statusExceptionMapper, Account account, Looper looper) {
            this.f23047a = statusExceptionMapper;
            this.f23048b = looper;
        }
    }

    @KeepForSdk
    public GoogleApi(Context context, Api<O> api, O o, Settings settings) {
        Preconditions.m17287a(context, "Null context is not permitted.");
        Preconditions.m17287a(api, "Api must not be null.");
        Preconditions.m17287a(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f23038a = context.getApplicationContext();
        m17770a(context);
        this.f23039b = api;
        this.f23040c = o;
        this.f23042e = settings.f23048b;
        this.f23041d = ApiKey.m17738a(api, o);
        this.f23044g = new zabi(this);
        GoogleApiManager a = GoogleApiManager.m17706a(this.f23038a);
        this.f23046i = a;
        this.f23043f = a.m17707a();
        this.f23045h = settings.f23047a;
        this.f23046i.m17704a((GoogleApi<?>) this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GoogleApi(android.content.Context r7, com.google.android.gms.common.api.Api<O> r8, O r9, com.google.android.gms.common.api.internal.StatusExceptionMapper r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = new com.google.android.gms.common.api.GoogleApi$Settings$Builder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.GoogleApi$Settings$Builder r0 = r0.m17764a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.GoogleApi$Settings r4 = r4.m17765a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.GoogleApi.<init>(android.content.Context, com.google.android.gms.common.api.Api, com.google.android.gms.common.api.Api$ApiOptions, com.google.android.gms.common.api.internal.StatusExceptionMapper):void");
    }

    /* renamed from: a */
    public static String m17770a(Object obj) {
        if (!PlatformVersion.m17054n()) {
            return null;
        }
        try {
            return (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(obj, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final Api.Client m17773a(Looper looper, GoogleApiManager.zaa<O> zaaVar) {
        ClientSettings a = m17768c().m17320a();
        Api.AbstractClientBuilder<?, O> b = this.f23039b.m17786b();
        Preconditions.m17288a(b);
        return b.mo17783a(this.f23038a, looper, a, (ClientSettings) this.f23040c, (GoogleApiClient.ConnectionCallbacks) zaaVar, (GoogleApiClient.OnConnectionFailedListener) zaaVar);
    }

    @Override // com.google.android.gms.common.api.HasApiKey
    /* renamed from: a */
    public ApiKey<O> mo17755a() {
        return this.f23041d;
    }

    /* renamed from: a */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T m17776a(int i, T t) {
        t.m17710e();
        this.f23046i.m17703a(this, i, t);
        return t;
    }

    @KeepForSdk
    /* renamed from: a */
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T m17772a(T t) {
        m17776a(2, (int) t);
        return t;
    }

    /* renamed from: a */
    public final zacc m17774a(Context context, Handler handler) {
        return new zacc(context, handler, m17768c().m17320a());
    }

    /* renamed from: a */
    public final <TResult, A extends Api.AnyClient> Task<TResult> m17775a(int i, TaskApiCall<A, TResult> taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f23046i.m17702a(this, i, taskApiCall, taskCompletionSource, this.f23045h);
        return taskCompletionSource.m8600a();
    }

    @KeepForSdk
    /* renamed from: a */
    public <TResult, A extends Api.AnyClient> Task<TResult> m17771a(TaskApiCall<A, TResult> taskApiCall) {
        return m17775a(0, taskApiCall);
    }

    @KeepForSdk
    /* renamed from: b */
    public GoogleApiClient m17769b() {
        return this.f23044g;
    }

    @KeepForSdk
    /* renamed from: c */
    public ClientSettings.Builder m17768c() {
        Account account;
        GoogleSignInAccount a;
        GoogleSignInAccount a2;
        ClientSettings.Builder builder = new ClientSettings.Builder();
        O o = this.f23040c;
        if (!(o instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (a2 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o).m17780a()) == null) {
            O o2 = this.f23040c;
            account = o2 instanceof Api.ApiOptions.HasAccountOptions ? ((Api.ApiOptions.HasAccountOptions) o2).m17781b() : null;
        } else {
            account = a2.m17881b();
        }
        builder.m17319a(account);
        O o3 = this.f23040c;
        builder.m17317a((!(o3 instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (a = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o3).m17780a()) == null) ? Collections.emptySet() : a.m17885D());
        builder.m17316b(this.f23038a.getClass().getName());
        builder.m17318a(this.f23038a.getPackageName());
        return builder;
    }

    @KeepForSdk
    /* renamed from: d */
    public Looper m17767d() {
        return this.f23042e;
    }

    /* renamed from: e */
    public final int m17766e() {
        return this.f23043f;
    }
}
