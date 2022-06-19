package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzebs;
import com.google.android.gms.internal.ads.zzebt;
import com.google.android.gms.internal.ads.zzfxa;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzba.class */
public final class zzba {
    private zzebt zzg;
    private final Object zzb = new Object();
    @GuardedBy("lock")
    private String zzc = "";
    @GuardedBy("lock")
    private String zzd = "";
    @GuardedBy("lock")
    private boolean zze = false;
    @GuardedBy("lock")
    private boolean zzf = false;
    @VisibleForTesting
    public String zza = "";

    @VisibleForTesting
    public static final String zzo(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", zzt.zzp().zzd(context, str2));
        zzfxa<String> zzb = new zzbs(context).zzb(0, str, hashMap, null);
        try {
            return zzb.get(((Integer) zzbgq.zzc().zzb(zzblj.zzdo)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            zzciz.zzh(valueOf.length() != 0 ? "Interrupted while retrieving a response from: ".concat(valueOf) : new String("Interrupted while retrieving a response from: "), e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            zzciz.zzh(valueOf2.length() != 0 ? "Timeout while retrieving a response from: ".concat(valueOf2) : new String("Timeout while retrieving a response from: "), e2);
            zzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            zzciz.zzh(valueOf3.length() != 0 ? "Error retrieving a response from: ".concat(valueOf3) : new String("Error retrieving a response from: "), e3);
            return null;
        }
    }

    private final Uri zzp(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.zzb) {
            if (TextUtils.isEmpty(this.zzc)) {
                zzt.zzp();
                try {
                    str5 = new String(IOUtils.readInputStreamFully(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException e) {
                    zzciz.zze("Error reading from internal storage.");
                    str5 = "";
                }
                this.zzc = str5;
                if (TextUtils.isEmpty(str5)) {
                    zzt.zzp();
                    this.zzc = UUID.randomUUID().toString();
                    zzt.zzp();
                    String str6 = this.zzc;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e2) {
                        zzciz.zzh("Error writing to file in internal storage.", e2);
                    }
                }
            }
            str4 = this.zzc;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    public final zzebt zza() {
        return this.zzg;
    }

    public final String zzb() {
        String str;
        synchronized (this.zzb) {
            str = this.zzd;
        }
        return str;
    }

    public final void zzc(Context context) {
        zzebt zzebtVar;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue() || (zzebtVar = this.zzg) == null) {
            return;
        }
        zzebtVar.zzg(new zzax(this, context), zzebs.DEBUG_MENU);
    }

    public final void zzd(Context context, String str, String str2) {
        zzt.zzp();
        zzt.zzY(context, zzp(context, (String) zzbgq.zzc().zzb(zzblj.zzdk), str, str2));
    }

    public final void zze(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzp(context, (String) zzbgq.zzc().zzb(zzblj.zzdn), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzt.zzp();
        zzt.zzO(context, str, buildUpon.build().toString());
    }

    public final void zzf(boolean z) {
        synchronized (this.zzb) {
            this.zzf = z;
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue()) {
                zzt.zzo().zzh().zzz(z);
                zzebt zzebtVar = this.zzg;
                if (zzebtVar != null) {
                    zzebtVar.zzi(z);
                }
            }
        }
    }

    public final void zzg(zzebt zzebtVar) {
        this.zzg = zzebtVar;
    }

    public final void zzh(boolean z) {
        synchronized (this.zzb) {
            this.zze = z;
        }
    }

    @VisibleForTesting
    public final void zzi(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzciz.zzi("Can not create dialog without Activity Context");
        } else {
            zzt.zza.post(new zzaz(this, context, str, z, z2));
        }
    }

    public final boolean zzj(Context context, String str, String str2) {
        String zzo = zzo(context, zzp(context, (String) zzbgq.zzc().zzb(zzblj.zzdm), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzo)) {
            zzciz.zze("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(zzo.trim()).optString("debug_mode"));
            zzf(equals);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue()) {
                zzg zzh = zzt.zzo().zzh();
                if (true != equals) {
                    str = "";
                }
                zzh.zzy(str);
            }
            return equals;
        } catch (JSONException e) {
            zzciz.zzk("Fail to get debug mode response json.", e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzk(android.content.Context r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzba.zzk(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzf;
        }
        return z;
    }

    public final boolean zzm() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zze;
        }
        return z;
    }

    public final boolean zzn(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzm()) {
            return false;
        }
        zzciz.zze("Sending troubleshooting signals to the server.");
        zze(context, str, str2, str3);
        return true;
    }
}
