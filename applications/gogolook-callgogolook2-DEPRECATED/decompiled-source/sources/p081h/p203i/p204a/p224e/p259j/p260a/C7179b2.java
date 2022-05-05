package p081h.p203i.p204a.p224e.p259j.p260a;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.b2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/b2.class */
public final class C7179b2 implements AbstractC7380r1 {
    @Nullable

    /* renamed from: a */
    public final String f17293a;

    public C7179b2() {
        this(null);
    }

    public C7179b2(@Nullable String str) {
        this.f17293a = str;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7380r1
    @WorkerThread
    /* renamed from: a */
    public final void mo20711a(String str) {
        try {
            String valueOf = String.valueOf(str);
            C7452x1.m20572b(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                C7430v3.m20640a();
                C7343o1.m20769a(true, httpURLConnection, this.f17293a);
                C7392s1 s1Var = new C7392s1();
                s1Var.m20688a(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                s1Var.m20689a(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
                    sb.append("Received non-success response code ");
                    sb.append(responseCode);
                    sb.append(" from pinging URL: ");
                    sb.append(str);
                    C7452x1.m20568d(sb.toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            String message = e.getMessage();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
            sb2.append("Error while pinging URL: ");
            sb2.append(str);
            sb2.append(". ");
            sb2.append(message);
            C7452x1.m20568d(sb2.toString());
        } catch (IndexOutOfBoundsException e2) {
            String message2 = e2.getMessage();
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length());
            sb3.append("Error while parsing ping URL: ");
            sb3.append(str);
            sb3.append(". ");
            sb3.append(message2);
            C7452x1.m20568d(sb3.toString());
        } catch (RuntimeException e3) {
            String message3 = e3.getMessage();
            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message3).length());
            sb4.append("Error while pinging URL: ");
            sb4.append(str);
            sb4.append(". ");
            sb4.append(message3);
            C7452x1.m20568d(sb4.toString());
        }
    }
}
