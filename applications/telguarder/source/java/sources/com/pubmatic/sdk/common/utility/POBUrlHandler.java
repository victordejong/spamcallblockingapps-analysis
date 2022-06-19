package com.pubmatic.sdk.common.utility;

import android.content.Context;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.browser.POBInternalBrowserActivity;
import com.pubmatic.sdk.common.log.PMLog;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBUrlHandler.class */
public class POBUrlHandler {

    /* renamed from: d */
    private static String f579d = "POBUrlHandler";

    /* renamed from: a */
    private UrlHandlerListener f580a;

    /* renamed from: b */
    private Context f581b;

    /* renamed from: c */
    private boolean f582c = false;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener.class */
    public interface UrlHandlerListener {
        void onErrorOpenUrl(String str);

        void onInternalBrowserClose(String str);

        void onInternalBrowserOpen(String str);

        void onLeaveApp(String str);
    }

    /* renamed from: com.pubmatic.sdk.common.utility.POBUrlHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBUrlHandler$a.class */
    public class C1891a implements POBInternalBrowserActivity.InternalBrowserListener {

        /* renamed from: a */
        final /* synthetic */ String f583a;

        C1891a(String str) {
            POBUrlHandler.this = r4;
            this.f583a = str;
        }

        @Override // com.pubmatic.sdk.common.browser.POBInternalBrowserActivity.InternalBrowserListener
        public void onBrowserDismiss() {
            PMLog.debug(POBUrlHandler.f579d, "Dismissed device default browser. url :%s", this.f583a);
            POBUrlHandler.this.f580a.onInternalBrowserClose(this.f583a);
            POBUrlHandler.this.f582c = false;
        }

        @Override // com.pubmatic.sdk.common.browser.POBInternalBrowserActivity.InternalBrowserListener
        public void onBrowserStart() {
            POBUrlHandler.this.f580a.onInternalBrowserOpen(this.f583a);
        }

        @Override // com.pubmatic.sdk.common.browser.POBInternalBrowserActivity.InternalBrowserListener
        public void onExternalBrowserClick(String str) {
            PMLog.debug(POBUrlHandler.f579d, "Opening current page in device's default browser. url :%s", str);
            if (POBUtils.openExternalBrowser(POBUrlHandler.this.f581b, str)) {
                POBUrlHandler.this.f580a.onLeaveApp(str);
                return;
            }
            POBUrlHandler.this.f580a.onErrorOpenUrl(str);
            PMLog.warn(POBUrlHandler.f579d, "Unable to open url in external browser from internal browser %s", str);
        }
    }

    public POBUrlHandler(Context context, UrlHandlerListener urlHandlerListener) {
        this.f581b = context;
        this.f580a = urlHandlerListener;
    }

    public void open(String str) {
        if (POBDeepLinkUtil.validateAndRedirect(this.f581b, str)) {
            PMLog.debug(f579d, "Deep link success", new Object[0]);
        } else if (POBInstanceProvider.getSdkConfig().isUseInternalBrowser()) {
            if (this.f582c) {
                PMLog.warn(f579d, "Internal browser already displayed", new Object[0]);
                return;
            }
            this.f582c = true;
            POBInternalBrowserActivity.startNewActivity(this.f581b, str, new C1891a(str));
            return;
        } else if (!POBUtils.openExternalBrowser(this.f581b, str)) {
            PMLog.warn(f579d, "Unable to open url in external browser %s", str);
            this.f580a.onErrorOpenUrl(str);
            return;
        }
        this.f580a.onLeaveApp(str);
    }
}
