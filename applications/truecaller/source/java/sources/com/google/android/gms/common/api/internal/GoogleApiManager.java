package com.google.android.gms.common.api.internal;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.common.internal.service.zao;
import com.google.android.gms.common.internal.zal;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import e.m.a.f.q.b0;
import e.m.a.f.q.o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import p1727n3.p1788g.C26177c;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24905a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24912c0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24914d0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24945t;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24955y;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager.class */
public class GoogleApiManager implements Handler.Callback {
    @RecentlyNonNull

    /* renamed from: p */
    public static final Status f5742p = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: q */
    public static final Status f5743q = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: r */
    public static final Object f5744r = new Object();

    /* renamed from: s */
    public static GoogleApiManager f5745s;

    /* renamed from: c */
    public TelemetryData f5748c;

    /* renamed from: d */
    public TelemetryLoggingClient f5749d;

    /* renamed from: e */
    public final Context f5750e;

    /* renamed from: f */
    public final GoogleApiAvailability f5751f;

    /* renamed from: g */
    public final zal f5752g;
    @NotOnlyInitialized

    /* renamed from: n */
    public final Handler f5759n;

    /* renamed from: o */
    public volatile boolean f5760o;

    /* renamed from: a */
    public long f5746a = 10000;

    /* renamed from: b */
    public boolean f5747b = false;

    /* renamed from: h */
    public final AtomicInteger f5753h = new AtomicInteger(1);

    /* renamed from: i */
    public final AtomicInteger f5754i = new AtomicInteger(0);

    /* renamed from: j */
    public final Map<ApiKey<?>, zabl<?>> f5755j = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: k */
    public zaab f5756k = null;

    /* renamed from: l */
    public final Set<ApiKey<?>> f5757l = new C26177c(0);

    /* renamed from: m */
    public final Set<ApiKey<?>> f5758m = new C26177c(0);

