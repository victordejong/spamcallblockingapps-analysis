package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AdError;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfnu.class */
public final class zzfnu implements zzfmk {
    private final Object zza;
    private final zzfnv zzb;
    private final zzfog zzc;
    private final zzfmh zzd;

    public zzfnu(Object obj, zzfnv zzfnvVar, zzfog zzfogVar, zzfmh zzfmhVar) {
        this.zza = obj;
        this.zzb = zzfnvVar;
        this.zzc = zzfogVar;
        this.zzd = zzfmhVar;
    }

    private static String zzi(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzakb zza = zzakc.zza();
        zza.zzc(5);
        zza.zza(zzgjf.zzv(bArr));
        return Base64.encodeToString(zza.zzah().zzar(), 11);
    }

    private final byte[] zzj(Map<String, String> map, Map<String, Object> map2) {
        byte[] bArr;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                bArr = (byte[]) this.zza.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.zza, null, map2);
            } catch (Exception e) {
                this.zzd.zzc(2007, System.currentTimeMillis() - currentTimeMillis, e);
                return null;
            }
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzfmk
    public final String zza(Context context, String str, String str2, View view, Activity activity) {
        String zzi;
        synchronized (this) {
            Map<String, Object> zza = this.zzc.zza();
            zza.put("f", "c");
            zza.put("ctx", context);
            zza.put("cs", str2);
            zza.put("aid", null);
            zza.put("view", view);
            zza.put("act", activity);
            zzi = zzi(zzj(null, zza));
        }
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzfmk
    public final String zzb(Context context, String str, View view, Activity activity) {
        String zzi;
        synchronized (this) {
            Map<String, Object> zzc = this.zzc.zzc();
            zzc.put("f", "v");
            zzc.put("ctx", context);
            zzc.put("aid", null);
            zzc.put("view", view);
            zzc.put("act", null);
            zzi = zzi(zzj(null, zzc));
        }
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzfmk
    public final String zzc(Context context, String str) {
        String zzi;
        synchronized (this) {
            Map<String, Object> zzb = this.zzc.zzb();
            zzb.put("f", "q");
            zzb.put("ctx", context);
            zzb.put("aid", null);
            zzi = zzi(zzj(null, zzb));
        }
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzfmk
    public final void zzd(String str, MotionEvent motionEvent) throws zzfoe {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("t", new Throwable());
                hashMap.put("aid", null);
                hashMap.put("evt", motionEvent);
                this.zza.getClass().getDeclaredMethod("he", Map.class).invoke(this.zza, hashMap);
                this.zzd.zzd(3003, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzfoe(2005, e);
            }
        }
    }

    public final int zze() throws zzfoe {
        int intValue;
        synchronized (this) {
            try {
                intValue = ((Integer) this.zza.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.zza, new Object[0])).intValue();
            } catch (Exception e) {
                throw new zzfoe((int) AdError.INTERNAL_ERROR_2006, e);
            }
        }
        return intValue;
    }

    public final zzfnv zzf() {
        return this.zzb;
    }

    public final void zzg() throws zzfoe {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.zza.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.zza, new Object[0]);
                this.zzd.zzd(AdError.MEDIATION_ERROR_CODE, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzfoe((int) AdError.INTERNAL_ERROR_2003, e);
            }
        }
    }

    public final boolean zzh() throws zzfoe {
        boolean booleanValue;
        synchronized (this) {
            try {
                booleanValue = ((Boolean) this.zza.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.zza, new Object[0])).booleanValue();
            } catch (Exception e) {
                throw new zzfoe((int) AdError.INTERNAL_ERROR_CODE, e);
            }
        }
        return booleanValue;
    }
}
