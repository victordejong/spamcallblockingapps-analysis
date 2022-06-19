package com.google.firebase.perf.config;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.provider.FirebasePerfProvider;
import e.m.d.b0.k;
import e.m.d.b0.p;
import e.m.d.b0.q;
import e.m.d.b0.r.d;
import e.m.d.b0.r.l;
import e.m.d.v.b;
import e.m.d.z.g.c;
import e.m.d.z.i.a;
import e.m.d.z.n.e;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
@Keep
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/config/RemoteConfigManager.class */
public class RemoteConfigManager {
    private static final long FETCH_NEVER_HAPPENED_TIMESTAMP_MS = 0;
    private static final String FIREPERF_FRC_NAMESPACE_NAME = "fireperf";
    private static final long MIN_APP_START_CONFIG_FETCH_DELAY_MS = 5000;
    private static final int RANDOM_APP_START_CONFIG_FETCH_DELAY_MS = 25000;
    private final ConcurrentHashMap<String, p> allRcConfigMap;
    private final long appStartConfigFetchDelayInMs;
    private final long appStartTimeInMs;
    private final Executor executor;
    private k firebaseRemoteConfig;
    private long firebaseRemoteConfigLastFetchTimestampMs;
    private b<q> firebaseRemoteConfigProvider;
    private static final a logger = a.b();
    private static final RemoteConfigManager instance = new RemoteConfigManager();
    private static final long TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS = TimeUnit.HOURS.toMillis(12);

    private RemoteConfigManager() {
        this(new ThreadPoolExecutor(0, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue()), null);
    }

    public RemoteConfigManager(Executor executor, k kVar) {
        this(executor, kVar, new Random().nextInt(RANDOM_APP_START_CONFIG_FETCH_DELAY_MS) + MIN_APP_START_CONFIG_FETCH_DELAY_MS);
    }

    @VisibleForTesting
    public RemoteConfigManager(Executor executor, k kVar, long j) {
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
        this.executor = executor;
        this.firebaseRemoteConfig = kVar;
        this.allRcConfigMap = kVar == null ? new ConcurrentHashMap<>() : new ConcurrentHashMap<>(kVar.b());
        this.appStartTimeInMs = TimeUnit.MICROSECONDS.toMillis(FirebasePerfProvider.getAppStartTime().f7077a);
        this.appStartConfigFetchDelayInMs = j;
    }

    public static RemoteConfigManager getInstance() {
        return instance;
    }

    private p getRemoteConfigValue(String str) {
        triggerRemoteConfigFetchIfNecessary();
        if (!isFirebaseRemoteConfigAvailable() || !this.allRcConfigMap.containsKey(str)) {
            return null;
        }
        p pVar = this.allRcConfigMap.get(str);
        if (pVar.getSource() != 2) {
            return null;
        }
        a aVar = logger;
        String c = pVar.c();
        if (aVar.b) {
            e.m.d.z.i.b bVar = aVar.a;
            String.format(Locale.ENGLISH, "Fetched value: '%s' for key: '%s' from Firebase Remote Config.", c, str);
            Objects.requireNonNull(bVar);
        }
        return pVar;
    }

