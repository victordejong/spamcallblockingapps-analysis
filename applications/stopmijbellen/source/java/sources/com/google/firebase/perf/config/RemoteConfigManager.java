package com.google.firebase.perf.config;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p104g6.C2905a;
import p104g6.C2906b;
import p180n6.C3720b;
import p211q6.AbstractC4161d;
import p211q6.C4157b;
import p211q6.C4164g;
import p275w5.AbstractC4739b;
import p303z2.C5050k;
import p303z2.C5056q;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/config/RemoteConfigManager.class */
public class RemoteConfigManager {
    private static final long FETCH_NEVER_HAPPENED_TIMESTAMP_MS = 0;
    private static final String FIREPERF_FRC_NAMESPACE_NAME = "fireperf";
    private final ConcurrentHashMap<String, AbstractC4161d> allRcConfigMap;
    private final Executor executor;
    private C4157b firebaseRemoteConfig;
    private long firebaseRemoteConfigLastFetchTimestampMs;
    private AbstractC4739b<C4164g> firebaseRemoteConfigProvider;
    private static final C2905a logger = C2905a.m2869b();
    private static final RemoteConfigManager instance = new RemoteConfigManager();
    private static final long TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS = TimeUnit.HOURS.toMillis(12);

    private RemoteConfigManager() {
        this(new ThreadPoolExecutor(0, 1, FETCH_NEVER_HAPPENED_TIMESTAMP_MS, TimeUnit.SECONDS, new LinkedBlockingQueue()), null);
    }

    @VisibleForTesting
    public RemoteConfigManager(Executor executor, C4157b c4157b) {
        this.firebaseRemoteConfigLastFetchTimestampMs = FETCH_NEVER_HAPPENED_TIMESTAMP_MS;
        this.executor = executor;
        this.firebaseRemoteConfig = c4157b;
        this.allRcConfigMap = c4157b == null ? new ConcurrentHashMap<>() : new ConcurrentHashMap<>(c4157b.m1350b());
    }

    public static RemoteConfigManager getInstance() {
        return instance;
    }

    private AbstractC4161d getRemoteConfigValue(String str) {
        triggerRemoteConfigFetchIfNecessary();
        if (!isFirebaseRemoteConfigAvailable() || !this.allRcConfigMap.containsKey(str)) {
            return null;
        }
        AbstractC4161d abstractC4161d = this.allRcConfigMap.get(str);
        if (abstractC4161d.mo1275a() != 2) {
            return null;
        }
        C2905a c2905a = logger;
        String mo1273c = abstractC4161d.mo1273c();
        if (c2905a.f9793b) {
            C2906b c2906b = c2905a.f9792a;
            String.format(Locale.ENGLISH, "Fetched value: '%s' for key: '%s' from Firebase Remote Config.", mo1273c, str);
            Objects.requireNonNull(c2906b);
        }
        return abstractC4161d;
    }

