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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebf.class */
public final class zzebf implements SensorEventListener {
    @Nullable
    private final SensorManager zza;
    @Nullable
    private final Sensor zzb;
    private float zzc = 0.0f;
    private Float zzd = Float.valueOf(0.0f);
    private long zze = zzt.zzA().currentTimeMillis();
    private int zzf = 0;
    private boolean zzg = false;
    private boolean zzh = false;
    @Nullable
    private zzebe zzi = null;
    @GuardedBy("this")
    private boolean zzj = false;

    public zzebf(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.zza = sensorManager;
        if (sensorManager != null) {
            this.zzb = sensorManager.getDefaultSensor(4);
        } else {
            this.zzb = null;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgJ)).booleanValue()) {
            return;
        }
        long currentTimeMillis = zzt.zzA().currentTimeMillis();
        if (this.zze + ((Integer) zzbgq.zzc().zzb(zzblj.zzgL)).intValue() < currentTimeMillis) {
            this.zzf = 0;
            this.zze = currentTimeMillis;
            this.zzg = false;
            this.zzh = false;
            this.zzc = this.zzd.floatValue();
        }
        Float valueOf = Float.valueOf((sensorEvent.values[1] * 4.0f) + this.zzd.floatValue());
        this.zzd = valueOf;
        float floatValue = valueOf.floatValue();
        float f = this.zzc;
        zzblb<Float> zzblbVar = zzblj.zzgK;
        if (floatValue > ((Float) zzbgq.zzc().zzb(zzblbVar)).floatValue() + f) {
            this.zzc = this.zzd.floatValue();
            this.zzh = true;
        } else if (this.zzd.floatValue() < this.zzc - ((Float) zzbgq.zzc().zzb(zzblbVar)).floatValue()) {
            this.zzc = this.zzd.floatValue();
            this.zzg = true;
        }
        if (this.zzd.isInfinite()) {
            this.zzd = Float.valueOf(0.0f);
            this.zzc = 0.0f;
        }
        if (!this.zzg || !this.zzh) {
            return;
        }
        zze.zza("Flick detected.");
        this.zze = currentTimeMillis;
        int i = this.zzf + 1;
        this.zzf = i;
        this.zzg = false;
        this.zzh = false;
        zzebe zzebeVar = this.zzi;
        if (zzebeVar == null) {
            return;
        }
        if (i != ((Integer) zzbgq.zzc().zzb(zzblj.zzgM)).intValue()) {
            return;
        }
        zzebt zzebtVar = (zzebt) zzebeVar;
        zzebtVar.zzg(new zzebr(zzebtVar), zzebs.GESTURE);
    }

    public final void zza() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (this.zzj && (sensorManager = this.zza) != null && (sensor = this.zzb) != null) {
                sensorManager.unregisterListener(this, sensor);
                this.zzj = false;
                zze.zza("Stopped listening for flick gestures.");
            }
        }
    }

    public final void zzb() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgJ)).booleanValue()) {
                return;
            }
            if (!this.zzj && (sensorManager = this.zza) != null && (sensor = this.zzb) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.zzj = true;
                zze.zza("Listening for flick gestures.");
            }
            if (this.zza != null && this.zzb != null) {
                return;
            }
            zzciz.zzj("Flick detection failed to initialize. Failed to obtain gyroscope.");
        }
    }

    public final void zzc(zzebe zzebeVar) {
        this.zzi = zzebeVar;
    }
}
