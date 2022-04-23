package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.util.n;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22571a;

    /* renamed from: b  reason: collision with root package name */
    private int f22572b;

    /* renamed from: c  reason: collision with root package name */
    private int f22573c = 0;

    public r(Context context) {
        this.f22571a = context;
    }

    private final PackageInfo a(String str) {
        try {
            return c.a(this.f22571a).b(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("Metadata", sb.toString());
            return null;
        }
    }

    public final int a() {
        synchronized (this) {
            int i = this.f22573c;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f22571a.getPackageManager();
            if (c.a(this.f22571a).a("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("Metadata", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!n.j()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f22573c = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
                Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
                if (n.j()) {
                    this.f22573c = 2;
                } else {
                    this.f22573c = 1;
                }
                return this.f22573c;
            }
            this.f22573c = 2;
            return 2;
        }
    }

    public final int b() {
        int i;
        PackageInfo a2;
        synchronized (this) {
            if (this.f22572b == 0 && (a2 = a("com.google.android.gms")) != null) {
                this.f22572b = a2.versionCode;
            }
            i = this.f22572b;
        }
        return i;
    }
}
