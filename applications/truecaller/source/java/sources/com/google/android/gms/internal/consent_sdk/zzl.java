package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.amazon.device.ads.DtbConstants;
import e.m.a.i.a;
import e.m.a.i.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzl.class */
public final class zzl {
    private final zzn zza;
    private final Activity zzb;
    private final a zzc;
    private final e zzd;

    private zzl(zzn zznVar, Activity activity, a aVar, e eVar) {
        this.zza = zznVar;
        this.zzb = activity;
        this.zzc = aVar;
    }

    public final zzbn zza() throws zzk {
        zzb zzbVar;
        ArrayList arrayList;
        Application application;
        zzal zzalVar;
        String str;
        zzbn zzbnVar = new zzbn();
        zzbnVar.zza = zzc();
        zzbVar = this.zza.zzb;
        zza zza = zzbVar.zza();
        if (zza != null) {
            zzbnVar.zzb = zza.zza;
            zzbnVar.zzi = Boolean.valueOf(zza.zzb);
        }
        if (!this.zzc.a) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList();
            Objects.requireNonNull(this.zzc);
        }
        zzbnVar.zzn = arrayList;
        application = this.zza.zza;
        zzalVar = this.zza.zzc;
        Set<String> zzc = zzalVar.zzc();
        HashMap hashMap = new HashMap();
        for (String str2 : zzc) {
            zzcb zza2 = zzcc.zza(application, str2);
            if (zza2 == null) {
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    "Fetching request info: failed for key: ".concat(valueOf);
                } else {
                    new String("Fetching request info: failed for key: ");
                }
            } else {
                Object obj = application.getSharedPreferences(zza2.zza, 0).getAll().get(zza2.zzb);
                if (obj == null) {
                    String valueOf2 = String.valueOf(str2);
                    if (valueOf2.length() != 0) {
                        "Stored info not exists: ".concat(valueOf2);
                    } else {
                        new String("Stored info not exists: ");
                    }
                } else {
                    if (obj instanceof Boolean) {
                        str = ((Boolean) obj).booleanValue() ? "1" : DtbConstants.NETWORK_TYPE_UNKNOWN;
                    } else if (obj instanceof Number) {
                        str = obj.toString();
                    } else if (obj instanceof String) {
                        str = (String) obj;
                    } else {
                        String valueOf3 = String.valueOf(str2);
                        if (valueOf3.length() != 0) {
                            "Failed to fetch stored info: ".concat(valueOf3);
                        } else {
                            new String("Failed to fetch stored info: ");
                        }
                    }
                    hashMap.put(str2, str);
                }
            }
        }
        zzbnVar.zzj = hashMap;
        zzbnVar.zzd = null;
        zzbnVar.zzg = null;
        throw null;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    private final zzbp zzb() {
        Application application;
        PackageInfo packageInfo;
        Application application2;
        Application application3;
        Application application4;
        application = this.zza.zza;
        String str = null;
        try {
            application4 = this.zza.zza;
            packageInfo = application4.getPackageManager().getPackageInfo(application.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        zzbp zzbpVar = new zzbp();
        zzbpVar.zza = application.getPackageName();
        application2 = this.zza.zza;
        PackageManager packageManager = application2.getPackageManager();
        application3 = this.zza.zza;
        CharSequence applicationLabel = packageManager.getApplicationLabel(application3.getApplicationInfo());
        if (applicationLabel != null) {
            str = applicationLabel.toString();
        }
        zzbpVar.zzb = str;
        if (packageInfo != null) {
            zzbpVar.zzc = Long.toString(Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode);
        }
        return zzbpVar;
    }

    private final String zzc() throws zzk {
        throw null;
    }
}
