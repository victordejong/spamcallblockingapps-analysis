package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6237o;
import java.util.List;
/* renamed from: com.google.android.gms.cloudmessaging.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/r.class */
public final class C5972r {

    /* renamed from: a */
    private final Context f19132a;

    /* renamed from: b */
    private int f19133b;

    /* renamed from: c */
    private int f19134c = 0;

    public C5972r(Context context) {
        this.f19132a = context;
    }

    /* renamed from: b */
    private final PackageInfo m17512b(String str) {
        try {
            return C6198c.m16885a(this.f19132a).m16888f(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("Metadata", sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    public final int m17513a() {
        synchronized (this) {
            int i = this.f19134c;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f19132a.getPackageManager();
            if (C6198c.m16885a(this.f19132a).m16892b("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("Metadata", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!C6237o.m16773k()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f19134c = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f19134c = 2;
                return 2;
            }
            Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
            if (C6237o.m16773k()) {
                this.f19134c = 2;
            } else {
                this.f19134c = 1;
            }
            return this.f19134c;
        }
    }

    /* renamed from: c */
    public final int m17511c() {
        int i;
        PackageInfo m17512b;
        synchronized (this) {
            if (this.f19133b == 0 && (m17512b = m17512b("com.google.android.gms")) != null) {
                this.f19133b = m17512b.versionCode;
            }
            i = this.f19133b;
        }
        return i;
    }
}
