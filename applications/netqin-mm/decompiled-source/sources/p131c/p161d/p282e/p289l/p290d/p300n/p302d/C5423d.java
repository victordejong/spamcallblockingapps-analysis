package p131c.p161d.p282e.p289l.p290d.p300n.p302d;

import com.google.firebase.crashlytics.internal.network.HttpMethod;
import com.google.firebase.crashlytics.internal.report.model.Report;
import java.io.File;
import java.io.IOException;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5210a;
import p131c.p161d.p282e.p289l.p290d.p293h.C5211a0;
import p131c.p161d.p282e.p289l.p290d.p293h.C5269l;
import p131c.p161d.p282e.p289l.p290d.p297k.C5394a;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
import p131c.p161d.p282e.p289l.p290d.p300n.p301c.C5416a;
/* renamed from: c.d.e.l.d.n.d.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/d/d.class */
public class C5423d extends AbstractC5210a implements AbstractC5421b {

    /* renamed from: f */
    public final String f18366f;

    public C5423d(String str, String str2, C5395b bVar, String str3) {
        super(str, str2, bVar, HttpMethod.POST);
        this.f18366f = str3;
    }

    /* renamed from: a */
    public final C5394a m23820a(C5394a aVar, String str) {
        aVar.m23932a("User-Agent", "Crashlytics Android SDK/" + C5269l.m24107e());
        aVar.m23932a("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        aVar.m23932a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f18366f);
        aVar.m23932a("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        return aVar;
    }

    /* renamed from: a */
    public final C5394a m23819a(C5394a aVar, String str, Report report) {
        File[] d;
        if (str != null) {
            aVar.m23928b("org_id", str);
        }
        aVar.m23928b("report_id", report.mo7364b());
        for (File file : report.mo7362d()) {
            if (file.getName().equals("minidump")) {
                aVar.m23931a("minidump_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("metadata")) {
                aVar.m23931a("crash_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("binaryImages")) {
                aVar.m23931a("binary_images_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("session")) {
                aVar.m23931a("session_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("app")) {
                aVar.m23931a("app_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("device")) {
                aVar.m23931a("device_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("os")) {
                aVar.m23931a("os_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("user")) {
                aVar.m23931a("user_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("logs")) {
                aVar.m23931a("logs_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("keys")) {
                aVar.m23931a("keys_file", file.getName(), "application/octet-stream", file);
            }
        }
        return aVar;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p300n.p302d.AbstractC5421b
    /* renamed from: a */
    public boolean mo23818a(C5416a aVar, boolean z) {
        if (z) {
            C5394a a = m24277a();
            m23820a(a, aVar.f18356b);
            m23819a(a, aVar.f18355a, aVar.f18357c);
            C5192b a2 = C5192b.m24319a();
            a2.m24317a("Sending report to: " + m24274b());
            try {
                int b = a.m23929b().m23921b();
                C5192b a3 = C5192b.m24319a();
                a3.m24317a("Result was: " + b);
                return C5211a0.m24273a(b) == 0;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            throw new RuntimeException("An invalid data collection token was used.");
        }
    }
}
