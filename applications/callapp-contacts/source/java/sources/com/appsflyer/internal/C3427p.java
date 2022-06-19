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
/* renamed from: com.appsflyer.internal.p */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/p.class */
public final class C3427p implements SensorEventListener {

    /* renamed from: ı */
    double f12979;

    /* renamed from: Ɩ */
    private final String f12980;

    /* renamed from: ǃ */
    private final int f12981;

    /* renamed from: ɹ */
    private final Executor f12983;

    /* renamed from: Ι */
    long f12984;

    /* renamed from: І */
    private final String f12986;

    /* renamed from: Ӏ */
    private final int f12987;

    /* renamed from: ɩ */
    final float[][] f12982 = new float[2];

    /* renamed from: ι */
    final long[] f12985 = new long[2];

    /* JADX WARN: Type inference failed for: r1v1, types: [float[], float[][]] */
    public C3427p(Sensor sensor, Executor executor) {
        this.f12983 = executor;
        int type = sensor.getType();
        this.f12981 = type;
        String name = sensor.getName();
        String str = name == null ? "" : name;
        this.f12980 = str;
        String vendor = sensor.getVendor();
        vendor = vendor == null ? "" : vendor;
        this.f12986 = vendor;
        this.f12987 = ((((type + 31) * 31) + str.hashCode()) * 31) + vendor.hashCode();
    }

    /* renamed from: ɩ */
    private static List<Float> m37963(float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    /* renamed from: ɩ */
    private boolean m37964() {
        return this.f12982[0] != null;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [double] */
    /* renamed from: Ι */
    static double m37962(float[] fArr, float[] fArr2) {
        int min = Math.min(fArr.length, fArr2.length);
        char c = 0;
        for (int i = 0; i < min; i++) {
            c += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(c);
    }

    /* renamed from: ι */
    private Map<String, Object> m37961() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.f12981));
        concurrentHashMap.put("sN", this.f12980);
        concurrentHashMap.put("sV", this.f12986);
        float[] fArr = this.f12982[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", m37963(fArr));
        }
        float[] fArr2 = this.f12982[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", m37963(fArr2));
        }
        return concurrentHashMap;
    }

    /* renamed from: ι */
    public static boolean m37959(Sensor sensor) {
        return (sensor == null || sensor.getName() == null || sensor.getVendor() == null) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3427p)) {
            return false;
        }
        C3427p c3427p = (C3427p) obj;
        return m37960(c3427p.f12981, c3427p.f12980, c3427p.f12986);
    }

    public final int hashCode() {
        return this.f12987;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(final SensorEvent sensorEvent) {
        this.f12983.execute(new Runnable() { // from class: com.appsflyer.internal.p.5
            @Override // java.lang.Runnable
            public final void run() {
                SensorEvent sensorEvent2 = sensorEvent;
                if (sensorEvent2 == null || sensorEvent2.values == null || !C3427p.m37959(sensorEvent.sensor)) {
                    return;
                }
                C3427p c3427p = C3427p.this;
                int type = sensorEvent.sensor.getType();
                String name = sensorEvent.sensor.getName();
                String vendor = sensorEvent.sensor.getVendor();
                long j = sensorEvent.timestamp;
                float[] fArr = sensorEvent.values;
                if (!c3427p.m37960(type, name, vendor)) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                float[] fArr2 = c3427p.f12982[0];
                if (fArr2 == null) {
                    c3427p.f12982[0] = Arrays.copyOf(fArr, fArr.length);
                    c3427p.f12985[0] = currentTimeMillis;
                    return;
                }
                float[] fArr3 = c3427p.f12982[1];
                if (fArr3 == null) {
                    float[] copyOf = Arrays.copyOf(fArr, fArr.length);
                    c3427p.f12982[1] = copyOf;
                    c3427p.f12985[1] = currentTimeMillis;
                    c3427p.f12979 = C3427p.m37962(fArr2, copyOf);
                } else if (50000000 > j - c3427p.f12984) {
                } else {
                    c3427p.f12984 = j;
                    if (Arrays.equals(fArr3, fArr)) {
                        c3427p.f12985[1] = currentTimeMillis;
                        return;
                    }
                    double m37962 = C3427p.m37962(fArr2, fArr);
                    if (m37962 <= c3427p.f12979) {
                        return;
                    }
                    c3427p.f12982[1] = Arrays.copyOf(fArr, fArr.length);
                    c3427p.f12985[1] = currentTimeMillis;
                    c3427p.f12979 = m37962;
                }
            }
        });
    }

    /* renamed from: ι */
    public final void m37958(Map<C3427p, Map<String, Object>> map, boolean z) {
        if (!m37964()) {
            if (map.containsKey(this)) {
                return;
            }
            map.put(this, m37961());
            return;
        }
        map.put(this, m37961());
        if (!z) {
            return;
        }
        int length = this.f12982.length;
        for (int i = 0; i < length; i++) {
            this.f12982[i] = null;
        }
        int length2 = this.f12985.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.f12985[i2] = 0;
        }
        this.f12979 = 0.0d;
        this.f12984 = 0L;
    }

    /* renamed from: ι */
    final boolean m37960(int i, String str, String str2) {
        return this.f12981 == i && this.f12980.equals(str) && this.f12986.equals(str2);
    }
}
