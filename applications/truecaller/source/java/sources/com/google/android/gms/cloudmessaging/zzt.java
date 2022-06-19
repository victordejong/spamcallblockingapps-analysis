package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zzt.class */
public final class zzt {

    /* renamed from: a */
    public final Context f5647a;

    /* renamed from: b */
    public int f5648b;

    /* renamed from: c */
    public int f5649c = 0;

    public zzt(Context context) {
        this.f5647a = context;
    }

    /* renamed from: a */
    public final int m39080a() {
        synchronized (this) {
            int i = this.f5649c;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f5647a.getPackageManager();
            if (Wrappers.m38764a(this.f5647a).f6151a.getPackageManager().checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                return 0;
            }
            int i2 = 1;
            if (!PlatformVersion.m38776a()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f5649c = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f5649c = 2;
                return 2;
            }
            if (PlatformVersion.m38776a()) {
                this.f5649c = 2;
                i2 = 2;
            } else {
                this.f5649c = 1;
            }
            return i2;
        }
    }
}
