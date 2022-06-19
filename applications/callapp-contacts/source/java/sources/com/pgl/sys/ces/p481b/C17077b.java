package com.pgl.sys.ces.p481b;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.firebase.crashlytics.internal.common.IdManager;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.pgl.sys.ces.b.b */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/b/b.class */
public final class C17077b implements SensorEventListener {

    /* renamed from: f */
    private static C17077b f60617f;

    /* renamed from: b */
    private SensorManager f60619b;

    /* renamed from: c */
    private int f60620c;

    /* renamed from: d */
    private int f60621d = 0;

    /* renamed from: e */
    private float[] f60622e = new float[3];

    /* renamed from: a */
    public List<String> f60618a = new ArrayList();

    private C17077b(Context context) {
        this.f60619b = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            try {
                this.f60619b = (SensorManager) applicationContext.getSystemService("sensor");
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static C17077b m5899a(Context context) {
        if (f60617f == null) {
            synchronized (C17077b.class) {
                try {
                    if (f60617f == null) {
                        f60617f = new C17077b(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f60617f;
    }

    /* renamed from: c */
    private void m5897c() {
        synchronized (this) {
            try {
                SensorManager sensorManager = this.f60619b;
                if (sensorManager != null) {
                    if (this.f60620c == 0) {
                        if (!this.f60619b.registerListener(this, sensorManager.getDefaultSensor(1), 3)) {
                            return;
                        }
                    }
                    this.f60620c++;
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: d */
    private void m5896d() {
        synchronized (this) {
            try {
                SensorManager sensorManager = this.f60619b;
                if (sensorManager != null) {
                    int i = this.f60620c - 1;
                    this.f60620c = i;
                    if (i == 0) {
                        sensorManager.unregisterListener(this);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public final String m5900a() {
        String str;
        try {
            m5897c();
            synchronized (this) {
                int i = 0;
                while (this.f60621d == 0 && i < 10) {
                    i++;
                    wait(100L);
                }
            }
            DecimalFormat decimalFormat = new DecimalFormat(IdManager.DEFAULT_VERSION_NAME);
            str = decimalFormat.format(this.f60622e[0]) + "," + decimalFormat.format(this.f60622e[1]) + "," + decimalFormat.format(this.f60622e[2]);
        } catch (Throwable th) {
            str = null;
        }
        m5896d();
        this.f60621d = 0;
        return str;
    }

    /* renamed from: b */
    public final String m5898b() {
        synchronized (this) {
            String str = "";
            int size = this.f60618a.size();
            if (size <= 0) {
                return "";
            }
            if (size == 1) {
                return this.f60618a.get(0);
            }
            String str2 = str;
            try {
                List<String> list = this.f60618a;
                int i = size - 10;
                if (i <= 0) {
                    i = 0;
                }
                List<String> subList = list.subList(i, size);
                for (int i2 = 0; i2 < subList.size(); i2++) {
                    String str3 = str;
                    String str4 = str;
                    StringBuilder sb = new StringBuilder();
                    String str5 = str;
                    sb.append(str);
                    String str6 = str;
                    sb.append(subList.get(i2));
                    String str7 = str;
                    sb.append("|");
                    String str8 = str;
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
        this.f60622e = sensorEvent.values;
        this.f60621d = 1;
    }
}
