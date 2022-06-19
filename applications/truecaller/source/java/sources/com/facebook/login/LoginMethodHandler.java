package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C1096x;
import com.facebook.internal.C1168q0;
import com.facebook.login.LoginClient;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23234h0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.EnumC23246m0;
import p193e.p1538j.EnumC23273w;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018�� 52\u00020\u0001:\u00015B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0014\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\b\u0010\u001a\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\rH\u0014J\b\u0010\u001d\u001a\u00020\rH\u0014J\u0012\u0010\u001e\u001a\u00020\u00162\b\u0010\u001f\u001a\u0004\u0018\u00010\rH\u0014J\b\u0010 \u001a\u00020!H\u0016J\"\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0018\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0014J\u0010\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020!H\u0016J\u0010\u00101\u001a\u00020$2\u0006\u0010*\u001a\u00020+H&J\u0018\u00102\u001a\u00020\u00162\u0006\u00103\u001a\u00020\u00062\u0006\u00104\u001a\u00020$H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0004R,\u0010\u000b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u00066"}, d2 = {"Lcom/facebook/login/LoginMethodHandler;", "Landroid/os/Parcelable;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getLoginClient", "()Lcom/facebook/login/LoginClient;", "setLoginClient", "methodLoggingExtras", "", "", "getMethodLoggingExtras", "()Ljava/util/Map;", "setMethodLoggingExtras", "(Ljava/util/Map;)V", "nameForLogging", "getNameForLogging", "()Ljava/lang/String;", "addLoggingExtra", "", AnalyticsConstants.KEY, "value", "", "cancel", "getClientState", "authId", "getRedirectUrl", "logWebLoginCompleted", "e2e", "needsInternetPermission", "", "onActivityResult", "requestCode", "", "resultCode", RemoteMessageConst.DATA, "Landroid/content/Intent;", "processCodeExchange", "Landroid/os/Bundle;", "request", "Lcom/facebook/login/LoginClient$Request;", "values", "putChallengeParam", RemoteMessageConst.MessageBody.PARAM, "Lorg/json/JSONObject;", "shouldKeepTrackOfMultipleIntents", "tryAuthorize", "writeToParcel", "dest", "flags", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginMethodHandler.class */
public abstract class LoginMethodHandler implements Parcelable {

    /* renamed from: a */
    public Map<String, String> f3410a;

    /* renamed from: b */
    public LoginClient f3411b;

    public LoginMethodHandler(Parcel parcel) {
        HashMap hashMap;
        int i;
        l.e(parcel, "source");
        l.e(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            hashMap = null;
        } else {
            HashMap hashMap2 = new HashMap();
            int i2 = 0;
            hashMap = hashMap2;
            if (readInt > 0) {
                do {
                    i = i2 + 1;
                    hashMap2.put(parcel.readString(), parcel.readString());
                    i2 = i;
                } while (i < readInt);
                hashMap = hashMap2;
            }
        }
        this.f3410a = hashMap == null ? null : i.b1(hashMap);
    }

    public LoginMethodHandler(LoginClient loginClient) {
        l.e(loginClient, "loginClient");
        l.e(loginClient, "<set-?>");
        this.f3411b = loginClient;
    }

    /* renamed from: c */
    public static final AccessToken m41586c(Bundle bundle, EnumC23273w enumC23273w, String str) {
        String string;
        l.e(bundle, "bundle");
        l.e(str, "applicationId");
        Date m41668o = C1168q0.m41668o(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string2 = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        Date m41668o2 = C1168q0.m41668o(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
        if (string2 != null) {
            if ((string2.length() == 0) || (string = bundle.getString("com.facebook.platform.extra.USER_ID")) == null) {
                return null;
            }
            if (!(string.length() == 0)) {
                return new AccessToken(string2, str, string, stringArrayList, null, null, enumC23273w, m41668o, new Date(), m41668o2, bundle.getString("graph_domain"));
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0160  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.facebook.AccessToken m41585d(java.util.Collection<java.lang.String> r14, android.os.Bundle r15, p193e.p1538j.EnumC23273w r16, java.lang.String r17) throws p193e.p1538j.C23222c0 {
        /*
            Method dump skipped, instructions count: 561
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginMethodHandler.m41585d(java.util.Collection, android.os.Bundle, e.j.w, java.lang.String):com.facebook.AccessToken");
    }

    /* renamed from: e */
    public static final AuthenticationToken m41584e(Bundle bundle, String str) throws C23222c0 {
        AuthenticationToken authenticationToken;
        l.e(bundle, "bundle");
        String string = bundle.getString("id_token");
        if (string != null) {
            if (!(string.length() == 0) && str != null) {
                if (!(str.length() == 0)) {
                    try {
                        authenticationToken = new AuthenticationToken(string, str);
                        return authenticationToken;
                    } catch (Exception e) {
                        throw new C23222c0(e.getMessage(), e);
                    }
                }
            }
        }
        authenticationToken = null;
        return authenticationToken;
    }

    /* renamed from: a */
    public void m41587a(String str, Object obj) {
        if (this.f3410a == null) {
            this.f3410a = new HashMap();
        }
        Map<String, String> map = this.f3410a;
        if (map == null) {
            return;
        }
        map.put(str, obj == null ? null : obj.toString());
    }

    /* renamed from: b */
    public void mo41566b() {
    }

    /* renamed from: f */
    public String m41583f(String str) {
        l.e(str, "authId");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", mo41565h());
            mo41578o(jSONObject);
        } catch (JSONException e) {
            l.j("Error creating client state json: ", e.getMessage());
        }
        String jSONObject2 = jSONObject.toString();
        l.d(jSONObject2, "param.toString()");
        return jSONObject2;
    }

    /* renamed from: g */
    public final LoginClient m41582g() {
        LoginClient loginClient = this.f3411b;
        if (loginClient != null) {
            return loginClient;
        }
        l.l("loginClient");
        throw null;
    }

    /* renamed from: h */
    public abstract String mo41565h();

    /* renamed from: i */
    public String mo41581i() {
        StringBuilder m8728C = C22128a.m8728C("fb");
        C23228f0 c23228f0 = C23228f0.f64291a;
        m8728C.append(C23228f0.m7353b());
        m8728C.append("://authorize/");
        return m8728C.toString();
    }

    /* renamed from: k */
    public void m41580k(String str) {
        LoginClient.Request request = m41582g().f3372g;
        String str2 = request == null ? null : request.f3381d;
        String str3 = str2;
        if (str2 == null) {
            C23228f0 c23228f0 = C23228f0.f64291a;
            str3 = C23228f0.m7353b();
        }
        C1096x c1096x = new C1096x((Context) m41582g().m41594e(), str3, (AccessToken) null);
        l.e(c1096x, "loggerImpl");
        Bundle m8654X0 = C22128a.m8654X0("fb_web_login_e2e", str);
        m8654X0.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        m8654X0.putString(HiAnalyticsConstant.BI_KEY_APP_ID, str3);
        C23228f0 c23228f02 = C23228f0.f64291a;
        if (C23228f0.m7352c()) {
            c1096x.m41761g("fb_dialogs_web_login_dialog_complete", null, m8654X0);
        }
    }

    /* renamed from: l */
    public boolean mo41564l() {
        return false;
    }

    /* renamed from: m */
    public boolean mo41576m(int i, int i2, Intent intent) {
        return false;
    }

    /* renamed from: n */
    public Bundle m41579n(LoginClient.Request request, Bundle bundle) throws C23222c0 {
        GraphRequest graphRequest;
        l.e(request, "request");
        l.e(bundle, "values");
        String string = bundle.getString("code");
        if (!C1168q0.m41700B(string)) {
            if (string == null) {
                graphRequest = null;
            } else {
                String mo41581i = mo41581i();
                String str = request.f3393p;
                String str2 = str;
                if (str == null) {
                    str2 = "";
                }
                l.e(string, "authorizationCode");
                l.e(mo41581i, "redirectUri");
                l.e(str2, "codeVerifier");
                Bundle bundle2 = new Bundle();
                bundle2.putString("code", string);
                C23228f0 c23228f0 = C23228f0.f64291a;
                bundle2.putString("client_id", C23228f0.m7353b());
                bundle2.putString("redirect_uri", mo41581i);
                bundle2.putString("code_verifier", str2);
                graphRequest = GraphRequest.f2543k.m42000h(null, "oauth/access_token", null);
                graphRequest.f2556i = EnumC23246m0.GET;
                graphRequest.m42008l(bundle2);
            }
            if (graphRequest == null) {
                throw new C23222c0("Failed to create code exchange request");
            }
            C23244l0 m42017c = graphRequest.m42017c();
            FacebookRequestError facebookRequestError = m42017c.f64335e;
            if (facebookRequestError != null) {
                throw new C23234h0(facebookRequestError, facebookRequestError.m42021a());
            }
            try {
                JSONObject jSONObject = m42017c.f64333c;
                String string2 = jSONObject == null ? null : jSONObject.getString("access_token");
                if (jSONObject == null || C1168q0.m41700B(string2)) {
                    throw new C23222c0("No access token found from result");
                }
                bundle.putString("access_token", string2);
                if (jSONObject.has("id_token")) {
                    bundle.putString("id_token", jSONObject.getString("id_token"));
                }
                return bundle;
            } catch (JSONException e) {
                throw new C23222c0(l.j("Fail to process code exchange response: ", e.getMessage()));
            }
        }
        throw new C23222c0("No code param found from the request");
    }

    /* renamed from: o */
    public void mo41578o(JSONObject jSONObject) throws JSONException {
        l.e(jSONObject, RemoteMessageConst.MessageBody.PARAM);
    }

    /* renamed from: p */
    public boolean mo41577p() {
        return false;
    }

    /* renamed from: r */
    public abstract int mo41563r(LoginClient.Request request);

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        Map<String, String> map = this.f3410a;
        l.e(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }
}
