package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1227w;
import com.facebook.internal.DialogC1182s0;
import com.facebook.login.LoginClient;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23222c0;
import p193e.p1538j.EnumC23273w;
import s1.z.c.l;
@Metadata(d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018�� ,2\u00020\u0001:\u0002+,B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\"\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010%\u001a\u0004\u0018\u00010&J\u0010\u0010'\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u001dH\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\tX\u0096D¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u000bR\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019¨\u0006-"}, d2 = {"Lcom/facebook/login/WebViewLoginMethodHandler;", "Lcom/facebook/login/WebLoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "e2e", "", "getE2e", "()Ljava/lang/String;", "setE2e", "(Ljava/lang/String;)V", "loginDialog", "Lcom/facebook/internal/WebDialog;", "getLoginDialog", "()Lcom/facebook/internal/WebDialog;", "setLoginDialog", "(Lcom/facebook/internal/WebDialog;)V", "nameForLogging", "getNameForLogging", "tokenSource", "Lcom/facebook/AccessTokenSource;", "getTokenSource", "()Lcom/facebook/AccessTokenSource;", "cancel", "", "describeContents", "", "needsInternetPermission", "", "onWebDialogComplete", "request", "Lcom/facebook/login/LoginClient$Request;", "values", "Landroid/os/Bundle;", "error", "Lcom/facebook/FacebookException;", "tryAuthorize", "writeToParcel", "dest", "flags", "AuthDialogBuilder", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler.class */
public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new C1259b();

    /* renamed from: d */
    public DialogC1182s0 f3416d;

    /* renamed from: e */
    public String f3417e;

    /* renamed from: f */
    public final String f3418f = "web_view";

    /* renamed from: g */
    public final EnumC23273w f3419g = EnumC23273w.WEB_VIEW;

    @Metadata(d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0004\u0018��2\u00020\u0001B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\f\u001a\u00060��R\u00020\u001b2\u0006\u0010\t\u001a\u00020\u0005J\u0012\u0010\u001c\u001a\u00060��R\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u0005J\u0012\u0010\u001d\u001a\u00060��R\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0012\u0010\u001e\u001a\u00060��R\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0012J\u0012\u0010 \u001a\u00060��R\u00020\u001b2\u0006\u0010!\u001a\u00020\u0012J\u0012\u0010\"\u001a\u00060��R\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u0014J\u0012\u0010#\u001a\u00060��R\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0018J\u0012\u0010$\u001a\u00060��R\u00020\u001b2\u0006\u0010%\u001a\u00020\u0012R\u001a\u0010\t\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n��¨\u0006&"}, d2 = {"Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;", "Lcom/facebook/internal/WebDialog$Builder;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "applicationId", "", "parameters", "Landroid/os/Bundle;", "(Lcom/facebook/login/WebViewLoginMethodHandler;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V", "authType", "getAuthType", "()Ljava/lang/String;", "setAuthType", "(Ljava/lang/String;)V", "e2e", "getE2e", "setE2e", "isFamilyLogin", "", "loginBehavior", "Lcom/facebook/login/LoginBehavior;", "redirect_uri", "shouldSkipDedupe", "targetApp", "Lcom/facebook/login/LoginTargetApp;", "build", "Lcom/facebook/internal/WebDialog;", "Lcom/facebook/login/WebViewLoginMethodHandler;", "setE2E", "setFamilyLogin", "setIsChromeOS", "isChromeOS", "setIsRerequest", "isRerequest", "setLoginBehavior", "setLoginTargetApp", "setShouldSkipDedupe", "shouldSkip", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler$a.class */
    public final class C1258a extends DialogC1182s0.C1183a {

        /* renamed from: f */
        public String f3420f = "fbconnect://success";

        /* renamed from: g */
        public EnumC1278q f3421g = EnumC1278q.NATIVE_WITH_FALLBACK;

        /* renamed from: h */
        public EnumC1290x f3422h = EnumC1290x.FACEBOOK;

        /* renamed from: i */
        public boolean f3423i;

        /* renamed from: j */
        public boolean f3424j;

        /* renamed from: k */
        public String f3425k;

        /* renamed from: l */
        public String f3426l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1258a(WebViewLoginMethodHandler webViewLoginMethodHandler, Context context, String str, Bundle bundle) {
            super(context, str, "oauth", bundle);
            l.e(webViewLoginMethodHandler, "this$0");
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "applicationId");
            l.e(bundle, "parameters");
        }

        /* renamed from: a */
        public DialogC1182s0 m41561a() {
            Bundle bundle = this.f3226e;
            Objects.requireNonNull(bundle, "null cannot be cast to non-null type android.os.Bundle");
            bundle.putString("redirect_uri", this.f3420f);
            bundle.putString("client_id", this.f3223b);
            String str = this.f3425k;
            if (str == null) {
                l.l("e2e");
                throw null;
            }
            bundle.putString("e2e", str);
            bundle.putString("response_type", this.f3422h == EnumC1290x.INSTAGRAM ? "token,signed_request,graph_domain,granted_scopes" : "token,signed_request,graph_domain");
            bundle.putString("return_scopes", "true");
            String str2 = this.f3426l;
            if (str2 == null) {
                l.l("authType");
                throw null;
            }
            bundle.putString("auth_type", str2);
            bundle.putString("login_behavior", this.f3421g.name());
            if (this.f3423i) {
                bundle.putString("fx_app", this.f3422h.f3516a);
            }
            if (this.f3424j) {
                bundle.putString("skip_dedupe", "true");
            }
            DialogC1182s0.C1184b c1184b = DialogC1182s0.f3207m;
            Context context = this.f3222a;
            Objects.requireNonNull(context, "null cannot be cast to non-null type android.content.Context");
            EnumC1290x enumC1290x = this.f3422h;
            DialogC1182s0.AbstractC1186d abstractC1186d = this.f3225d;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(enumC1290x, "targetApp");
            DialogC1182s0.m41645b(context);
            return new DialogC1182s0(context, "oauth", bundle, 0, enumC1290x, abstractC1186d, null);
        }
    }

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/login/WebViewLoginMethodHandler$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/WebViewLoginMethodHandler;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/login/WebViewLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler$b.class */
    public static final class C1259b implements Parcelable.Creator<WebViewLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new WebViewLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    }

    @Metadata(d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"com/facebook/login/WebViewLoginMethodHandler$tryAuthorize$listener$1", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", "onComplete", "", "values", "Landroid/os/Bundle;", "error", "Lcom/facebook/FacebookException;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler$c.class */
    public static final class C1260c implements DialogC1182s0.AbstractC1186d {

        /* renamed from: b */
        public final /* synthetic */ LoginClient.Request f3428b;

        public C1260c(LoginClient.Request request) {
            WebViewLoginMethodHandler.this = r4;
            this.f3428b = request;
        }

        @Override // com.facebook.internal.DialogC1182s0.AbstractC1186d
        /* renamed from: a */
        public void mo41560a(Bundle bundle, C23222c0 c23222c0) {
            WebViewLoginMethodHandler webViewLoginMethodHandler = WebViewLoginMethodHandler.this;
            LoginClient.Request request = this.f3428b;
            Objects.requireNonNull(webViewLoginMethodHandler);
            l.e(request, "request");
            webViewLoginMethodHandler.m41567v(request, bundle, c23222c0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f3417e = parcel.readString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        l.e(loginClient, "loginClient");
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    public void mo41566b() {
        DialogC1182s0 dialogC1182s0 = this.f3416d;
        if (dialogC1182s0 != null) {
            if (dialogC1182s0 != null) {
                dialogC1182s0.cancel();
            }
            this.f3416d = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: h */
    public String mo41565h() {
        return this.f3418f;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: l */
    public boolean mo41564l() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: r */
    public int mo41563r(LoginClient.Request request) {
        l.e(request, "request");
        Bundle m41568s = m41568s(request);
        C1260c c1260c = new C1260c(request);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsConstants.INIT, System.currentTimeMillis());
        } catch (JSONException e) {
        }
        String jSONObject2 = jSONObject.toString();
        l.d(jSONObject2, "e2e.toString()");
        this.f3417e = jSONObject2;
        m41587a("e2e", jSONObject2);
        n3.r.a.l m41594e = m41582g().m41594e();
        if (m41594e == null) {
            return 0;
        }
        boolean m41657z = C1168q0.m41657z(m41594e);
        C1258a c1258a = new C1258a(this, m41594e, request.f3381d, m41568s);
        String str = this.f3417e;
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.String");
        l.e(str, "e2e");
        l.e(str, "<set-?>");
        c1258a.f3425k = str;
        c1258a.f3420f = m41657z ? "fbconnect://chrome_os_success" : "fbconnect://success";
        String str2 = request.f3385h;
        l.e(str2, "authType");
        l.e(str2, "<set-?>");
        c1258a.f3426l = str2;
        EnumC1278q enumC1278q = request.f3378a;
        l.e(enumC1278q, "loginBehavior");
        c1258a.f3421g = enumC1278q;
        EnumC1290x enumC1290x = request.f3389l;
        l.e(enumC1290x, "targetApp");
        c1258a.f3422h = enumC1290x;
        c1258a.f3423i = request.f3390m;
        c1258a.f3424j = request.f3391n;
        c1258a.f3225d = c1260c;
        this.f3416d = c1258a.m41561a();
        C1227w c1227w = new C1227w();
        c1227w.setRetainInstance(true);
        c1227w.f3310a = this.f3416d;
        c1227w.show(m41594e.getSupportFragmentManager(), "FacebookDialogFragment");
        return 1;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: t */
    public EnumC23273w mo41562t() {
        return this.f3419g;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3417e);
    }
}
