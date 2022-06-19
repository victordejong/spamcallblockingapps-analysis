package com.freshchat.consumer.sdk.p047b.p048a;

import com.freshchat.consumer.sdk.p047b.C1463b;
import com.freshchat.consumer.sdk.p057j.C1608ad;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.b.a.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/a/a.class */
public class C1461a {

    /* renamed from: dY */
    private static String f4007dY = "JsonResponse";

    /* renamed from: dW */
    private JSONObject f4008dW;

    /* renamed from: dX */
    private JSONArray f4009dX;

    public C1461a() {
    }

    public C1461a(InputStream inputStream) {
        m41028a(inputStream);
    }

    public C1461a(String str) {
        m41029Q(str);
    }

    /* renamed from: Q */
    private void m41029Q(String str) {
        reset();
        if (str != null) {
            StringBuilder m8728C = C22128a.m8728C("{ \"");
            C22128a.m8666T0(m8728C, f4007dY, "\":\t ", str, "}");
            try {
                Object obj = new JSONObject(m8728C.toString()).get(f4007dY);
                if (obj instanceof JSONObject) {
                    this.f4008dW = (JSONObject) obj;
                } else if (obj instanceof JSONArray) {
                    this.f4009dX = (JSONArray) obj;
                } else {
                    String str2 = "Not an Valid one" + obj.getClass();
                }
            } catch (JSONException e) {
                C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
            }
        }
    }

    /* renamed from: a */
    private void m41028a(InputStream inputStream) {
        reset();
        if (!C1630aw.m40204eS()) {
            try {
                m41029Q(C1608ad.m40317a(inputStream, C1463b.f4012da));
                return;
            } catch (IOException e) {
                C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
                return;
            }
        }
        Object m41020co = new C1462b(inputStream).m41020co();
        if (m41020co instanceof JSONObject) {
            this.f4008dW = (JSONObject) m41020co;
        } else if (m41020co instanceof JSONArray) {
            this.f4009dX = (JSONArray) m41020co;
        } else {
            String str = "Not an Valid one" + m41020co;
        }
    }

    private void reset() {
        this.f4008dW = null;
        this.f4009dX = null;
    }

    /* renamed from: cm */
    public JSONObject m41027cm() {
        if (m41026cn()) {
            return this.f4008dW;
        }
        return null;
    }

    /* renamed from: cn */
    public boolean m41026cn() {
        return this.f4008dW != null;
    }

    /* renamed from: db */
    public boolean m41025db() {
        return m41026cn() && !this.f4008dW.optBoolean(AnalyticsConstants.SUCCESS) && this.f4008dW.optInt("errorCode") == 19;
    }

    /* renamed from: fJ */
    public boolean m41024fJ() {
        return m41026cn() && !this.f4008dW.optBoolean(AnalyticsConstants.SUCCESS) && this.f4008dW.optInt("errorCode") == 20;
    }

    public boolean isArray() {
        return this.f4009dX != null;
    }

    public boolean isValid() {
        return (this.f4008dW == null && this.f4009dX == null) ? false : true;
    }

    public String toString() {
        String str;
        StringBuilder sb;
        if (m41026cn()) {
            sb = C22128a.m8728C("Object : ");
            str = this.f4008dW.toString();
        } else if (!isArray()) {
            return null;
        } else {
            sb = C22128a.m8728C("Array : ");
            str = this.f4009dX.toString();
        }
        sb.append(str);
        return sb.toString();
    }
}
