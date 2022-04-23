package com.google.firebase.perf.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p334r.AbstractC5887a;
import p131c.p161d.p282e.p340u.p344g.C5966k;
import p131c.p161d.p282e.p340u.p344g.C5967l;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p349l.C5995c;
import p131c.p161d.p282e.p352w.AbstractC6075j;
import p131c.p161d.p282e.p352w.C6070g;
import p131c.p161d.p282e.p352w.C6078m;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/internal/RemoteConfigManager.class */
public class RemoteConfigManager {
    public static final long FETCH_NEVER_HAPPENED_TIMESTAMP_MS = 0;
    public static final String FIREPERF_FRC_NAMESPACE_NAME = "fireperf";
    public final ConcurrentHashMap<String, AbstractC6075j> allRcConfigMap;
    public final Executor executor;
    public C6070g firebaseRemoteConfig;
    public long firebaseRemoteConfigLastFetchTimestampMs;
    public AbstractC5887a<C6078m> firebaseRemoteConfigProvider;
    public static final C5969a logger = C5969a.m22496a();
    public static final RemoteConfigManager sharedInstance = new RemoteConfigManager();
    public static final long TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS = TimeUnit.HOURS.toMillis(12);

    public RemoteConfigManager() {
        this(new ThreadPoolExecutor(0, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue()), null);
    }

    @VisibleForTesting
    public RemoteConfigManager(Executor executor, C6070g gVar) {
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
        this.executor = executor;
        this.firebaseRemoteConfig = gVar;
        this.allRcConfigMap = gVar == null ? new ConcurrentHashMap<>() : new ConcurrentHashMap<>(gVar.m22135d());
    }

    public static RemoteConfigManager getInstance() {
        return sharedInstance;
    }

    private AbstractC6075j getRemoteConfigValue(String str) {
        triggerRemoteConfigFetchIfNecessary();
        if (!isFirebaseRemoteConfigAvailable() || !this.allRcConfigMap.containsKey(str)) {
            return null;
        }
        AbstractC6075j jVar = this.allRcConfigMap.get(str);
        if (jVar.mo22007e() != 2) {
            return null;
        }
        logger.m22495a(String.format("Fetched value: '%s' for key: '%s' from Firebase Remote Config.", jVar.mo22009c(), str), new Object[0]);
        return jVar;
    }

