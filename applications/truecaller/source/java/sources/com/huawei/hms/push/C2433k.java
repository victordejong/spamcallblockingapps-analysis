package com.huawei.hms.push;

import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.k */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/k.class */
public class C2433k {

    /* renamed from: B */
    public int f7729B;

    /* renamed from: D */
    public String f7731D;

    /* renamed from: b */
    public int f7735b;

    /* renamed from: c */
    public String f7736c;

    /* renamed from: d */
    public String f7737d;

    /* renamed from: l */
    public String f7745l;

    /* renamed from: m */
    public String f7746m;

    /* renamed from: n */
    public String f7747n;

    /* renamed from: o */
    public String f7748o;

    /* renamed from: p */
    public String f7749p;

    /* renamed from: r */
    public String f7751r;

    /* renamed from: s */
    public String f7752s;

    /* renamed from: z */
    public String f7759z;

    /* renamed from: a */
    public String f7734a = "";

    /* renamed from: e */
    public String f7738e = "";

    /* renamed from: f */
    public String f7739f = "";

    /* renamed from: g */
    public String f7740g = "";

    /* renamed from: h */
    public String f7741h = "";

    /* renamed from: i */
    public String f7742i = "";

    /* renamed from: j */
    public String f7743j = "";

    /* renamed from: k */
    public String f7744k = "";

    /* renamed from: q */
    public String f7750q = "";

    /* renamed from: t */
    public int f7753t = 0;

    /* renamed from: u */
    public String f7754u = "";

    /* renamed from: v */
    public String f7755v = "";

    /* renamed from: w */
    public String f7756w = "";

    /* renamed from: x */
    public int f7757x = 0;

    /* renamed from: y */
    public int f7758y = 0;

    /* renamed from: A */
    public String f7728A = "";

    /* renamed from: C */
    public String f7730C = "";

    /* renamed from: E */
    public String f7732E = "";

    /* renamed from: F */
    public String f7733F = "";

    public C2433k(byte[] bArr, byte[] bArr2) {
        EnumC2436n enumC2436n = EnumC2436n.STYLE_DEFAULT;
        Charset charset = C2448x.f7781a;
        this.f7751r = new String(bArr, charset);
        this.f7752s = new String(bArr2, charset);
    }

    /* renamed from: a */
    public String m37334a() {
        return this.f7746m;
    }

