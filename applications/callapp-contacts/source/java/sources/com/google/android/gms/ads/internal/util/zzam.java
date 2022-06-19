package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.dbt;
import com.google.android.gms.internal.ads.ekb;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzam.class */
public final class zzam {
    private final Object lock = new Object();
    private String zzeho = "";
    private String zzehp = "";
    private boolean zzehq = false;
    private String zzehr = "";

    private final void zza(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzd.zzey("Can not create dialog without Activity Context");
        } else {
            zzj.zzegq.post(new zzal(this, context, str, z, z2));
        }
    }

    private final String zzbk(Context context) {
        String str;
        synchronized (this.lock) {
            if (TextUtils.isEmpty(this.zzeho)) {
                zzr.zzkv();
                String zzr = zzj.zzr(context, "debug_signals_id.txt");
                this.zzeho = zzr;
                if (TextUtils.isEmpty(zzr)) {
                    zzr.zzkv();
                    this.zzeho = zzj.zzzr();
                    zzr.zzkv();
                    zzj.zzc(context, "debug_signals_id.txt", this.zzeho);
                }
            }
            str = this.zzeho;
        }
        return str;
    }

    private final void zzc(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzd(context, (String) ekb.m14831e().m18571a(C12187aq.f42750cG), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzr.zzkv();
        zzj.zzb(context, str, buildUpon.build().toString());
    }

    private final Uri zzd(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", zzbk(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    private final boolean zzf(Context context, String str, String str2) {
        String zzh = zzh(context, zzd(context, (String) ekb.m14831e().m18571a(C12187aq.f42748cE), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzh)) {
            zzd.zzdz("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zzh.trim());
            String optString = jSONObject.optString("gct");
            this.zzehr = jSONObject.optString("status");
            synchronized (this.lock) {
                this.zzehp = optString;
            }
            return true;
        } catch (JSONException e) {
            zzd.zzd("Fail to get in app preview response json.", e);
            return false;
        }
    }

    private final boolean zzg(Context context, String str, String str2) {
        String zzh = zzh(context, zzd(context, (String) ekb.m14831e().m18571a(C12187aq.f42749cF), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzh)) {
            zzd.zzdz("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(zzh.trim()).optString("debug_mode"));
            synchronized (this.lock) {
                this.zzehq = equals;
            }
            return equals;
        } catch (JSONException e) {
            zzd.zzd("Fail to get debug mode response json.", e);
            return false;
        }
    }

    private static String zzh(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", zzr.zzkv().zzq(context, str2));
        dbt<String> zzb = new zzay(context).zzb(str, hashMap);
        try {
            return zzb.get(((Integer) ekb.m14831e().m18571a(C12187aq.f42751cH)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            zzd.zzc(valueOf.length() != 0 ? "Interrupted while retriving a response from: ".concat(valueOf) : new String("Interrupted while retriving a response from: "), e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            zzd.zzc(valueOf2.length() != 0 ? "Timeout while retriving a response from: ".concat(valueOf2) : new String("Timeout while retriving a response from: "), e2);
            zzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            zzd.zzc(valueOf3.length() != 0 ? "Error retriving a response from: ".concat(valueOf3) : new String("Error retriving a response from: "), e3);
            return null;
        }
    }

    private final void zzi(Context context, String str, String str2) {
        zzr.zzkv();
        zzj.zzb(context, zzd(context, (String) ekb.m14831e().m18571a(C12187aq.f42747cD), str, str2));
    }

    public final void zza(Context context, String str, String str2, String str3) {
        boolean zzaaf = zzaaf();
        if (!zzg(context, str, str2)) {
            zzi(context, str, str2);
            return;
        }
        if (!zzaaf && !TextUtils.isEmpty(str3)) {
            zzc(context, str2, str3, str);
        }
        zzd.zzdz("Device is linked for debug signals.");
        zza(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public final String zzaae() {
        String str;
        synchronized (this.lock) {
            str = this.zzehp;
        }
        return str;
    }

    public final boolean zzaaf() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzehq;
        }
        return z;
    }

    public final boolean zzb(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzr.zzlf().zzaaf()) {
            return false;
        }
        zzd.zzdz("Sending troubleshooting signals to the server.");
        zzc(context, str, str2, str3);
        return true;
    }

    public final void zze(Context context, String str, String str2) {
        if (!zzf(context, str, str2)) {
            zza(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(this.zzehr)) {
            zzd.zzdz("Creative is not pushed for this device.");
            zza(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.zzehr)) {
            zzd.zzdz("The app is not linked for creative preview.");
            zzi(context, str, str2);
        } else if (!"0".equals(this.zzehr)) {
        } else {
            zzd.zzdz("Device is linked for in app preview.");
            zza(context, "The device is successfully linked for creative preview.", false, true);
        }
    }
}
