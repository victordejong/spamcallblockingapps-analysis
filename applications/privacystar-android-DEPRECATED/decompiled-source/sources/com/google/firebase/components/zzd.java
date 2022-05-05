package com.google.firebase.components;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zzd.class */
final class zzd implements zze<Context> {
    private zzd() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzd(byte b) {
        this();
    }

    /* renamed from: zza  reason: avoid collision after fix types in other method */
    private static Bundle zza2(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("ComponentDiscovery", "Context has no PackageManager.");
                return null;
            }
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, ComponentDiscoveryService.class), 128);
            if (serviceInfo != null) {
                return serviceInfo.metaData;
            }
            Log.w("ComponentDiscovery", "ComponentDiscoveryService has no service info.");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("ComponentDiscovery", "Application info not found.");
            return null;
        }
    }

    @Override // com.google.firebase.components.zze
    public final /* synthetic */ List zza(Context context) {
        Bundle zza = zza2(context);
        if (zza == null) {
            Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : zza.keySet()) {
            if ("com.google.firebase.components.ComponentRegistrar".equals(zza.get(str)) && str.startsWith("com.google.firebase.components:")) {
                arrayList.add(str.substring(31));
            }
        }
        return arrayList;
    }
}
