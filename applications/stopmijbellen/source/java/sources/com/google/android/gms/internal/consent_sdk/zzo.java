package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.Objects;
import p231s4.C4286a;
import p231s4.C4293d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzo.class */
public final class zzo {
    private final zzn zza;
    private final Activity zzb;
    private final C4286a zzc;
    private final C4293d zzd;

    public /* synthetic */ zzo(zzn zznVar, Activity activity, C4286a c4286a, C4293d c4293d, zzm zzmVar) {
        this.zza = zznVar;
        this.zzb = activity;
        this.zzc = c4286a;
        this.zzd = c4293d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v138, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    public static zzbu zza(zzo zzoVar) throws zzj {
        Bundle bundle;
        String string;
        Application application;
        Application application2;
        zzb zzbVar;
        ArrayList arrayList;
        zzam zzamVar;
        Application application3;
        Application application4;
        Application application5;
        ArrayList arrayList2;
        Application application6;
        PackageInfo packageInfo;
        Application application7;
        Application application8;
        Application application9;
        zzbu zzbuVar = new zzbu();
        Objects.requireNonNull(zzoVar.zzd);
        if (!TextUtils.isEmpty(null)) {
            string = null;
        } else {
            try {
                application = zzoVar.zza.zza;
                PackageManager packageManager = application.getPackageManager();
                application2 = zzoVar.zza.zza;
                bundle = packageManager.getApplicationInfo(application2.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                bundle = null;
            }
            string = bundle != null ? bundle.getString("com.google.android.gms.ads.APPLICATION_ID") : null;
            if (TextUtils.isEmpty(string)) {
                throw new zzj(3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
            }
        }
        zzbuVar.zza = string;
        zzbVar = zzoVar.zza.zzb;
        zza zza = zzbVar.zza();
        if (zza != null) {
            zzbuVar.zzc = zza.zza;
            zzbuVar.zzb = Boolean.valueOf(zza.zzb);
        }
        if (!zzoVar.zzc.f13454a) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList();
            Objects.requireNonNull(zzoVar.zzc);
            arrayList.add(zzbp.PREVIEWING_DEBUG_MESSAGES);
        }
        zzbuVar.zzk = arrayList;
        zzamVar = zzoVar.zza.zzc;
        zzbuVar.zzg = zzamVar.zzb();
        zzbuVar.zzf = Boolean.valueOf(zzoVar.zzd.f13457a);
        int i = Build.VERSION.SDK_INT;
        zzbuVar.zze = Locale.getDefault().toLanguageTag();
        zzbq zzbqVar = new zzbq();
        zzbqVar.zzb = Integer.valueOf(i);
        zzbqVar.zza = Build.MODEL;
        zzbqVar.zzc = 2;
        zzbuVar.zzd = zzbqVar;
        application3 = zzoVar.zza.zza;
        Configuration configuration = application3.getResources().getConfiguration();
        application4 = zzoVar.zza.zza;
        application4.getResources().getConfiguration();
        zzbs zzbsVar = new zzbs();
        zzbsVar.zza = Integer.valueOf(configuration.screenWidthDp);
        zzbsVar.zzb = Integer.valueOf(configuration.screenHeightDp);
        application5 = zzoVar.zza.zza;
        zzbsVar.zzc = Double.valueOf(application5.getResources().getDisplayMetrics().density);
        if (i < 28) {
            arrayList2 = Collections.emptyList();
        } else {
            Activity activity = zzoVar.zzb;
            Window window = activity == null ? null : activity.getWindow();
            View decorView = window == null ? null : window.getDecorView();
            WindowInsets rootWindowInsets = decorView == null ? null : decorView.getRootWindowInsets();
            DisplayCutout displayCutout = rootWindowInsets == null ? null : rootWindowInsets.getDisplayCutout();
            if (displayCutout == null) {
                arrayList2 = Collections.emptyList();
            } else {
                displayCutout.getSafeInsetBottom();
                ArrayList arrayList3 = new ArrayList();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    if (rect != null) {
                        zzbr zzbrVar = new zzbr();
                        zzbrVar.zzb = Integer.valueOf(rect.left);
                        zzbrVar.zzc = Integer.valueOf(rect.right);
                        zzbrVar.zza = Integer.valueOf(rect.top);
                        zzbrVar.zzd = Integer.valueOf(rect.bottom);
                        arrayList3.add(zzbrVar);
                    }
                }
                arrayList2 = arrayList3;
            }
        }
        zzbsVar.zzd = arrayList2;
        zzbuVar.zzh = zzbsVar;
        application6 = zzoVar.zza.zza;
        try {
            application9 = zzoVar.zza.zza;
            packageInfo = application9.getPackageManager().getPackageInfo(application6.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e2) {
            packageInfo = null;
        }
        zzbo zzboVar = new zzbo();
        zzboVar.zza = application6.getPackageName();
        application7 = zzoVar.zza.zza;
        PackageManager packageManager2 = application7.getPackageManager();
        application8 = zzoVar.zza.zza;
        CharSequence applicationLabel = packageManager2.getApplicationLabel(application8.getApplicationInfo());
        String str = null;
        if (applicationLabel != null) {
            str = applicationLabel.toString();
        }
        zzboVar.zzb = str;
        if (packageInfo != null) {
            zzboVar.zzc = Long.toString(Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode);
        }
        zzbuVar.zzi = zzboVar;
        zzbt zzbtVar = new zzbt();
        zzbtVar.zza = "2.0.0";
        zzbuVar.zzj = zzbtVar;
        return zzbuVar;
    }
}
