package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzdzw;
import com.google.android.gms.internal.ads.zzwr;
import com.millennialmedia.internal.PlayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzam.class */
public final class zzam {
    private final Object lock = new Object();
    @GuardedBy("lock")
    private String zzefl = "";
    @GuardedBy("lock")
    private String zzefm = "";
    @GuardedBy("lock")
    private boolean zzefn = false;
    @VisibleForTesting
    private String zzefo = "";

    @VisibleForTesting
    private final void zza(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzazk.zzew("Can not create dialog without Activity Context");
        } else {
            zzj.zzeen.post(new zzal(this, context, str, z, z2));
        }
    }

    private final String zzbh(Context context) {
        String str;
        synchronized (this.lock) {
            if (TextUtils.isEmpty(this.zzefl)) {
                zzr.zzkr();
                String zzr = zzj.zzr(context, "debug_signals_id.txt");
                this.zzefl = zzr;
                if (TextUtils.isEmpty(zzr)) {
                    zzr.zzkr();
                    this.zzefl = zzj.zzyy();
                    zzr.zzkr();
                    zzj.zzc(context, "debug_signals_id.txt", this.zzefl);
                }
            }
            str = this.zzefl;
        }
        return str;
    }

    private final void zzc(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzd(context, (String) zzwr.zzqr().zzd(zzabp.zzcuz), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzr.zzkr();
        zzj.zzb(context, str, buildUpon.build().toString());
    }

    private final Uri zzd(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", zzbh(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    @VisibleForTesting
    private final boolean zzf(Context context, String str, String str2) {
        String zzh = zzh(context, zzd(context, (String) zzwr.zzqr().zzd(zzabp.zzcux), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzh)) {
            zzazk.zzdy("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zzh.trim());
            String optString = jSONObject.optString("gct");
            this.zzefo = jSONObject.optString("status");
            synchronized (this.lock) {
                this.zzefm = optString;
            }
            return true;
        } catch (JSONException e) {
            zzazk.zzd("Fail to get in app preview response json.", e);
            return false;
        }
    }

    @VisibleForTesting
    private final boolean zzg(Context context, String str, String str2) {
        String zzh = zzh(context, zzd(context, (String) zzwr.zzqr().zzd(zzabp.zzcuy), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzh)) {
            zzazk.zzdy("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(zzh.trim()).optString("debug_mode"));
            synchronized (this.lock) {
                this.zzefn = equals;
            }
            return equals;
        } catch (JSONException e) {
            zzazk.zzd("Fail to get debug mode response json.", e);
            return false;
        }
    }

    @VisibleForTesting
    private static String zzh(Context context, String str, String str2) {
        String str3;
        Throwable e;
        String str4;
        String str5;
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", zzr.zzkr().zzq(context, str2));
        zzdzw<String> zzb = new zzay(context).zzb(str, hashMap);
        try {
            return (String) zzb.get(((Integer) zzwr.zzqr().zzd(zzabp.zzcva)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            str4 = String.valueOf(str);
            if (str4.length() == 0) {
                str3 = new String("Interrupted while retriving a response from: ");
                zzazk.zzc(str3, e);
                zzb.cancel(true);
                return null;
            }
            str5 = "Interrupted while retriving a response from: ";
            str3 = str5.concat(str4);
            zzazk.zzc(str3, e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e3) {
            e = e3;
            str4 = String.valueOf(str);
            if (str4.length() == 0) {
                str3 = new String("Timeout while retriving a response from: ");
                zzazk.zzc(str3, e);
                zzb.cancel(true);
                return null;
            }
            str5 = "Timeout while retriving a response from: ";
            str3 = str5.concat(str4);
            zzazk.zzc(str3, e);
            zzb.cancel(true);
            return null;
        } catch (Exception e4) {
            String valueOf = String.valueOf(str);
            zzazk.zzc(valueOf.length() != 0 ? "Error retriving a response from: ".concat(valueOf) : new String("Error retriving a response from: "), e4);
            return null;
        }
    }

    private final void zzi(Context context, String str, String str2) {
        zzr.zzkr();
        zzj.zzb(context, zzd(context, (String) zzwr.zzqr().zzd(zzabp.zzcuw), str, str2));
    }

    public final void zza(Context context, String str, String str2, String str3) {
        boolean zzzm = zzzm();
        if (!zzg(context, str, str2)) {
            zzi(context, str, str2);
            return;
        }
        if (!zzzm && !TextUtils.isEmpty(str3)) {
            zzc(context, str2, str3, str);
        }
        zzazk.zzdy("Device is linked for debug signals.");
        zza(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public final boolean zzb(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzr.zzlb().zzzm()) {
            return false;
        }
        zzazk.zzdy("Sending troubleshooting signals to the server.");
        zzc(context, str, str2, str3);
        return true;
    }

    public final void zze(Context context, String str, String str2) {
        if (!zzf(context, str, str2)) {
            zza(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if (PlayList.VERSION.equals(this.zzefo)) {
            zzazk.zzdy("Creative is not pushed for this device.");
            zza(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.zzefo)) {
            zzazk.zzdy("The app is not linked for creative preview.");
            zzi(context, str, str2);
        } else if (!"0".equals(this.zzefo)) {
        } else {
            zzazk.zzdy("Device is linked for in app preview.");
            zza(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final String zzzl() {
        String str;
        synchronized (this.lock) {
            str = this.zzefm;
        }
        return str;
    }

    public final boolean zzzm() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzefn;
        }
        return z;
    }
}
