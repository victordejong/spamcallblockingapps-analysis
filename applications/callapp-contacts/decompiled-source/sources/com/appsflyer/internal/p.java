package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/p.class */
public final class p implements SensorEventListener {

    /* renamed from: ı  reason: contains not printable characters */
    double f303;

    /* renamed from: Ɩ  reason: contains not printable characters */
    private final String f304;

    /* renamed from: ǃ  reason: contains not printable characters */
    private final int f305;

    /* renamed from: ɹ  reason: contains not printable characters */
    private final Executor f307;

    /* renamed from: Ι  reason: contains not printable characters */
    long f308;

    /* renamed from: І  reason: contains not printable characters */
    private final String f310;

    /* renamed from: Ӏ  reason: contains not printable characters */
    private final int f311;

    /* renamed from: ɩ  reason: contains not printable characters */
    final float[][] f306 = new float[2];

    /* renamed from: ι  reason: contains not printable characters */
    final long[] f309 = new long[2];

    /* JADX WARN: Type inference failed for: r1v1, types: [float[], float[][]] */
    public p(Sensor sensor, Executor executor) {
        this.f307 = executor;
        int type = sensor.getType();
        this.f305 = type;
        String name = sensor.getName();
        String vendor = "";
        String str = name == null ? "" : name;
        this.f304 = str;
        vendor = sensor.getVendor();
        if (vendor == null) {
        }
        this.f310 = vendor;
        this.f311 = ((((type + 31) * 31) + str.hashCode()) * 31) + vendor.hashCode();
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private static List<Float> m1009(float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private boolean m1010() {
        return this.f306[0] != null;
    }

    /* renamed from: Ι  reason: contains not printable characters */
    static double m1011(float[] fArr, float[] fArr2) {
        int min = Math.min(fArr.length, fArr2.length);
        double d2 = 0.0d;
        for (int i = 0; i < min; i++) {
            d2 += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(d2);
    }

    /* renamed from: ι  reason: contains not printable characters */
    private Map<String, Object> m1012() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.f305));
        concurrentHashMap.put("sN", this.f304);
        concurrentHashMap.put("sV", this.f310);
        float[] fArr = this.f306[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", m1009(fArr));
        }
        float[] fArr2 = this.f306[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", m1009(fArr2));
        }
        return concurrentHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ι  reason: contains not printable characters */
    public static boolean m1013(Sensor sensor) {
        return (sensor == null || sensor.getName() == null || sensor.getVendor() == null) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return m1015(pVar.f305, pVar.f304, pVar.f310);
    }

    public final int hashCode() {
        return this.f311;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(final SensorEvent sensorEvent) {
        this.f307.execute(new Runnable() { // from class: com.appsflyer.internal.p.5
            @Override // java.lang.Runnable
            public final void run() {
                SensorEvent sensorEvent2 = sensorEvent;
                if (sensorEvent2 != null && sensorEvent2.values != null && p.m1013(sensorEvent.sensor)) {
                    p pVar = p.this;
                    int type = sensorEvent.sensor.getType();
                    String name = sensorEvent.sensor.getName();
                    String vendor = sensorEvent.sensor.getVendor();
                    long j = sensorEvent.timestamp;
                    float[] fArr = sensorEvent.values;
                    if (pVar.m1015(type, name, vendor)) {
                        long currentTimeMillis = System.currentTimeMillis();
                        float[] fArr2 = pVar.f306[0];
                        if (fArr2 == null) {
                            pVar.f306[0] = Arrays.copyOf(fArr, fArr.length);
                            pVar.f309[0] = currentTimeMillis;
                            return;
                        }
                        float[] fArr3 = pVar.f306[1];
                        if (fArr3 == null) {
                            float[] copyOf = Arrays.copyOf(fArr, fArr.length);
                            pVar.f306[1] = copyOf;
                            pVar.f309[1] = currentTimeMillis;
                            pVar.f303 = p.m1011(fArr2, copyOf);
                        } else if (50000000 <= j - pVar.f308) {
                            pVar.f308 = j;
                            if (Arrays.equals(fArr3, fArr)) {
                                pVar.f309[1] = currentTimeMillis;
                                return;
                            }
                            double d2 = p.m1011(fArr2, fArr);
                            if (d2 > pVar.f303) {
                                pVar.f306[1] = Arrays.copyOf(fArr, fArr.length);
                                pVar.f309[1] = currentTimeMillis;
                                pVar.f303 = d2;
                            }
                        }
                    }
                }
            }
        });
    }

    /* renamed from: ι  reason: contains not printable characters */
    public final void m1014(Map<p, Map<String, Object>> map, boolean z) {
        if (m1010()) {
            map.put(this, m1012());
            if (z) {
                int length = this.f306.length;
                for (int i = 0; i < length; i++) {
                    this.f306[i] = null;
                }
                int length2 = this.f309.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f309[i2] = 0;
                }
                this.f303 = 0.0d;
                this.f308 = 0L;
            }
        } else if (!map.containsKey(this)) {
            map.put(this, m1012());
        }
    }

    /* renamed from: ι  reason: contains not printable characters */
    final boolean m1015(int i, String str, String str2) {
        return this.f305 == i && this.f304.equals(str) && this.f310.equals(str2);
    }
}
