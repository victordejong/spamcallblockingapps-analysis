package com.tmobile.tmoid.agent;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import android.webkit.WebView;
import com.facebook.stetho.common.Utf8Charset;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpRequestBase;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMHttpUtils.class */
public class IAMHttpUtils {
    /* renamed from: a */
    private static void m5159a(Map<String, String> map, String str, String str2) {
        String str3 = str + ":" + str2;
        try {
            str3 = Base64.encodeToString(str3.getBytes(Utf8Charset.NAME), 0);
        } catch (UnsupportedEncodingException e) {
        }
        String str4 = str3;
        if (str3.endsWith("\n")) {
            str4 = str3.substring(0, str3.length() - 1);
        }
        map.put("Authorization", "Basic " + str4);
    }

    /* renamed from: b */
    public static void m5158b(HttpRequestBase httpRequestBase, Map<String, String> map) {
        httpRequestBase.addHeader("Cookie", m5156d(map));
    }

    /* renamed from: c */
    public static void m5157c(Context context, HttpRequestBase httpRequestBase) {
        Map<String, String> e = m5155e(context);
        for (String str : e.keySet()) {
            httpRequestBase.addHeader(str, e.get(str));
        }
    }

    /* renamed from: d */
    private static String m5156d(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            sb.append(str);
            sb.append("=");
            sb.append(map.get(str));
            sb.append("; ");
        }
        if (sb.length() > 2) {
            sb.delete(sb.length() - 2, sb.length());
        }
        return sb.toString();
    }

    /* renamed from: e */
    public static Map<String, String> m5155e(Context context) {
        Configuration b = IAMAgentStateHolder.m5162c(context).m5163b();
        HashMap hashMap = new HashMap();
        String str = b.getDEVICE_AGENT() + " Android/" + Build.VERSION.RELEASE;
        Log.m4648v("TMO-Agent", "result DEVICE_AGENT: " + str);
        hashMap.put("Device-Agent", str);
        return hashMap;
    }

    /* renamed from: f */
    public static Map<String, String> m5154f(Context context, String str, String str2, boolean z) {
        Map<String, String> e = m5155e(context);
        if (z) {
            m5159a(e, str, str2);
        }
        return e;
    }

    /* renamed from: g */
    public static void m5153g(WebView webView, String str, String[] strArr) {
        StringBuilder sb = new StringBuilder("javascript:");
        if (strArr != null && strArr.length > 0) {
            sb.append("if (");
            for (int i = 0; i < strArr.length; i++) {
                if (i > 0) {
                    sb.append("&&");
                }
                sb.append("(");
                sb.append("typeof(");
                sb.append(strArr[i]);
                sb.append(")!='undefined')");
            }
            sb.append(") {");
        }
        sb.append("try{");
        sb.append(str);
        sb.append("}catch(e){IAMAgent.log(e);IAMAgent.log('" + m5152h(str) + "');}");
        if (strArr != null && strArr.length > 0) {
            sb.append("};");
        }
        webView.loadUrl(sb.toString());
    }

    /* renamed from: h */
    private static String m5152h(String str) {
        return str.replaceAll("\"", "\\\\\"").replaceAll("'", "\\\\'");
    }
}
