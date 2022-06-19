package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.browser.customtabs.AbstractServiceConnectionC0353d;
import androidx.browser.customtabs.C0344b;
import androidx.browser.customtabs.C0355e;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.jx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jx.class */
public final class C6643jx {

    /* renamed from: a */
    private C0355e f25015a;

    /* renamed from: b */
    private C0344b f25016b;

    /* renamed from: c */
    private AbstractServiceConnectionC0353d f25017c;

    /* renamed from: d */
    private AbstractC6568hx f25018d;

    /* renamed from: a */
    public static boolean m14023a(Context context) {
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
                return resolveActivity.activityInfo.packageName.equals(qj3.m11868a(context));
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m14022b(Activity activity) {
        AbstractServiceConnectionC0353d abstractServiceConnectionC0353d = this.f25017c;
        if (abstractServiceConnectionC0353d == null) {
            return;
        }
        activity.unbindService(abstractServiceConnectionC0353d);
        this.f25016b = null;
        this.f25015a = null;
        this.f25017c = null;
    }

    /* renamed from: c */
    public final C0355e m14021c() {
        C0344b c0344b = this.f25016b;
        if (c0344b == null) {
            this.f25015a = null;
        } else if (this.f25015a == null) {
            this.f25015a = c0344b.m34661b(null);
        }
        return this.f25015a;
    }

    /* renamed from: d */
    public final void m14020d(AbstractC6568hx abstractC6568hx) {
        this.f25018d = abstractC6568hx;
    }

    /* renamed from: e */
    public final void m14019e(Activity activity) {
        String m11868a;
        if (this.f25016b == null && (m11868a = qj3.m11868a(activity)) != null) {
            rj3 rj3Var = new rj3(this, null);
            this.f25017c = rj3Var;
            C0344b.m34662a(activity, m11868a, rj3Var);
        }
    }

    /* renamed from: f */
    public final void m14018f(C0344b c0344b) {
        this.f25016b = c0344b;
        c0344b.m34660c(0L);
        AbstractC6568hx abstractC6568hx = this.f25018d;
        if (abstractC6568hx != null) {
            abstractC6568hx.zza();
        }
    }

    /* renamed from: g */
    public final void m14017g() {
        this.f25016b = null;
        this.f25015a = null;
    }
}