    @VisibleForTesting
    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }

    /* renamed from: lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0 */
    public /* synthetic */ void m4468xc904e813(Boolean bool) {
        syncConfigValues(this.firebaseRemoteConfig.m1350b());
    }

    /* renamed from: lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1 */
    public /* synthetic */ void m4467xc904e814(Exception exc) {
        this.firebaseRemoteConfigLastFetchTimestampMs = FETCH_NEVER_HAPPENED_TIMESTAMP_MS;
    }

    private boolean shouldFetchAndActivateRemoteConfigValues() {
        return getCurrentSystemTimeMillis() - this.firebaseRemoteConfigLastFetchTimestampMs > TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS;
    }

    private void triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch() {
        this.firebaseRemoteConfigLastFetchTimestampMs = getCurrentSystemTimeMillis();
        this.firebaseRemoteConfig.m1351a().addOnSuccessListener(this.executor, new C5050k(this, 3)).addOnFailureListener(this.executor, new C5056q(this, 2));
    }

    private void triggerRemoteConfigFetchIfNecessary() {
        if (!isFirebaseRemoteConfigAvailable()) {
            return;
        }
        if (this.allRcConfigMap.isEmpty()) {
            syncConfigValues(this.firebaseRemoteConfig.m1350b());
        }
        if (!shouldFetchAndActivateRemoteConfigValues()) {
            return;
        }
        triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch();
    }

    public C3720b<Boolean> getBoolean(String str) {
        if (str == null) {
            C2905a c2905a = logger;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
            return new C3720b<>();
        }
        AbstractC4161d remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new C3720b<>(Boolean.valueOf(remoteConfigValue.mo1271e()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.mo1273c().isEmpty()) {
                    C2905a c2905a2 = logger;
                    String mo1273c = remoteConfigValue.mo1273c();
                    if (c2905a2.f9793b) {
                        C2906b c2906b = c2905a2.f9792a;
                        String.format(Locale.ENGLISH, "Could not parse value: '%s' for key: '%s'.", mo1273c, str);
                        Objects.requireNonNull(c2906b);
                    }
                }
            }
        }
        return new C3720b<>();
    }

    @VisibleForTesting
    public long getCurrentSystemTimeMillis() {
        return System.currentTimeMillis();
    }

    public C3720b<Float> getFloat(String str) {
        if (str == null) {
            C2905a c2905a = logger;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
            return new C3720b<>();
        }
        AbstractC4161d remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new C3720b<>(Float.valueOf(Double.valueOf(remoteConfigValue.mo1274b()).floatValue()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.mo1273c().isEmpty()) {
                    C2905a c2905a2 = logger;
                    String mo1273c = remoteConfigValue.mo1273c();
                    if (c2905a2.f9793b) {
                        C2906b c2906b = c2905a2.f9792a;
                        String.format(Locale.ENGLISH, "Could not parse value: '%s' for key: '%s'.", mo1273c, str);
                        Objects.requireNonNull(c2906b);
                    }
                }
            }
        }
        return new C3720b<>();
    }

    public C3720b<Long> getLong(String str) {
        if (str == null) {
            C2905a c2905a = logger;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
            return new C3720b<>();
        }
        AbstractC4161d remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new C3720b<>(Long.valueOf(remoteConfigValue.mo1272d()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.mo1273c().isEmpty()) {
                    C2905a c2905a2 = logger;
                    String mo1273c = remoteConfigValue.mo1273c();
                    if (c2905a2.f9793b) {
                        C2906b c2906b = c2905a2.f9792a;
                        String.format(Locale.ENGLISH, "Could not parse value: '%s' for key: '%s'.", mo1273c, str);
                        Objects.requireNonNull(c2906b);
                    }
                }
            }
        }
        return new C3720b<>();
    }

    public <T> T getRemoteConfigValueOrDefault(String str, T t) {
        Object valueOf;
        AbstractC4161d remoteConfigValue = getRemoteConfigValue(str);
        Object obj = t;
        if (remoteConfigValue != null) {
            try {
                if (t instanceof Boolean) {
                    valueOf = Boolean.valueOf(remoteConfigValue.mo1271e());
                } else if (t instanceof Float) {
                    valueOf = Float.valueOf(Double.valueOf(remoteConfigValue.mo1274b()).floatValue());
                } else {
                    if (!(t instanceof Long) && !(t instanceof Integer)) {
                        if (t instanceof String) {
                            valueOf = remoteConfigValue.mo1273c();
                        } else {
                            obj = remoteConfigValue.mo1273c();
                            try {
                                C2905a c2905a = logger;
                                if (c2905a.f9793b) {
                                    C2906b c2906b = c2905a.f9792a;
                                    String.format(Locale.ENGLISH, "No matching type found for the defaultValue: '%s', using String.", t);
                                    Objects.requireNonNull(c2906b);
                                }
                            } catch (IllegalArgumentException e) {
                                t = (T) obj;
                                obj = t;
                                if (!remoteConfigValue.mo1273c().isEmpty()) {
                                    C2905a c2905a2 = logger;
                                    String mo1273c = remoteConfigValue.mo1273c();
                                    obj = t;
                                    if (c2905a2.f9793b) {
                                        C2906b c2906b2 = c2905a2.f9792a;
                                        String.format(Locale.ENGLISH, "Could not parse value: '%s' for key: '%s'.", mo1273c, str);
                                        Objects.requireNonNull(c2906b2);
                                        obj = t;
                                    }
                                }
                                return (T) obj;
                            }
                        }
                    }
                    valueOf = Long.valueOf(remoteConfigValue.mo1272d());
                }
                obj = valueOf;
            } catch (IllegalArgumentException e2) {
            }
        }
        return (T) obj;
    }

    public C3720b<String> getString(String str) {
        if (str != null) {
            AbstractC4161d remoteConfigValue = getRemoteConfigValue(str);
            return remoteConfigValue != null ? new C3720b<>(remoteConfigValue.mo1273c()) : new C3720b<>();
        }
        C2905a c2905a = logger;
        if (c2905a.f9793b) {
            Objects.requireNonNull(c2905a.f9792a);
        }
        return new C3720b<>();
    }

    public boolean isFirebaseRemoteConfigAvailable() {
        AbstractC4739b<C4164g> abstractC4739b;
        C4164g c4164g;
        if (this.firebaseRemoteConfig == null && (abstractC4739b = this.firebaseRemoteConfigProvider) != null && (c4164g = abstractC4739b.get()) != null) {
            this.firebaseRemoteConfig = c4164g.m1348a(FIREPERF_FRC_NAMESPACE_NAME);
        }
        return this.firebaseRemoteConfig != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0070, code lost:
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
            q6.b r0 = r0.firebaseRemoteConfig
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto Lca
            r0 = r9
            com.google.firebase.remoteconfig.internal.b r0 = r0.f13122i
            r11 = r0
            r0 = r11
            java.lang.Object r0 = r0.f7025b
            r9 = r0
            r0 = r9
            monitor-enter(r0)
            r0 = r11
            android.content.SharedPreferences r0 = r0.f7024a     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = "last_fetch_time_in_millis"
            r2 = -1
            long r0 = r0.getLong(r1, r2)     // Catch: java.lang.Throwable -> Lc5
            r0 = r11
            android.content.SharedPreferences r0 = r0.f7024a     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = "last_fetch_status"
            r2 = 0
            int r0 = r0.getInt(r1, r2)     // Catch: java.lang.Throwable -> Lc5
            r12 = r0
            long r0 = com.google.firebase.remoteconfig.internal.C1853a.f7008j     // Catch: java.lang.Throwable -> Lc5
            r13 = r0
            r0 = r11
            android.content.SharedPreferences r0 = r0.f7024a     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = "fetch_timeout_in_seconds"
            r2 = 60
            long r0 = r0.getLong(r1, r2)     // Catch: java.lang.Throwable -> Lc5
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto La9
            r0 = r11
            android.content.SharedPreferences r0 = r0.f7024a     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = "minimum_fetch_interval_in_seconds"
            long r2 = com.google.firebase.remoteconfig.internal.C1853a.f7008j     // Catch: java.lang.Throwable -> Lc5
            long r0 = r0.getLong(r1, r2)     // Catch: java.lang.Throwable -> Lc5
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L76
            r0 = r9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc5
            r0 = r12
            r1 = 1
            if (r0 != r1) goto Lcc
            goto Lca
        L76:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> Lc5
            r11 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc5
            r15 = r0
            r0 = r15
            r0.<init>()     // Catch: java.lang.Throwable -> Lc5
            r0 = r15
            java.lang.String r1 = "Minimum interval between fetches has to be a non-negative number. "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lc5
            r0 = r15
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lc5
            r0 = r15
            java.lang.String r1 = " is an invalid argument"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lc5
            r0 = r11
            r1 = r15
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lc5
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lc5
            r0 = r11
            throw r0     // Catch: java.lang.Throwable -> Lc5
        La9:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> Lc5 java.lang.Throwable -> Lc5
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Fetch connection timeout has to be a non-negative number. %d is an invalid argument"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lc5
            r3 = r2
            r4 = 0
            r5 = r13
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> Lc5
            r3[r4] = r5     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = java.lang.String.format(r1, r2)     // Catch: java.lang.Throwable -> Lc5
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lc5
            r0 = r11
            throw r0     // Catch: java.lang.Throwable -> Lc5
        Lc5:
            r11 = move-exception
            r0 = r9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc5
            r0 = r11
            throw r0
        Lca:
            r0 = 1
            r10 = r0
        Lcc:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.config.RemoteConfigManager.isLastFetchFailed():boolean");
    }

    public void setFirebaseRemoteConfigProvider(AbstractC4739b<C4164g> abstractC4739b) {
        this.firebaseRemoteConfigProvider = abstractC4739b;
    }

    @VisibleForTesting
    public void syncConfigValues(Map<String, AbstractC4161d> map) {
        this.allRcConfigMap.putAll(map);
        for (String str : this.allRcConfigMap.keySet()) {
            if (!map.containsKey(str)) {
                this.allRcConfigMap.remove(str);
            }
        }
    }
}
