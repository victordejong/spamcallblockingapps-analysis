package com.facebook.appevents.p029k0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.facebook.internal.C1115a0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.tenor.android.core.constant.StringConstant;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.f0.v;
@Metadata(d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\bH\u0007J\b\u0010\n\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseManager;", "", "()V", "GOOGLE_BILLINGCLIENT_VERSION", "", "enabled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "enableAutoLogging", "", "startTracking", "usingBillingLib2Plus", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.m */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/m.class */
public final class C1022m {

    /* renamed from: a */
    public static final C1022m f2821a = new C1022m();

    /* renamed from: b */
    public static final AtomicBoolean f2822b = new AtomicBoolean(false);

    /* renamed from: a */
    public static final void m41880a() {
        if (C1220a.m41623b(C1022m.class)) {
            return;
        }
        try {
            if (!f2822b.get()) {
                return;
            }
            if (f2821a.m41879b()) {
                C1115a0 c1115a0 = C1115a0.f3048a;
                if (C1115a0.m41751b(C1115a0.EnumC1117b.IapLoggingLib2)) {
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    C1013i.m41910b(C23228f0.m7354a());
                    return;
                }
            }
            C1012h c1012h = C1012h.f2774a;
            C1012h.m41912b();
        } catch (Throwable th) {
            C1220a.m41624a(th, C1022m.class);
        }
    }

    /* renamed from: b */
    public final boolean m41879b() {
        String string;
        boolean z = false;
        if (C1220a.m41623b(this)) {
            return false;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            Context m7354a = C23228f0.m7354a();
            ApplicationInfo applicationInfo = m7354a.getPackageManager().getApplicationInfo(m7354a.getPackageName(), 128);
            if (applicationInfo == null || (string = applicationInfo.metaData.getString("com.google.android.play.billingclient.version")) == null) {
                return false;
            }
            if (Integer.parseInt((String) v.U(string, new String[]{StringConstant.DOT}, false, 3, 2).get(0)) >= 2) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            return false;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return false;
        }
    }
}
