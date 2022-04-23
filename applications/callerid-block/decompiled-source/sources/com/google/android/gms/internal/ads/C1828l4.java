package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.browser.customtabs.AbstractServiceConnectionC0167d;
import androidx.browser.customtabs.C0164b;
import androidx.browser.customtabs.C0168e;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.l4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/l4.class */
public final class C1828l4 {

    /* renamed from: a */
    private C0168e f7088a;

    /* renamed from: b */
    private C0164b f7089b;

    /* renamed from: c */
    private AbstractServiceConnectionC0167d f7090c;

    /* renamed from: d */
    private AbstractC1796j4 f7091d;

    /* renamed from: a */
    public static boolean m6720a(Context context) {
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
                return resolveActivity.activityInfo.packageName.equals(ph2.m6198a(context));
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m6719b(Activity activity) {
        AbstractServiceConnectionC0167d dVar = this.f7090c;
        if (dVar != null) {
            activity.unbindService(dVar);
            this.f7089b = null;
            this.f7088a = null;
            this.f7090c = null;
        }
    }

    /* renamed from: c */
    public final C0168e m6718c() {
        C0164b bVar = this.f7089b;
        if (bVar == null) {
            this.f7088a = null;
        } else if (this.f7088a == null) {
            this.f7088a = bVar.m14385b(null);
        }
        return this.f7088a;
    }

    /* renamed from: d */
    public final void m6717d(AbstractC1796j4 j4Var) {
        this.f7091d = j4Var;
    }

    /* renamed from: e */
    public final void m6716e(Activity activity) {
        String a;
        if (this.f7089b == null && (a = ph2.m6198a(activity)) != null) {
            qh2 qh2Var = new qh2(this, (byte[]) null);
            this.f7090c = qh2Var;
            C0164b.m14386a(activity, a, qh2Var);
        }
    }

    /* renamed from: f */
    public final void m6715f(C0164b bVar) {
        this.f7089b = bVar;
        bVar.m14384c(0L);
        AbstractC1796j4 j4Var = this.f7091d;
        if (j4Var != null) {
            j4Var.zza();
        }
    }

    /* renamed from: g */
    public final void m6714g() {
        this.f7089b = null;
        this.f7088a = null;
    }
}
