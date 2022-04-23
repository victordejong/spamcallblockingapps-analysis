package com.appsflyer;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import com.appsflyer.internal.p;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFSensorManager.class */
public final class AFSensorManager {
    public static volatile AFSensorManager sInstance;

    /* renamed from: ɪ  reason: contains not printable characters */
    private static final Handler f40 = new Handler(Looper.getMainLooper());

    /* renamed from: Ӏ  reason: contains not printable characters */
    private static final BitSet f41;

    /* renamed from: ǃ  reason: contains not printable characters */
    final Handler f44;

    /* renamed from: ȷ  reason: contains not printable characters */
    private final Map<p, p> f45;

    /* renamed from: ɨ  reason: contains not printable characters */
    private final Map<p, Map<String, Object>> f46;

    /* renamed from: ɾ  reason: contains not printable characters */
    private boolean f49;

    /* renamed from: ι  reason: contains not printable characters */
    boolean f51;

    /* renamed from: ӏ  reason: contains not printable characters */
    private final SensorManager f55;

    /* renamed from: ɩ  reason: contains not printable characters */
    final Object f47 = new Object();

    /* renamed from: Ι  reason: contains not printable characters */
    final Runnable f50 = new Runnable() { // from class: com.appsflyer.AFSensorManager.3
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f47) {
                final AFSensorManager aFSensorManager = AFSensorManager.this;
                aFSensorManager.f52.execute(new Runnable() { // from class: com.appsflyer.AFSensorManager.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            for (Sensor sensor : AFSensorManager.this.f55.getSensorList(-1)) {
                                if (AFSensorManager.m801(sensor.getType())) {
                                    p pVar = new p(sensor, AFSensorManager.this.f52);
                                    if (!AFSensorManager.this.f45.containsKey(pVar)) {
                                        AFSensorManager.this.f45.put(pVar, pVar);
                                    }
                                    AFSensorManager.this.f55.registerListener((SensorEventListener) AFSensorManager.this.f45.get(pVar), sensor, 0);
                                }
                            }
                        } catch (Throwable th) {
                        }
                        AFSensorManager.this.f49 = true;
                    }
                });
                AFSensorManager.this.f44.postDelayed(AFSensorManager.this.f53, 100L);
                AFSensorManager.this.f51 = true;
            }
        }
    };

    /* renamed from: ı  reason: contains not printable characters */
    final Runnable f42 = new Runnable() { // from class: com.appsflyer.AFSensorManager.5
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f47) {
                AFSensorManager aFSensorManager = AFSensorManager.this;
                aFSensorManager.f52.execute(new AnonymousClass6());
            }
        }
    };

    /* renamed from: ɹ  reason: contains not printable characters */
    final Runnable f48 = new Runnable() { // from class: com.appsflyer.AFSensorManager.1
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f47) {
                if (AFSensorManager.this.f51) {
                    AFSensorManager.this.f44.removeCallbacks(AFSensorManager.this.f50);
                    AFSensorManager.this.f44.removeCallbacks(AFSensorManager.this.f42);
                    AFSensorManager aFSensorManager = AFSensorManager.this;
                    aFSensorManager.f52.execute(new AnonymousClass6());
                    AFSensorManager.this.f51 = false;
                }
            }
        }
    };

    /* renamed from: Ɩ  reason: contains not printable characters */
    int f43 = 1;

    /* renamed from: і  reason: contains not printable characters */
    long f54 = 0;

    /* renamed from: г  reason: contains not printable characters */
    private final Runnable f53 = new Runnable() { // from class: com.appsflyer.AFSensorManager.2
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f47) {
                if (AFSensorManager.this.f43 == 0) {
                    AFSensorManager.this.f43 = 1;
                }
                AFSensorManager.this.f44.postDelayed(AFSensorManager.this.f42, AFSensorManager.this.f43 * 500);
            }
        }
    };

    /* renamed from: І  reason: contains not printable characters */
    final Executor f52 = Executors.newSingleThreadExecutor();

    /* renamed from: com.appsflyer.AFSensorManager$6  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFSensorManager$6.class */
    final class AnonymousClass6 implements Runnable {
        AnonymousClass6() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (!AFSensorManager.this.f45.isEmpty()) {
                    for (p pVar : AFSensorManager.this.f45.values()) {
                        AFSensorManager.this.f55.unregisterListener(pVar);
                        pVar.m1014(AFSensorManager.this.f46, true);
                    }
                }
            } catch (Throwable th) {
            }
            AFSensorManager.this.f43 = 0;
            AFSensorManager.this.f49 = false;
        }
    }

    static {
        BitSet bitSet = new BitSet(6);
        f41 = bitSet;
        bitSet.set(1);
        bitSet.set(2);
        bitSet.set(4);
    }

    private AFSensorManager(SensorManager sensorManager, Handler handler) {
        BitSet bitSet = f41;
        this.f45 = new HashMap(bitSet.size());
        this.f46 = new ConcurrentHashMap(bitSet.size());
        this.f55 = sensorManager;
        this.f44 = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ı  reason: contains not printable characters */
    public static boolean m801(int i) {
        return i >= 0 && f41.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Ι  reason: contains not printable characters */
    public static AFSensorManager m807(Context context) {
        return sInstance != null ? sInstance : m808((SensorManager) context.getApplicationContext().getSystemService("sensor"), f40);
    }

    /* renamed from: Ι  reason: contains not printable characters */
    private static AFSensorManager m808(SensorManager sensorManager, Handler handler) {
        if (sInstance == null) {
            synchronized (AFSensorManager.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new AFSensorManager(sensorManager, handler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ı  reason: contains not printable characters */
    public final List<Map<String, Object>> m812() {
        synchronized (this.f47) {
            if (!this.f45.isEmpty() && this.f49) {
                for (p pVar : this.f45.values()) {
                    pVar.m1014(this.f46, false);
                }
            }
            if (this.f46.isEmpty()) {
                return new CopyOnWriteArrayList(Collections.emptyList());
            }
            return new CopyOnWriteArrayList(this.f46.values());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ι  reason: contains not printable characters */
    public final List<Map<String, Object>> m813() {
        for (p pVar : this.f45.values()) {
            pVar.m1014(this.f46, true);
        }
        Map<p, Map<String, Object>> map = this.f46;
        return (map == null || map.isEmpty()) ? new CopyOnWriteArrayList(Collections.emptyList()) : new CopyOnWriteArrayList(this.f46.values());
    }
}
