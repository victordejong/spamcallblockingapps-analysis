package com.appsflyer.internal;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: com.appsflyer.internal.ab */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ab.class */
public final class C0707ab {
    private static final BitSet AFLogger$LogLevel;
    private static final Handler AppsFlyer2dXConversionCallback = new Handler(Looper.getMainLooper());
    @VisibleForTesting
    private static volatile C0707ab init;
    public final Handler AFInAppEventType;
    private final SensorManager onAppOpenAttributionNative;
    private final Map<C0832w, Map<String, Object>> onAttributionFailureNative;
    private final Map<C0832w, C0832w> onDeepLinkingNative;
    private boolean onInstallConversionFailureNative;
    public boolean values;
    public final Object AFInAppEventParameterName = new Object();
    public final Runnable valueOf = new Runnable() { // from class: com.appsflyer.internal.ab.4
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (C0707ab.this.AFInAppEventParameterName) {
                final C0707ab c0707ab = C0707ab.this;
                c0707ab.AFVersionDeclaration.execute(new Runnable() { // from class: com.appsflyer.internal.ab.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            for (Sensor sensor : c0707ab.onAppOpenAttributionNative.getSensorList(-1)) {
                                if (C0707ab.AFInAppEventParameterName(sensor.getType())) {
                                    C0832w c0832w = new C0832w(sensor, c0707ab.AFVersionDeclaration);
                                    if (!c0707ab.onDeepLinkingNative.containsKey(c0832w)) {
                                        c0707ab.onDeepLinkingNative.put(c0832w, c0832w);
                                    }
                                    c0707ab.onAppOpenAttributionNative.registerListener((SensorEventListener) c0707ab.onDeepLinkingNative.get(c0832w), sensor, 0);
                                }
                            }
                        } catch (Throwable th) {
                        }
                        c0707ab.onInstallConversionFailureNative = true;
                    }
                });
                C0707ab c0707ab2 = C0707ab.this;
                c0707ab2.AFInAppEventType.postDelayed(c0707ab2.onDeepLinking, 100L);
                C0707ab.this.values = true;
            }
        }
    };
    public final Runnable AFKeystoreWrapper = new Runnable() { // from class: com.appsflyer.internal.ab.5
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (C0707ab.this.AFInAppEventParameterName) {
                C0707ab c0707ab = C0707ab.this;
                c0707ab.AFVersionDeclaration.execute(new RunnableC07136());
            }
        }
    };
    public final Runnable getLevel = new Runnable() { // from class: com.appsflyer.internal.ab.1
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (C0707ab.this.AFInAppEventParameterName) {
                C0707ab c0707ab = C0707ab.this;
                if (c0707ab.values) {
                    c0707ab.AFInAppEventType.removeCallbacks(c0707ab.valueOf);
                    C0707ab c0707ab2 = C0707ab.this;
                    c0707ab2.AFInAppEventType.removeCallbacks(c0707ab2.AFKeystoreWrapper);
                    C0707ab c0707ab3 = C0707ab.this;
                    c0707ab3.AFVersionDeclaration.execute(new RunnableC07136());
                    C0707ab.this.values = false;
                }
            }
        }
    };
    private int onInstallConversionDataLoadedNative = 1;
    private long onAttributionFailure = 0;
    private final Runnable onDeepLinking = new Runnable() { // from class: com.appsflyer.internal.ab.2
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (C0707ab.this.AFInAppEventParameterName) {
                if (C0707ab.this.onInstallConversionDataLoadedNative == 0) {
                    C0707ab.this.onInstallConversionDataLoadedNative = 1;
                }
                C0707ab c0707ab = C0707ab.this;
                c0707ab.AFInAppEventType.postDelayed(c0707ab.AFKeystoreWrapper, c0707ab.onInstallConversionDataLoadedNative * 500);
            }
        }
    };
    public final Executor AFVersionDeclaration = Executors.newSingleThreadExecutor();

    /* renamed from: com.appsflyer.internal.ab$6 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ab$6.class */
    public final class RunnableC07136 implements Runnable {
        public RunnableC07136() {
            C0707ab.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (!C0707ab.this.onDeepLinkingNative.isEmpty()) {
                    for (C0832w c0832w : C0707ab.this.onDeepLinkingNative.values()) {
                        C0707ab.this.onAppOpenAttributionNative.unregisterListener(c0832w);
                        c0832w.values(C0707ab.this.onAttributionFailureNative, true);
                    }
                }
            } catch (Throwable th) {
            }
            C0707ab.this.onInstallConversionDataLoadedNative = 0;
            C0707ab.this.onInstallConversionFailureNative = false;
        }
    }

    static {
        BitSet bitSet = new BitSet(6);
        AFLogger$LogLevel = bitSet;
        bitSet.set(1);
        bitSet.set(2);
        bitSet.set(4);
    }

    private C0707ab(@NonNull SensorManager sensorManager, Handler handler) {
        BitSet bitSet = AFLogger$LogLevel;
        this.onDeepLinkingNative = new HashMap(bitSet.size());
        this.onAttributionFailureNative = new ConcurrentHashMap(bitSet.size());
        this.onAppOpenAttributionNative = sensorManager;
        this.AFInAppEventType = handler;
    }

    private static C0707ab AFInAppEventParameterName(SensorManager sensorManager, Handler handler) {
        if (init == null) {
            synchronized (C0707ab.class) {
                try {
                    if (init == null) {
                        init = new C0707ab(sensorManager, handler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return init;
    }

    public static boolean AFInAppEventParameterName(int i) {
        return i >= 0 && AFLogger$LogLevel.get(i);
    }

    public static C0707ab AFKeystoreWrapper(Context context) {
        return init != null ? init : AFInAppEventParameterName((SensorManager) context.getApplicationContext().getSystemService("sensor"), AppsFlyer2dXConversionCallback);
    }

    public final List<Map<String, Object>> AFInAppEventType() {
        for (C0832w c0832w : this.onDeepLinkingNative.values()) {
            c0832w.values(this.onAttributionFailureNative, true);
        }
        Map<C0832w, Map<String, Object>> map = this.onAttributionFailureNative;
        return (map == null || map.isEmpty()) ? new CopyOnWriteArrayList(Collections.emptyList()) : new CopyOnWriteArrayList(this.onAttributionFailureNative.values());
    }

    public final void valueOf() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.onAttributionFailure;
        if (j != 0) {
            this.onInstallConversionDataLoadedNative++;
            if (j - currentTimeMillis < 500) {
                this.AFInAppEventType.removeCallbacks(this.AFKeystoreWrapper);
                this.AFInAppEventType.post(this.valueOf);
            }
        } else {
            this.AFInAppEventType.post(this.getLevel);
            this.AFInAppEventType.post(this.valueOf);
        }
        this.onAttributionFailure = currentTimeMillis;
    }

    @NonNull
    public final List<Map<String, Object>> values() {
        synchronized (this.AFInAppEventParameterName) {
            if (!this.onDeepLinkingNative.isEmpty() && this.onInstallConversionFailureNative) {
                for (C0832w c0832w : this.onDeepLinkingNative.values()) {
                    c0832w.values(this.onAttributionFailureNative, false);
                }
            }
            if (this.onAttributionFailureNative.isEmpty()) {
                return new CopyOnWriteArrayList(Collections.emptyList());
            }
            return new CopyOnWriteArrayList(this.onAttributionFailureNative.values());
        }
    }
}
