package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.browser.customtabs.c;
import androidx.browser.customtabs.e;
import androidx.browser.customtabs.f;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/br.class */
public final class br implements dsw {

    /* renamed from: a  reason: collision with root package name */
    public f f24922a;

    /* renamed from: b  reason: collision with root package name */
    public c f24923b;

    /* renamed from: c  reason: collision with root package name */
    public e f24924c;

    /* renamed from: d  reason: collision with root package name */
    public bu f24925d;

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities == null || resolveActivity == null) {
            return false;
        }
        for (int i = 0; i < queryIntentActivities.size(); i++) {
            if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                return resolveActivity.activityInfo.packageName.equals(dsu.a(context));
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dsw
    public final void a() {
        this.f24923b = null;
        this.f24922a = null;
        bu buVar = this.f24925d;
        if (buVar != null) {
            buVar.zztc();
        }
    }

    @Override // com.google.android.gms.internal.ads.dsw
    public final void a(c cVar) {
        this.f24923b = cVar;
        cVar.a();
        bu buVar = this.f24925d;
        if (buVar != null) {
            buVar.zztb();
        }
    }
}
