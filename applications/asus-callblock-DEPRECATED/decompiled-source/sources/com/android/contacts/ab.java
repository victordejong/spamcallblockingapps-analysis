package com.android.contacts;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ab.class */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    private final b f514a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f515b;

    /* renamed from: com.android.contacts.ab$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ab$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f516a = new int[c.a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0022 -> B:9:0x0013). Please submit an issue!!! */
        static {
            try {
                f516a[c.f519a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f516a[c.f520b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ab$a.class */
    public interface a {
        void a();

        void b();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ab$b.class */
    private static final class b implements SensorEventListener {

        /* renamed from: a  reason: collision with root package name */
        final a f517a;
        private final SensorManager c;
        private final Sensor d;
        private final float e;

        /* renamed from: b  reason: collision with root package name */
        int f518b = c.f520b;
        private boolean f = false;

        public b(SensorManager sensorManager, Sensor sensor, a aVar) {
            this.c = sensorManager;
            this.d = sensor;
            this.e = sensor.getMaximumRange();
            this.f517a = aVar;
        }

        final void a() {
            this.c.unregisterListener(this);
            this.f = false;
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.values != null && sensorEvent.values.length != 0) {
                float f = sensorEvent.values[0];
                int i = (f > 5.0f || f == this.e) ? c.f520b : c.f519a;
                synchronized (this) {
                    if (i != this.f518b) {
                        this.f518b = i;
                        if (this.f && this.f518b == c.f520b) {
                            a();
                        }
                        switch (AnonymousClass1.f516a[i - 1]) {
                            case 1:
                                this.f517a.a();
                                return;
                            case 2:
                                this.f517a.b();
                                return;
                            default:
                                return;
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ab$c.class */
    public static final class c extends Enum<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f519a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f520b = 2;
        private static final /* synthetic */ int[] c = {f519a, f520b};

        public static int[] a() {
            return (int[]) c.clone();
        }
    }

    public ab(Context context, a aVar) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        Sensor defaultSensor = sensorManager.getDefaultSensor(8);
        if (defaultSensor == null) {
            this.f514a = null;
        } else {
            this.f514a = new b(sensorManager, defaultSensor, aVar);
        }
    }

    public final void a() {
        int i;
        if (this.f514a != null && this.f515b) {
            b bVar = this.f514a;
            synchronized (bVar) {
                bVar.a();
                i = bVar.f518b;
                bVar.f518b = c.f520b;
            }
            if (i != c.f520b) {
                bVar.f517a.b();
            }
            this.f515b = false;
        }
    }
}
