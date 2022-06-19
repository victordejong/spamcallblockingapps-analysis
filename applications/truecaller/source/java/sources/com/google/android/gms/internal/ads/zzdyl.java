package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyl.class */
public final class zzdyl implements SensorEventListener {
    private final Context zza;
    private SensorManager zzb;
    private Sensor zzc;
    private long zzd;
    private int zze;
    private zzdyk zzf;
    private boolean zzg;

    public zzdyl(Context context) {
        this.zza = context;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgt)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0] / 9.80665f;
            float f2 = fArr[1] / 9.80665f;
            float f3 = fArr[2] / 9.80665f;
            if (((float) Math.sqrt((f3 * f3) + (f2 * f2) + (f * f))) < ((Float) zzbet.zzc().zzc(zzbjl.zzgu)).floatValue()) {
                return;
            }
            long mo38787c = zzt.zzj().mo38787c();
            if (this.zzd + ((Integer) zzbet.zzc().zzc(zzbjl.zzgv)).intValue() > mo38787c) {
                return;
            }
            if (this.zzd + ((Integer) zzbet.zzc().zzc(zzbjl.zzgw)).intValue() < mo38787c) {
                this.zze = 0;
            }
            zze.zza("Shake detected.");
            this.zzd = mo38787c;
            int i = this.zze + 1;
            this.zze = i;
            zzdyk zzdykVar = this.zzf;
            if (zzdykVar == null) {
                return;
            }
            if (i != ((Integer) zzbet.zzc().zzc(zzbjl.zzgx)).intValue()) {
                return;
            }
            zzdyc zzdycVar = (zzdyc) zzdykVar;
            zzdycVar.zzk(new zzdxz(zzdycVar), zzdyb.GESTURE);
        }
    }

    public final void zza(zzdyk zzdykVar) {
        this.zzf = zzdykVar;
    }

    public final void zzb() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgt)).booleanValue()) {
                return;
            }
            if (this.zzb == null) {
                SensorManager sensorManager2 = (SensorManager) this.zza.getSystemService("sensor");
                this.zzb = sensorManager2;
                if (sensorManager2 == null) {
                    zzcgt.zzi("Shake detection failed to initialize. Failed to obtain accelerometer.");
                    return;
                }
                this.zzc = sensorManager2.getDefaultSensor(1);
            }
            if (!this.zzg && (sensorManager = this.zzb) != null && (sensor = this.zzc) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.zzd = zzt.zzj().mo38787c() - ((Integer) zzbet.zzc().zzc(zzbjl.zzgv)).intValue();
                this.zzg = true;
                zze.zza("Listening for shake gestures.");
            }
        }
    }

    public final void zzc() {
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
}
