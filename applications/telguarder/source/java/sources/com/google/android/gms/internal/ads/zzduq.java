package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.internal.ads.zzcf;
import com.pubmatic.sdk.common.POBError;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduq.class */
public final class zzduq implements zzdte {
    private final Object zzhuh;
    private final zzdup zzhui;
    private final zzdvb zzhuj;
    private final zzdsy zzvs;

    public zzduq(Object obj, zzdup zzdupVar, zzdvb zzdvbVar, zzdsy zzdsyVar) {
        this.zzhuh = obj;
        this.zzhui = zzdupVar;
        this.zzhuj = zzdvbVar;
        this.zzvs = zzdsyVar;
    }

    private final byte[] zzc(Map<String, String> map, Map<String, Object> map2) {
        byte[] bArr;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                bArr = (byte[]) this.zzhuh.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.zzhuh, null, map2);
            } catch (Exception e) {
                this.zzvs.zza(2007, System.currentTimeMillis() - currentTimeMillis, e);
                return null;
            }
        }
        return bArr;
    }

    private static String zzj(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(((zzcf.zzf) ((zzelb) zzcf.zzf.zzbl().zza(zzcm.DG).zzi(zzejr.zzt(bArr)).zzbiw())).toByteArray(), 11);
    }

    public final void close() throws zzduz {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.zzhuh.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.zzhuh, new Object[0]);
                this.zzvs.zzh(3001, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzduz((int) AdError.INTERNAL_ERROR_2003, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final String zza(Context context, String str, String str2, View view, Activity activity) {
        String zzj;
        synchronized (this) {
            Map<String, Object> zzce = this.zzhuj.zzce();
            zzce.put("f", "c");
            zzce.put("ctx", context);
            zzce.put("cs", str2);
            zzce.put("aid", null);
            zzce.put(ViewHierarchyConstants.VIEW_KEY, view);
            zzce.put("act", activity);
            zzj = zzj(zzc(null, zzce));
        }
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final void zza(String str, MotionEvent motionEvent) throws zzduz {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("aid", null);
                hashMap.put("evt", motionEvent);
                this.zzhuh.getClass().getDeclaredMethod("he", Map.class).invoke(this.zzhuh, hashMap);
                this.zzvs.zzh(POBError.AD_NOT_USED, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzduz(2005, e);
            }
        }
    }

    public final zzdup zzayo() {
        return this.zzhui;
    }

    public final boolean zzayp() throws zzduz {
        boolean booleanValue;
        synchronized (this) {
            try {
                booleanValue = ((Boolean) this.zzhuh.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.zzhuh, new Object[0])).booleanValue();
            } catch (Exception e) {
                throw new zzduz(2001, e);
            }
        }
        return booleanValue;
    }

    public final int zzayq() throws zzduz {
        int intValue;
        synchronized (this) {
            try {
                intValue = ((Integer) this.zzhuh.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.zzhuh, new Object[0])).intValue();
            } catch (Exception e) {
                throw new zzduz((int) AdError.INTERNAL_ERROR_2006, e);
            }
        }
        return intValue;
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final String zzb(Context context, String str, View view, Activity activity) {
        String zzj;
        synchronized (this) {
            Map<String, Object> zzcd = this.zzhuj.zzcd();
            zzcd.put("f", "v");
            zzcd.put("ctx", context);
            zzcd.put("aid", null);
            zzcd.put(ViewHierarchyConstants.VIEW_KEY, view);
            zzcd.put("act", activity);
            zzj = zzj(zzc(null, zzcd));
        }
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final String zzs(Context context, String str) {
        String zzj;
        synchronized (this) {
            Map<String, Object> zzcc = this.zzhuj.zzcc();
            zzcc.put("f", "q");
            zzcc.put("ctx", context);
            zzcc.put("aid", null);
            zzj = zzj(zzc(null, zzcc));
        }
        return zzj;
    }
}
