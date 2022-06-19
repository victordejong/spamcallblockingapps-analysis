package p105g7;

import android.os.Build;
import android.view.WindowManager;
import android.webkit.WebView;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p008a7.C0035b;
import p008a7.C0041h;
import p008a7.C0042i;
import p032c7.C0850c;
import p082e7.C2604a;
import p086f.C2678t;
import p094f7.C2767b;
import p283x2.C4854f;
import p291y.C4951d;
/* renamed from: g7.a */
/* loaded from: classes-dex2jar.jar:g7/a.class */
public abstract class AbstractC2907a {

    /* renamed from: b */
    public C2678t f9803b;

    /* renamed from: c */
    public C4854f f9804c;

    /* renamed from: e */
    public long f9806e = System.nanoTime();

    /* renamed from: d */
    public int f9805d = 1;

    /* renamed from: a */
    public C2767b f9802a = new C2767b(null);

    /* renamed from: a */
    public void mo2858a() {
    }

    /* renamed from: b */
    public void m2861b(float f) {
        C4951d.f15103a.m201b(m2859f(), "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: c */
    public void mo2857c(C0042i c0042i, C0035b c0035b) {
        m2860d(c0042i, c0035b, null);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x01ba -> B:7:0x002b). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x01bf -> B:10:0x0068). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x01ce -> B:17:0x008d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x01d3 -> B:20:0x00af). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x01e2 -> B:28:0x00e7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x01e7 -> B:31:0x00fa). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x01f6 -> B:44:0x0148). Please submit an issue!!! */
    /* renamed from: d */
    public void m2860d(C0042i c0042i, C0035b c0035b, JSONObject jSONObject) {
        String str = c0042i.f95h;
        JSONObject jSONObject2 = new JSONObject();
        WindowManager windowManager = C2604a.f9034a;
        try {
            jSONObject2.put("environment", "app");
        } catch (JSONException e) {
        }
        try {
            jSONObject2.put("adSessionType", c0035b.f61h);
        } catch (JSONException e2) {
        }
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        } catch (JSONException e3) {
        }
        try {
            jSONObject3.put("osVersion", Integer.toString(Build.VERSION.SDK_INT));
        } catch (JSONException e4) {
        }
        try {
            jSONObject3.put("os", "Android");
        } catch (JSONException e5) {
        }
        try {
            jSONObject2.put("deviceInfo", jSONObject3);
        } catch (JSONException e6) {
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        try {
            jSONObject2.put("supports", jSONArray);
        } catch (JSONException e7) {
        }
        JSONObject jSONObject4 = new JSONObject();
        try {
            jSONObject4.put("partnerName", c0035b.f54a.f8374a);
        } catch (JSONException e8) {
        }
        try {
            jSONObject4.put("partnerVersion", c0035b.f54a.f8375b);
        } catch (JSONException e9) {
        }
        try {
            jSONObject2.put("omidNativeInfo", jSONObject4);
        } catch (JSONException e10) {
        }
        JSONObject jSONObject5 = new JSONObject();
        try {
            jSONObject5.put("libraryVersion", "1.3.11-Adcolony");
        } catch (JSONException e11) {
        }
        try {
            jSONObject5.put("appId", C0850c.f3137b.f3138a.getApplicationContext().getPackageName());
        } catch (JSONException e12) {
        }
        try {
            jSONObject2.put("app", jSONObject5);
        } catch (JSONException e13) {
        }
        String str2 = c0035b.f60g;
        if (str2 != null) {
            try {
                jSONObject2.put("contentUrl", str2);
            } catch (JSONException e14) {
            }
        }
        String str3 = c0035b.f59f;
        if (str3 != null) {
            try {
                jSONObject2.put("customReferenceData", str3);
            } catch (JSONException e15) {
            }
        }
        JSONObject jSONObject6 = new JSONObject();
        for (C0041h c0041h : Collections.unmodifiableList(c0035b.f56c)) {
            try {
                jSONObject6.put(c0041h.f84a, c0041h.f86c);
            } catch (JSONException e16) {
            }
        }
        C4951d.f15103a.m201b(m2859f(), "startSession", str, jSONObject2, jSONObject6, jSONObject);
    }

    /* renamed from: e */
    public void mo2856e() {
        this.f9802a.clear();
    }

    /* renamed from: f */
    public WebView m2859f() {
        return this.f9802a.get();
    }
}
