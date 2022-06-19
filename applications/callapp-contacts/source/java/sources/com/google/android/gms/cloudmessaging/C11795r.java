package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12110n;
import java.util.List;
/* renamed from: com.google.android.gms.cloudmessaging.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/r.class */
public final class C11795r {

    /* renamed from: a */
    private final Context f39136a;

    /* renamed from: b */
    private int f39137b;

    /* renamed from: c */
    private int f39138c = 0;

    public C11795r(Context context) {
        this.f39136a = context;
    }

    /* renamed from: a */
    private final PackageInfo m19482a(String str) {
        try {
            return C11946c.m19258a(this.f39136a).m19259b(str, 0);
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
    public final int m19483a() {
        synchronized (this) {
            int i = this.f39138c;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f39136a.getPackageManager();
            if (C11946c.m19258a(this.f39136a).m19261a("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("Metadata", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!C12110n.m19012j()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f39138c = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f39138c = 2;
                return 2;
            }
            Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
            if (C12110n.m19012j()) {
                this.f39138c = 2;
            } else {
                this.f39138c = 1;
            }
            return this.f39138c;
        }
    }

    /* renamed from: b */
    public final int m19481b() {
        int i;
        PackageInfo m19482a;
        synchronized (this) {
            if (this.f39137b == 0 && (m19482a = m19482a("com.google.android.gms")) != null) {
                this.f39137b = m19482a.versionCode;
            }
            i = this.f39137b;
        }
        return i;
    }
}
