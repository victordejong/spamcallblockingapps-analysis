package com.google.android.gms.gcm;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzd.class */
final class zzd {
    static zzd zzk;
    private final Context zzl;
    private String zzm;
    private final AtomicInteger zzn = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private zzd(Context context) {
        this.zzl = context.getApplicationContext();
    }

    public static zzd zzd(Context context) {
        zzd zzdVar;
        synchronized (zzd.class) {
            try {
                if (zzk == null) {
                    zzk = new zzd(context);
                }
                zzdVar = zzk;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzdVar;
    }

    public static String zzd(Bundle bundle, String str) {
        String string = bundle.getString(str);
        String str2 = string;
        if (string == null) {
            str2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        return str2;
    }

    private final String zze(Bundle bundle, String str) {
        String zzd = zzd(bundle, str);
        if (!TextUtils.isEmpty(zzd)) {
            return zzd;
        }
        String valueOf = String.valueOf(str);
        String zzd2 = zzd(bundle, "_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf));
        if (TextUtils.isEmpty(zzd2)) {
            return null;
        }
        Resources resources = this.zzl.getResources();
        int identifier = resources.getIdentifier(zzd2, "string", this.zzl.getPackageName());
        if (identifier == 0) {
            String valueOf2 = String.valueOf(str);
            String substring = ("_loc_key".length() != 0 ? valueOf2.concat("_loc_key") : new String(valueOf2)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 49 + String.valueOf(zzd2).length());
            sb.append(substring);
            sb.append(" resource not found: ");
            sb.append(zzd2);
            sb.append(" Default value will be used.");
            Log.w("GcmNotification", sb.toString());
            return null;
        }
        String valueOf3 = String.valueOf(str);
        String zzd3 = zzd(bundle, "_loc_args".length() != 0 ? valueOf3.concat("_loc_args") : new String(valueOf3));
        if (TextUtils.isEmpty(zzd3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(zzd3);
            Object[] objArr = new String[jSONArray.length()];
            for (int i = 0; i < objArr.length; i++) {
                objArr[i] = jSONArray.opt(i);
            }
            return resources.getString(identifier, objArr);
        } catch (MissingFormatArgumentException e) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzd2).length() + 58 + String.valueOf(zzd3).length());
            sb2.append("Missing format argument for ");
            sb2.append(zzd2);
            sb2.append(": ");
            sb2.append(zzd3);
            sb2.append(" Default value will be used.");
            Log.w("GcmNotification", sb2.toString(), e);
            return null;
        } catch (JSONException e2) {
            String valueOf4 = String.valueOf(str);
            String substring2 = ("_loc_args".length() != 0 ? valueOf4.concat("_loc_args") : new String(valueOf4)).substring(6);
            StringBuilder sb3 = new StringBuilder(String.valueOf(substring2).length() + 41 + String.valueOf(zzd3).length());
            sb3.append("Malformed ");
            sb3.append(substring2);
            sb3.append(": ");
            sb3.append(zzd3);
            sb3.append("  Default value will be used.");
            Log.w("GcmNotification", sb3.toString());
            return null;
        }
    }

    private final Bundle zzf() {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = this.zzl.getPackageManager().getApplicationInfo(this.zzl.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        return (applicationInfo == null || applicationInfo.metaData == null) ? Bundle.EMPTY : applicationInfo.metaData;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zze(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 1027
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.zzd.zze(android.os.Bundle):boolean");
    }
}
