package io.fabric.sdk.android.services.p068b;

import android.content.Context;
import io.fabric.sdk.android.C1449c;
/* renamed from: io.fabric.sdk.android.services.b.d */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/d.class */
public class C1472d implements AbstractC1477f {

    /* renamed from: a */
    private final Context f4054a;

    public C1472d(Context context) {
        this.f4054a = context.getApplicationContext();
    }

    /* renamed from: b */
    private String m3520b() {
        try {
            return (String) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(m3518d(), new Object[0]);
        } catch (Exception e) {
            C1449c.m3572g().mo3548d("Fabric", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return null;
        }
    }

    /* renamed from: c */
    private boolean m3519c() {
        try {
            return ((Boolean) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(m3518d(), new Object[0])).booleanValue();
        } catch (Exception e) {
            C1449c.m3572g().mo3548d("Fabric", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return false;
        }
    }

    /* renamed from: d */
    private Object m3518d() {
        try {
            return Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f4054a);
        } catch (Exception e) {
            C1449c.m3572g().mo3548d("Fabric", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return null;
        }
    }

    @Override // io.fabric.sdk.android.services.p068b.AbstractC1477f
    /* renamed from: a */
    public C1469b mo3514a() {
        if (m3521a(this.f4054a)) {
            return new C1469b(m3520b(), m3519c());
        }
        return null;
    }

    /* renamed from: a */
    boolean m3521a(Context context) {
        boolean z = false;
        try {
            if (((Integer) Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, context)).intValue() == 0) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }
}
