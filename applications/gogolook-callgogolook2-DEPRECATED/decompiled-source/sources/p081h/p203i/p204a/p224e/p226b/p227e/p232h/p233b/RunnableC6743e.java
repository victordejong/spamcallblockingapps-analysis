package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
import p081h.p203i.p204a.p224e.p235d.p236k.C6831h;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6901n;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p243o.C7051a;
/* renamed from: h.i.a.e.b.e.h.b.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/e.class */
public final class RunnableC6743e implements Runnable {

    /* renamed from: c */
    public static final C7051a f16631c = new C7051a("RevokeAccessOperation", new String[0]);

    /* renamed from: a */
    public final String f16632a;

    /* renamed from: b */
    public final C6901n f16633b = new C6901n(null);

    public RunnableC6743e(String str) {
        C7021t.m21283b(str);
        this.f16632a = str;
    }

    /* renamed from: a */
    public static AbstractC6829g<Status> m21961a(String str) {
        if (str == null) {
            return C6831h.m21815a(new Status(4), (AbstractC6825f) null);
        }
        RunnableC6743e eVar = new RunnableC6743e(str);
        new Thread(eVar).start();
        return eVar.f16633b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.f6511f;
        status = status;
        status = status;
        try {
            String valueOf = String.valueOf(this.f16632a);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f6510e;
            } else {
                f16631c.m21190b("Unable to revoke access!", new Object[0]);
            }
            C7051a aVar = f16631c;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Response Code: ");
            sb.append(responseCode);
            status = status;
            status = status;
            aVar.m21191a(sb.toString(), new Object[0]);
        } catch (IOException e) {
            C7051a aVar2 = f16631c;
            String valueOf2 = String.valueOf(e.toString());
            aVar2.m21190b(valueOf2.length() != 0 ? "IOException when revoking access: ".concat(valueOf2) : new String("IOException when revoking access: "), new Object[0]);
        } catch (Exception e2) {
            C7051a aVar3 = f16631c;
            String valueOf3 = String.valueOf(e2.toString());
            aVar3.m21190b(valueOf3.length() != 0 ? "Exception when revoking access: ".concat(valueOf3) : new String("Exception when revoking access: "), new Object[0]);
        }
        this.f16633b.m31984a((C6901n) status);
    }
}
