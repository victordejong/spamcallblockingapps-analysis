package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.amazon.device.ads.MraidCloseCommand;
import com.facebook.ads.AdError;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjv.class */
public final class zzfjv implements zzfil {
    private final Object zza;
    private final zzfjw zzb;
    private final zzfkh zzc;
    private final zzfii zzd;

    public zzfjv(Object obj, zzfjw zzfjwVar, zzfkh zzfkhVar, zzfii zzfiiVar) {
        this.zza = obj;
        this.zzb = zzfjwVar;
        this.zzc = zzfkhVar;
        this.zzd = zzfiiVar;
    }

    private static String zzi(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzzl zza = zzzm.zza();
        zza.zzc(5);
        zza.zza(zzgex.zzt(bArr));
        return Base64.encodeToString(zza.zzah().zzao(), 11);
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

    @Override // com.google.android.gms.internal.ads.zzfil
    public final String zza(Context context, String str) {
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

    @Override // com.google.android.gms.internal.ads.zzfil
    public final String zzb(Context context, String str, View view, Activity activity) {
        String zzi;
        synchronized (this) {
            Map<String, Object> zzc = this.zzc.zzc();
            zzc.put("f", "v");
            zzc.put("ctx", context);
            zzc.put("aid", null);
            zzc.put(ViewAction.VIEW, view);
            zzc.put("act", null);
            zzi = zzi(zzj(null, zzc));
        }
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzfil
    public final String zzc(Context context, String str, String str2, View view, Activity activity) {
        String zzi;
        synchronized (this) {
            Map<String, Object> zzd = this.zzc.zzd();
            zzd.put("f", AbstractC2405c.f7629a);
            zzd.put("ctx", context);
            zzd.put("cs", str2);
            zzd.put("aid", null);
            zzd.put(ViewAction.VIEW, view);
            zzd.put("act", activity);
            zzi = zzi(zzj(null, zzd));
        }
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzfil
    public final void zzd(String str, MotionEvent motionEvent) throws zzfkf {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("t", new Throwable());
                hashMap.put("aid", null);
                hashMap.put("evt", motionEvent);
                this.zza.getClass().getDeclaredMethod("he", Map.class).invoke(this.zza, hashMap);
                this.zzd.zzb(3003, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzfkf(2005, e);
            }
        }
    }

    public final zzfjw zze() {
        return this.zzb;
    }

    public final boolean zzf() throws zzfkf {
        boolean booleanValue;
        synchronized (this) {
            try {
                booleanValue = ((Boolean) this.zza.getClass().getDeclaredMethod(AnalyticsConstants.INIT, new Class[0]).invoke(this.zza, new Object[0])).booleanValue();
            } catch (Exception e) {
                throw new zzfkf((int) AdError.INTERNAL_ERROR_CODE, e);
            }
        }
        return booleanValue;
    }

    public final void zzg() throws zzfkf {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.zza.getClass().getDeclaredMethod(MraidCloseCommand.NAME, new Class[0]).invoke(this.zza, new Object[0]);
                this.zzd.zzb(AdError.MEDIATION_ERROR_CODE, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzfkf((int) AdError.INTERNAL_ERROR_2003, e);
            }
        }
    }

    public final int zzh() throws zzfkf {
        int intValue;
        synchronized (this) {
            try {
                intValue = ((Integer) this.zza.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.zza, new Object[0])).intValue();
            } catch (Exception e) {
                throw new zzfkf((int) AdError.INTERNAL_ERROR_2006, e);
            }
        }
        return intValue;
    }
}
