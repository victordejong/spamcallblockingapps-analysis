package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1448b;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: io.fabric.sdk.android.services.network.b */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/b.class */
public class C1585b implements AbstractC1588d {

    /* renamed from: a */
    private final AbstractC1462k f4319a;

    /* renamed from: b */
    private AbstractC1590f f4320b;

    /* renamed from: c */
    private SSLSocketFactory f4321c;

    /* renamed from: d */
    private boolean f4322d;

    /* renamed from: io.fabric.sdk.android.services.network.b$1 */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/b$1.class */
    public static /* synthetic */ class C15861 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4323a = new int[EnumC1587c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f4323a[EnumC1587c.GET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4323a[EnumC1587c.POST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4323a[EnumC1587c.PUT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4323a[EnumC1587c.DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C1585b() {
        this(new C1448b());
    }

    public C1585b(AbstractC1462k abstractC1462k) {
        this.f4319a = abstractC1462k;
    }

    /* renamed from: a */
    private void m3232a() {
        synchronized (this) {
            this.f4322d = false;
            this.f4321c = null;
        }
    }

    /* renamed from: a */
    private boolean m3231a(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith("https");
    }

    /* renamed from: b */
    private SSLSocketFactory m3230b() {
        SSLSocketFactory sSLSocketFactory;
        synchronized (this) {
            if (this.f4321c == null && !this.f4322d) {
                this.f4321c = m3229c();
            }
            sSLSocketFactory = this.f4321c;
        }
        return sSLSocketFactory;
    }

    /* renamed from: c */
    private SSLSocketFactory m3229c() {
        SSLSocketFactory m3225a;
        synchronized (this) {
            this.f4322d = true;
            try {
                m3225a = C1589e.m3225a(this.f4320b);
                this.f4319a.mo3552a("Fabric", "Custom SSL pinning enabled");
            } catch (Exception e) {
                this.f4319a.mo3545e("Fabric", "Exception while validating pinned certs", e);
                return null;
            }
        }
        return m3225a;
    }

    @Override // io.fabric.sdk.android.services.network.AbstractC1588d
    /* renamed from: a */
    public HttpRequest mo3228a(EnumC1587c enumC1587c, String str) {
        return mo3227a(enumC1587c, str, Collections.emptyMap());
    }

    @Override // io.fabric.sdk.android.services.network.AbstractC1588d
    /* renamed from: a */
    public HttpRequest mo3227a(EnumC1587c enumC1587c, String str, Map<String, String> map) {
        HttpRequest httpRequest;
        SSLSocketFactory m3230b;
        int i = C15861.f4323a[enumC1587c.ordinal()];
        if (i == 1) {
            httpRequest = HttpRequest.m3288a((CharSequence) str, (Map<?, ?>) map, true);
        } else if (i == 2) {
            httpRequest = HttpRequest.m3273b((CharSequence) str, (Map<?, ?>) map, true);
        } else if (i == 3) {
            httpRequest = HttpRequest.m3263d((CharSequence) str);
        } else if (i != 4) {
            throw new IllegalArgumentException("Unsupported HTTP method!");
        } else {
            httpRequest = HttpRequest.m3259e((CharSequence) str);
        }
        if (m3231a(str) && this.f4320b != null && (m3230b = m3230b()) != null) {
            ((HttpsURLConnection) httpRequest.m3294a()).setSSLSocketFactory(m3230b);
        }
        return httpRequest;
    }

    @Override // io.fabric.sdk.android.services.network.AbstractC1588d
    /* renamed from: a */
    public void mo3226a(AbstractC1590f abstractC1590f) {
        if (this.f4320b != abstractC1590f) {
            this.f4320b = abstractC1590f;
            m3232a();
        }
    }
}
