package io.fabric.sdk.android.services.p072e;

import android.content.res.Resources;
import com.google.firebase.perf.FirebasePerformance;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.C1461j;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.network.EnumC1587c;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.C1503s;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Locale;
/* renamed from: io.fabric.sdk.android.services.e.a */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/e/a.class */
public abstract class AbstractC1551a extends AbstractC1468a {
    public AbstractC1551a(AbstractC1459h abstractC1459h, String str, String str2, AbstractC1588d abstractC1588d, EnumC1587c enumC1587c) {
        super(abstractC1459h, str, str2, abstractC1588d, enumC1587c);
    }

    /* renamed from: a */
    private HttpRequest m3333a(HttpRequest httpRequest, C1554d c1554d) {
        return httpRequest.m3284a(AbstractC1468a.HEADER_API_KEY, c1554d.f4220a).m3284a(AbstractC1468a.HEADER_CLIENT_TYPE, AbstractC1468a.ANDROID_CLIENT_TYPE).m3284a(AbstractC1468a.HEADER_CLIENT_VERSION, this.kit.getVersion());
    }

    /* renamed from: b */
    private HttpRequest m3331b(HttpRequest httpRequest, C1554d c1554d) {
        HttpRequest m3257e = httpRequest.m3257e("app[identifier]", c1554d.f4221b).m3257e("app[name]", c1554d.f4225f).m3257e("app[display_version]", c1554d.f4222c).m3257e("app[build_version]", c1554d.f4223d).m3285a("app[source]", Integer.valueOf(c1554d.f4226g)).m3257e("app[minimum_sdk_version]", c1554d.f4227h).m3257e("app[built_sdk_version]", c1554d.f4228i);
        if (!C1480i.m3473d(c1554d.f4224e)) {
            m3257e.m3257e("app[instance_identifier]", c1554d.f4224e);
        }
        if (c1554d.f4229j != null) {
            InputStream inputStream = null;
            InputStream inputStream2 = null;
            try {
                try {
                    InputStream openRawResource = this.kit.getContext().getResources().openRawResource(c1554d.f4229j.f4254b);
                    inputStream2 = openRawResource;
                    inputStream = openRawResource;
                    m3257e.m3257e("app[icon][hash]", c1554d.f4229j.f4253a).m3280a("app[icon][data]", "icon.png", "application/octet-stream", openRawResource).m3285a("app[icon][width]", Integer.valueOf(c1554d.f4229j.f4255c)).m3285a("app[icon][height]", Integer.valueOf(c1554d.f4229j.f4256d));
                    inputStream = openRawResource;
                } catch (Resources.NotFoundException e) {
                    AbstractC1462k m3572g = C1449c.m3572g();
                    InputStream inputStream3 = inputStream;
                    InputStream inputStream4 = inputStream;
                    StringBuilder sb = new StringBuilder();
                    InputStream inputStream5 = inputStream;
                    sb.append("Failed to find app icon with resource ID: ");
                    InputStream inputStream6 = inputStream;
                    sb.append(c1554d.f4229j.f4254b);
                    inputStream2 = inputStream;
                    m3572g.mo3545e("Fabric", sb.toString(), e);
                }
                C1480i.m3497a((Closeable) inputStream, "Failed to close app icon InputStream.");
            } catch (Throwable th) {
                C1480i.m3497a((Closeable) inputStream2, "Failed to close app icon InputStream.");
                throw th;
            }
        }
        if (c1554d.f4230k != null) {
            for (C1461j c1461j : c1554d.f4230k) {
                m3257e.m3257e(m3334a(c1461j), c1461j.m3557b());
                m3257e.m3257e(m3332b(c1461j), c1461j.m3556c());
            }
        }
        return m3257e;
    }

    /* renamed from: a */
    String m3334a(C1461j c1461j) {
        return String.format(Locale.US, "app[build][libraries][%s][version]", c1461j.m3558a());
    }

    /* renamed from: a */
    public boolean mo3295a(C1554d c1554d) {
        HttpRequest m3331b = m3331b(m3333a(getHttpRequest(), c1554d), c1554d);
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a("Fabric", "Sending app info to " + getUrl());
        if (c1554d.f4229j != null) {
            AbstractC1462k m3572g2 = C1449c.m3572g();
            m3572g2.mo3552a("Fabric", "App icon hash is " + c1554d.f4229j.f4253a);
            AbstractC1462k m3572g3 = C1449c.m3572g();
            m3572g3.mo3552a("Fabric", "App icon size is " + c1554d.f4229j.f4255c + "x" + c1554d.f4229j.f4256d);
        }
        int m3275b = m3331b.m3275b();
        String str = FirebasePerformance.HttpMethod.POST.equals(m3331b.m3244o()) ? "Create" : "Update";
        AbstractC1462k m3572g4 = C1449c.m3572g();
        m3572g4.mo3552a("Fabric", str + " app request ID: " + m3331b.m3272b(AbstractC1468a.HEADER_REQUEST_ID));
        AbstractC1462k m3572g5 = C1449c.m3572g();
        m3572g5.mo3552a("Fabric", "Result was " + m3275b);
        return C1503s.m3400a(m3275b) == 0;
    }

    /* renamed from: b */
    String m3332b(C1461j c1461j) {
        return String.format(Locale.US, "app[build][libraries][%s][type]", c1461j.m3558a());
    }
}
