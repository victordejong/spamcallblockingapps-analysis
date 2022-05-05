package p081h.p115c.p116a.p117i;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.IOException;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.C6797f;
/* renamed from: h.c.a.i.e */
/* loaded from: classes-dex2jar.jar:h/c/a/i/e.class */
public class C5750e {

    /* renamed from: a */
    public Context f14385a;

    /* renamed from: b */
    public TelephonyManager f14386b;

    /* renamed from: c */
    public AdvertisingIdClient.Info f14387c = null;

    /* renamed from: h.c.a.i.e$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/i/e$a.class */
    public class RunnableC5751a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5752b f14388a;

        public RunnableC5751a(AbstractC5752b bVar) {
            this.f14388a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C5750e.this.f14387c = AdvertisingIdClient.getAdvertisingIdInfo(C5750e.this.f14385a);
            } catch (C6795e e) {
                e.printStackTrace();
            } catch (C6797f e2) {
                e2.printStackTrace();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            this.f14388a.mo24556a(C5750e.this.f14387c);
        }
    }

    /* renamed from: h.c.a.i.e$b */
    /* loaded from: classes-dex2jar.jar:h/c/a/i/e$b.class */
    public interface AbstractC5752b {
        /* renamed from: a */
        void mo24556a(AdvertisingIdClient.Info info);
    }

    public C5750e(Context context) {
        this.f14385a = context;
        try {
            this.f14386b = (TelephonyManager) this.f14385a.getSystemService("phone");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public AdvertisingIdClient.Info m24564a() {
        return this.f14387c;
    }

    /* renamed from: a */
    public void m24563a(AbstractC5752b bVar) {
        new Thread(new RunnableC5751a(bVar)).start();
    }

    /* renamed from: b */
    public String m24560b() {
        TelephonyManager telephonyManager = this.f14386b;
        return telephonyManager != null ? telephonyManager.getNetworkCountryIso() : "";
    }

    /* renamed from: c */
    public String m24558c() {
        TelephonyManager telephonyManager = this.f14386b;
        return telephonyManager != null ? telephonyManager.getNetworkOperator() : "";
    }

    /* renamed from: d */
    public String m24557d() {
        TelephonyManager telephonyManager = this.f14386b;
        return telephonyManager != null ? telephonyManager.getNetworkOperatorName() : "";
    }
}
