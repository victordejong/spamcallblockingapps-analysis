package p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i;

import android.text.TextUtils;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.C6399a;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.C6434a;
import p131c.p372f.p373a.p374a.p375a.p385n.C6453a;
import p131c.p372f.p373a.p374a.p375a.p389q.C6473c;
/* renamed from: c.f.a.a.a.m.h.i.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/i/a.class */
public class C6442a {

    /* renamed from: a */
    public final C6434a f20121a;

    /* renamed from: b */
    public boolean f20122b;

    /* renamed from: d */
    public boolean f20124d;

    /* renamed from: e */
    public AbstractC6443a f20125e;

    /* renamed from: f */
    public final ArrayList<C6444b> f20126f = new ArrayList<>();

    /* renamed from: c */
    public C6473c f20123c = new C6473c(null);

    /* renamed from: c.f.a.a.a.m.h.i.a$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/i/a$a.class */
    public interface AbstractC6443a {
        void avidBridgeManagerDidInjectAvidJs();
    }

    public C6442a(C6434a aVar) {
        this.f20121a = aVar;
    }

    /* renamed from: a */
    public void m20874a() {
        m20873a((WebView) null);
    }

    /* renamed from: a */
    public void m20873a(WebView webView) {
        if (this.f20123c.m20774a() != webView) {
            this.f20123c.m20771b((C6473c) webView);
            this.f20122b = false;
            if (C6399a.m20983b()) {
                m20869b();
            }
        }
    }

    /* renamed from: a */
    public void m20872a(AbstractC6443a aVar) {
        this.f20125e = aVar;
    }

    /* renamed from: a */
    public void m20871a(String str) {
        this.f20123c.m20776a(str);
    }

    /* renamed from: a */
    public final void m20870a(String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject != null ? jSONObject.toString() : null;
        if (!TextUtils.isEmpty(jSONObject2)) {
            m20871a(C6453a.m20845a(str, jSONObject2));
        } else {
            m20871a(C6453a.m20843c(str));
        }
    }

    /* renamed from: b */
    public final void m20869b() {
        if (!this.f20123c.m20772b()) {
            this.f20122b = true;
            this.f20123c.m20775b(C6399a.m20985a());
            m20859i();
            m20860h();
            m20862f();
            m20864d();
        }
    }

    /* renamed from: b */
    public void m20868b(String str) {
        m20871a(C6453a.m20842d(str));
    }

    /* renamed from: b */
    public void m20867b(String str, JSONObject jSONObject) {
        if (m20866c()) {
            m20870a(str, jSONObject);
        } else {
            this.f20126f.add(new C6444b(1, str, jSONObject));
        }
    }

    /* renamed from: c */
    public void m20865c(String str) {
        m20871a(C6453a.m20840f(str));
    }

    /* renamed from: c */
    public boolean m20866c() {
        return this.f20122b;
    }

    /* renamed from: d */
    public final void m20864d() {
        AbstractC6443a aVar = this.f20125e;
        if (aVar != null) {
            aVar.avidBridgeManagerDidInjectAvidJs();
        }
    }

    /* renamed from: e */
    public void m20863e() {
        m20869b();
    }

    /* renamed from: f */
    public final void m20862f() {
        Iterator<C6444b> it = this.f20126f.iterator();
        while (it.hasNext()) {
            C6444b next = it.next();
            m20870a(next.m20857b(), next.m20858a());
        }
        this.f20126f.clear();
    }

    /* renamed from: g */
    public void m20861g() {
        this.f20124d = true;
        m20860h();
    }

    /* renamed from: h */
    public final void m20860h() {
        if (m20866c() && this.f20124d) {
            m20871a(C6453a.m20847a());
        }
    }

    /* renamed from: i */
    public final void m20859i() {
        m20871a(C6453a.m20841e(this.f20121a.m20883b().toString()));
    }
}
