package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.collection.ArraySet;
import androidx.work.WorkRequest;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.zal;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.telguarder.ApplicationConstants;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager.class */
public class GoogleApiManager implements Handler.Callback {
    public static final Status zaa = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status zab = new Status(4, "The user must be signed in to make this API call.");
    private static final Object zag = new Object();
    private static GoogleApiManager zaj;
    private TelemetryData zah;
    private TelemetryLoggingClient zai;
    private final Context zak;
    private final GoogleApiAvailability zal;
    private final zal zam;
    @NotOnlyInitialized
    private final Handler zat;
    private volatile boolean zau;
    private long zac = ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY;
    private long zad = 120000;
    private long zae = WorkRequest.MIN_BACKOFF_MILLIS;
    private boolean zaf = false;
    private final AtomicInteger zan = new AtomicInteger(1);
    private final AtomicInteger zao = new AtomicInteger(0);
    private final Map<ApiKey<?>, zabl<?>> zap = new ConcurrentHashMap(5, 0.75f, 1);
    private zaab zaq = null;
    private final Set<ApiKey<?>> zar = new ArraySet();
    private final Set<ApiKey<?>> zas = new ArraySet();

    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.zau = true;
        this.zak = context;
        zap zapVar = new zap(looper, this);
        this.zat = zapVar;
        this.zal = googleApiAvailability;
        this.zam = new zal(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.zau = false;
        }
        zapVar.sendMessage(zapVar.obtainMessage(6));
    }

    public static void reportSignOut() {
        synchronized (zag) {
            GoogleApiManager googleApiManager = zaj;
            if (googleApiManager != null) {
                googleApiManager.zao.incrementAndGet();
                Handler handler = googleApiManager.zat;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    private final zabl<?> zaH(GoogleApi<?> googleApi) {
        ApiKey<?> apiKey = googleApi.getApiKey();
        zabl<?> zablVar = this.zap.get(apiKey);
        zabl<?> zablVar2 = zablVar;
        if (zablVar == null) {
            zablVar2 = new zabl<>(this, googleApi);
            this.zap.put(apiKey, zablVar2);
        }
        if (zablVar2.zap()) {
            this.zas.add(apiKey);
        }
        zablVar2.zam();
        return zablVar2;
    }

    private final <T> void zaI(TaskCompletionSource<T> taskCompletionSource, int i, GoogleApi googleApi) {
        zabx zaa2;
        if (i == 0 || (zaa2 = zabx.zaa(this, i, googleApi.getApiKey())) == null) {
            return;
        }
        Task<T> task = taskCompletionSource.getTask();
        Handler handler = this.zat;
        handler.getClass();
        task.addOnCompleteListener(zabf.zaa(handler), zaa2);
    }

    public static Status zaJ(ApiKey<?> apiKey, ConnectionResult connectionResult) {
        String zab2 = apiKey.zab();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(zab2).length() + 63 + String.valueOf(valueOf).length());
        sb.append("API: ");
        sb.append(zab2);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(connectionResult, sb.toString());
    }

    private final void zaK() {
        TelemetryData telemetryData = this.zah;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || zam()) {
                zaL().log(telemetryData);
            }
            this.zah = null;
        }
    }

    private final TelemetryLoggingClient zaL() {
        if (this.zai == null) {
            this.zai = TelemetryLogging.getClient(this.zak);
        }
        return this.zai;
    }

    public static GoogleApiManager zaa(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (zag) {
            if (zaj == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                zaj = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.getInstance());
            }
            googleApiManager = zaj;
        }
        return googleApiManager;
    }

    public static GoogleApiManager zab() {
        GoogleApiManager googleApiManager;
        synchronized (zag) {
            Preconditions.checkNotNull(zaj, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = zaj;
        }
        return googleApiManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x03e6  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r9) {
        /*
            Method dump skipped, instructions count: 1453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.GoogleApiManager.handleMessage(android.os.Message):boolean");
    }

    public final int zac() {
        return this.zan.getAndIncrement();
    }

    public final void zad(GoogleApi<?> googleApi) {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    public final void zae(zaab zaabVar) {
        synchronized (zag) {
            if (this.zaq != zaabVar) {
                this.zaq = zaabVar;
                this.zar.clear();
            }
            this.zar.addAll(zaabVar.zab());
        }
    }

    public final void zaf(zaab zaabVar) {
        synchronized (zag) {
            if (this.zaq == zaabVar) {
                this.zaq = null;
                this.zar.clear();
            }
        }
    }

    public final zabl zag(ApiKey<?> apiKey) {
        return this.zap.get(apiKey);
    }

    public final Task<Map<ApiKey<?>, String>> zah(Iterable<? extends HasApiKey<?>> iterable) {
        zal zalVar = new zal(iterable);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(2, zalVar));
        return zalVar.zab();
    }

    public final void zai() {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final Task<Boolean> zaj(GoogleApi<?> googleApi) {
        zaac zaacVar = new zaac(googleApi.getApiKey());
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(14, zaacVar));
        return zaacVar.zab().getTask();
    }

    public final <O extends Api.ApiOptions> void zak(GoogleApi<O> googleApi, int i, BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zae zaeVar = new zae(i, apiMethodImpl);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(4, new zacb(zaeVar, this.zao.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions, ResultT> void zal(GoogleApi<O> googleApi, int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zaI(taskCompletionSource, taskApiCall.zab(), googleApi);
        zag zagVar = new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(4, new zacb(zagVar, this.zao.get(), googleApi)));
    }

    public final boolean zam() {
        if (this.zaf) {
            return false;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if (config != null && !config.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int zab2 = this.zam.zab(this.zak, 203390000);
        return zab2 == -1 || zab2 == 0;
    }

    public final <O extends Api.ApiOptions> Task<Void> zan(GoogleApi<O> googleApi, RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaI(taskCompletionSource, registerListenerMethod.zab(), googleApi);
        zaf zafVar = new zaf(new zacc(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(8, new zacb(zafVar, this.zao.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends Api.ApiOptions> Task<Boolean> zao(GoogleApi<O> googleApi, ListenerHolder.ListenerKey listenerKey, int i) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaI(taskCompletionSource, i, googleApi);
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(13, new zacb(zahVar, this.zao.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final boolean zap(ConnectionResult connectionResult, int i) {
        return this.zal.zac(this.zak, connectionResult, i);
    }

    public final void zaq(ConnectionResult connectionResult, int i) {
        if (!zap(connectionResult, i)) {
            Handler handler = this.zat;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    public final void zar(MethodInvocation methodInvocation, int i, long j, int i2) {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(18, new zaby(methodInvocation, i, j, i2)));
    }
}
