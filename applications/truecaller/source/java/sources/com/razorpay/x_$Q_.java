package com.razorpay;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.razorpay.AnalyticsProperty;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/x_$Q_.class */
public class x_$Q_ {

    /* renamed from: a */
    private JSONObject f9477a;

    public x_$Q_(String str) {
        try {
            this.f9477a = new JSONObject(str);
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
        }
    }

    /* renamed from: b */
    private void m36054b(String str, Object obj) {
        try {
            this.f9477a.put(str, obj);
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, "error", e.getMessage());
        }
    }

    /* renamed from: k */
    private JSONObject m36044k() {
        return this.f9477a.optJSONObject("prefill");
    }

    /* renamed from: a */
    public final String m36060a() {
        try {
            return this.f9477a.getString(AnalyticsConstants.KEY);
        } catch (JSONException e) {
            d__1_.m36087a("Error reading options!", e);
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public final void m36059a(Activity activity, int i) {
        Object base64FromResource;
        m36054b("redirect", Boolean.TRUE);
        if (i != 0 && (base64FromResource = BaseUtils.getBase64FromResource(activity.getResources(), i)) != null) {
            m36054b("image", base64FromResource);
        }
        String m36145a = CheckoutUtils.m36145a((Context) activity);
        if (!TextUtils.isEmpty(m36145a) && (m36044k() == null || !m36044k().has(AnalyticsConstants.EMAIL))) {
            m36057a(AnalyticsConstants.EMAIL, m36145a);
        }
        String m36138b = CheckoutUtils.m36138b(activity);
        if (!TextUtils.isEmpty(m36138b)) {
            if (m36044k() != null && m36044k().has(AnalyticsConstants.CONTACT)) {
                return;
            }
            m36057a(AnalyticsConstants.CONTACT, m36138b);
        }
    }

    /* renamed from: a */
    public final void m36057a(String str, Object obj) {
        JSONObject jSONObject = new JSONObject();
        if (m36044k() != null) {
            jSONObject = m36044k();
        }
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, "error", e.getMessage());
        }
        try {
            this.f9477a.put("prefill", jSONObject);
        } catch (JSONException e2) {
            AnalyticsUtil.reportError(e2, "error", e2.getMessage());
        }
    }

    /* renamed from: a */
    public final boolean m36058a(String str) {
        return this.f9477a.has(str);
    }

    /* renamed from: b */
    public final boolean m36056b() {
        try {
            if (!this.f9477a.has("send_sms_hash")) {
                return false;
            }
            return this.f9477a.getBoolean("send_sms_hash");
        } catch (JSONException e) {
            d__1_.m36087a("Error reading options!", e);
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m36055b(String str) {
        try {
            if (!this.f9477a.has("external")) {
                return false;
            }
            return this.f9477a.getJSONObject("external").getJSONArray("wallets").toString().contains(str);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
            return false;
        }
    }

    /* renamed from: c */
    public final <T> T m36052c(String str) {
        Object opt = this.f9477a.opt(str);
        if (opt == null) {
            return null;
        }
        return (T) opt.getClass().cast(opt);
    }

    /* renamed from: c */
    public final boolean m36053c() {
        try {
            if (!this.f9477a.has("allow_rotation")) {
                return false;
            }
            return this.f9477a.getBoolean("allow_rotation");
        } catch (JSONException e) {
            d__1_.m36087a("Error reading options!", e);
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            return true;
        }
    }

    /* renamed from: d */
    public final JSONObject m36051d() {
        return this.f9477a;
    }

    /* renamed from: e */
    public final String m36050e() {
        return this.f9477a.toString();
    }

    /* renamed from: f */
    public final JSONObject m36049f() {
        return this.f9477a.optJSONObject("otpelf_preferences");
    }

    /* renamed from: g */
    public final void m36048g() {
        try {
            JSONObject jSONObject = new JSONObject(this.f9477a.toString());
            if (jSONObject.has("prefill")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("prefill");
                jSONObject2.remove(AnalyticsConstants.CARD);
                jSONObject2.remove("card[number]");
                jSONObject2.remove("card[expiry]");
                jSONObject2.remove("card[cvv]");
                jSONObject.put("prefill", jSONObject2);
            }
            jSONObject.remove("image");
            AnalyticsUtil.addProperty(AnalyticsConstants.MERCHANT_OPTIONS, new AnalyticsProperty(jSONObject, AnalyticsProperty.Scope.ORDER));
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
        }
    }

    /* renamed from: h */
    public final String m36047h() {
        m36054b("image", null);
        return this.f9477a.toString();
    }

    /* renamed from: i */
    public final String m36046i() {
        if (m36044k() == null) {
            return null;
        }
        return m36044k().optString(AnalyticsConstants.CONTACT);
    }

    /* renamed from: j */
    public final String m36045j() {
        if (m36044k() == null) {
            return null;
        }
        return m36044k().optString(AnalyticsConstants.CONTACT);
    }
}
