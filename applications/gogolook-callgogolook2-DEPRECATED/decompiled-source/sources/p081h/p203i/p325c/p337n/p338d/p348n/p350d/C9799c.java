package p081h.p203i.p325c.p337n.p338d.p348n.p350d;

import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9531a;
import p081h.p203i.p325c.p337n.p338d.p341h.C9541e0;
import p081h.p203i.p325c.p337n.p338d.p345k.C9766b;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p345k.C9768d;
import p081h.p203i.p325c.p337n.p338d.p345k.EnumC9765a;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.C9791a;
/* renamed from: h.i.c.n.d.n.d.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/d/c.class */
public class C9799c extends AbstractC9531a implements AbstractC9798b {

    /* renamed from: f */
    public final String f22232f;

    public C9799c(String str, String str2, C9767c cVar, EnumC9765a aVar, String str3) {
        super(str, str2, cVar, aVar);
        this.f22232f = str3;
    }

    public C9799c(String str, String str2, C9767c cVar, String str3) {
        this(str, str2, cVar, EnumC9765a.POST, str3);
    }

    /* renamed from: a */
    public final C9766b m14185a(C9766b bVar, C9791a aVar) {
        bVar.m14349a("X-CRASHLYTICS-GOOGLE-APP-ID", aVar.f22220b);
        bVar.m14349a("X-CRASHLYTICS-API-CLIENT-TYPE", IJSExecutor.JS_FUNCTION_GROUP);
        bVar.m14349a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f22232f);
        for (Map.Entry<String, String> entry : aVar.f22221c.mo14190a().entrySet()) {
            bVar.m14347a(entry);
        }
        return bVar;
    }

    /* renamed from: a */
    public final C9766b m14184a(C9766b bVar, AbstractC9793c cVar) {
        File[] e;
        bVar.m14345b("report[identifier]", cVar.mo14189b());
        if (cVar.mo14186e().length == 1) {
            C9513b.m15015a().m15013a("Adding single file " + cVar.mo14188c() + " to report " + cVar.mo14189b());
            bVar.m14348a("report[file]", cVar.mo14188c(), "application/octet-stream", cVar.mo14187d());
            return bVar;
        }
        int i = 0;
        for (File file : cVar.mo14186e()) {
            C9513b.m15015a().m15013a("Adding file " + file.getName() + " to report " + cVar.mo14189b());
            StringBuilder sb = new StringBuilder();
            sb.append("report[file");
            sb.append(i);
            sb.append("]");
            bVar.m14348a(sb.toString(), file.getName(), "application/octet-stream", file);
            i++;
        }
        return bVar;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p350d.AbstractC9798b
    /* renamed from: a */
    public boolean mo14181a(C9791a aVar, boolean z) {
        if (z) {
            C9766b a = m14974a();
            m14185a(a, aVar);
            m14184a(a, aVar.f22221c);
            C9513b a2 = C9513b.m15015a();
            a2.m15013a("Sending report to: " + m14971b());
            try {
                C9768d b = a.m14346b();
                int b2 = b.m14338b();
                C9513b a3 = C9513b.m15015a();
                a3.m15013a("Create report request ID: " + b.m14340a("X-REQUEST-ID"));
                C9513b a4 = C9513b.m15015a();
                a4.m15013a("Result was: " + b2);
                return C9541e0.m14951a(b2) == 0;
            } catch (IOException e) {
                C9513b.m15015a().m15010b("Create report HTTP request failed.", e);
                throw new RuntimeException(e);
            }
        } else {
            throw new RuntimeException("An invalid data collection token was used.");
        }
    }
}
