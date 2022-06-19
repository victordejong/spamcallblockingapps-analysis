package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxo.class */
public final class zzdxo implements SensorEventListener {
    private final SensorManager zza;
    private final Sensor zzb;
    private float zzc = 0.0f;
    private Float zzd = Float.valueOf(0.0f);
    private long zze = zzt.zzj().mo38787c();
    private int zzf = 0;
    private boolean zzg = false;
    private boolean zzh = false;
    private zzdxn zzi = null;
    private boolean zzj = false;

    public zzdxo(Context context) {
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
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgy)).booleanValue()) {
            return;
        }
        long mo38787c = zzt.zzj().mo38787c();
        if (this.zze + ((Integer) zzbet.zzc().zzc(zzbjl.zzgA)).intValue() < mo38787c) {
            this.zzf = 0;
            this.zze = mo38787c;
            this.zzg = false;
            this.zzh = false;
            this.zzc = this.zzd.floatValue();
        }
        Float valueOf = Float.valueOf((sensorEvent.values[1] * 4.0f) + this.zzd.floatValue());
        this.zzd = valueOf;
        float floatValue = valueOf.floatValue();
        float f = this.zzc;
        zzbjd<Float> zzbjdVar = zzbjl.zzgz;
        if (floatValue > ((Float) zzbet.zzc().zzc(zzbjdVar)).floatValue() + f) {
            this.zzc = this.zzd.floatValue();
            this.zzh = true;
        } else if (this.zzd.floatValue() < this.zzc - ((Float) zzbet.zzc().zzc(zzbjdVar)).floatValue()) {
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
        this.zze = mo38787c;
        int i = this.zzf + 1;
        this.zzf = i;
        this.zzg = false;
        this.zzh = false;
        zzdxn zzdxnVar = this.zzi;
        if (zzdxnVar == null) {
            return;
        }
        if (i != ((Integer) zzbet.zzc().zzc(zzbjl.zzgB)).intValue()) {
            return;
        }
        zzdyc zzdycVar = (zzdyc) zzdxnVar;
        zzdycVar.zzk(new zzdya(zzdycVar), zzdyb.GESTURE);
    }

    public final void zza(zzdxn zzdxnVar) {
        this.zzi = zzdxnVar;
    }

    public final void zzb() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgy)).booleanValue()) {
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
            zzcgt.zzi("Flick detection failed to initialize. Failed to obtain gyroscope.");
        }
    }

    public final void zzc() {
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
}