    @KeepForSdk
    public GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        boolean z = true;
        this.f5760o = true;
        this.f5750e = context;
        zap zapVar = new zap(looper, this);
        this.f5759n = zapVar;
        this.f5751f = googleApiAvailability;
        this.f5752g = new zal(googleApiAvailability);
        PackageManager packageManager = context.getPackageManager();
        if (DeviceProperties.f6136e == null) {
            DeviceProperties.f6136e = Boolean.valueOf((!PlatformVersion.m38776a() || !packageManager.hasSystemFeature("android.hardware.type.automotive")) ? false : z);
        }
        if (DeviceProperties.f6136e.booleanValue()) {
            this.f5760o = false;
        }
        zapVar.sendMessage(zapVar.obtainMessage(6));
    }

    @KeepForSdk
    /* renamed from: a */
    public static void m39036a() {
        synchronized (f5744r) {
            GoogleApiManager googleApiManager = f5745s;
            if (googleApiManager != null) {
                googleApiManager.f5754i.incrementAndGet();
                Handler handler = googleApiManager.f5759n;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* renamed from: d */
    public static Status m39033d(ApiKey<?> apiKey, ConnectionResult connectionResult) {
        String str = apiKey.f5734b.f5691c;
        String valueOf = String.valueOf(connectionResult);
        return new Status(1, 17, C22128a.m8606k(new StringBuilder(String.valueOf(str).length() + 63 + valueOf.length()), "API: ", str, " is not available on this device. Connection failed with: ", valueOf), connectionResult.f5664c, connectionResult);
    }

    @RecentlyNonNull
    /* renamed from: f */
    public static GoogleApiManager m39031f(@RecentlyNonNull Context context) {
        GoogleApiManager googleApiManager;
        synchronized (f5744r) {
            if (f5745s == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f5745s = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.f5673d);
            }
            googleApiManager = f5745s;
        }
        return googleApiManager;
    }

    /* renamed from: b */
    public final zabl<?> m39035b(GoogleApi<?> googleApi) {
        ApiKey<?> apiKey = googleApi.getApiKey();
        zabl<?> zablVar = this.f5755j.get(apiKey);
        zabl<?> zablVar2 = zablVar;
        if (zablVar == null) {
            zablVar2 = new zabl<>(this, googleApi);
            this.f5755j.put(apiKey, zablVar2);
        }
        if (zablVar2.m38958s()) {
            this.f5758m.add(apiKey);
        }
        zablVar2.m38959r();
        return zablVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* renamed from: c */
    public final <T> void m39034c(TaskCompletionSource<T> taskCompletionSource, int i, GoogleApi googleApi) {
        if (i != 0) {
            ApiKey apiKey = googleApi.getApiKey();
            C24912c0 c24912c0 = null;
            if (m39029h()) {
                RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.m38893a().f5995a;
                boolean z = true;
                if (rootTelemetryConfiguration != null) {
                    if (rootTelemetryConfiguration.f5997b) {
                        z = rootTelemetryConfiguration.f5998c;
                        zabl<?> zablVar = this.f5755j.get(apiKey);
                        if (zablVar != null) {
                            Api.Client client = zablVar.f5850b;
                            if (client instanceof BaseGmsClient) {
                                BaseGmsClient baseGmsClient = (BaseGmsClient) client;
                                if (baseGmsClient.hasConnectionInfo() && !baseGmsClient.isConnecting()) {
                                    ConnectionTelemetryConfiguration m4290a = C24912c0.m4290a(zablVar, baseGmsClient, i);
                                    if (m4290a != null) {
                                        zablVar.f5860l++;
                                        z = m4290a.f5957c;
                                    }
                                }
                            }
                        }
                    }
                }
                c24912c0 = new C24912c0(this, i, apiKey, (z ? System.currentTimeMillis() : false) == true ? 1L : 0L);
            }
            if (c24912c0 == null) {
                return;
            }
            b0<T> b0Var = taskCompletionSource.f6493a;
            Handler handler = this.f5759n;
            handler.getClass();
            b0Var.b.m4156a(new o(new Executor(handler) { // from class: e.m.a.f.e.a.a.s

                /* renamed from: a */
                public final Handler f69870a;

                {
                    this.f69870a = handler;
                }

                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    this.f69870a.post(runnable);
                }
            }, c24912c0));
            b0Var.A();
        }
    }

    /* renamed from: e */
    public final void m39032e() {
        TelemetryData telemetryData = this.f5748c;
        if (telemetryData != null) {
            if (telemetryData.f6003a > 0 || m39029h()) {
                if (this.f5749d == null) {
                    this.f5749d = new zao(this.f5750e, TelemetryLoggingOptions.f6005b);
                }
                this.f5749d.mo38836a(telemetryData);
            }
            this.f5748c = null;
        }
    }

    /* renamed from: g */
    public final void m39030g(zaab zaabVar) {
        synchronized (f5744r) {
            if (this.f5756k != zaabVar) {
                this.f5756k = zaabVar;
                this.f5757l.clear();
            }
            this.f5757l.addAll(zaabVar.f5782f);
        }
    }

    /* renamed from: h */
    public final boolean m39029h() {
        if (this.f5747b) {
            return false;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.m38893a().f5995a;
        if (rootTelemetryConfiguration != null && !rootTelemetryConfiguration.f5997b) {
            return false;
        }
        int i = this.f5752g.f6024a.get(203390000, -1);
        return i == -1 || i == 0;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(@RecentlyNonNull Message message) {
        zabl<?> zablVar;
        Feature[] mo38941f;
        char c = 37856;
        switch (message.what) {
            case 1:
                if (true == ((Boolean) message.obj).booleanValue()) {
                    c = 10000;
                }
                this.f5746a = c;
                this.f5759n.removeMessages(12);
                for (ApiKey<?> apiKey : this.f5755j.keySet()) {
                    Handler handler = this.f5759n;
                    handler.sendMessageDelayed(handler.obtainMessage(12, apiKey), this.f5746a);
                }
                return true;
            case 2:
                Objects.requireNonNull((zal) message.obj);
                throw null;
            case 3:
                for (zabl<?> zablVar2 : this.f5755j.values()) {
                    zablVar2.m38960q();
                    zablVar2.m38959r();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zacb zacbVar = (zacb) message.obj;
                zabl<?> zablVar3 = this.f5755j.get(zacbVar.f5867c.getApiKey());
                zabl<?> zablVar4 = zablVar3;
                if (zablVar3 == null) {
                    zablVar4 = m39035b(zacbVar.f5867c);
                }
                if (!zablVar4.m38958s() || this.f5754i.get() == zacbVar.f5866b) {
                    zablVar4.m38962o(zacbVar.f5865a);
                    return true;
                }
                zacbVar.f5865a.mo4286a(f5742p);
                zablVar4.m38961p();
                return true;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<zabl<?>> it = this.f5755j.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        zablVar = it.next();
                        if (zablVar.f5855g == i) {
                        }
                    } else {
                        zablVar = null;
                    }
                }
                if (zablVar == null) {
                    Log.wtf("GoogleApiManager", C22128a.m8686M1(76, "Could not find API instance ", i, " while trying to fail enqueued calls."), new Exception());
                    return true;
                } else if (connectionResult.f5663b != 13) {
                    Status m39033d = m39033d(zablVar.f5851c, connectionResult);
                    Preconditions.m38904d(zablVar.f5861m.f5759n);
                    zablVar.m38970g(m39033d, null, false);
                    return true;
                } else {
                    GoogleApiAvailability googleApiAvailability = this.f5751f;
                    int i2 = connectionResult.f5663b;
                    Objects.requireNonNull(googleApiAvailability);
                    String errorString = GooglePlayServicesUtilLight.getErrorString(i2);
                    String str = connectionResult.f5665d;
                    Status status = new Status(17, C22128a.m8606k(new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(str).length()), "Error resolution was canceled by the user, original error message: ", errorString, ": ", str));
                    Preconditions.m38904d(zablVar.f5861m.f5759n);
                    zablVar.m38970g(status, null, false);
                    return true;
                }
            case 6:
                if (!(this.f5750e.getApplicationContext() instanceof Application)) {
                    return true;
                }
                BackgroundDetector.m39040a((Application) this.f5750e.getApplicationContext());
                BackgroundDetector backgroundDetector = BackgroundDetector.f5737e;
                C24945t c24945t = new C24945t(this);
                Objects.requireNonNull(backgroundDetector);
                synchronized (backgroundDetector) {
                    backgroundDetector.f5740c.add(c24945t);
                }
                if (!backgroundDetector.f5739b.get()) {
                    ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                    ActivityManager.getMyMemoryState(runningAppProcessInfo);
                    if (!backgroundDetector.f5739b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                        backgroundDetector.f5738a.set(true);
                    }
                }
                if (backgroundDetector.f5738a.get()) {
                    return true;
                }
                this.f5746a = 300000L;
                return true;
            case 7:
                m39035b((GoogleApi) message.obj);
                return true;
            case 9:
                if (!this.f5755j.containsKey(message.obj)) {
                    return true;
                }
                zabl<?> zablVar5 = this.f5755j.get(message.obj);
                Preconditions.m38904d(zablVar5.f5861m.f5759n);
                if (!zablVar5.f5857i) {
                    return true;
                }
                zablVar5.m38959r();
                return true;
            case 10:
                for (ApiKey<?> apiKey2 : this.f5758m) {
                    zabl<?> remove = this.f5755j.remove(apiKey2);
                    if (remove != null) {
                        remove.m38961p();
                    }
                }
                this.f5758m.clear();
                return true;
            case 11:
                if (!this.f5755j.containsKey(message.obj)) {
                    return true;
                }
                zabl<?> zablVar6 = this.f5755j.get(message.obj);
                Preconditions.m38904d(zablVar6.f5861m.f5759n);
                if (!zablVar6.f5857i) {
                    return true;
                }
                zablVar6.m38968i();
                GoogleApiManager googleApiManager = zablVar6.f5861m;
                Status status2 = googleApiManager.f5751f.mo39063d(googleApiManager.f5750e) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error.");
                Preconditions.m38904d(zablVar6.f5861m.f5759n);
                zablVar6.m38970g(status2, null, false);
                zablVar6.f5850b.disconnect("Timing out connection while resuming.");
                return true;
            case 12:
                if (!this.f5755j.containsKey(message.obj)) {
                    return true;
                }
                this.f5755j.get(message.obj).m38966k(true);
                return true;
            case 14:
                C24905a c24905a = (C24905a) message.obj;
                ApiKey<?> apiKey3 = c24905a.f69804a;
                if (!this.f5755j.containsKey(apiKey3)) {
                    c24905a.f69805b.f6493a.w(Boolean.FALSE);
                    return true;
                }
                c24905a.f69805b.f6493a.w(Boolean.valueOf(this.f5755j.get(apiKey3).m38966k(false)));
                return true;
            case 15:
                C24955y c24955y = (C24955y) message.obj;
                if (!this.f5755j.containsKey(c24955y.f69895a)) {
                    return true;
                }
                zabl<?> zablVar7 = this.f5755j.get(c24955y.f69895a);
                if (!zablVar7.f5858j.contains(c24955y) || zablVar7.f5857i) {
                    return true;
                }
                if (!zablVar7.f5850b.isConnected()) {
                    zablVar7.m38959r();
                    return true;
                }
                zablVar7.m38973d();
                return true;
            case 16:
                C24955y c24955y2 = (C24955y) message.obj;
                if (!this.f5755j.containsKey(c24955y2.f69895a)) {
                    return true;
                }
                zabl<?> zablVar8 = this.f5755j.get(c24955y2.f69895a);
                if (!zablVar8.f5858j.remove(c24955y2)) {
                    return true;
                }
                zablVar8.f5861m.f5759n.removeMessages(15, c24955y2);
                zablVar8.f5861m.f5759n.removeMessages(16, c24955y2);
                Feature feature = c24955y2.f69896b;
                ArrayList arrayList = new ArrayList(zablVar8.f5849a.size());
                for (zai zaiVar : zablVar8.f5849a) {
                    if ((zaiVar instanceof zac) && (mo38941f = ((zac) zaiVar).mo38941f(zablVar8)) != null && ArrayUtils.m38795b(mo38941f, feature)) {
                        arrayList.add(zaiVar);
                    }
                }
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    zai zaiVar2 = (zai) arrayList.get(i3);
                    zablVar8.f5849a.remove(zaiVar2);
                    zaiVar2.mo4285b(new UnsupportedApiCallException(feature));
                }
                return true;
            case 17:
                m39032e();
                return true;
            case 18:
                C24914d0 c24914d0 = (C24914d0) message.obj;
                if (c24914d0.f69828c == 0) {
                    TelemetryData telemetryData = new TelemetryData(c24914d0.f69827b, Arrays.asList(c24914d0.f69826a));
                    if (this.f5749d == null) {
                        this.f5749d = new zao(this.f5750e, TelemetryLoggingOptions.f6005b);
                    }
                    this.f5749d.mo38836a(telemetryData);
                    return true;
                }
                TelemetryData telemetryData2 = this.f5748c;
                if (telemetryData2 != null) {
                    List<MethodInvocation> list = telemetryData2.f6004b;
                    if (telemetryData2.f6003a != c24914d0.f69827b || (list != null && list.size() >= c24914d0.f69829d)) {
                        this.f5759n.removeMessages(17);
                        m39032e();
                    } else {
                        TelemetryData telemetryData3 = this.f5748c;
                        MethodInvocation methodInvocation = c24914d0.f69826a;
                        if (telemetryData3.f6004b == null) {
                            telemetryData3.f6004b = new ArrayList();
                        }
                        telemetryData3.f6004b.add(methodInvocation);
                    }
                }
                if (this.f5748c != null) {
                    return true;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(c24914d0.f69826a);
                this.f5748c = new TelemetryData(c24914d0.f69827b, arrayList2);
                Handler handler2 = this.f5759n;
                handler2.sendMessageDelayed(handler2.obtainMessage(17), c24914d0.f69828c);
                return true;
            case 19:
                this.f5747b = false;
                return true;
            default:
                return false;
        }
    }

    @RecentlyNonNull
    /* renamed from: i */
    public final <O extends Api.ApiOptions> Task<Void> m39028i(@RecentlyNonNull GoogleApi<O> googleApi, @RecentlyNonNull RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, @RecentlyNonNull UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, @RecentlyNonNull Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m39034c(taskCompletionSource, registerListenerMethod.f5772d, googleApi);
        zaf zafVar = new zaf(new zacc(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource);
        Handler handler = this.f5759n;
        handler.sendMessage(handler.obtainMessage(8, new zacb(zafVar, this.f5754i.get(), googleApi)));
        return taskCompletionSource.f6493a;
    }

    /* renamed from: j */
    public final boolean m39027j(ConnectionResult connectionResult, int i) {
        GoogleApiAvailability googleApiAvailability = this.f5751f;
        Context context = this.f5750e;
        Objects.requireNonNull(googleApiAvailability);
        boolean z = false;
        PendingIntent m39064c = connectionResult.m39077o2() ? connectionResult.f5664c : googleApiAvailability.m39064c(context, connectionResult.f5663b, 0, null);
        if (m39064c != null) {
            int i2 = connectionResult.f5663b;
            int i3 = GoogleApiActivity.f5701b;
            Intent intent = new Intent(context, GoogleApiActivity.class);
            intent.putExtra("pending_intent", m39064c);
            intent.putExtra("failing_client_id", i);
            intent.putExtra("notify_manager", true);
            googleApiAvailability.m39070h(context, i2, null, PendingIntent.getActivity(context, 0, intent, 134217728));
            z = true;
        }
        return z;
    }

    /* renamed from: k */
    public final void m39026k(@RecentlyNonNull ConnectionResult connectionResult, int i) {
        if (!m39027j(connectionResult, i)) {
            Handler handler = this.f5759n;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }
}
