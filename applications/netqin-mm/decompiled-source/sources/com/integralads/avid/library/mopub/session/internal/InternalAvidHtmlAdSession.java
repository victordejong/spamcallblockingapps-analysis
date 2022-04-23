package com.integralads.avid.library.mopub.session.internal;

import android.content.Context;
import android.webkit.WebView;
import com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/InternalAvidHtmlAdSession.class */
public abstract class InternalAvidHtmlAdSession extends InternalAvidAdSession<WebView> {
    public InternalAvidHtmlAdSession(Context context, String str, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        super(context, str, externalAvidAdSessionContext);
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    /* renamed from: c */
    public void mo5386c() {
        super.mo5386c();
        m5387f();
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    /* renamed from: d */
    public void mo5385d() {
        super.mo5385d();
        m5387f();
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    public WebView getWebView() {
        return getView();
    }
}