    @VisibleForTesting
    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }

    private boolean hasAppStartConfigFetchDelayElapsed(long j) {
        return j - this.appStartTimeInMs >= this.appStartConfigFetchDelayInMs;
    }

    private boolean hasLastFetchBecomeStale(long j) {
        return j - this.firebaseRemoteConfigLastFetchTimestampMs > TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS;
    }

    private boolean shouldFetchAndActivateRemoteConfigValues() {
        long currentSystemTimeMillis = getCurrentSystemTimeMillis();
        return hasAppStartConfigFetchDelayElapsed(currentSystemTimeMillis) && hasLastFetchBecomeStale(currentSystemTimeMillis);
    }

    private void triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch() {
        this.firebaseRemoteConfigLastFetchTimestampMs = getCurrentSystemTimeMillis();
        k kVar = this.firebaseRemoteConfig;
        l lVar = kVar.g;
        lVar.f.b().m38525m(lVar.c, new d(lVar, lVar.h.a.getLong("minimum_fetch_interval_in_seconds", l.j))).m38518t(e.m.d.b0.b.a).m38517u(kVar.c, new e.m.d.b0.d(kVar)).m38529i(this.executor, new e.m.d.z.g.b(this)).m38532f(this.executor, new c(this));
    }

    private void triggerRemoteConfigFetchIfNecessary() {
        if (!isFirebaseRemoteConfigAvailable()) {
            return;
        }
        if (this.allRcConfigMap.isEmpty()) {
            syncConfigValues(this.firebaseRemoteConfig.b());
        }
        if (!shouldFetchAndActivateRemoteConfigValues()) {
            return;
        }
        triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch();
    }

    /* renamed from: a */
    public /* synthetic */ void m38306a(Boolean bool) {
        syncConfigValues(this.firebaseRemoteConfig.b());
    }

    /* renamed from: b */
    public /* synthetic */ void m38305b(Exception exc) {
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
    }

    public e<Boolean> getBoolean(String str) {
        if (str == null) {
            a aVar = logger;
            if (aVar.b) {
                Objects.requireNonNull(aVar.a);
            }
            return new e<>();
        }
        p remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new e<>(Boolean.valueOf(remoteConfigValue.d()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.c().isEmpty()) {
                    a aVar2 = logger;
                    String c = remoteConfigValue.c();
                    if (aVar2.b) {
                        e.m.d.z.i.b bVar = aVar2.a;
                        String.format(Locale.ENGLISH, "Could not parse value: '%s' for key: '%s'.", c, str);
                        Objects.requireNonNull(bVar);
                    }
                }
            }
        }
        return new e<>();
    }

    @VisibleForTesting
    public long getCurrentSystemTimeMillis() {
        return System.currentTimeMillis();
    }

    public e<Float> getFloat(String str) {
        if (str == null) {
            a aVar = logger;
            if (aVar.b) {
                Objects.requireNonNull(aVar.a);
            }
            return new e<>();
        }
        p remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new e<>(Float.valueOf(Double.valueOf(remoteConfigValue.b()).floatValue()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.c().isEmpty()) {
                    a aVar2 = logger;
                    String c = remoteConfigValue.c();
                    if (aVar2.b) {
                        e.m.d.z.i.b bVar = aVar2.a;
                        String.format(Locale.ENGLISH, "Could not parse value: '%s' for key: '%s'.", c, str);
                        Objects.requireNonNull(bVar);
                    }
                }
            }
        }
        return new e<>();
    }

    public e<Long> getLong(String str) {
        if (str == null) {
            a aVar = logger;
            if (aVar.b) {
                Objects.requireNonNull(aVar.a);
            }
            return new e<>();
        }
        p remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new e<>(Long.valueOf(remoteConfigValue.a()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.c().isEmpty()) {
                    a aVar2 = logger;
                    String c = remoteConfigValue.c();
                    if (aVar2.b) {
                        e.m.d.z.i.b bVar = aVar2.a;
                        String.format(Locale.ENGLISH, "Could not parse value: '%s' for key: '%s'.", c, str);
                        Objects.requireNonNull(bVar);
                    }
                }
            }
        }
        return new e<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v48, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v54, types: [java.lang.Float] */
    /* JADX WARN: Type inference failed for: r0v59, types: [java.lang.Boolean] */
    public <T> T getRemoteConfigValueOrDefault(String str, T t) {
        T valueOf;
        p remoteConfigValue = getRemoteConfigValue(str);
        T t2 = t;
        if (remoteConfigValue != null) {
            try {
                if (t instanceof Boolean) {
                    valueOf = Boolean.valueOf(remoteConfigValue.d());
                } else if (t instanceof Float) {
                    valueOf = Float.valueOf(Double.valueOf(remoteConfigValue.b()).floatValue());
                } else {
                    if (!(t instanceof Long) && !(t instanceof Integer)) {
                        if (t instanceof String) {
                            valueOf = remoteConfigValue.c();
                        } else {
                            t2 = remoteConfigValue.c();
                            try {
                                a aVar = logger;
                                if (aVar.b) {
                                    e.m.d.z.i.b bVar = aVar.a;
                                    String.format(Locale.ENGLISH, "No matching type found for the defaultValue: '%s', using String.", t);
                                    Objects.requireNonNull(bVar);
                                }
                            } catch (IllegalArgumentException e) {
                                t = t2;
                                t2 = t;
                                if (!remoteConfigValue.c().isEmpty()) {
                                    a aVar2 = logger;
                                    String c = remoteConfigValue.c();
                                    t2 = t;
                                    if (aVar2.b) {
                                        e.m.d.z.i.b bVar2 = aVar2.a;
                                        String.format(Locale.ENGLISH, "Could not parse value: '%s' for key: '%s'.", c, str);
                                        Objects.requireNonNull(bVar2);
                                        t2 = t;
                                    }
                                }
                                return t2;
                            }
                        }
                    }
                    valueOf = Long.valueOf(remoteConfigValue.a());
                }
                t2 = valueOf;
            } catch (IllegalArgumentException e2) {
            }
        }
        return t2;
    }

    public e<String> getString(String str) {
        if (str != null) {
            p remoteConfigValue = getRemoteConfigValue(str);
            return remoteConfigValue != null ? new e<>(remoteConfigValue.c()) : new e<>();
        }
        a aVar = logger;
        if (aVar.b) {
            Objects.requireNonNull(aVar.a);
        }
        return new e<>();
    }

    public boolean isFirebaseRemoteConfigAvailable() {
        b<q> bVar;
        q qVar;
        if (this.firebaseRemoteConfig == null && (bVar = this.firebaseRemoteConfigProvider) != null && (qVar = (q) bVar.get()) != null) {
            this.firebaseRemoteConfig = qVar.b(FIREPERF_FRC_NAMESPACE_NAME);
        }
        return this.firebaseRemoteConfig != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
        if (r0 == 1) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isLastFetchFailed() {
        /*
            r8 = this;
            r0 = r8
            e.m.d.b0.k r0 = r0.firebaseRemoteConfig
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto Lc9
            r0 = r9
            e.m.d.b0.r.n r0 = r0.i
            r11 = r0
            r0 = r11
            java.lang.Object r0 = r0.b
            r9 = r0
            r0 = r9
            monitor-enter(r0)
            r0 = r11
            android.content.SharedPreferences r0 = r0.a     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r1 = "last_fetch_time_in_millis"
            r2 = -1
            long r0 = r0.getLong(r1, r2)     // Catch: java.lang.Throwable -> Lc4
            r0 = r11
            android.content.SharedPreferences r0 = r0.a     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r1 = "last_fetch_status"
            r2 = 0
            int r0 = r0.getInt(r1, r2)     // Catch: java.lang.Throwable -> Lc4
            r12 = r0
            long r0 = e.m.d.b0.r.l.j     // Catch: java.lang.Throwable -> Lc4
            r13 = r0
            r0 = r11
            android.content.SharedPreferences r0 = r0.a     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r1 = "fetch_timeout_in_seconds"
            r2 = 60
            long r0 = r0.getLong(r1, r2)     // Catch: java.lang.Throwable -> Lc4
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto La8
            r0 = r11
            android.content.SharedPreferences r0 = r0.a     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r1 = "minimum_fetch_interval_in_seconds"
            long r2 = e.m.d.b0.r.l.j     // Catch: java.lang.Throwable -> Lc4
            long r0 = r0.getLong(r1, r2)     // Catch: java.lang.Throwable -> Lc4
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L75
            r0 = r9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc4
            r0 = r12
            r1 = 1
            if (r0 != r1) goto Lcb
            goto Lc9
        L75:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> Lc4
            r11 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc4
            r15 = r0
            r0 = r15
            r0.<init>()     // Catch: java.lang.Throwable -> Lc4
            r0 = r15
            java.lang.String r1 = "Minimum interval between fetches has to be a non-negative number. "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lc4
            r0 = r15
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lc4
            r0 = r15
            java.lang.String r1 = " is an invalid argument"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lc4
            r0 = r11
            r1 = r15
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lc4
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lc4
            r0 = r11
            throw r0     // Catch: java.lang.Throwable -> Lc4
        La8:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> Lc4 java.lang.Throwable -> Lc4
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Fetch connection timeout has to be a non-negative number. %d is an invalid argument"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lc4
            r3 = r2
            r4 = 0
            r5 = r13
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> Lc4
            r3[r4] = r5     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r1 = java.lang.String.format(r1, r2)     // Catch: java.lang.Throwable -> Lc4
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lc4
            r0 = r11
            throw r0     // Catch: java.lang.Throwable -> Lc4
        Lc4:
            r11 = move-exception
            r0 = r9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc4
            r0 = r11
            throw r0
        Lc9:
            r0 = 1
            r10 = r0
        Lcb:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.config.RemoteConfigManager.isLastFetchFailed():boolean");
    }

    public void setFirebaseRemoteConfigProvider(b<q> bVar) {
        this.firebaseRemoteConfigProvider = bVar;
    }

    @VisibleForTesting
    public void syncConfigValues(Map<String, p> map) {
        this.allRcConfigMap.putAll(map);
        for (String str : this.allRcConfigMap.keySet()) {
            if (!map.containsKey(str)) {
                this.allRcConfigMap.remove(str);
            }
        }
    }
}
