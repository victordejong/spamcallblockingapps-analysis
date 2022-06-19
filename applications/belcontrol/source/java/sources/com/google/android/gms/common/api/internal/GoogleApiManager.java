package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zal;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager.class */
public class GoogleApiManager implements Handler.Callback {
    public static final Status zaa = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status zab = new Status(4, "The user must be signed in to make this API call.");
    private static final Object zaf = new Object();
    @GuardedBy("lock")
    private static GoogleApiManager zag;
    private final Context zah;
    private final GoogleApiAvailability zai;
    private final zal zaj;
    @NotOnlyInitialized
    private final Handler zaq;
    private volatile boolean zar;
    private long zac = 5000;
    private long zad = 120000;
    private long zae = 10000;
    private final AtomicInteger zak = new AtomicInteger(1);
    private final AtomicInteger zal = new AtomicInteger(0);
    private final Map<ApiKey<?>, zaa<?>> zam = new ConcurrentHashMap(5, 0.75f, 1);
    @GuardedBy("lock")
    private zay zan = null;
    @GuardedBy("lock")
    private final Set<ApiKey<?>> zao = new C0284c4();
    private final Set<ApiKey<?>> zap = new C0284c4();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zac.class */
    public static final class zac {
        private final ApiKey<?> zaa;
        private final Feature zab;

        private zac(ApiKey<?> apiKey, Feature feature) {
            this.zaa = apiKey;
            this.zab = feature;
        }

        public /* synthetic */ zac(ApiKey apiKey, Feature feature, zabc zabcVar) {
            this(apiKey, feature);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof zac)) {
                return false;
            }
            zac zacVar = (zac) obj;
            return Objects.equal(this.zaa, zacVar.zaa) && Objects.equal(this.zab, zacVar.zab);
        }

        public final int hashCode() {
            return Objects.hashCode(this.zaa, this.zab);
        }

        public final String toString() {
            return Objects.toStringHelper(this).add("key", this.zaa).add("feature", this.zab).toString();
        }
    }

    @KeepForSdk
    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.zar = true;
        this.zah = context;
        zap zapVar = new zap(looper, this);
        this.zaq = zapVar;
        this.zai = googleApiAvailability;
        this.zaj = new zal(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.zar = false;
        }
        zapVar.sendMessage(zapVar.obtainMessage(6));
    }

    @KeepForSdk
    public static void reportSignOut() {
        synchronized (zaf) {
            GoogleApiManager googleApiManager = zag;
            if (googleApiManager != null) {
                googleApiManager.zal.incrementAndGet();
                Handler handler = googleApiManager.zaq;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    public static GoogleApiManager zaa() {
        GoogleApiManager googleApiManager;
        synchronized (zaf) {
            Preconditions.checkNotNull(zag, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = zag;
        }
        return googleApiManager;
    }

    public static GoogleApiManager zaa(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (zaf) {
            if (zag == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                zag = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.getInstance());
            }
            googleApiManager = zag;
        }
        return googleApiManager;
    }

    private final zaa<?> zac(GoogleApi<?> googleApi) {
        ApiKey<?> apiKey = googleApi.getApiKey();
        zaa<?> zaaVar = this.zam.get(apiKey);
        zaa<?> zaaVar2 = zaaVar;
        if (zaaVar == null) {
            zaaVar2 = new zaa<>(this, googleApi);
            this.zam.put(apiKey, zaaVar2);
        }
        if (zaaVar2.zak()) {
            this.zap.add(apiKey);
        }
        zaaVar2.zai();
        return zaaVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02e1  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r7) {
        /*
            Method dump skipped, instructions count: 1185
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.GoogleApiManager.handleMessage(android.os.Message):boolean");
    }

    public final <O extends Api.ApiOptions> Task<Boolean> zaa(GoogleApi<O> googleApi, ListenerHolder.ListenerKey<?> listenerKey) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zag zagVar = new zag(listenerKey, taskCompletionSource);
        Handler handler = this.zaq;
        handler.sendMessage(handler.obtainMessage(13, new zabr(zagVar, this.zal.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends Api.ApiOptions> Task<Void> zaa(GoogleApi<O> googleApi, RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zae zaeVar = new zae(new zabs(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource);
        Handler handler = this.zaq;
        handler.sendMessage(handler.obtainMessage(8, new zabr(zaeVar, this.zal.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final Task<Map<ApiKey<?>, String>> zaa(Iterable<? extends HasApiKey<?>> iterable) {
        zaj zajVar = new zaj(iterable);
        Handler handler = this.zaq;
        handler.sendMessage(handler.obtainMessage(2, zajVar));
        return zajVar.zab();
    }

    public final void zaa(GoogleApi<?> googleApi) {
        Handler handler = this.zaq;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    public final <O extends Api.ApiOptions> void zaa(GoogleApi<O> googleApi, int i, BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zaf zafVar = new zaf(i, apiMethodImpl);
        Handler handler = this.zaq;
        handler.sendMessage(handler.obtainMessage(4, new zabr(zafVar, this.zal.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions, ResultT> void zaa(GoogleApi<O> googleApi, int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zah zahVar = new zah(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.zaq;
        handler.sendMessage(handler.obtainMessage(4, new zabr(zahVar, this.zal.get(), googleApi)));
    }

    public final void zaa(zay zayVar) {
        synchronized (zaf) {
            if (this.zan != zayVar) {
                this.zan = zayVar;
                this.zao.clear();
            }
            this.zao.addAll(zayVar.zac());
        }
    }

    public final boolean zaa(ConnectionResult connectionResult, int i) {
        return this.zai.zaa(this.zah, connectionResult, i);
    }

    public final int zab() {
        return this.zak.getAndIncrement();
    }

    public final Task<Boolean> zab(GoogleApi<?> googleApi) {
        zaz zazVar = new zaz(googleApi.getApiKey());
        Handler handler = this.zaq;
        handler.sendMessage(handler.obtainMessage(14, zazVar));
        return zazVar.zab().getTask();
    }

    public final void zab(ConnectionResult connectionResult, int i) {
        if (!zaa(connectionResult, i)) {
            Handler handler = this.zaq;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    public final void zab(zay zayVar) {
        synchronized (zaf) {
            if (this.zan == zayVar) {
                this.zan = null;
                this.zao.clear();
            }
        }
    }

    public final void zac() {
        Handler handler = this.zaq;
        handler.sendMessage(handler.obtainMessage(3));
    }
}
