package p131c.p372f.p373a.p374a.p375a.p381m.p382h;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import p131c.p372f.p373a.p374a.p375a.p381m.C6433g;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p384j.AbstractC6449a;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p384j.C6450b;
/* renamed from: c.f.a.a.a.m.h.e */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/e.class */
public abstract class AbstractC6438e extends InternalAvidAdSession<View> {

    /* renamed from: l */
    public C6450b f20117l;

    /* renamed from: m */
    public final WebView f20118m;

    public AbstractC6438e(Context context, String str, C6433g gVar) {
        super(context, str, gVar);
        WebView webView = new WebView(context.getApplicationContext());
        this.f20118m = webView;
        this.f20117l = new C6450b(webView);
    }

    @Override // com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession
    /* renamed from: i */
    public WebView mo5443i() {
        return this.f20118m;
    }

    @Override // com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession
    /* renamed from: o */
    public void mo5437o() {
        super.mo5437o();
        m5432t();
        this.f20117l.m20850a();
    }

    /* renamed from: u */
    public AbstractC6449a m20878u() {
        return this.f20117l;
    }
}
