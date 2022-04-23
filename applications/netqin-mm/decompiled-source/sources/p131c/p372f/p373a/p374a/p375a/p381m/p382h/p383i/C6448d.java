package p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i;

import android.webkit.WebView;
import com.integralads.avid.library.mopub.session.internal.jsbridge.AvidJavascriptInterface;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.C6434a;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i.C6445c;
import p131c.p372f.p373a.p374a.p375a.p389q.C6473c;
/* renamed from: c.f.a.a.a.m.h.i.d */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/i/d.class */
public class C6448d implements C6445c.AbstractC6446a {

    /* renamed from: a */
    public final C6434a f20133a;

    /* renamed from: b */
    public final C6473c f20134b = new C6473c(null);

    /* renamed from: c */
    public final C6442a f20135c;

    /* renamed from: d */
    public C6445c f20136d;

    public C6448d(C6434a aVar, C6442a aVar2) {
        this.f20133a = aVar;
        this.f20135c = aVar2;
    }

    /* renamed from: a */
    public final void m20853a() {
        C6445c cVar = this.f20136d;
        if (cVar != null) {
            cVar.m20856a((C6445c.AbstractC6446a) null);
            this.f20136d = null;
        }
    }

    /* renamed from: a */
    public void m20852a(WebView webView) {
        if (this.f20134b.m20774a() != webView) {
            this.f20135c.m20873a((WebView) null);
            m20853a();
            this.f20134b.m20771b((C6473c) webView);
            if (webView != null) {
                C6445c cVar = new C6445c(this.f20133a);
                this.f20136d = cVar;
                cVar.m20856a(this);
                webView.addJavascriptInterface(this.f20136d, AvidJavascriptInterface.AVID_OBJECT);
            }
        }
    }

    /* renamed from: b */
    public void m20851b() {
        m20852a(null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i.C6445c.AbstractC6446a
    public void onAvidAdSessionContextInvoked() {
        this.f20135c.m20873a((WebView) this.f20134b.m20774a());
    }
}
