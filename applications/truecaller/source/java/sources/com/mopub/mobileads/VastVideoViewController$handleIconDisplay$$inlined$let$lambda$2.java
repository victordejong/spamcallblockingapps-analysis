package com.mopub.mobileads;

import android.content.Context;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.logging.MoPubLog;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0017¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r¸\u0006\u000e"}, d2 = {"com/mopub/mobileads/VastVideoViewController$handleIconDisplay$2$1$2", "Landroid/webkit/WebViewClient;", "Landroid/webkit/WebView;", ViewAction.VIEW, "Landroid/webkit/RenderProcessGoneDetail;", "detail", "", "onRenderProcessGone", "(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z", "L;", "url", "shouldOverrideUrlLoading", "(Landroid/webkit/WebView;L;)Z", "mopub-sdk-base_release", "com/mopub/mobileads/VastVideoViewController$$special$$inlined$also$lambda$2"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2.class */
public final class VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2 extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ VastVideoViewController f8941a;

    public VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2(VastIconConfig vastIconConfig, VastVideoViewController vastVideoViewController) {
        this.f8941a = vastVideoViewController;
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onRenderProcessGone() called from the IconView. Ignoring the icon.");
        VastVideoConfig vastVideoConfig = this.f8941a.getVastVideoConfig();
        Context context = this.f8941a.f8780a;
        l.b(context, AnalyticsConstants.CONTEXT);
        vastVideoConfig.handleError(context, VastErrorCode.UNDEFINED_ERROR, this.f8941a.getCurrentPosition());
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        l.f(webView, ViewAction.VIEW);
        l.f(str, "url");
        VastIconConfig vastIconConfig = this.f8941a.getVastIconConfig();
        if (vastIconConfig != null) {
            Context context = this.f8941a.f8780a;
            l.b(context, AnalyticsConstants.CONTEXT);
            vastIconConfig.handleClick(context, str, this.f8941a.getVastVideoConfig().getDspCreativeId());
            return true;
        }
        return true;
    }
}
