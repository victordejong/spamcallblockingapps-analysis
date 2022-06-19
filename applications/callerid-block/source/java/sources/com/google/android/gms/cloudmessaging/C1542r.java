package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.p080g.C1562c;
import com.google.android.gms.common.util.C1617n;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.cloudmessaging.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/r.class */
public final class C1542r {

    /* renamed from: a */
    private final Context f5796a;
    @GuardedBy("this")

    /* renamed from: b */
    private int f5797b;
    @GuardedBy("this")

    /* renamed from: c */
    private int f5798c = 0;

    public C1542r(Context context) {
        this.f5796a = context;
    }

    /* renamed from: b */
    private final PackageInfo m8475b(String str) {
        try {
            return C1562c.m8427a(this.f5796a).m8430f(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("Metadata", sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    public final int m8476a() {
        synchronized (this) {
            int i = this.f5798c;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f5796a.getPackageManager();
            if (C1562c.m8427a(this.f5796a).m8434b("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("Metadata", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!C1617n.m8207k()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f5798c = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f5798c = 2;
                return 2;
            }
            Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
            if (C1617n.m8207k()) {
                this.f5798c = 2;
            } else {
                this.f5798c = 1;
            }
            return this.f5798c;
        }
    }

    /* renamed from: c */
    public final int m8474c() {
        int i;
        PackageInfo m8475b;
        synchronized (this) {
            if (this.f5797b == 0 && (m8475b = m8475b("com.google.android.gms")) != null) {
                this.f5797b = m8475b.versionCode;
            }
            i = this.f5797b;
        }
        return i;
    }
}
