package com.taiwanmobile.p055pt.adp.view.webview.mraid;

import android.content.Intent;
import android.provider.CalendarContract;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import java.net.URLDecoder;
import java.util.Date;
import org.json.JSONObject;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidCalendarHandler */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidCalendarHandler.class */
public class MraidCalendarHandler {
    public static final String TAG = "MraidCalendarHandler";

    /* renamed from: a */
    public Date f10084a = null;

    /* renamed from: b */
    public Date f10085b = null;

    /* renamed from: c */
    public String f10086c = null;

    /* renamed from: d */
    public String f10087d = null;

    /* renamed from: e */
    public String f10088e = null;

    /* renamed from: f */
    public String f10089f = "yyyy-MM-dd'T'HH:mmZZZ";

    /* renamed from: g */
    public String f10090g = "yyyyMMdd'T'HHmmss";

    public void addCalendarEvent(JSWebView jSWebView) {
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
        String str = this.f10086c;
        if (str == null || this.f10084a == null) {
            throw new Exception("Calendar properties don't contain key 'description' or 'start'.");
        }
        intent.putExtra("title", str);
        intent.putExtra("beginTime", this.f10084a.getTime());
        Date date = this.f10085b;
        if (date != null) {
            intent.putExtra("endTime", date.getTime());
        }
        String str2 = this.f10087d;
        if (str2 != null) {
            intent.putExtra("eventLocation", str2);
        }
        String str3 = this.f10088e;
        if (str3 != null) {
            intent.putExtra("description", str3);
        }
        intent.putExtra("accessLevel", 2);
        intent.putExtra("availability", 0);
        intent.setData(CalendarContract.Events.CONTENT_URI);
        if (jSWebView != null && jSWebView.getContext() != null) {
            jSWebView.handleAdListenerCallback();
            jSWebView.getContext().startActivity(intent);
        }
    }

    public void parseCalendarString(String str) {
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.has("description")) {
            this.f10086c = URLDecoder.decode(jSONObject.getString("description"), "UTF-8");
        }
        if (jSONObject.has("start")) {
            this.f10084a = C10832d.m10504a(jSONObject.getString("start"), this.f10089f);
        }
        if (jSONObject.has("end")) {
            this.f10085b = C10832d.m10504a(jSONObject.getString("end"), this.f10089f);
        }
        if (jSONObject.has("location")) {
            this.f10087d = URLDecoder.decode(jSONObject.getString("location"), "UTF-8");
        }
        if (jSONObject.has(MraidParser.MRAID_JSON_CREATE_CALENDAR_EVENT_SUMMARY)) {
            this.f10088e = URLDecoder.decode(jSONObject.getString(MraidParser.MRAID_JSON_CREATE_CALENDAR_EVENT_SUMMARY), "UTF-8");
        }
    }
}
