package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzdyb;
import com.google.android.gms.internal.ads.zzdyc;
import com.google.android.gms.internal.ads.zzfsm;
import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaz.class */
public final class zzaz {
    private zzdyc zzg;
    private final Object zzb = new Object();
    private String zzc = "";
    private String zzd = "";
    private boolean zze = false;
    private boolean zzf = false;
    @VisibleForTesting
    public String zza = "";

    @VisibleForTesting
    public static final String zzo(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", zzt.zzc().zzi(context, str2));
        zzfsm<String> zzb = new zzbr(context).zzb(0, str, hashMap, null);
        try {
            return zzb.get(((Integer) zzbet.zzc().zzc(zzbjl.zzdh)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            zzcgt.zzg(valueOf.length() != 0 ? "Interrupted while retrieving a response from: ".concat(valueOf) : new String("Interrupted while retrieving a response from: "), e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            zzcgt.zzg(valueOf2.length() != 0 ? "Timeout while retrieving a response from: ".concat(valueOf2) : new String("Timeout while retrieving a response from: "), e2);
            zzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            zzcgt.zzg(valueOf3.length() != 0 ? "Error retrieving a response from: ".concat(valueOf3) : new String("Error retrieving a response from: "), e3);
            return null;
        }
    }

    private final Uri zzp(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.zzb) {
            if (TextUtils.isEmpty(this.zzc)) {
                zzt.zzc();
                try {
                    FileInputStream openFileInput = context.openFileInput("debug_signals_id.txt");
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    IOUtils.m38779a(openFileInput, byteArrayOutputStream, true, 1024);
                    str5 = new String(byteArrayOutputStream.toByteArray(), StringConstant.UTF8);
                } catch (IOException e) {
                    zzcgt.zzd("Error reading from internal storage.");
                    str5 = "";
                }
                this.zzc = str5;
                if (TextUtils.isEmpty(str5)) {
                    zzt.zzc();
                    this.zzc = UUID.randomUUID().toString();
                    zzt.zzc();
                    String str6 = this.zzc;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes(StringConstant.UTF8));
                        openFileOutput.close();
                    } catch (Exception e2) {
                        zzcgt.zzg("Error writing to file in internal storage.", e2);
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

    public final void zza(zzdyc zzdycVar) {
        this.zzg = zzdycVar;
    }

    public final zzdyc zzb() {
        return this.zzg;
    }

    public final void zzc(Context context) {
        zzdyc zzdycVar;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgE)).booleanValue() || (zzdycVar = this.zzg) == null) {
            return;
        }
        zzdycVar.zzk(new zzaw(this, context), zzdyb.DEBUG_MENU);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzd(android.content.Context r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzaz.zzd(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    public final boolean zze(Context context, String str, String str2) {
        String zzo = zzo(context, zzp(context, (String) zzbet.zzc().zzc(zzbjl.zzdf), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzo)) {
            zzcgt.zzd("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(zzo.trim()).optString("debug_mode"));
            zzj(equals);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgE)).booleanValue()) {
                zzg zzp = zzt.zzg().zzp();
                if (true != equals) {
                    str = "";
                }
                zzp.zzL(str);
            }
            return equals;
        } catch (JSONException e) {
            zzcgt.zzj("Fail to get debug mode response json.", e);
            return false;
        }
    }

    public final void zzf(Context context, String str, String str2) {
        zzt.zzc();
        zzs.zzX(context, zzp(context, (String) zzbet.zzc().zzc(zzbjl.zzdd), str, str2));
    }

    public final boolean zzg(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzm()) {
            return false;
        }
        zzcgt.zzd("Sending troubleshooting signals to the server.");
        zzh(context, str, str2, str3);
        return true;
    }

    public final void zzh(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzp(context, (String) zzbet.zzc().zzc(zzbjl.zzdg), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzt.zzc();
        zzs.zzN(context, str, buildUpon.build().toString());
    }

    public final String zzi() {
        String str;
        synchronized (this.zzb) {
            str = this.zzd;
        }
        return str;
    }

    public final void zzj(boolean z) {
        synchronized (this.zzb) {
            this.zzf = z;
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgE)).booleanValue()) {
                zzt.zzg().zzp().zzJ(z);
                zzdyc zzdycVar = this.zzg;
                if (zzdycVar != null) {
                    zzdycVar.zzb(z);
                }
            }
        }
    }

    public final boolean zzk() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzf;
        }
        return z;
    }

    public final void zzl(boolean z) {
        synchronized (this.zzb) {
            this.zze = z;
        }
    }

    public final boolean zzm() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zze;
        }
        return z;
    }

    @VisibleForTesting
    public final void zzn(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzcgt.zzh("Can not create dialog without Activity Context");
        } else {
            zzs.zza.post(new zzay(this, context, str, z, z2));
        }
    }
}
