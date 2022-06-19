package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.internal.C1146l0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.facebook.login.LoginClient;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23273w;
import s1.z.c.l;
@Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\b��\u0018�� \u001a2\u00020\u0001:\u0001\u001aB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0016\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0016\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\u000bX\u0096D¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u001b"}, d2 = {"Lcom/facebook/login/GetTokenLoginMethodHandler;", "Lcom/facebook/login/LoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getTokenClient", "Lcom/facebook/login/GetTokenClient;", "nameForLogging", "", "getNameForLogging", "()Ljava/lang/String;", "cancel", "", AnalyticsConstants.COMPLETE, "request", "Lcom/facebook/login/LoginClient$Request;", "result", "Landroid/os/Bundle;", "describeContents", "", "getTokenCompleted", "onComplete", "tryAuthorize", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/login/GetTokenLoginMethodHandler.class */
public final class GetTokenLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new C1244a();

    /* renamed from: c */
    public C1276o f3361c;

    /* renamed from: d */
    public final String f3362d = "get_token";

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/login/GetTokenLoginMethodHandler$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/GetTokenLoginMethodHandler;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/login/GetTokenLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.GetTokenLoginMethodHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/GetTokenLoginMethodHandler$a.class */
    public static final class C1244a implements Parcelable.Creator<GetTokenLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new GetTokenLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public GetTokenLoginMethodHandler[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTokenLoginMethodHandler(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        l.e(loginClient, "loginClient");
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    public void mo41566b() {
        C1276o c1276o = this.f3361c;
        if (c1276o == null) {
            return;
        }
        c1276o.f3158d = false;
        c1276o.f3157c = null;
        this.f3361c = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: h */
    public String mo41565h() {
        return this.f3362d;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: r */
    public int mo41563r(LoginClient.Request request) {
        boolean z;
        l.e(request, "request");
        n3.r.a.l m41594e = m41582g().m41594e();
        n3.r.a.l lVar = m41594e;
        if (m41594e == null) {
            C23228f0 c23228f0 = C23228f0.f64291a;
            lVar = C23228f0.m7354a();
        }
        C1276o c1276o = new C1276o(lVar, request);
        this.f3361c = c1276o;
        synchronized (c1276o) {
            if (!c1276o.f3158d) {
                if ((C1220a.m41623b(C1146l0.class) ? 0 : C1146l0.f3146a.m41720g(C1146l0.f3148c, new int[]{c1276o.f3163i}).f3153a) != -1) {
                    C1146l0 c1146l0 = C1146l0.f3146a;
                    Intent m41723d = C1146l0.m41723d(c1276o.f3155a);
                    if (m41723d == null) {
                        z = false;
                    } else {
                        c1276o.f3158d = true;
                        c1276o.f3155a.bindService(m41723d, c1276o, 1);
                        z = true;
                    }
                }
            }
            z = false;
        }
        if (l.a(Boolean.valueOf(z), Boolean.FALSE)) {
            return 0;
        }
        LoginClient.AbstractC1251a abstractC1251a = m41582g().f3370e;
        if (abstractC1251a != null) {
            abstractC1251a.mo41555a();
        }
        C1262b c1262b = new C1262b(this, request);
        C1276o c1276o2 = this.f3361c;
        if (c1276o2 == null) {
            return 1;
        }
        c1276o2.f3157c = c1262b;
        return 1;
    }

    /* renamed from: s */
    public final void m41599s(LoginClient.Request request, Bundle bundle) {
        LoginClient.Result result;
        AccessToken m41586c;
        String str;
        String string;
        AuthenticationToken authenticationToken;
        l.e(request, "request");
        l.e(bundle, "result");
        try {
            m41586c = LoginMethodHandler.m41586c(bundle, EnumC23273w.FACEBOOK_APPLICATION_SERVICE, request.f3381d);
            str = request.f3392o;
            l.e(bundle, "bundle");
            string = bundle.getString("com.facebook.platform.extra.ID_TOKEN");
        } catch (C23222c0 e) {
            LoginClient.Request request2 = m41582g().f3372g;
            String message = e.getMessage();
            ArrayList arrayList = new ArrayList();
            if (message != null) {
                arrayList.add(message);
            }
            result = new LoginClient.Result(request2, LoginClient.Result.EnumC1248a.ERROR, null, TextUtils.join(": ", arrayList), null);
        }
        if (string != null) {
            if (!(string.length() == 0) && str != null) {
                if (!(str.length() == 0)) {
                    try {
                        authenticationToken = new AuthenticationToken(string, str);
                        result = new LoginClient.Result(request, LoginClient.Result.EnumC1248a.SUCCESS, m41586c, authenticationToken, null, null);
                        m41582g().m41595d(result);
                    } catch (Exception e2) {
                        throw new C23222c0(e2.getMessage());
                    }
                }
            }
        }
        authenticationToken = null;
        result = new LoginClient.Result(request, LoginClient.Result.EnumC1248a.SUCCESS, m41586c, authenticationToken, null, null);
        m41582g().m41595d(result);
    }
}
