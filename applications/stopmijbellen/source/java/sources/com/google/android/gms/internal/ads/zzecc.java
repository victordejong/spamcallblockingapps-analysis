package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecc.class */
public final class zzecc implements SensorEventListener {
    private final Context zza;
    @Nullable
    private SensorManager zzb;
    private Sensor zzc;
    private long zzd;
    private int zze;
    private zzecb zzf;
    @GuardedBy("this")
    private boolean zzg;

    public zzecc(Context context) {
        this.zza = context;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgE)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0] / 9.80665f;
            float f2 = fArr[1] / 9.80665f;
            float f3 = fArr[2] / 9.80665f;
            if (((float) Math.sqrt((f3 * f3) + (f2 * f2) + (f * f))) < ((Float) zzbgq.zzc().zzb(zzblj.zzgF)).floatValue()) {
                return;
            }
            long currentTimeMillis = zzt.zzA().currentTimeMillis();
            if (this.zzd + ((Integer) zzbgq.zzc().zzb(zzblj.zzgG)).intValue() > currentTimeMillis) {
                return;
            }
            if (this.zzd + ((Integer) zzbgq.zzc().zzb(zzblj.zzgH)).intValue() < currentTimeMillis) {
                this.zze = 0;
            }
            zze.zza("Shake detected.");
            this.zzd = currentTimeMillis;
            int i = this.zze + 1;
            this.zze = i;
            zzecb zzecbVar = this.zzf;
            if (zzecbVar == null) {
                return;
            }
            if (i != ((Integer) zzbgq.zzc().zzb(zzblj.zzgI)).intValue()) {
                return;
            }
            zzebt zzebtVar = (zzebt) zzecbVar;
            zzebtVar.zzg(new zzebq(zzebtVar), zzebs.GESTURE);
        }
    }

    public final void zza() {
        synchronized (this) {
            if (this.zzg) {
                SensorManager sensorManager = this.zzb;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(this, this.zzc);
                    zze.zza("Stopped listening for shake gestures.");
                }
                this.zzg = false;
            }
        }
    }

    public final void zzb() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgE)).booleanValue()) {
                return;
            }
            if (this.zzb == null) {
                SensorManager sensorManager2 = (SensorManager) this.zza.getSystemService("sensor");
                this.zzb = sensorManager2;
                if (sensorManager2 == null) {
                    zzciz.zzj("Shake detection failed to initialize. Failed to obtain accelerometer.");
                    return;
                }
                this.zzc = sensorManager2.getDefaultSensor(1);
            }
            if (!this.zzg && (sensorManager = this.zzb) != null && (sensor = this.zzc) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.zzd = zzt.zzA().currentTimeMillis() - ((Integer) zzbgq.zzc().zzb(zzblj.zzgG)).intValue();
                this.zzg = true;
                zze.zza("Listening for shake gestures.");
            }
        }
    }

    public final void zzc(zzecb zzecbVar) {
        this.zzf = zzecbVar;
    }
}