    @VisibleForTesting
    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }

    private boolean shouldFetchAndActivateRemoteConfigValues() {
        return getCurrentSystemTimeMillis() - this.firebaseRemoteConfigLastFetchTimestampMs > TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS;
    }

    private void triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch() {
        this.firebaseRemoteConfigLastFetchTimestampMs = getCurrentSystemTimeMillis();
        Task<Boolean> c = this.firebaseRemoteConfig.m22136c();
        c.mo8608a(this.executor, C5966k.m22498a(this));
        c.mo8609a(this.executor, C5967l.m22497a(this));
    }

    private void triggerRemoteConfigFetchIfNecessary() {
        if (isFirebaseRemoteConfigAvailable()) {
            if (this.allRcConfigMap.isEmpty()) {
                syncConfigValues(this.firebaseRemoteConfig.m22135d());
            }
            if (shouldFetchAndActivateRemoteConfigValues()) {
                triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch();
            }
        }
    }

    public C5995c<Boolean> getBoolean(String str) {
        if (str == null) {
            logger.m22495a("The key to get Remote Config boolean value is null.", new Object[0]);
            return C5995c.m22363c();
        }
        AbstractC6075j remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return C5995c.m22366a(Boolean.valueOf(remoteConfigValue.mo22008d()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.mo22009c().isEmpty()) {
                    logger.m22495a(String.format("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo22009c(), str), new Object[0]);
                }
            }
        }
        return C5995c.m22363c();
    }

    @VisibleForTesting
    public long getCurrentSystemTimeMillis() {
        return System.currentTimeMillis();
    }

    public C5995c<Float> getFloat(String str) {
        if (str == null) {
            logger.m22495a("The key to get Remote Config float value is null.", new Object[0]);
            return C5995c.m22363c();
        }
        AbstractC6075j remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return C5995c.m22366a(Float.valueOf(Double.valueOf(remoteConfigValue.mo22010b()).floatValue()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.mo22009c().isEmpty()) {
                    logger.m22495a(String.format("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo22009c(), str), new Object[0]);
                }
            }
        }
        return C5995c.m22363c();
    }

    public C5995c<Long> getLong(String str) {
        if (str == null) {
            logger.m22495a("The key to get Remote Config long value is null.", new Object[0]);
            return C5995c.m22363c();
        }
        AbstractC6075j remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return C5995c.m22366a(Long.valueOf(remoteConfigValue.mo22011a()));
            } catch (IllegalArgumentException e) {
                if (!remoteConfigValue.mo22009c().isEmpty()) {
                    logger.m22495a(String.format("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo22009c(), str), new Object[0]);
                }
            }
        }
        return C5995c.m22363c();
    }

    public <T> T getRemoteConfigValueOrDefault(String str, T t) {
        Object obj;
        AbstractC6075j remoteConfigValue = getRemoteConfigValue(str);
        Object obj2 = t;
        if (remoteConfigValue != null) {
            try {
                if (t instanceof Boolean) {
                    obj = (T) Boolean.valueOf(remoteConfigValue.mo22008d());
                } else if (t instanceof Float) {
                    obj = Float.valueOf(Double.valueOf(remoteConfigValue.mo22010b()).floatValue());
                } else {
                    if (!(t instanceof Long) && !(t instanceof Integer)) {
                        if (t instanceof String) {
                            obj = remoteConfigValue.mo22009c();
                        } else {
                            Object obj3 = (T) remoteConfigValue.mo22009c();
                            try {
                                logger.m22495a(String.format("No matching type found for the defaultValue: '%s', using String.", t), new Object[0]);
                                obj2 = obj3;
                            } catch (IllegalArgumentException e) {
                                t = obj3;
                                obj2 = t;
                                if (!remoteConfigValue.mo22009c().isEmpty()) {
                                    logger.m22495a(String.format("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo22009c(), str), new Object[0]);
                                    obj2 = t;
                                }
                                return (T) obj2;
                            }
                        }
                    }
                    obj = Long.valueOf(remoteConfigValue.mo22011a());
                }
                obj2 = obj;
            } catch (IllegalArgumentException e2) {
            }
        }
        return (T) obj2;
    }

    public C5995c<String> getString(String str) {
        if (str == null) {
            logger.m22495a("The key to get Remote Config String value is null.", new Object[0]);
            return C5995c.m22363c();
        }
        AbstractC6075j remoteConfigValue = getRemoteConfigValue(str);
        return remoteConfigValue != null ? C5995c.m22366a(remoteConfigValue.mo22009c()) : C5995c.m22363c();
    }

    public boolean isFirebaseRemoteConfigAvailable() {
        AbstractC5887a<C6078m> aVar;
        C6078m mVar;
        if (!(this.firebaseRemoteConfig != null || (aVar = this.firebaseRemoteConfigProvider) == null || (mVar = aVar.get()) == null)) {
            this.firebaseRemoteConfig = mVar.m22115a(FIREPERF_FRC_NAMESPACE_NAME);
        }
        return this.firebaseRemoteConfig != null;
    }

    public boolean isFirebaseRemoteConfigMapEmpty() {
        return this.allRcConfigMap.isEmpty();
    }

    public boolean isLastFetchFailed() {
        C6070g gVar = this.firebaseRemoteConfig;
        boolean z = true;
        if (gVar != null) {
            z = gVar.m22134e().mo22017a() == 1;
        }
        return z;
    }

    public void setFirebaseRemoteConfigProvider(AbstractC5887a<C6078m> aVar) {
        this.firebaseRemoteConfigProvider = aVar;
    }

    @VisibleForTesting
    public void syncConfigValues(Map<String, AbstractC6075j> map) {
        this.allRcConfigMap.putAll(map);
        for (String str : this.allRcConfigMap.keySet()) {
            if (!map.containsKey(str)) {
                this.allRcConfigMap.remove(str);
            }
        }
    }
}
