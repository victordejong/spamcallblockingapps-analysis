package com.facebook.login;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.internal.C1168q0;
import com.facebook.login.LoginClient;
import java.util.ArrayList;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23222c0;
@Metadata(d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"com/facebook/login/GetTokenLoginMethodHandler$complete$1", "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "onFailure", "", "error", "Lcom/facebook/FacebookException;", "onSuccess", "userInfo", "Lorg/json/JSONObject;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.p */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/p.class */
public final class C1277p implements C1168q0.AbstractC1169a {

    /* renamed from: a */
    public final /* synthetic */ Bundle f3468a;

    /* renamed from: b */
    public final /* synthetic */ GetTokenLoginMethodHandler f3469b;

    /* renamed from: c */
    public final /* synthetic */ LoginClient.Request f3470c;

    public C1277p(Bundle bundle, GetTokenLoginMethodHandler getTokenLoginMethodHandler, LoginClient.Request request) {
        this.f3468a = bundle;
        this.f3469b = getTokenLoginMethodHandler;
        this.f3470c = request;
    }

    @Override // com.facebook.internal.C1168q0.AbstractC1169a
    /* renamed from: a */
    public void mo7327a(JSONObject jSONObject) {
        try {
            this.f3468a.putString("com.facebook.platform.extra.USER_ID", jSONObject == null ? null : jSONObject.getString("id"));
            this.f3469b.m41599s(this.f3470c, this.f3468a);
        } catch (JSONException e) {
            LoginClient m41582g = this.f3469b.m41582g();
            LoginClient.Request request = this.f3469b.m41582g().f3372g;
            String message = e.getMessage();
            ArrayList arrayList = new ArrayList();
            arrayList.add("Caught exception");
            if (message != null) {
                arrayList.add(message);
            }
            m41582g.m41596c(new LoginClient.Result(request, LoginClient.Result.EnumC1248a.ERROR, null, TextUtils.join(": ", arrayList), null));
        }
    }

    @Override // com.facebook.internal.C1168q0.AbstractC1169a
    /* renamed from: b */
    public void mo7326b(C23222c0 c23222c0) {
        LoginClient m41582g = this.f3469b.m41582g();
        LoginClient.Request request = this.f3469b.m41582g().f3372g;
        String message = c23222c0 == null ? null : c23222c0.getMessage();
        ArrayList arrayList = new ArrayList();
        arrayList.add("Caught exception");
        if (message != null) {
            arrayList.add(message);
        }
        m41582g.m41596c(new LoginClient.Result(request, LoginClient.Result.EnumC1248a.ERROR, null, TextUtils.join(": ", arrayList), null));
    }
}
