package p009a8;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.security.ProviderInstaller;
import java.security.Provider;
import java.security.Security;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import p148k7.C3331c;
import p170m7.AbstractC3653a;
import p181n7.AbstractC3749g;
import p181n7.C3746d0;
import p181n7.C3766n;
/* renamed from: a8.a */
/* loaded from: classes2-dex2jar.jar:a8/a.class */
public class C0043a extends C3746d0 {

    /* renamed from: d */
    public static final Object f98d = new Object();

    /* renamed from: e */
    public static boolean f99e;

    /* renamed from: f */
    public static boolean f100f;

    /* renamed from: a */
    public boolean f101a;

    /* renamed from: b */
    public C3766n f102b;

    /* renamed from: c */
    public Context f103c;

    public C0043a(Context context, C3766n c3766n) {
        this.f102b = c3766n;
        this.f103c = context.getApplicationContext();
    }

    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: h */
    public AbstractC3653a mo1484h(AbstractC3749g.C3750a c3750a) {
        Context context = this.f103c;
        try {
            synchronized (f98d) {
                if (!f99e) {
                    f99e = true;
                    if (Security.getProvider(ProviderInstaller.PROVIDER_NAME) != null) {
                        f100f = true;
                    } else {
                        SSLContext sSLContext = SSLContext.getDefault();
                        SSLSocketFactory defaultSSLSocketFactory = HttpsURLConnection.getDefaultSSLSocketFactory();
                        ProviderInstaller.installIfNeeded(context);
                        Provider[] providers = Security.getProviders();
                        Provider provider = Security.getProvider(ProviderInstaller.PROVIDER_NAME);
                        Security.removeProvider(ProviderInstaller.PROVIDER_NAME);
                        Security.insertProviderAt(provider, providers.length);
                        SSLContext.setDefault(sSLContext);
                        HttpsURLConnection.setDefaultSSLSocketFactory(defaultSSLSocketFactory);
                        f100f = true;
                    }
                }
            }
        } catch (Throwable th) {
            Log.w("IonConscrypt", "Conscrypt initialization failed.", th);
        }
        if (!f100f || this.f101a) {
            return null;
        }
        this.f101a = true;
        try {
            SSLContext sSLContext2 = SSLContext.getInstance("TLS", ProviderInstaller.PROVIDER_NAME);
            sSLContext2.init(null, null, null);
            C3766n c3766n = this.f102b;
            SSLContext sSLContext3 = c3766n.f12209h;
            if (sSLContext3 == null) {
                sSLContext3 = C3331c.f11297t;
            }
            if (sSLContext3 != C3331c.f11297t) {
                return null;
            }
            c3766n.f12209h = sSLContext2;
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
