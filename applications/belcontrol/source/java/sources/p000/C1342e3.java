package p000;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.text.TextUtils;
/* renamed from: e3 */
/* loaded from: classes-dex2jar.jar:e3.class */
public class C1342e3 {

    /* renamed from: a */
    public final ICustomTabsService f6238a;

    /* renamed from: b */
    public final ComponentName f6239b;

    public C1342e3(ICustomTabsService iCustomTabsService, ComponentName componentName, Context context) {
        this.f6238a = iCustomTabsService;
        this.f6239b = componentName;
    }

    /* renamed from: a */
    public static boolean m2267a(Context context, String str, g3 g3Var) {
        g3Var.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, g3Var, 33);
    }

    /* renamed from: b */
    public final ICustomTabsCallback.Stub m2266b(C1273d3 c1273d3) {
        return new a(this, c1273d3);
    }

    /* renamed from: c */
    public h3 m2265c(C1273d3 c1273d3) {
        return m2264d(c1273d3, null);
    }

    /* renamed from: d */
    public final h3 m2264d(C1273d3 c1273d3, PendingIntent pendingIntent) {
        boolean z;
        ICustomTabsCallback m2266b = m2266b(c1273d3);
        h3 h3Var = null;
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                z = this.f6238a.newSessionWithExtras(m2266b, bundle);
            } else {
                z = this.f6238a.newSession(m2266b);
            }
        } catch (RemoteException e) {
        }
        if (!z) {
            return null;
        }
        h3Var = new h3(this.f6238a, m2266b, this.f6239b, pendingIntent);
        return h3Var;
    }

    /* renamed from: e */
    public boolean m2263e(long j) {
        try {
            return this.f6238a.warmup(j);
        } catch (RemoteException e) {
            return false;
        }
    }
}
