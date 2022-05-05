package com.tmobile.tmoid.agent.utils;

import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import com.tmobile.tmoid.helperlib.util.Log;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/utils/CookieWatcher.class */
public class CookieWatcher {

    /* renamed from: b */
    String f14695b;

    /* renamed from: a */
    Map<String, String> f14694a = new HashMap();

    /* renamed from: c */
    List<Listener> f14696c = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/utils/CookieWatcher$Listener.class */
    public interface Listener {
        /* renamed from: a */
        void mo5078a(String str, String str2);

        /* renamed from: b */
        void mo5077b(String str);
    }

    public CookieWatcher(String str, String str2, Listener listener) {
        Log.m4648v("TMO-Agent", "Creating CookieWatcher:" + str + "/" + str2);
        this.f14695b = str;
        Pattern.compile(str2);
        if (listener != null) {
            this.f14696c.add(listener);
        }
    }

    /* renamed from: d */
    private void m5084d() {
        Log.m4648v("TMO-Agent", "[CookieWatcher store] {\n");
        for (String str : this.f14694a.keySet()) {
            Log.m4648v("TMO-Agent", "\t" + str + "=" + this.f14694a.get(str));
        }
        Log.m4648v("TMO-Agent", "} [CookieWatcher store]");
    }

    /* renamed from: e */
    private void m5083e(String str, String str2) {
        Log.m4648v("TMO-Agent", "CookieWatcher.notify_listeners_cookie_added:" + str + "=" + str2);
        for (Listener listener : this.f14696c) {
            listener.mo5078a(str, str2);
        }
    }

    /* renamed from: f */
    private void m5082f(String str) {
        Log.m4648v("TMO-Agent", "CookieWatcher.notify_listeners_cookie_removed:" + str);
        for (Listener listener : this.f14696c) {
            listener.mo5077b(str);
        }
    }

    /* renamed from: h */
    private void m5080h(String str) {
        CookieManager instance = CookieManager.getInstance();
        if (this.f14695b.equals(m5079i(str))) {
            Log.m4648v("TMO-Agent", "CookieWatcher: checking webview");
            CookieSyncManager.getInstance().sync();
            String cookie = instance.getCookie("https://" + this.f14695b);
            Log.m4648v("TMO-Agent", "CookieManager.getCookie(https://" + this.f14695b + ") => " + cookie);
            if (cookie != null) {
                HashMap hashMap = new HashMap();
                String[] split = cookie.split(";");
                int length = split.length;
                for (int i = 0; i < length; i++) {
                    String str2 = split[i];
                    while (str2.startsWith(" ")) {
                        str2 = str2.substring(1);
                    }
                    String[] split2 = str2.split("=");
                    String str3 = split2[0];
                    String str4 = split2.length > 1 ? split2[1] : "";
                    String remove = this.f14694a.remove(str3);
                    if (remove == null) {
                        m5083e(str3, str4);
                    } else if (!remove.equals(str4)) {
                        m5083e(str3, str4);
                    }
                    hashMap.put(str3, str4);
                }
                Map<String, String> map = this.f14694a;
                this.f14694a = hashMap;
                for (String str5 : map.keySet()) {
                    m5082f(str5);
                }
            }
        }
        m5084d();
    }

    /* renamed from: i */
    private String m5079i(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new URL(str).getHost();
        } catch (MalformedURLException e) {
            Log.m4651e("TMO-Agent", "while trying to extract url_hostname", e);
            return null;
        }
    }

    /* renamed from: a */
    public void m5087a(WebView webView) {
        Log.m4648v("TMO-Agent", "CookieWatcher: afterLoad");
        Log.m4648v("TMO-Agent", "<<<<<<<<<<<< RESPONSE");
        m5080h(webView.getUrl());
        Log.m4648v("TMO-Agent", "<<<<<<<<<<<<");
    }

    /* renamed from: b */
    public void m5086b(String str) {
        Log.m4648v("TMO-Agent", "CookieWatcher: beforeLoad(\"" + str + "\")");
        Log.m4648v("TMO-Agent", ">>>>>>>>>>>> REQUEST");
        m5080h(str);
        Log.m4648v("TMO-Agent", ">>>>>>>>>>>>");
    }

    /* renamed from: c */
    public boolean m5085c(String str) {
        return this.f14694a.get(str) != null;
    }

    /* renamed from: g */
    public void m5081g() {
        for (String str : this.f14694a.keySet()) {
            m5082f(str);
        }
        this.f14694a.clear();
    }
}
