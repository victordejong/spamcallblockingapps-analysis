package p131c.p161d.p282e.p289l.p290d.p300n.p302d;

import com.google.firebase.crashlytics.internal.network.HttpMethod;
import com.google.firebase.crashlytics.internal.report.model.Report;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5210a;
import p131c.p161d.p282e.p289l.p290d.p293h.C5211a0;
import p131c.p161d.p282e.p289l.p290d.p297k.C5394a;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
import p131c.p161d.p282e.p289l.p290d.p297k.C5396c;
import p131c.p161d.p282e.p289l.p290d.p300n.p301c.C5416a;
/* renamed from: c.d.e.l.d.n.d.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/d/c.class */
public class C5422c extends AbstractC5210a implements AbstractC5421b {

    /* renamed from: f */
    public final String f18365f;

    public C5422c(String str, String str2, C5395b bVar, HttpMethod httpMethod, String str3) {
        super(str, str2, bVar, httpMethod);
        this.f18365f = str3;
    }

    public C5422c(String str, String str2, C5395b bVar, String str3) {
        this(str, str2, bVar, HttpMethod.POST, str3);
    }

    /* renamed from: a */
    public final C5394a m23822a(C5394a aVar, C5416a aVar2) {
        aVar.m23932a("X-CRASHLYTICS-GOOGLE-APP-ID", aVar2.f18356b);
        aVar.m23932a("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        aVar.m23932a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f18365f);
        for (Map.Entry<String, String> entry : aVar2.f18357c.mo7365a().entrySet()) {
            aVar.m23930a(entry);
        }
        return aVar;
    }

    /* renamed from: a */
    public final C5394a m23821a(C5394a aVar, Report report) {
        File[] d;
        aVar.m23928b("report[identifier]", report.mo7364b());
        if (report.mo7362d().length == 1) {
            C5192b.m24319a().m24317a("Adding single file " + report.mo7361e() + " to report " + report.mo7364b());
            aVar.m23931a("report[file]", report.mo7361e(), "application/octet-stream", report.mo7363c());
            return aVar;
        }
        int i = 0;
        for (File file : report.mo7362d()) {
            C5192b.m24319a().m24317a("Adding file " + file.getName() + " to report " + report.mo7364b());
            StringBuilder sb = new StringBuilder();
            sb.append("report[file");
            sb.append(i);
            sb.append("]");
            aVar.m23931a(sb.toString(), file.getName(), "application/octet-stream", file);
            i++;
        }
        return aVar;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p300n.p302d.AbstractC5421b
    /* renamed from: a */
    public boolean mo23818a(C5416a aVar, boolean z) {
        if (z) {
            C5394a a = m24277a();
            m23822a(a, aVar);
            m23821a(a, aVar.f18357c);
            C5192b a2 = C5192b.m24319a();
            a2.m24317a("Sending report to: " + m24274b());
            try {
                C5396c b = a.m23929b();
                int b2 = b.m23921b();
                C5192b a3 = C5192b.m24319a();
                a3.m24317a("Create report request ID: " + b.m23922a("X-REQUEST-ID"));
                C5192b a4 = C5192b.m24319a();
                a4.m24317a("Result was: " + b2);
                return C5211a0.m24273a(b2) == 0;
            } catch (IOException e) {
                C5192b.m24319a().m24314b("Create report HTTP request failed.", e);
                throw new RuntimeException(e);
            }
        } else {
            throw new RuntimeException("An invalid data collection token was used.");
        }
    }
}
