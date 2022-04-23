package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.Map;
import java.util.concurrent.TimeUnit;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/InstanceID.class */
public class InstanceID {

    /* renamed from: b */
    private static Map<String, InstanceID> f7757b = new ArrayMap();

    /* renamed from: c */
    private static zzak f7758c;

    /* renamed from: a */
    private String f7759a;

    static {
        zzai.m14151b().mo14152a("gcm_check_for_different_iid_in_token", true);
        TimeUnit.DAYS.toMillis(7L);
    }

    @ShowFirstParty
    private InstanceID(Context context, String str) {
        this.f7759a = "";
        context.getApplicationContext();
        this.f7759a = str;
    }

    @KeepForSdk
    /* renamed from: a */
    public static InstanceID m14164a(Context context, Bundle bundle) {
        String string;
        InstanceID instanceID;
        synchronized (InstanceID.class) {
            if (bundle == null) {
                string = "";
            } else {
                try {
                    string = bundle.getString("subtype");
                } catch (Throwable th) {
                    throw th;
                }
            }
            String str = string;
            if (string == null) {
                str = "";
            }
            Context applicationContext = context.getApplicationContext();
            if (f7758c == null) {
                String packageName = applicationContext.getPackageName();
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 73);
                sb.append("Instance ID SDK is deprecated, ");
                sb.append(packageName);
                sb.append(" should update to use Firebase Instance ID");
                Log.w("InstanceID", sb.toString());
                f7758c = new zzak(applicationContext);
                new zzaf(applicationContext);
            }
            Integer.toString(m14163b(applicationContext));
            InstanceID instanceID2 = f7757b.get(str);
            instanceID = instanceID2;
            if (instanceID2 == null) {
                instanceID = new InstanceID(applicationContext, str);
                f7757b.put(str, instanceID);
            }
        }
        return instanceID;
    }

    /* renamed from: b */
    static int m14163b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 38);
            sb.append("Never happens: can't find own package ");
            sb.append(valueOf);
            Log.w("InstanceID", sb.toString());
            return 0;
        }
    }

    /* renamed from: d */
    public static zzak m14161d() {
        return f7758c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m14162c() {
        f7758c.m14148c(this.f7759a);
    }
}
