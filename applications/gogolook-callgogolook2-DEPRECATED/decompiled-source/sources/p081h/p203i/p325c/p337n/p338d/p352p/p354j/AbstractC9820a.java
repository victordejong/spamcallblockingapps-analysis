package p081h.p203i.p325c.p337n.p338d.p352p.p354j;

import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.io.IOException;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9531a;
import p081h.p203i.p325c.p337n.p338d.p341h.C9541e0;
import p081h.p203i.p325c.p337n.p338d.p341h.C9546h;
import p081h.p203i.p325c.p337n.p338d.p345k.C9766b;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p345k.C9768d;
import p081h.p203i.p325c.p337n.p338d.p345k.EnumC9765a;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9813a;
/* renamed from: h.i.c.n.d.p.j.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/p/j/a.class */
public abstract class AbstractC9820a extends AbstractC9531a implements AbstractC9821b {

    /* renamed from: f */
    public final String f22292f;

    public AbstractC9820a(String str, String str2, C9767c cVar, EnumC9765a aVar, String str3) {
        super(str, str2, cVar, aVar);
        this.f22292f = str3;
    }

    /* renamed from: a */
    public final C9766b m14133a(C9766b bVar, C9813a aVar) {
        bVar.m14349a("X-CRASHLYTICS-ORG-ID", aVar.f22258a);
        bVar.m14349a("X-CRASHLYTICS-GOOGLE-APP-ID", aVar.f22259b);
        bVar.m14349a("X-CRASHLYTICS-API-CLIENT-TYPE", IJSExecutor.JS_FUNCTION_GROUP);
        bVar.m14349a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f22292f);
        return bVar;
    }

    /* renamed from: a */
    public boolean m14132a(C9813a aVar, boolean z) {
        if (z) {
            C9766b a = m14974a();
            m14133a(a, aVar);
            m14131b(a, aVar);
            C9513b a2 = C9513b.m15015a();
            a2.m15013a("Sending app info to " + m14971b());
            try {
                C9768d b = a.m14346b();
                int b2 = b.m14338b();
                String str = "POST".equalsIgnoreCase(a.m14343d()) ? "Create" : "Update";
                C9513b a3 = C9513b.m15015a();
                a3.m15013a(str + " app request ID: " + b.m14340a("X-REQUEST-ID"));
                C9513b a4 = C9513b.m15015a();
                a4.m15013a("Result was " + b2);
                return C9541e0.m14951a(b2) == 0;
            } catch (IOException e) {
                C9513b.m15015a().m15010b("HTTP request failed.", e);
                throw new RuntimeException(e);
            }
        } else {
            throw new RuntimeException("An invalid data collection token was used.");
        }
    }

    /* renamed from: b */
    public final C9766b m14131b(C9766b bVar, C9813a aVar) {
        bVar.m14345b("org_id", aVar.f22258a);
        bVar.m14345b("app[identifier]", aVar.f22260c);
        bVar.m14345b("app[name]", aVar.f22264g);
        bVar.m14345b("app[display_version]", aVar.f22261d);
        bVar.m14345b("app[build_version]", aVar.f22262e);
        bVar.m14345b("app[source]", Integer.toString(aVar.f22265h));
        bVar.m14345b("app[minimum_sdk_version]", aVar.f22266i);
        bVar.m14345b("app[built_sdk_version]", aVar.f22267j);
        if (!C9546h.m14920b(aVar.f22263f)) {
            bVar.m14345b("app[instance_identifier]", aVar.f22263f);
        }
        return bVar;
    }
}
