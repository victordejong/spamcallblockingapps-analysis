package com.facebook.appevents.p029k0;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\t"}, d2 = {"com/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$1", "Landroid/content/ServiceConnection;", "onServiceConnected", "", AnalyticsConstants.NAME, "Landroid/content/ComponentName;", "service", "Landroid/os/IBinder;", "onServiceDisconnected", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.f */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/f.class */
public final class ServiceConnectionC1010f implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        l.e(componentName, AnalyticsConstants.NAME);
        l.e(iBinder, "service");
        C1012h c1012h = C1012h.f2774a;
        C1020k c1020k = C1020k.f2811a;
        C23228f0 c23228f0 = C23228f0.f64291a;
        Context m7354a = C23228f0.m7354a();
        Object obj = null;
        if (!C1220a.m41623b(C1020k.class)) {
            try {
                l.e(m7354a, AnalyticsConstants.CONTEXT);
                obj = c1020k.m41890h(m7354a, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
            } catch (Throwable th) {
                C1220a.m41624a(th, C1020k.class);
            }
        }
        C1012h.f2781h = obj;
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        l.e(componentName, AnalyticsConstants.NAME);
    }
}
