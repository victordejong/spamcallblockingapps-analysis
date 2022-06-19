package com.huawei.secure.android.common.webview;

import android.webkit.WebView;
import com.huawei.secure.android.common.util.C2500b;
import com.huawei.secure.android.common.util.C2501c;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/SafeGetUrl.class */
public class SafeGetUrl {

    /* renamed from: c */
    private static final String f8160c = "SafeGetUrl";

    /* renamed from: d */
    private static final long f8161d = 200;

    /* renamed from: a */
    private String f8162a;

    /* renamed from: b */
    private WebView f8163b;

    /* renamed from: com.huawei.secure.android.common.webview.SafeGetUrl$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/SafeGetUrl$a.class */
    public class RunnableC2503a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CountDownLatch f8164a;

        public RunnableC2503a(CountDownLatch countDownLatch) {
            SafeGetUrl.this = r4;
            this.f8164a = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            SafeGetUrl safeGetUrl = SafeGetUrl.this;
            safeGetUrl.setUrl(safeGetUrl.f8163b.getUrl());
            this.f8164a.countDown();
        }
    }

    public SafeGetUrl() {
    }

    public SafeGetUrl(WebView webView) {
        this.f8163b = webView;
    }

    public String getUrlMethod() {
        if (this.f8163b == null) {
            return "";
        }
        if (C2500b.m36870a()) {
            return this.f8163b.getUrl();
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        C2501c.m36869a(new RunnableC2503a(countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            e.getMessage();
        }
        return this.f8162a;
    }

    public WebView getWebView() {
        return this.f8163b;
    }

    public void setUrl(String str) {
        this.f8162a = str;
    }

    public void setWebView(WebView webView) {
        this.f8163b = webView;
    }
}
