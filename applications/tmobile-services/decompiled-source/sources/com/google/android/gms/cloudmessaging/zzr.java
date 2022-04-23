package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzr.class */
public final class zzr {

    /* renamed from: a */
    private final Context f6950a;
    @GuardedBy

    /* renamed from: b */
    private int f6951b;
    @GuardedBy

    /* renamed from: c */
    private int f6952c = 0;

    public zzr(Context context) {
        this.f6950a = context;
    }

    @Nullable
    /* renamed from: b */
    private final PackageInfo m15099b(String str) {
        try {
            return Wrappers.m14278a(this.f6950a).m14283e(str, 0);
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
    public final int m15100a() {
        synchronized (this) {
            if (this.f6952c != 0) {
                return this.f6952c;
            }
            PackageManager packageManager = this.f6950a.getPackageManager();
            if (Wrappers.m14278a(this.f6950a).m14286b("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("Metadata", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!PlatformVersion.m14314i()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f6952c = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
                Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
                if (PlatformVersion.m14314i()) {
                    this.f6952c = 2;
                } else {
                    this.f6952c = 1;
                }
                return this.f6952c;
            }
            this.f6952c = 2;
            return 2;
        }
    }

    /* renamed from: c */
    public final int m15098c() {
        int i;
        PackageInfo b;
        synchronized (this) {
            if (this.f6951b == 0 && (b = m15099b("com.google.android.gms")) != null) {
                this.f6951b = b.versionCode;
            }
            i = this.f6951b;
        }
        return i;
    }
}
