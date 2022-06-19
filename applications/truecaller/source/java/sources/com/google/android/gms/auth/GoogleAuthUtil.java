package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import p193e.p1577m.p1578a.p1642f.p1644b.C24894c;
import p193e.p1577m.p1578a.p1642f.p1644b.C24895d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/GoogleAuthUtil.class */
public final class GoogleAuthUtil extends zzd {
    private GoogleAuthUtil() {
    }

    /* renamed from: e */
    public static void m39135e(Context context, String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        Preconditions.m38899i("Calling this from your main thread can lead to deadlock");
        zzd.m39095a(context, 8400000);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey("androidPackageName")) {
            bundle.putString("androidPackageName", str2);
        }
        zzd.m39094b(context, zzd.f5576b, new C24895d(str, bundle));
    }

    @Deprecated
    /* renamed from: f */
    public static String m39134f(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        Account account = new Account(str, "com.google");
        Bundle bundle = new Bundle();
        zzd.m39092d(account);
        Preconditions.m38899i("Calling this from your main thread can lead to deadlock");
        Preconditions.m38900h(str2, "Scope cannot be empty or null.");
        zzd.m39092d(account);
        zzd.m39095a(context, 8400000);
        Bundle bundle2 = new Bundle(bundle);
        String str3 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str3);
        if (TextUtils.isEmpty(bundle2.getString("androidPackageName"))) {
            bundle2.putString("androidPackageName", str3);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return ((TokenData) zzd.m39094b(context, zzd.f5576b, new C24894c(account, str2, bundle2))).f5336b;
    }
}
