package com.appsflyer;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.internal.C1851r;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFSensorManager.class */
public final class AFSensorManager {
    @VisibleForTesting
    public static volatile AFSensorManager sInstance;

    /* renamed from: ȷ */
    public static final BitSet f1644 = new BitSet(6);

    /* renamed from: ɪ */
    public static final Handler f1645 = new Handler(Looper.getMainLooper());

    /* renamed from: ı */
    public final Handler f1646;

    /* renamed from: ɩ */
    public final SensorManager f1650;

    /* renamed from: Ι */
    public boolean f1653;

    /* renamed from: Ӏ */
    public boolean f1657;

    /* renamed from: ι */
    public final Object f1654 = new Object();

    /* renamed from: ǃ */
    public final Map<C1851r, C1851r> f1648 = new HashMap(f1644.size());

    /* renamed from: ӏ */
    public final Map<C1851r, Map<String, Object>> f1658 = new ConcurrentHashMap(f1644.size());

    /* renamed from: ɹ */
    public final Runnable f1651 = new Runnable() { // from class: com.appsflyer.AFSensorManager.2
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f1654) {
                AFSensorManager aFSensorManager = AFSensorManager.this;
                try {
                    for (Sensor sensor : aFSensorManager.f1650.getSensorList(-1)) {
                        if (AFSensorManager.m36279(sensor.getType())) {
                            C1851r rVar = new C1851r(sensor.getType(), sensor.getName(), sensor.getVendor());
                            if (!aFSensorManager.f1648.containsKey(rVar)) {
                                aFSensorManager.f1648.put(rVar, rVar);
                            }
                            aFSensorManager.f1650.registerListener(aFSensorManager.f1648.get(rVar), sensor, 0);
                        }
                    }
                } catch (Throwable th) {
                }
                aFSensorManager.f1657 = true;
                AFSensorManager.this.f1646.postDelayed(AFSensorManager.this.f1649, 100L);
                AFSensorManager.this.f1653 = true;
            }
        }
    };

    /* renamed from: і */
    public final Runnable f1656 = new Runnable() { // from class: com.appsflyer.AFSensorManager.5
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f1654) {
                AFSensorManager.this.m36276();
            }
        }
    };

    /* renamed from: І */
    public final Runnable f1655 = new Runnable() { // from class: com.appsflyer.AFSensorManager.3
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f1654) {
                if (AFSensorManager.this.f1653) {
                    AFSensorManager.this.f1646.removeCallbacks(AFSensorManager.this.f1651);
                    AFSensorManager.this.f1646.removeCallbacks(AFSensorManager.this.f1656);
                    AFSensorManager.this.m36276();
                    AFSensorManager.this.f1653 = false;
                }
            }
        }
    };

    /* renamed from: Ɩ */
    public int f1647 = 1;

    /* renamed from: ɾ */
    public long f1652 = 0;

    /* renamed from: ɨ */
    public final Runnable f1649 = new Runnable() { // from class: com.appsflyer.AFSensorManager.4
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f1654) {
                if (AFSensorManager.this.f1647 == 0) {
                    AFSensorManager.this.f1647 = 1;
                }
                AFSensorManager.this.f1646.postDelayed(AFSensorManager.this.f1656, AFSensorManager.this.f1647 * 500);
            }
        }
    };

    static {
        f1644.set(1);
        f1644.set(2);
        f1644.set(4);
    }

    public AFSensorManager(@NonNull SensorManager sensorManager, Handler handler) {
        this.f1650 = sensorManager;
        this.f1646 = handler;
    }

    /* renamed from: ǃ */
    public static AFSensorManager m36282(SensorManager sensorManager, Handler handler) {
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

    /* renamed from: ɩ */
    public static AFSensorManager m36278(Context context) {
        return sInstance != null ? sInstance : m36282((SensorManager) context.getApplicationContext().getSystemService("sensor"), f1645);
    }

    /* renamed from: ɩ */
    public static boolean m36279(int i) {
        return i >= 0 && f1644.get(i);
    }

    /* renamed from: ɩ */
    public final List<Map<String, Object>> m36280() {
        for (C1851r rVar : this.f1648.values()) {
            rVar.m36123(this.f1658, true);
        }
        Map<C1851r, Map<String, Object>> map = this.f1658;
        return (map == null || map.isEmpty()) ? new CopyOnWriteArrayList(Collections.emptyList()) : new CopyOnWriteArrayList(this.f1658.values());
    }

    /* renamed from: Ι */
    public final void m36276() {
        try {
            if (!this.f1648.isEmpty()) {
                for (C1851r rVar : this.f1648.values()) {
                    this.f1650.unregisterListener(rVar);
                    rVar.m36123(this.f1658, true);
                }
            }
        } catch (Throwable th) {
        }
        this.f1647 = 0;
        this.f1657 = false;
    }

    @NonNull
    /* renamed from: ι */
    public final List<Map<String, Object>> m36274() {
        synchronized (this.f1654) {
            if (!this.f1648.isEmpty() && this.f1657) {
                for (C1851r rVar : this.f1648.values()) {
                    rVar.m36123(this.f1658, false);
                }
            }
            if (this.f1658.isEmpty()) {
                return new CopyOnWriteArrayList(Collections.emptyList());
            }
            return new CopyOnWriteArrayList(this.f1658.values());
        }
    }
}
