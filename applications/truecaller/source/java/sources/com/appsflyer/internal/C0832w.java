package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.support.annotation.NonNull;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* renamed from: com.appsflyer.internal.w */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/w.class */
public final class C0832w implements SensorEventListener {
    public long AFInAppEventParameterName;
    public double AFKeystoreWrapper;
    private final Executor AFVersionDeclaration;
    private final int AppsFlyer2dXConversionCallback;
    @NonNull
    private final String getLevel;
    @NonNull
    private final String init;
    private final int valueOf;
    public final float[][] AFInAppEventType = new float[2];
    public final long[] values = new long[2];

    /* JADX WARN: Type inference failed for: r1v1, types: [float[], float[][]] */
    public C0832w(Sensor sensor, Executor executor) {
        this.AFVersionDeclaration = executor;
        int type = sensor.getType();
        this.valueOf = type;
        String name = sensor.getName();
        String str = name == null ? "" : name;
        this.init = str;
        String vendor = sensor.getVendor();
        vendor = vendor == null ? "" : vendor;
        this.getLevel = vendor;
        this.AppsFlyer2dXConversionCallback = vendor.hashCode() + ((str.hashCode() + ((type + 31) * 31)) * 31);
    }

    @NonNull
    private Map<String, Object> AFInAppEventParameterName() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.valueOf));
        concurrentHashMap.put("sN", this.init);
        concurrentHashMap.put("sV", this.getLevel);
        float[] fArr = this.AFInAppEventType[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", valueOf(fArr));
        }
        float[] fArr2 = this.AFInAppEventType[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", valueOf(fArr2));
        }
        return concurrentHashMap;
    }

    private boolean AFKeystoreWrapper() {
        return this.AFInAppEventType[0] != null;
    }

    private boolean AFKeystoreWrapper(int i, @NonNull String str, @NonNull String str2) {
        return this.valueOf == i && this.init.equals(str) && this.getLevel.equals(str2);
    }

    @NonNull
    private static List<Float> valueOf(@NonNull float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [double] */
    public static /* synthetic */ double values(float[] fArr, float[] fArr2) {
        int min = Math.min(fArr.length, fArr2.length);
        char c = 0;
        for (int i = 0; i < min; i++) {
            c += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(c);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0832w)) {
            return false;
        }
        C0832w c0832w = (C0832w) obj;
        return AFKeystoreWrapper(c0832w.valueOf, c0832w.init, c0832w.getLevel);
    }

    public final int hashCode() {
        return this.AppsFlyer2dXConversionCallback;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        final long j = sensorEvent.timestamp;
        final float[] fArr = sensorEvent.values;
        this.AFVersionDeclaration.execute(new Runnable() { // from class: com.appsflyer.internal.w.4
            @Override // java.lang.Runnable
            public final void run() {
                long currentTimeMillis = System.currentTimeMillis();
                C0832w c0832w = C0832w.this;
                float[][] fArr2 = c0832w.AFInAppEventType;
                float[] fArr3 = fArr2[0];
                if (fArr3 == null) {
                    float[] fArr4 = fArr;
                    fArr2[0] = Arrays.copyOf(fArr4, fArr4.length);
                    C0832w.this.values[0] = currentTimeMillis;
                    return;
                }
                float[] fArr5 = fArr2[1];
                if (fArr5 == null) {
                    float[] fArr6 = fArr;
                    float[] copyOf = Arrays.copyOf(fArr6, fArr6.length);
                    C0832w c0832w2 = C0832w.this;
                    c0832w2.AFInAppEventType[1] = copyOf;
                    c0832w2.values[1] = currentTimeMillis;
                    c0832w2.AFKeystoreWrapper = C0832w.values(fArr3, copyOf);
                    return;
                }
                long j2 = j;
                if (50000000 > j2 - c0832w.AFInAppEventParameterName) {
                    return;
                }
                c0832w.AFInAppEventParameterName = j2;
                if (Arrays.equals(fArr5, fArr)) {
                    C0832w.this.values[1] = currentTimeMillis;
                    return;
                }
                double values = C0832w.values(fArr3, fArr);
                C0832w c0832w3 = C0832w.this;
                if (values <= c0832w3.AFKeystoreWrapper) {
                    return;
                }
                float[][] fArr7 = c0832w3.AFInAppEventType;
                float[] fArr8 = fArr;
                fArr7[1] = Arrays.copyOf(fArr8, fArr8.length);
                C0832w c0832w4 = C0832w.this;
                c0832w4.values[1] = currentTimeMillis;
                c0832w4.AFKeystoreWrapper = values;
            }
        });
    }

    public final void values(@NonNull Map<C0832w, Map<String, Object>> map, boolean z) {
        if (!AFKeystoreWrapper()) {
            if (map.containsKey(this)) {
                return;
            }
            map.put(this, AFInAppEventParameterName());
            return;
        }
        map.put(this, AFInAppEventParameterName());
        if (!z) {
            return;
        }
        int length = this.AFInAppEventType.length;
        for (int i = 0; i < length; i++) {
            this.AFInAppEventType[i] = null;
        }
        int length2 = this.values.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.values[i2] = 0;
        }
        this.AFKeystoreWrapper = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
        this.AFInAppEventParameterName = 0L;
    }
}
