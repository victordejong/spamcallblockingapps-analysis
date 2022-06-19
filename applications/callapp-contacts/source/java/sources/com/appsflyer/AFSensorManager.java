package com.appsflyer;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import com.appsflyer.internal.C3427p;
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

    /* renamed from: ɪ */
    private static final Handler f12716 = new Handler(Looper.getMainLooper());

    /* renamed from: Ӏ */
    private static final BitSet f12717;

    /* renamed from: ǃ */
    final Handler f12720;

    /* renamed from: ȷ */
    private final Map<C3427p, C3427p> f12721;

    /* renamed from: ɨ */
    private final Map<C3427p, Map<String, Object>> f12722;

    /* renamed from: ɾ */
    private boolean f12725;

    /* renamed from: ι */
    boolean f12727;

    /* renamed from: ӏ */
    private final SensorManager f12731;

    /* renamed from: ɩ */
    final Object f12723 = new Object();

    /* renamed from: Ι */
    final Runnable f12726 = new Runnable() { // from class: com.appsflyer.AFSensorManager.3
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f12723) {
                final AFSensorManager aFSensorManager = AFSensorManager.this;
                aFSensorManager.f12728.execute(new Runnable() { // from class: com.appsflyer.AFSensorManager.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            for (Sensor sensor : aFSensorManager.f12731.getSensorList(-1)) {
                                if (AFSensorManager.m38143(sensor.getType())) {
                                    C3427p c3427p = new C3427p(sensor, aFSensorManager.f12728);
                                    if (!aFSensorManager.f12721.containsKey(c3427p)) {
                                        aFSensorManager.f12721.put(c3427p, c3427p);
                                    }
                                    aFSensorManager.f12731.registerListener((SensorEventListener) aFSensorManager.f12721.get(c3427p), sensor, 0);
                                }
                            }
                        } catch (Throwable th) {
                        }
                        aFSensorManager.f12725 = true;
                    }
                });
                AFSensorManager.this.f12720.postDelayed(AFSensorManager.this.f12729, 100L);
                AFSensorManager.this.f12727 = true;
            }
        }
    };

    /* renamed from: ı */
    final Runnable f12718 = new Runnable() { // from class: com.appsflyer.AFSensorManager.5
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f12723) {
                AFSensorManager aFSensorManager = AFSensorManager.this;
                aFSensorManager.f12728.execute(new RunnableC33776());
            }
        }
    };

    /* renamed from: ɹ */
    final Runnable f12724 = new Runnable() { // from class: com.appsflyer.AFSensorManager.1
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f12723) {
                if (AFSensorManager.this.f12727) {
                    AFSensorManager.this.f12720.removeCallbacks(AFSensorManager.this.f12726);
                    AFSensorManager.this.f12720.removeCallbacks(AFSensorManager.this.f12718);
                    AFSensorManager aFSensorManager = AFSensorManager.this;
                    aFSensorManager.f12728.execute(new RunnableC33776());
                    AFSensorManager.this.f12727 = false;
                }
            }
        }
    };

    /* renamed from: Ɩ */
    int f12719 = 1;

    /* renamed from: і */
    long f12730 = 0;

    /* renamed from: г */
    private final Runnable f12729 = new Runnable() { // from class: com.appsflyer.AFSensorManager.2
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (AFSensorManager.this.f12723) {
                if (AFSensorManager.this.f12719 == 0) {
                    AFSensorManager.this.f12719 = 1;
                }
                AFSensorManager.this.f12720.postDelayed(AFSensorManager.this.f12718, AFSensorManager.this.f12719 * 500);
            }
        }
    };

    /* renamed from: І */
    final Executor f12728 = Executors.newSingleThreadExecutor();

    /* renamed from: com.appsflyer.AFSensorManager$6 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFSensorManager$6.class */
    final class RunnableC33776 implements Runnable {
        RunnableC33776() {
            AFSensorManager.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (!AFSensorManager.this.f12721.isEmpty()) {
                    for (C3427p c3427p : AFSensorManager.this.f12721.values()) {
                        AFSensorManager.this.f12731.unregisterListener(c3427p);
                        c3427p.m37958(AFSensorManager.this.f12722, true);
                    }
                }
            } catch (Throwable th) {
            }
            AFSensorManager.this.f12719 = 0;
            AFSensorManager.this.f12725 = false;
        }
    }

    static {
        BitSet bitSet = new BitSet(6);
        f12717 = bitSet;
        bitSet.set(1);
        bitSet.set(2);
        bitSet.set(4);
    }

    private AFSensorManager(SensorManager sensorManager, Handler handler) {
        BitSet bitSet = f12717;
        this.f12721 = new HashMap(bitSet.size());
        this.f12722 = new ConcurrentHashMap(bitSet.size());
        this.f12731 = sensorManager;
        this.f12720 = handler;
    }

    /* renamed from: ı */
    public static boolean m38143(int i) {
        return i >= 0 && f12717.get(i);
    }

    /* renamed from: Ι */
    public static AFSensorManager m38136(Context context) {
        return sInstance != null ? sInstance : m38135((SensorManager) context.getApplicationContext().getSystemService("sensor"), f12716);
    }

    /* renamed from: Ι */
    private static AFSensorManager m38135(SensorManager sensorManager, Handler handler) {
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

    /* renamed from: ı */
    public final List<Map<String, Object>> m38144() {
        synchronized (this.f12723) {
            if (!this.f12721.isEmpty() && this.f12725) {
                for (C3427p c3427p : this.f12721.values()) {
                    c3427p.m37958(this.f12722, false);
                }
            }
            if (this.f12722.isEmpty()) {
                return new CopyOnWriteArrayList(Collections.emptyList());
            }
            return new CopyOnWriteArrayList(this.f12722.values());
        }
    }

    /* renamed from: ι */
    public final List<Map<String, Object>> m38133() {
        for (C3427p c3427p : this.f12721.values()) {
            c3427p.m37958(this.f12722, true);
        }
        Map<C3427p, Map<String, Object>> map = this.f12722;
        return (map == null || map.isEmpty()) ? new CopyOnWriteArrayList(Collections.emptyList()) : new CopyOnWriteArrayList(this.f12722.values());
    }
}