    /* renamed from: a */
    public final JSONObject m37332a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(RemoteMessageConst.MessageBody.MSG_CONTENT, jSONObject);
        jSONObject2.put("group", this.f7734a);
        jSONObject2.put(RemoteMessageConst.Notification.TAG, this.f7728A);
        jSONObject2.put(RemoteMessageConst.Notification.AUTO_CANCEL, this.f7757x);
        jSONObject2.put(RemoteMessageConst.Notification.VISIBILITY, this.f7758y);
        jSONObject2.put(RemoteMessageConst.Notification.WHEN, this.f7759z);
        return jSONObject2;
    }

    /* renamed from: a */
    public final JSONObject m37331a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("dispPkgName", this.f7739f);
        jSONObject3.put(RemoteMessageConst.MSGID, this.f7738e);
        jSONObject3.put("ap", this.f7737d);
        jSONObject3.put(RemoteMessageConst.Notification.NOTIFY_ID, this.f7729B);
        jSONObject3.put(RemoteMessageConst.MessageBody.PS_CONTENT, jSONObject);
        jSONObject3.put(RemoteMessageConst.MessageBody.NOTIFY_DETAIL, jSONObject2);
        jSONObject3.put(RemoteMessageConst.Notification.TICKER, this.f7731D);
        jSONObject3.put(RemoteMessageConst.DATA, this.f7730C);
        return jSONObject3;
    }

    /* renamed from: a */
    public void m37333a(int i) {
        this.f7729B = i;
    }

    /* renamed from: b */
    public String m37330b() {
        return this.f7733F;
    }

    /* renamed from: b */
    public final JSONObject m37329b(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("cmd", this.f7740g);
        jSONObject2.put("content", this.f7741h);
        jSONObject2.put(RemoteMessageConst.Notification.NOTIFY_ICON, this.f7742i);
        jSONObject2.put(RemoteMessageConst.Notification.NOTIFY_TITLE, this.f7743j);
        jSONObject2.put("notifySummary", this.f7744k);
        jSONObject2.put(RemoteMessageConst.MessageBody.PARAM, jSONObject);
        return jSONObject2;
    }

    /* renamed from: c */
    public String m37328c() {
        return this.f7737d;
    }

    /* renamed from: c */
    public final void m37327c(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("ap")) {
            String string = jSONObject.getString("ap");
            StringBuilder sb = new StringBuilder();
            if (TextUtils.isEmpty(string) || string.length() >= 48) {
                this.f7737d = string.substring(0, 48);
                return;
            }
            int length = string.length();
            for (int i = 0; i < 48 - length; i++) {
                sb.append(DtbConstants.NETWORK_TYPE_UNKNOWN);
            }
            sb.append(string);
            this.f7737d = sb.toString();
        }
    }

    /* renamed from: d */
    public String m37326d() {
        return this.f7745l;
    }

    /* renamed from: d */
    public final boolean m37325d(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return false;
        }
        if (jSONObject.has(RemoteMessageConst.Notification.CLICK_ACTION)) {
            this.f7746m = jSONObject.getString(RemoteMessageConst.Notification.CLICK_ACTION);
        }
        if (jSONObject.has(RemoteMessageConst.Notification.INTENT_URI)) {
            this.f7736c = jSONObject.getString(RemoteMessageConst.Notification.INTENT_URI);
        }
        if (jSONObject.has("appPackageName")) {
            this.f7745l = jSONObject.getString("appPackageName");
            return true;
        }
        HMSLog.m37198d("PushSelfShowLog", "appPackageName is null");
        return false;
    }

    /* renamed from: e */
    public int m37324e() {
        return this.f7757x;
    }

    /* renamed from: e */
    public final boolean m37323e(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has(RemoteMessageConst.MSGID)) {
            HMSLog.m37193i("PushSelfShowLog", "msgId == null");
            return false;
        }
        Object obj = jSONObject.get(RemoteMessageConst.MSGID);
        if (obj instanceof String) {
            this.f7738e = (String) obj;
            return true;
        } else if (!(obj instanceof Integer)) {
            return true;
        } else {
            this.f7738e = String.valueOf(((Integer) obj).intValue());
            return true;
        }
    }

    /* renamed from: f */
    public int m37322f() {
        return this.f7735b;
    }

    /* renamed from: f */
    public final boolean m37321f(JSONObject jSONObject) {
        HMSLog.m37198d("PushSelfShowLog", "enter parseNotifyParam");
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(RemoteMessageConst.MessageBody.NOTIFY_DETAIL);
            if (jSONObject2.has("style")) {
                this.f7753t = jSONObject2.getInt("style");
            }
            this.f7754u = jSONObject2.optString("bigTitle");
            this.f7755v = jSONObject2.optString("bigContent");
            this.f7732E = jSONObject2.optString(RemoteMessageConst.Notification.ICON);
            return true;
        } catch (JSONException e) {
            HMSLog.m37193i("PushSelfShowLog", e.toString());
            return false;
        }
    }

    /* renamed from: g */
    public String m37320g() {
        return this.f7755v;
    }

    /* renamed from: g */
    public final void m37319g(JSONObject jSONObject) {
        this.f7734a = jSONObject.optString("group");
        StringBuilder m8728C = C22128a.m8728C("NOTIFY_GROUP:");
        m8728C.append(this.f7734a);
        HMSLog.m37198d("PushSelfShowLog", m8728C.toString());
        this.f7757x = jSONObject.optInt(RemoteMessageConst.Notification.AUTO_CANCEL, 1);
        StringBuilder m8728C2 = C22128a.m8728C("autoCancel: ");
        m8728C2.append(this.f7757x);
        HMSLog.m37198d("PushSelfShowLog", m8728C2.toString());
        this.f7758y = jSONObject.optInt(RemoteMessageConst.Notification.VISIBILITY, 0);
        this.f7759z = jSONObject.optString(RemoteMessageConst.Notification.WHEN);
        this.f7728A = jSONObject.optString(RemoteMessageConst.Notification.TAG);
    }

    /* renamed from: h */
    public String m37318h() {
        return this.f7754u;
    }

    /* renamed from: h */
    public final boolean m37317h(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(RemoteMessageConst.MessageBody.PARAM);
            if (jSONObject2.has("autoClear")) {
                this.f7735b = jSONObject2.getInt("autoClear");
            } else {
                this.f7735b = 0;
            }
            if ("app".equals(this.f7740g) || "cosa".equals(this.f7740g)) {
                m37325d(jSONObject2);
                return true;
            } else if ("url".equals(this.f7740g)) {
                m37311k(jSONObject2);
                return true;
            } else if (!"rp".equals(this.f7740g)) {
                return true;
            } else {
                m37313j(jSONObject2);
                return true;
            }
        } catch (Exception e) {
            HMSLog.m37194e("PushSelfShowLog", "ParseParam error ", e);
            return false;
        }
    }

    /* renamed from: i */
    public String m37316i() {
        return this.f7740g;
    }

    /* renamed from: i */
    public final boolean m37315i(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(RemoteMessageConst.MessageBody.PS_CONTENT)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(RemoteMessageConst.MessageBody.PS_CONTENT);
            this.f7740g = jSONObject2.getString("cmd");
            this.f7741h = jSONObject2.optString("content");
            this.f7742i = jSONObject2.optString(RemoteMessageConst.Notification.NOTIFY_ICON);
            this.f7743j = jSONObject2.optString(RemoteMessageConst.Notification.NOTIFY_TITLE);
            this.f7744k = jSONObject2.optString("notifySummary");
            this.f7731D = jSONObject2.optString(RemoteMessageConst.Notification.TICKER);
            if ((jSONObject2.has(RemoteMessageConst.MessageBody.NOTIFY_DETAIL) && !m37321f(jSONObject2)) || !jSONObject2.has(RemoteMessageConst.MessageBody.PARAM)) {
                return false;
            }
            return m37317h(jSONObject2);
        }
        return false;
    }

    /* renamed from: j */
    public String m37314j() {
        return this.f7741h;
    }

    /* renamed from: j */
    public final boolean m37313j(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return false;
        }
        if (jSONObject.has("appPackageName")) {
            this.f7745l = jSONObject.getString("appPackageName");
        }
        if (!jSONObject.has("rpt") || !jSONObject.has("rpl")) {
            HMSLog.m37198d("PushSelfShowLog", "rpl or rpt is null");
            return false;
        }
        this.f7748o = jSONObject.getString("rpl");
        this.f7749p = jSONObject.getString("rpt");
        if (!jSONObject.has("rpct")) {
            return true;
        }
        this.f7750q = jSONObject.getString("rpct");
        return true;
    }

    /* renamed from: k */
    public String m37312k() {
        return this.f7739f;
    }

    /* renamed from: k */
    public final boolean m37311k(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return false;
        }
        if (!jSONObject.has("url")) {
            HMSLog.m37198d("PushSelfShowLog", "url is null");
            return false;
        }
        this.f7747n = jSONObject.getString("url");
        if (jSONObject.has("appPackageName")) {
            this.f7745l = jSONObject.getString("appPackageName");
        }
        if (!jSONObject.has("rpt") || !jSONObject.has("rpl")) {
            return true;
        }
        this.f7748o = jSONObject.getString("rpl");
        this.f7749p = jSONObject.getString("rpt");
        if (!jSONObject.has("rpct")) {
            return true;
        }
        this.f7750q = jSONObject.getString("rpct");
        return true;
    }

    /* renamed from: l */
    public String m37310l() {
        return this.f7734a;
    }

    /* renamed from: m */
    public String m37309m() {
        return this.f7732E;
    }

    /* renamed from: n */
    public String m37308n() {
        return this.f7736c;
    }

    /* renamed from: o */
    public byte[] m37307o() {
        try {
            return m37332a(m37331a(m37329b(m37300v()), m37304r())).toString().getBytes(C2448x.f7781a);
        } catch (JSONException e) {
            HMSLog.m37194e("PushSelfShowLog", "getMsgData failed JSONException:", e);
            return new byte[0];
        }
    }

    /* renamed from: p */
    public String m37306p() {
        StringBuilder m8728C = C22128a.m8728C("msgId =");
        m8728C.append(this.f7738e);
        HMSLog.m37198d("PushSelfShowLog", m8728C.toString());
        return this.f7738e;
    }

    /* renamed from: q */
    public String m37305q() {
        return this.f7728A;
    }

    /* renamed from: r */
    public final JSONObject m37304r() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("style", this.f7753t);
        jSONObject.put("bigTitle", this.f7754u);
        jSONObject.put("bigContent", this.f7755v);
        jSONObject.put("bigPic", this.f7756w);
        return jSONObject;
    }

    /* renamed from: s */
    public int m37303s() {
        return this.f7729B;
    }

    /* renamed from: t */
    public String m37302t() {
        return this.f7744k;
    }

    /* renamed from: u */
    public String m37301u() {
        return this.f7743j;
    }

    /* renamed from: v */
    public final JSONObject m37300v() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("autoClear", this.f7735b);
        jSONObject.put("url", this.f7747n);
        jSONObject.put("rpl", this.f7748o);
        jSONObject.put("rpt", this.f7749p);
        jSONObject.put("rpct", this.f7750q);
        jSONObject.put("appPackageName", this.f7745l);
        jSONObject.put(RemoteMessageConst.Notification.CLICK_ACTION, this.f7746m);
        jSONObject.put(RemoteMessageConst.Notification.INTENT_URI, this.f7736c);
        return jSONObject;
    }

    /* renamed from: w */
    public int m37299w() {
        return this.f7753t;
    }

    /* renamed from: x */
    public String m37298x() {
        return this.f7731D;
    }

    /* renamed from: y */
    public byte[] m37297y() {
        return this.f7752s.getBytes(C2448x.f7781a);
    }

    /* renamed from: z */
    public boolean m37296z() {
        try {
            if (TextUtils.isEmpty(this.f7751r)) {
                HMSLog.m37198d("PushSelfShowLog", "msg is null");
                return false;
            }
            JSONObject jSONObject = new JSONObject(this.f7751r);
            m37319g(jSONObject);
            JSONObject jSONObject2 = jSONObject.getJSONObject(RemoteMessageConst.MessageBody.MSG_CONTENT);
            if (!m37323e(jSONObject2)) {
                return false;
            }
            this.f7739f = jSONObject2.optString("dispPkgName");
            m37327c(jSONObject2);
            this.f7729B = jSONObject2.optInt(RemoteMessageConst.Notification.NOTIFY_ID, -1);
            this.f7730C = jSONObject2.optString(RemoteMessageConst.DATA);
            this.f7733F = jSONObject2.optString(RemoteMessageConst.ANALYTIC_INFO);
            return m37315i(jSONObject2);
        } catch (JSONException e) {
            HMSLog.m37198d("PushSelfShowLog", "parse message exception.");
            return false;
        } catch (Exception e2) {
            HMSLog.m37198d("PushSelfShowLog", e2.toString());
            return false;
        }
    }
}
