package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.facebook.FacebookRequestError;
import com.facebook.internal.C1161o0;
import com.facebook.internal.C1168q0;
import com.facebook.login.LoginClient;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23234h0;
import p193e.p1538j.EnumC23273w;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0006\b'\u0018��2\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u001a\u0010\u0015\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J0\u0010\u001a\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u00112\b\u0010\u001d\u001a\u0004\u0018\u00010\u0011H\u0014J\u0018\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\"\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010$\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010%\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u0017H&J\u001a\u0010&\u001a\u00020 2\b\u0010'\u001a\u0004\u0018\u00010\u00192\u0006\u0010!\u001a\u00020\"H\u0014R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006("}, d2 = {"Lcom/facebook/login/NativeAppLoginMethodHandler;", "Lcom/facebook/login/LoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "tokenSource", "Lcom/facebook/AccessTokenSource;", "getTokenSource", "()Lcom/facebook/AccessTokenSource;", "completeLogin", "", "outcome", "Lcom/facebook/login/LoginClient$Result;", "getError", "", "extras", "Landroid/os/Bundle;", "getErrorMessage", "handleResultCancel", "request", "Lcom/facebook/login/LoginClient$Request;", RemoteMessageConst.DATA, "Landroid/content/Intent;", "handleResultError", "error", "errorMessage", "errorCode", "handleResultOk", "onActivityResult", "", "requestCode", "", "resultCode", "processSuccessResponse", "tryAuthorize", "tryIntent", "intent", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/login/NativeAppLoginMethodHandler.class */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {

    /* renamed from: c */
    public final EnumC23273w f3412c = EnumC23273w.FACEBOOK_APPLICATION_WEB;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        l.e(loginClient, "loginClient");
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: m */
    public boolean mo41576m(int i, int i2, Intent intent) {
        Object obj;
        LoginClient.Result.EnumC1248a enumC1248a = LoginClient.Result.EnumC1248a.CANCEL;
        LoginClient.Result.EnumC1248a enumC1248a2 = LoginClient.Result.EnumC1248a.ERROR;
        final LoginClient.Request request = m41582g().f3372g;
        if (intent == null) {
            m41575s(new LoginClient.Result(request, enumC1248a, null, "Operation canceled", null));
            return true;
        } else if (i2 == 0) {
            l.e(intent, RemoteMessageConst.DATA);
            Bundle extras = intent.getExtras();
            String m41574t = m41574t(extras);
            String obj2 = (extras == null || (obj = extras.get("error_code")) == null) ? null : obj.toString();
            C1161o0 c1161o0 = C1161o0.f3173a;
            C1161o0 c1161o02 = C1161o0.f3173a;
            if (!l.a("CONNECTION_FAILURE", obj2)) {
                m41575s(new LoginClient.Result(request, enumC1248a, null, m41574t, null));
                return true;
            }
            String m41573v = m41573v(extras);
            ArrayList arrayList = new ArrayList();
            if (m41574t != null) {
                arrayList.add(m41574t);
            }
            if (m41573v != null) {
                arrayList.add(m41573v);
            }
            m41575s(new LoginClient.Result(request, enumC1248a2, null, TextUtils.join(": ", arrayList), obj2));
            return true;
        } else if (i2 != -1) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add("Unexpected resultCode from authorization.");
            m41575s(new LoginClient.Result(request, enumC1248a2, null, TextUtils.join(": ", arrayList2), null));
            return true;
        } else {
            final Bundle extras2 = intent.getExtras();
            if (extras2 == null) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add("Unexpected null from returned authorization data.");
                m41575s(new LoginClient.Result(request, enumC1248a2, null, TextUtils.join(": ", arrayList3), null));
                return true;
            }
            String m41574t2 = m41574t(extras2);
            Object obj3 = extras2.get("error_code");
            String obj4 = obj3 == null ? null : obj3.toString();
            String m41573v2 = m41573v(extras2);
            String string = extras2.getString("e2e");
            if (!C1168q0.m41700B(string)) {
                m41580k(string);
            }
            if (m41574t2 != null || obj4 != null || m41573v2 != null || request == null) {
                m41571x(request, m41574t2, m41573v2, obj4);
                return true;
            } else if (!extras2.containsKey("code") || C1168q0.m41700B(extras2.getString("code"))) {
                m41570y(request, extras2);
                return true;
            } else {
                C23228f0 c23228f0 = C23228f0.f64291a;
                C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.login.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        NativeAppLoginMethodHandler nativeAppLoginMethodHandler = NativeAppLoginMethodHandler.this;
                        LoginClient.Request request2 = request;
                        Bundle bundle = extras2;
                        l.e(nativeAppLoginMethodHandler, "this$0");
                        l.e(request2, "$request");
                        l.e(bundle, "$extras");
                        try {
                            nativeAppLoginMethodHandler.m41579n(request2, bundle);
                            nativeAppLoginMethodHandler.m41570y(request2, bundle);
                        } catch (C23234h0 e) {
                            FacebookRequestError facebookRequestError = e.f64314a;
                            nativeAppLoginMethodHandler.m41571x(request2, facebookRequestError.f2532d, facebookRequestError.m42021a(), String.valueOf(facebookRequestError.f2530b));
                        } catch (C23222c0 e2) {
                            nativeAppLoginMethodHandler.m41571x(request2, null, e2.getMessage(), null);
                        }
                    }
                });
                return true;
            }
        }
    }

    /* renamed from: s */
    public final void m41575s(LoginClient.Result result) {
        if (result != null) {
            m41582g().m41595d(result);
        } else {
            m41582g().m41590i();
        }
    }

    /* renamed from: t */
    public String m41574t(Bundle bundle) {
        String string = bundle == null ? null : bundle.getString("error");
        return string == null ? bundle == null ? null : bundle.getString("error_type") : string;
    }

    /* renamed from: v */
    public String m41573v(Bundle bundle) {
        String string = bundle == null ? null : bundle.getString("error_message");
        return string == null ? bundle == null ? null : bundle.getString(AnalyticsConstants.ERROR_DESCRIPTION) : string;
    }

    /* renamed from: w */
    public EnumC23273w mo41572w() {
        return this.f3412c;
    }

    /* renamed from: x */
    public void m41571x(LoginClient.Request request, String str, String str2, String str3) {
        if (str != null && l.a(str, "logged_out")) {
            CustomTabLoginMethodHandler.f3331i = true;
            m41575s(null);
            return;
        }
        C1161o0 c1161o0 = C1161o0.f3173a;
        if (i.l(i.T(new String[]{"service_disabled", "AndroidAuthKillSwitchException"}), str)) {
            m41575s(null);
        } else if (i.l(i.T(new String[]{"access_denied", "OAuthAccessDeniedException"}), str)) {
            m41575s(new LoginClient.Result(request, LoginClient.Result.EnumC1248a.CANCEL, null, null, null));
        } else {
            ArrayList arrayList = new ArrayList();
            if (str != null) {
                arrayList.add(str);
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            m41575s(new LoginClient.Result(request, LoginClient.Result.EnumC1248a.ERROR, null, TextUtils.join(": ", arrayList), str3));
        }
    }

    /* renamed from: y */
    public void m41570y(LoginClient.Request request, Bundle bundle) {
        l.e(request, "request");
        l.e(bundle, "extras");
        try {
            m41575s(new LoginClient.Result(request, LoginClient.Result.EnumC1248a.SUCCESS, LoginMethodHandler.m41585d(request.f3379b, bundle, mo41572w(), request.f3381d), LoginMethodHandler.m41584e(bundle, request.f3392o), null, null));
        } catch (C23222c0 e) {
            String message = e.getMessage();
            ArrayList arrayList = new ArrayList();
            if (message != null) {
                arrayList.add(message);
            }
            m41575s(new LoginClient.Result(request, LoginClient.Result.EnumC1248a.ERROR, null, TextUtils.join(": ", arrayList), null));
        }
    }

    /* renamed from: z */
    public boolean m41569z(Intent intent, int i) {
        if (intent == null) {
            return false;
        }
        try {
            Fragment fragment = m41582g().f3368c;
            if (fragment == null) {
                return true;
            }
            fragment.startActivityForResult(intent, i);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
