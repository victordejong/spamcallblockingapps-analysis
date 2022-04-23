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
    static zzd zzj;
    private final Context zzk;
    private String zzl;
    private final AtomicInteger zzm = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private zzd(Context context) {
        this.zzk = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzd zzd(Context context) {
        zzd zzdVar;
        synchronized (zzd.class) {
            try {
                if (zzj == null) {
                    zzj = new zzd(context);
                }
                zzdVar = zzj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzd(Bundle bundle, String str) {
        String string = bundle.getString(str);
        String str2 = string;
        if (string == null) {
            str2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        return str2;
    }

    private final Bundle zze() {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = this.zzk.getPackageManager().getApplicationInfo(this.zzk.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        return (applicationInfo == null || applicationInfo.metaData == null) ? Bundle.EMPTY : applicationInfo.metaData;
    }

    private final String zze(Bundle bundle, String str) {
        String zzd = zzd(bundle, str);
        if (!TextUtils.isEmpty(zzd)) {
            return zzd;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("_loc_key");
        String zzd2 = zzd(bundle, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        if (TextUtils.isEmpty(zzd2)) {
            return null;
        }
        Resources resources = this.zzk.getResources();
        int identifier = resources.getIdentifier(zzd2, "string", this.zzk.getPackageName());
        if (identifier == 0) {
            String valueOf3 = String.valueOf(str);
            String valueOf4 = String.valueOf("_loc_key");
            String substring = (valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 49 + String.valueOf(zzd2).length());
            sb.append(substring);
            sb.append(" resource not found: ");
            sb.append(zzd2);
            sb.append(" Default value will be used.");
            Log.w("GcmNotification", sb.toString());
            return null;
        }
        String valueOf5 = String.valueOf(str);
        String valueOf6 = String.valueOf("_loc_args");
        String zzd3 = zzd(bundle, valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5));
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
            String valueOf7 = String.valueOf(str);
            String valueOf8 = String.valueOf("_loc_args");
            String substring2 = (valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7)).substring(6);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0407  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zze(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 1141
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.zzd.zze(android.os.Bundle):boolean");
    }
}
