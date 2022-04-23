package com.pgl.sys.ces.b;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.firebase.crashlytics.internal.common.IdManager;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/b/b.class */
public final class b implements SensorEventListener {
    private static b f;

    /* renamed from: b  reason: collision with root package name */
    private SensorManager f34970b;

    /* renamed from: c  reason: collision with root package name */
    private int f34971c;

    /* renamed from: d  reason: collision with root package name */
    private int f34972d = 0;
    private float[] e = new float[3];

    /* renamed from: a  reason: collision with root package name */
    public List<String> f34969a = new ArrayList();

    private b(Context context) {
        this.f34970b = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            try {
                this.f34970b = (SensorManager) applicationContext.getSystemService("sensor");
            } catch (Throwable th) {
            }
        }
    }

    public static b a(Context context) {
        if (f == null) {
            synchronized (b.class) {
                try {
                    if (f == null) {
                        f = new b(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    private void c() {
        synchronized (this) {
            try {
                SensorManager sensorManager = this.f34970b;
                if (sensorManager != null) {
                    if (this.f34971c == 0) {
                        if (!this.f34970b.registerListener(this, sensorManager.getDefaultSensor(1), 3)) {
                            return;
                        }
                    }
                    this.f34971c++;
                }
            } catch (Exception e) {
            }
        }
    }

    private void d() {
        synchronized (this) {
            try {
                SensorManager sensorManager = this.f34970b;
                if (sensorManager != null) {
                    int i = this.f34971c - 1;
                    this.f34971c = i;
                    if (i == 0) {
                        sensorManager.unregisterListener(this);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    public final String a() {
        String str = null;
        try {
            c();
            synchronized (this) {
                int i = 0;
                while (this.f34972d == 0 && i < 10) {
                    i++;
                    wait(100L);
                }
            }
            DecimalFormat decimalFormat = new DecimalFormat(IdManager.DEFAULT_VERSION_NAME);
            str = decimalFormat.format(this.e[0]) + "," + decimalFormat.format(this.e[1]) + "," + decimalFormat.format(this.e[2]);
        } catch (Throwable th) {
        }
        d();
        this.f34972d = 0;
        return str;
    }

    public final String b() {
        synchronized (this) {
            String str = "";
            int size = this.f34969a.size();
            if (size <= 0) {
                return "";
            }
            if (size == 1) {
                return this.f34969a.get(0);
            }
            String str2 = str;
            try {
                List<String> list = this.f34969a;
                int i = size - 10;
                if (i <= 0) {
                    i = 0;
                }
                List<String> subList = list.subList(i, size);
                for (int i2 = 0; i2 < subList.size(); i2++) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(subList.get(i2));
                    sb.append("|");
                    str = sb.toString();
                }
                str2 = str;
                str2 = str.substring(0, str.length() - 1);
            } catch (Throwable th) {
            }
            return str2;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        this.e = sensorEvent.values;
        this.f34972d = 1;
    }
}
