package io.fabric.sdk.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.network.C1585b;
import io.fabric.sdk.android.services.p068b.C1478g;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.EnumC1487l;
import io.fabric.sdk.android.services.p072e.C1554d;
import io.fabric.sdk.android.services.p072e.C1555e;
import io.fabric.sdk.android.services.p072e.C1558h;
import io.fabric.sdk.android.services.p072e.C1564n;
import io.fabric.sdk.android.services.p072e.C1567q;
import io.fabric.sdk.android.services.p072e.C1572t;
import io.fabric.sdk.android.services.p072e.C1577y;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* renamed from: io.fabric.sdk.android.l */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/l.class */
public class C1463l extends AbstractC1459h<Boolean> {

    /* renamed from: a */
    private final AbstractC1588d f4035a = new C1585b();

    /* renamed from: b */
    private PackageManager f4036b;

    /* renamed from: c */
    private String f4037c;

    /* renamed from: d */
    private PackageInfo f4038d;

    /* renamed from: e */
    private String f4039e;

    /* renamed from: f */
    private String f4040f;

    /* renamed from: g */
    private String f4041g;

    /* renamed from: h */
    private String f4042h;

    /* renamed from: i */
    private String f4043i;

    /* renamed from: j */
    private final Future<Map<String, C1461j>> f4044j;

    /* renamed from: k */
    private final Collection<AbstractC1459h> f4045k;

    public C1463l(Future<Map<String, C1461j>> future, Collection<AbstractC1459h> collection) {
        this.f4044j = future;
        this.f4045k = collection;
    }

    /* renamed from: a */
    private C1554d m3542a(C1564n c1564n, Collection<C1461j> collection) {
        Context context = getContext();
        return new C1554d(new C1478g().m3512a(context), getIdManager().m3440c(), this.f4040f, this.f4039e, C1480i.m3485a(C1480i.m3464m(context)), this.f4042h, EnumC1487l.m3457a(this.f4041g).m3458a(), this.f4043i, "0", c1564n, collection);
    }

    /* renamed from: a */
    private boolean m3543a(C1555e c1555e, C1564n c1564n, Collection<C1461j> collection) {
        return new C1577y(this, m3539b(), c1555e.f4233c, this.f4035a).mo3295a(m3542a(c1564n, collection));
    }

    /* renamed from: a */
    private boolean m3541a(String str, C1555e c1555e, Collection<C1461j> collection) {
        boolean z;
        if ("new".equals(c1555e.f4232b)) {
            if (m3538b(str, c1555e, collection)) {
                z = C1567q.m3307a().m3302d();
            } else {
                C1449c.m3572g().mo3545e("Fabric", "Failed to create app with Crashlytics service.", null);
                z = false;
            }
        } else if ("configured".equals(c1555e.f4232b)) {
            z = C1567q.m3307a().m3302d();
        } else {
            if (c1555e.f4236f) {
                C1449c.m3572g().mo3552a("Fabric", "Server says an update is required - forcing a full App update.");
                m3536c(str, c1555e, collection);
            }
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private boolean m3538b(String str, C1555e c1555e, Collection<C1461j> collection) {
        return new C1558h(this, m3539b(), c1555e.f4233c, this.f4035a).mo3295a(m3542a(C1564n.m3308a(getContext(), str), collection));
    }

    /* renamed from: c */
    private C1572t m3537c() {
        try {
            C1567q.m3307a().m3306a(this, this.idManager, this.f4035a, this.f4039e, this.f4040f, m3539b()).m3303c();
            return C1567q.m3307a().m3304b();
        } catch (Exception e) {
            C1449c.m3572g().mo3545e("Fabric", "Error dealing with settings", e);
            return null;
        }
    }

    /* renamed from: c */
    private boolean m3536c(String str, C1555e c1555e, Collection<C1461j> collection) {
        return m3543a(c1555e, C1564n.m3308a(getContext(), str), collection);
    }

    /* renamed from: a */
    public Boolean doInBackground() {
        boolean m3541a;
        String m3466k = C1480i.m3466k(getContext());
        C1572t m3537c = m3537c();
        if (m3537c != null) {
            try {
                m3541a = m3541a(m3466k, m3537c.f4280a, m3540a(this.f4044j != null ? this.f4044j.get() : new HashMap(), this.f4045k).values());
            } catch (Exception e) {
                C1449c.m3572g().mo3545e("Fabric", "Error performing auto configuration.", e);
            }
            return Boolean.valueOf(m3541a);
        }
        m3541a = false;
        return Boolean.valueOf(m3541a);
    }

    /* renamed from: a */
    Map<String, C1461j> m3540a(Map<String, C1461j> map, Collection<AbstractC1459h> collection) {
        for (AbstractC1459h abstractC1459h : collection) {
            if (!map.containsKey(abstractC1459h.getIdentifier())) {
                map.put(abstractC1459h.getIdentifier(), new C1461j(abstractC1459h.getIdentifier(), abstractC1459h.getVersion(), "binary"));
            }
        }
        return map;
    }

    /* renamed from: b */
    String m3539b() {
        return C1480i.m3481b(getContext(), "com.crashlytics.ApiEndpoint");
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getVersion() {
        return "1.4.3.25";
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public boolean onPreExecute() {
        try {
            this.f4041g = getIdManager().m3434i();
            this.f4036b = getContext().getPackageManager();
            this.f4037c = getContext().getPackageName();
            this.f4038d = this.f4036b.getPackageInfo(this.f4037c, 0);
            this.f4039e = Integer.toString(this.f4038d.versionCode);
            this.f4040f = this.f4038d.versionName == null ? "0.0" : this.f4038d.versionName;
            this.f4042h = this.f4036b.getApplicationLabel(getContext().getApplicationInfo()).toString();
            this.f4043i = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            C1449c.m3572g().mo3545e("Fabric", "Failed init", e);
            return false;
        }
    }
}
