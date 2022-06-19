package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import com.amazon.device.ads.DtbConstants;
import com.facebook.CustomTabMainActivity;
import com.facebook.internal.C1161o0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1225v;
import com.facebook.login.C1269i;
import com.facebook.login.LoginClient;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import java.math.BigInteger;
import java.util.Random;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23273w;
import s1.z.c.l;
@Metadata(d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� 02\u00020\u0001:\u00010B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\tH\u0014J\n\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00182\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\t2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020\"2\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020,H\u0002J\u0018\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0018H\u0016R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000bR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0010\u001a\u00020\tX\u0096D¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��¨\u00061"}, d2 = {"Lcom/facebook/login/CustomTabLoginMethodHandler;", "Lcom/facebook/login/WebLoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "chromePackage", "", "getChromePackage", "()Ljava/lang/String;", "currentPackage", "developerDefinedRedirectURI", "getDeveloperDefinedRedirectURI", "expectedChallenge", "nameForLogging", "getNameForLogging", "tokenSource", "Lcom/facebook/AccessTokenSource;", "getTokenSource", "()Lcom/facebook/AccessTokenSource;", "validRedirectURI", "describeContents", "", "getRedirectUrl", "getSSODevice", "onActivityResult", "", "requestCode", "resultCode", RemoteMessageConst.DATA, "Landroid/content/Intent;", "onCustomTabComplete", "", "url", "request", "Lcom/facebook/login/LoginClient$Request;", "putChallengeParam", RemoteMessageConst.MessageBody.PARAM, "Lorg/json/JSONObject;", "tryAuthorize", "validateChallengeParam", "values", "Landroid/os/Bundle;", "writeToParcel", "dest", "flags", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/login/CustomTabLoginMethodHandler.class */
public final class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new C1236a();

    /* renamed from: i */
    public static boolean f3331i;

    /* renamed from: d */
    public String f3332d;

    /* renamed from: e */
    public String f3333e;

    /* renamed from: g */
    public final String f3335g = "custom_tab";

    /* renamed from: h */
    public final EnumC23273w f3336h = EnumC23273w.CHROME_CUSTOM_TAB;

    /* renamed from: f */
    public String f3334f = C1225v.m41620c(super.mo41581i());

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/login/CustomTabLoginMethodHandler$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/CustomTabLoginMethodHandler;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/login/CustomTabLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.CustomTabLoginMethodHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/CustomTabLoginMethodHandler$a.class */
    public static final class C1236a implements Parcelable.Creator<CustomTabLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public CustomTabLoginMethodHandler createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new CustomTabLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CustomTabLoginMethodHandler[] newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTabLoginMethodHandler(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f3333e = parcel.readString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        l.e(loginClient, "loginClient");
        String bigInteger = new BigInteger(100, new Random()).toString(32);
        l.d(bigInteger, "BigInteger(length * 5, r).toString(32)");
        this.f3333e = bigInteger;
        f3331i = false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: h */
    public String mo41565h() {
        return this.f3335g;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: i */
    public String mo41581i() {
        return this.f3334f;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a1  */
    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo41576m(int r12, int r13, android.content.Intent r14) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.CustomTabLoginMethodHandler.mo41576m(int, int, android.content.Intent):boolean");
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: o */
    public void mo41578o(JSONObject jSONObject) throws JSONException {
        l.e(jSONObject, RemoteMessageConst.MessageBody.PARAM);
        jSONObject.put("7_challenge", this.f3333e);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: r */
    public int mo41563r(LoginClient.Request request) {
        Uri uri;
        l.e(request, "request");
        LoginClient m41582g = m41582g();
        if (this.f3334f.length() == 0) {
            return 0;
        }
        Bundle m41568s = m41568s(request);
        l.e(m41568s, "parameters");
        l.e(request, "request");
        m41568s.putString("redirect_uri", this.f3334f);
        if (request.m41588b()) {
            m41568s.putString(HiAnalyticsConstant.BI_KEY_APP_ID, request.f3381d);
        } else {
            m41568s.putString("client_id", request.f3381d);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsConstants.INIT, System.currentTimeMillis());
        } catch (JSONException e) {
        }
        String jSONObject2 = jSONObject.toString();
        l.d(jSONObject2, "e2e.toString()");
        m41568s.putString("e2e", jSONObject2);
        if (request.m41588b()) {
            m41568s.putString("response_type", "token,signed_request,graph_domain,granted_scopes");
        } else {
            if (request.f3379b.contains("openid")) {
                m41568s.putString("nonce", request.f3392o);
            }
            m41568s.putString("response_type", "id_token,token,signed_request,graph_domain");
        }
        m41568s.putString("code_challenge", request.f3394q);
        EnumC1268h enumC1268h = request.f3395r;
        m41568s.putString("code_challenge_method", enumC1268h == null ? null : enumC1268h.name());
        m41568s.putString("return_scopes", "true");
        m41568s.putString("auth_type", request.f3385h);
        m41568s.putString("login_behavior", request.f3378a.name());
        C23228f0 c23228f0 = C23228f0.f64291a;
        C23228f0 c23228f02 = C23228f0.f64291a;
        m41568s.putString(AnalyticsConstants.SDK, l.j("android-", "13.0.0"));
        m41568s.putString("sso", "chrome_custom_tab");
        m41568s.putString("cct_prefetching", C23228f0.f64304n ? "1" : DtbConstants.NETWORK_TYPE_UNKNOWN);
        if (request.f3390m) {
            m41568s.putString("fx_app", request.f3389l.f3516a);
        }
        if (request.f3391n) {
            m41568s.putString("skip_dedupe", "true");
        }
        String str = request.f3387j;
        if (str != null) {
            m41568s.putString("messenger_page_id", str);
            String str2 = DtbConstants.NETWORK_TYPE_UNKNOWN;
            if (request.f3388k) {
                str2 = "1";
            }
            m41568s.putString("reset_messenger_state", str2);
        }
        if (f3331i) {
            m41568s.putString("cct_over_app_switch", "1");
        }
        if (C23228f0.f64304n) {
            if (request.m41588b()) {
                C1269i.C1270a c1270a = C1269i.f3446a;
                l.e("oauth", "action");
                if (l.a("oauth", "oauth")) {
                    C1161o0 c1161o0 = C1161o0.f3173a;
                    uri = C1168q0.m41681b(C1161o0.m41706c(), "oauth/authorize", m41568s);
                } else {
                    C1161o0 c1161o02 = C1161o0.f3173a;
                    String m41706c = C1161o0.m41706c();
                    uri = C1168q0.m41681b(m41706c, C23228f0.m7349f() + "/dialog/oauth", m41568s);
                }
                c1270a.m41558a(uri);
            } else {
                C1269i.C1270a c1270a2 = C1269i.f3446a;
                l.e("oauth", "action");
                C1161o0 c1161o03 = C1161o0.f3173a;
                String m41708a = C1161o0.m41708a();
                c1270a2.m41558a(C1168q0.m41681b(m41708a, C23228f0.m7349f() + "/dialog/oauth", m41568s));
            }
        }
        n3.r.a.l m41594e = m41582g.m41594e();
        if (m41594e == null) {
            return 0;
        }
        Intent intent = new Intent((Context) m41594e, (Class<?>) CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f2514d, "oauth");
        intent.putExtra(CustomTabMainActivity.f2515e, m41568s);
        String str3 = CustomTabMainActivity.f2516f;
        String str4 = this.f3332d;
        if (str4 == null) {
            str4 = C1225v.m41622a();
            this.f3332d = str4;
        }
        intent.putExtra(str3, str4);
        intent.putExtra(CustomTabMainActivity.f2518h, request.f3389l.f3516a);
        Fragment fragment = m41582g.f3368c;
        if (fragment == null) {
            return 1;
        }
        fragment.startActivityForResult(intent, 1);
        return 1;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: t */
    public EnumC23273w mo41562t() {
        return this.f3336h;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3333e);
    }
}
