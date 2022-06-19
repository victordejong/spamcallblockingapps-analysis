package com.callapp.contacts.util.webview;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.MailTo;
import android.net.Uri;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.loader.PreferredSimManager;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/WebViewDialog.class */
public class WebViewDialog extends BaseWebViewDialog {

    /* renamed from: d */
    private final Context f28522d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient.class */
    public class CallAppWebViewClient extends WebViewClient {

        /* renamed from: b */
        private final Context f28525b;

        CallAppWebViewClient(Context context) {
            WebViewDialog.this = r4;
            this.f28525b = context;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            try {
                WebViewDialog.this.f28514a.setVisibility(0);
                WebViewDialog.this.f28515b.setVisibility(0);
            } catch (RuntimeException e) {
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            CLog.m27598b(WebViewDialog.class, String.format("Error code: %d Description: %s failingUrl: %s", Integer.valueOf(i), str, str2));
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return false;
            }
            super.onRenderProcessGone(webView, renderProcessGoneDetail);
            if (webView == null) {
                return true;
            }
            ((ViewGroup) webView.getParent()).removeView(webView);
            webView.destroy();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("mailto:")) {
                MailTo parse = MailTo.parse(str);
                Activities.m27654b(this.f28525b, new String[]{parse.getTo()}, parse.getSubject());
                webView.reload();
                return true;
            } else if (str.startsWith("market:")) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                Activities.m27656b(this.f28525b, intent);
                return true;
            } else if (!str.startsWith("tel:")) {
                return false;
            } else {
                final Phone m28239a = PhoneManager.get().m28239a(StringUtils.m26023h(str, "tel:"));
                final Intent intent2 = new Intent("android.intent.action.DIAL");
                intent2.setData(Uri.parse(str));
                SimManager.SimId simId = null;
                if (SimManager.get().isDualSimAvailable()) {
                    try {
                        simId = PreferredSimManager.m28907a(DeviceIdLoader.m28854a(m28239a, 500), m28239a);
                    } catch (DeviceIdLoader.OperationFailedException e) {
                        new StringBuilder("failed to get contact id ").append(e.getMessage());
                        CLog.m27606a("WebViewDialog");
                        simId = null;
                    }
                }
                SimManager.m28159a(CallAppApplication.get(), Activities.getString(2131888153), simId, new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.util.webview.WebViewDialog.CallAppWebViewClient.1
                    @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                    public void onRowClicked(int i) {
                        if (i != SimManager.SimId.ASK.getSimId()) {
                            Singletons.get().getSimManager().m28148a(m28239a, intent2, i);
                        }
                        Activities.m27685a(CallAppWebViewClient.this.f28525b, intent2);
                    }
                });
                return true;
            }
        }
    }

    public WebViewDialog(Context context, String str, String str2, DialogInterface.OnCancelListener onCancelListener) {
        super(str, str2, onCancelListener);
        this.f28522d = context;
    }

    @Override // com.callapp.contacts.util.webview.BaseWebViewDialog
    protected WebViewClient getWebViewClient() {
        return new CallAppWebViewClient(this.f28522d);
    }

    @Override // com.callapp.contacts.util.webview.BaseWebViewDialog, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        View findViewById = ovViewCreated.findViewById(2131364548);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.util.webview.WebViewDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    WebViewDialog.this.dismiss();
                }
            });
        }
        return ovViewCreated;
    }
}
