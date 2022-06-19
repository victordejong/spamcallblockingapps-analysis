package io.fabric.sdk.android.services.p068b;

import android.content.Context;
import android.text.TextUtils;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p071d.AbstractC1549c;
import io.fabric.sdk.android.services.p071d.C1550d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: io.fabric.sdk.android.services.b.c */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/c.class */
public class C1470c {

    /* renamed from: a */
    private final Context f4050a;

    /* renamed from: b */
    private final AbstractC1549c f4051b;

    public C1470c(Context context) {
        this.f4050a = context.getApplicationContext();
        this.f4051b = new C1550d(context, "TwitterAdvertisingInfoPreferences");
    }

    /* renamed from: a */
    private void m3530a(final C1469b c1469b) {
        new Thread(new AbstractRunnableC1479h() { // from class: io.fabric.sdk.android.services.b.c.1
            @Override // io.fabric.sdk.android.services.p068b.AbstractRunnableC1479h
            public void onRun() {
                C1469b m3522e = C1470c.this.m3522e();
                if (!c1469b.equals(m3522e)) {
                    C1449c.m3572g().mo3552a("Fabric", "Asychronously getting Advertising Info and storing it to preferences");
                    C1470c.this.m3526b(m3522e);
                }
            }
        }).start();
    }

    /* renamed from: b */
    public void m3526b(C1469b c1469b) {
        if (m3524c(c1469b)) {
            AbstractC1549c abstractC1549c = this.f4051b;
            abstractC1549c.mo3336a(abstractC1549c.mo3335b().putString("advertising_id", c1469b.f4048a).putBoolean("limit_ad_tracking_enabled", c1469b.f4049b));
            return;
        }
        AbstractC1549c abstractC1549c2 = this.f4051b;
        abstractC1549c2.mo3336a(abstractC1549c2.mo3335b().remove("advertising_id").remove("limit_ad_tracking_enabled"));
    }

    /* renamed from: c */
    private boolean m3524c(C1469b c1469b) {
        return c1469b != null && !TextUtils.isEmpty(c1469b.f4048a);
    }

    /* renamed from: e */
    public C1469b m3522e() {
        C1469b mo3514a = m3525c().mo3514a();
        if (!m3524c(mo3514a)) {
            mo3514a = m3523d().mo3514a();
            if (!m3524c(mo3514a)) {
                C1449c.m3572g().mo3552a("Fabric", "AdvertisingInfo not present");
            } else {
                C1449c.m3572g().mo3552a("Fabric", "Using AdvertisingInfo from Service Provider");
            }
        } else {
            C1449c.m3572g().mo3552a("Fabric", "Using AdvertisingInfo from Reflection Provider");
        }
        return mo3514a;
    }

    /* renamed from: a */
    public C1469b m3531a() {
        C1469b m3527b = m3527b();
        if (m3524c(m3527b)) {
            C1449c.m3572g().mo3552a("Fabric", "Using AdvertisingInfo from Preference Store");
            m3530a(m3527b);
            return m3527b;
        }
        C1469b m3522e = m3522e();
        m3526b(m3522e);
        return m3522e;
    }

    /* renamed from: b */
    protected C1469b m3527b() {
        return new C1469b(this.f4051b.mo3337a().getString("advertising_id", ""), this.f4051b.mo3337a().getBoolean("limit_ad_tracking_enabled", false));
    }

    /* renamed from: c */
    public AbstractC1477f m3525c() {
        return new C1472d(this.f4050a);
    }

    /* renamed from: d */
    public AbstractC1477f m3523d() {
        return new C1473e(this.f4050a);
    }
}
