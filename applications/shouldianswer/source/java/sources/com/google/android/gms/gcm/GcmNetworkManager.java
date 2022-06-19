package com.google.android.gms.gcm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import android.util.Log;
import androidx.p014c.C0374a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.internal.gcm.zzq;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmNetworkManager.class */
public class GcmNetworkManager {
    public static final int RESULT_FAILURE = 2;
    public static final int RESULT_RESCHEDULE = 1;
    public static final int RESULT_SUCCESS = 0;
    private static GcmNetworkManager zzh;
    private final Context zzi;
    private final Map<String, Map<String, Boolean>> zzj = new C0374a();

    private GcmNetworkManager(Context context) {
        this.zzi = context;
    }

    public static GcmNetworkManager getInstance(Context context) {
        GcmNetworkManager gcmNetworkManager;
        synchronized (GcmNetworkManager.class) {
            try {
                if (zzh == null) {
                    zzh = new GcmNetworkManager(context.getApplicationContext());
                }
                gcmNetworkManager = zzh;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gcmNetworkManager;
    }

    public static void zzd(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (100 < str.length()) {
                throw new IllegalArgumentException("Tag is larger than max permissible tag length (100)");
            }
            return;
        }
        throw new IllegalArgumentException("Must provide a valid tag.");
    }

    private static /* synthetic */ void zzd(Throwable th, zzp zzpVar) {
        if (th == null) {
            zzpVar.close();
            return;
        }
        try {
            zzpVar.close();
        } catch (Throwable th2) {
            zzq.zzd(th, th2);
        }
    }

    private final zzn zze() {
        if (GoogleCloudMessaging.zzf(this.zzi) < 5000000) {
            Log.e("GcmNetworkManager", "Google Play services is not available, dropping all GcmNetworkManager requests");
            return new zzo();
        }
        return new zzm(this.zzi);
    }

    private final boolean zze(String str) {
        Preconditions.checkNotNull(str, "GcmTaskService must not be null.");
        PackageManager packageManager = this.zzi.getPackageManager();
        List<ResolveInfo> emptyList = packageManager == null ? Collections.emptyList() : packageManager.queryIntentServices(str != null ? new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK).setClassName(this.zzi, str) : new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK).setPackage(this.zzi.getPackageName()), 0);
        if (CollectionUtils.isEmpty(emptyList)) {
            Log.e("GcmNetworkManager", String.valueOf(str).concat(" is not available. This may cause the task to be lost."));
            return true;
        }
        for (ResolveInfo resolveInfo : emptyList) {
            if (resolveInfo.serviceInfo != null && resolveInfo.serviceInfo.enabled) {
                return true;
            }
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 118);
        sb.append("The GcmTaskService class you provided ");
        sb.append(str);
        sb.append(" does not seem to support receiving com.google.android.gms.gcm.ACTION_TASK_READY");
        throw new IllegalArgumentException(sb.toString());
    }

    public void cancelAllTasks(Class<? extends GcmTaskService> cls) {
        ComponentName componentName = new ComponentName(this.zzi, cls);
        zzp zzpVar = new zzp("nts:client:cancelAll");
        try {
            zze(componentName.getClassName());
            zze().zzd(componentName);
            th = null;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    public void cancelTask(String str, Class<? extends GcmTaskService> cls) {
        ComponentName componentName = new ComponentName(this.zzi, cls);
        String valueOf = String.valueOf(str);
        zzp zzpVar = new zzp(valueOf.length() != 0 ? "nts:client:cancel:".concat(valueOf) : new String("nts:client:cancel:"));
        try {
            zzd(str);
            zze(componentName.getClassName());
            zze().zzd(componentName, str);
            th = null;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    public void schedule(Task task) {
        Map<String, Boolean> map;
        synchronized (this) {
            String valueOf = String.valueOf(task.getTag());
            zzp zzpVar = new zzp(valueOf.length() != 0 ? "nts:client:schedule:".concat(valueOf) : new String("nts:client:schedule:"));
            zze(task.getServiceName());
            if (zze().zzd(task) && (map = this.zzj.get(task.getServiceName())) != null && map.containsKey(task.getTag())) {
                map.put(task.getTag(), true);
            }
            zzd((Throwable) null, zzpVar);
        }
    }

    public final boolean zzd(String str, String str2) {
        synchronized (this) {
            Map<String, Boolean> map = this.zzj.get(str2);
            Map<String, Boolean> map2 = map;
            if (map == null) {
                map2 = new C0374a<>();
                this.zzj.put(str2, map2);
            }
            return map2.put(str, false) == null;
        }
    }

    public final void zze(String str, String str2) {
        synchronized (this) {
            Map<String, Boolean> map = this.zzj.get(str2);
            if (map != null) {
                if ((map.remove(str) != null) && map.isEmpty()) {
                    this.zzj.remove(str2);
                }
            }
        }
    }

    public final boolean zzf(String str) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.zzj.containsKey(str);
        }
        return containsKey;
    }

    public final boolean zzf(String str, String str2) {
        synchronized (this) {
            Map<String, Boolean> map = this.zzj.get(str2);
            if (map != null) {
                Boolean bool = map.get(str);
                if (bool == null) {
                    return false;
                }
                return bool.booleanValue();
            }
            return false;
        }
    }
}
