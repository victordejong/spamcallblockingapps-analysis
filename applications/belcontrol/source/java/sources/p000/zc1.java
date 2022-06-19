package p000;

import android.hardware.SensorEvent;
import android.view.MotionEvent;
import java.util.concurrent.TimeUnit;
/* renamed from: zc1 */
/* loaded from: classes3-dex2jar.jar:zc1.class */
public class zc1 extends rc1 {

    /* renamed from: b */
    public long f8790b;

    /* renamed from: c */
    public long f8791c;

    /* renamed from: d */
    public long f8792d;

    /* renamed from: e */
    public boolean f8793e;

    /* renamed from: f */
    public float f8794f;

    public zc1(hc1 hc1Var) {
    }

    @Override // p000.gc1
    /* renamed from: a */
    public void mo33a(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 8) {
            boolean z = false;
            if (sensorEvent.values[0] < sensorEvent.sensor.getMaximumRange()) {
                z = true;
            }
            m30d(z, sensorEvent.timestamp);
        }
    }

    @Override // p000.gc1
    /* renamed from: b */
    public void mo32b(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f8790b = timeUnit.toNanos(motionEvent.getEventTime());
            this.f8791c = timeUnit.toNanos(motionEvent.getEventTime());
            this.f8792d = 0L;
        }
        if (actionMasked == 1 || actionMasked == 3) {
            boolean z = this.f8793e;
            TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
            m30d(z, timeUnit2.toNanos(motionEvent.getEventTime()));
            long nanos = timeUnit2.toNanos(motionEvent.getEventTime()) - this.f8790b;
            this.f8794f = nanos == 0 ? this.f8793e ? 1.0f : 0.0f : ((float) this.f8792d) / ((float) nanos);
        }
    }

    @Override // p000.rc1
    /* renamed from: c */
    public float mo31c() {
        return ad1.m7224a(this.f8794f);
    }

    /* renamed from: d */
    public final void m30d(boolean z, long j) {
        long j2 = this.f8791c;
        if (j > j2) {
            if (this.f8793e) {
                this.f8792d += j - j2;
            }
            if (z) {
                this.f8791c = j;
            }
        }
        this.f8793e = z;
    }
}
