package com.freshchat.consumer.sdk.activity;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.freshchat.consumer.sdk.C1298R;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.activity.bi */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/bi.class */
public class C1429bi extends WebViewClient {

    /* renamed from: jk */
    public final /* synthetic */ BotFaqDetailsActivity f3946jk;

    public C1429bi(BotFaqDetailsActivity botFaqDetailsActivity) {
        this.f3946jk = botFaqDetailsActivity;
    }

    /* renamed from: t */
    private String m41075t() {
        return C22128a.m8599l2("javascript:(function(){ document.body.style.paddingBottom = '", (int) this.f3946jk.getResources().getDimension(C1298R.dimen.freshchat_faq_content_padding_bottom), "px'})();");
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        C1433c c1433c;
        super.onPageFinished(webView, str);
        c1433c = this.f3946jk.f3719pH;
        c1433c.postDelayed(new RunnableC1430bj(this), 500L);
        webView.loadUrl(m41075t());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Type inference failed for: r0v20, types: [android.content.Context, com.freshchat.consumer.sdk.activity.BotFaqDetailsActivity] */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldOverrideUrlLoading(android.webkit.WebView r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = r6
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.m40233a(r0)     // Catch: java.lang.Exception -> Lf
            if (r0 == 0) goto L14
            r0 = r6
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: java.lang.Exception -> Lf
            r5 = r0
            goto L16
        Lf:
            r5 = move-exception
            r0 = r5
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)
        L14:
            r0 = 0
            r5 = r0
        L16:
            r0 = r5
            if (r0 != 0) goto L26
            r0 = r4
            com.freshchat.consumer.sdk.activity.BotFaqDetailsActivity r0 = r0.f3946jk
            com.freshchat.consumer.sdk.b.c r1 = com.freshchat.consumer.sdk.p047b.EnumC1464c.LINKED_CONTENT_NOT_FOUND
            com.freshchat.consumer.sdk.p047b.C1471i.m40847a(r0, r1)
            r0 = 0
            return r0
        L26:
            r0 = r5
            boolean r0 = com.freshchat.consumer.sdk.util.DeepLinkUtils.m39273c(r0)
            if (r0 != 0) goto L5f
            r0 = r5
            boolean r0 = com.freshchat.consumer.sdk.util.DeepLinkUtils.m39271d(r0)
            if (r0 == 0) goto L37
            goto L5f
        L37:
            r0 = r5
            java.lang.String r0 = r0.toString()
            boolean r0 = com.freshchat.consumer.sdk.util.DeepLinkUtils.m39279b(r0)
            if (r0 == 0) goto L43
            r0 = 0
            return r0
        L43:
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "LAUNCHED_FROM_FAQ"
            r2 = 1
            r0.putBoolean(r1, r2)
            r0 = r4
            com.freshchat.consumer.sdk.activity.BotFaqDetailsActivity r0 = r0.f3946jk
            android.content.Context r0 = r0.getContext()
            r1 = r5
            r2 = r6
            boolean r0 = com.freshchat.consumer.sdk.util.DeepLinkUtils.m39275c(r0, r1, r2)
            return r0
        L5f:
            r0 = r4
            com.freshchat.consumer.sdk.activity.BotFaqDetailsActivity r0 = r0.f3946jk
            android.content.Context r0 = r0.getContext()
            r1 = r5
            r2 = 0
            com.freshchat.consumer.sdk.util.DeepLinkUtils.m39280b(r0, r1, r2)
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.activity.C1429bi.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
    }
}
