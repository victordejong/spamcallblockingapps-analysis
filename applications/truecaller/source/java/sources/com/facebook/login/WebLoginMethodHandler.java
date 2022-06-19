package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.internal.C1168q0;
import com.facebook.login.LoginClient;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23226e0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23234h0;
import p193e.p1538j.EnumC23273w;
import s1.z.c.l;
@Metadata(d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018�� \u001d2\u00020\u0001:\u0001\u001dB\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\n\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0014J\n\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0002J$\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0017J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\tH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/facebook/login/WebLoginMethodHandler;", "Lcom/facebook/login/LoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "e2e", "", "tokenSource", "Lcom/facebook/AccessTokenSource;", "getTokenSource", "()Lcom/facebook/AccessTokenSource;", "addExtraParameters", "Landroid/os/Bundle;", "parameters", "request", "Lcom/facebook/login/LoginClient$Request;", "getParameters", "getSSODevice", "loadCookieToken", "onComplete", "", "values", "error", "Lcom/facebook/FacebookException;", "saveCookieToken", AnalyticsConstants.TOKEN, "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/login/WebLoginMethodHandler.class */
public abstract class WebLoginMethodHandler extends LoginMethodHandler {

    /* renamed from: c */
    public String f3415c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebLoginMethodHandler(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        l.e(loginClient, "loginClient");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0107  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle m41568s(com.facebook.login.LoginClient.Request r6) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.WebLoginMethodHandler.m41568s(com.facebook.login.LoginClient$Request):android.os.Bundle");
    }

    /* renamed from: t */
    public abstract EnumC23273w mo41562t();

    /* renamed from: v */
    public void m41567v(LoginClient.Request request, Bundle bundle, C23222c0 c23222c0) {
        LoginClient.Result result;
        String str;
        LoginClient.Result.EnumC1248a enumC1248a = LoginClient.Result.EnumC1248a.ERROR;
        l.e(request, "request");
        LoginClient m41582g = m41582g();
        this.f3415c = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f3415c = bundle.getString("e2e");
            }
            try {
                AccessToken m41585d = LoginMethodHandler.m41585d(request.f3379b, bundle, mo41562t(), request.f3381d);
                LoginClient.Result result2 = new LoginClient.Result(m41582g.f3372g, LoginClient.Result.EnumC1248a.SUCCESS, m41585d, LoginMethodHandler.m41584e(bundle, request.f3392o), null, null);
                result = result2;
                if (m41582g.m41594e() != null) {
                    CookieSyncManager.createInstance(m41582g.m41594e()).sync();
                    result = result2;
                    if (m41585d != null) {
                        String str2 = m41585d.f2469e;
                        n3.r.a.l m41594e = m41582g().m41594e();
                        n3.r.a.l lVar = m41594e;
                        if (m41594e == null) {
                            C23228f0 c23228f0 = C23228f0.f64291a;
                            lVar = C23228f0.m7354a();
                        }
                        lVar.getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str2).apply();
                        result = result2;
                    }
                }
            } catch (C23222c0 e) {
                LoginClient.Request request2 = m41582g.f3372g;
                String message = e.getMessage();
                ArrayList arrayList = new ArrayList();
                if (message != null) {
                    arrayList.add(message);
                }
                result = new LoginClient.Result(request2, enumC1248a, null, TextUtils.join(": ", arrayList), null);
            }
        } else if (c23222c0 instanceof C23226e0) {
            result = new LoginClient.Result(m41582g.f3372g, LoginClient.Result.EnumC1248a.CANCEL, null, "User canceled log in.", null);
        } else {
            this.f3415c = null;
            String message2 = c23222c0 == null ? null : c23222c0.getMessage();
            if (c23222c0 instanceof C23234h0) {
                FacebookRequestError facebookRequestError = ((C23234h0) c23222c0).f64314a;
                int i = facebookRequestError.f2530b;
                message2 = facebookRequestError.toString();
                str = String.valueOf(i);
            } else {
                str = null;
            }
            LoginClient.Request request3 = m41582g.f3372g;
            ArrayList arrayList2 = new ArrayList();
            if (message2 != null) {
                arrayList2.add(message2);
            }
            result = new LoginClient.Result(request3, enumC1248a, null, TextUtils.join(": ", arrayList2), str);
        }
        if (!C1168q0.m41700B(this.f3415c)) {
            m41580k(this.f3415c);
        }
        m41582g.m41595d(result);
    }
}
