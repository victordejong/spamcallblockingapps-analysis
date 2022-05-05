package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.internal.AbstractServiceConnectionC2385b0;
import com.facebook.internal.C2408g0;
import com.facebook.login.LoginClient;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
import p081h.p154f.EnumC6114c;
/* loaded from: classes-dex2jar.jar:com/facebook/login/GetTokenLoginMethodHandler.class */
public class GetTokenLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new C2520c();

    /* renamed from: c */
    public C2533c f3272c;

    /* renamed from: com.facebook.login.GetTokenLoginMethodHandler$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/GetTokenLoginMethodHandler$a.class */
    public class C2518a implements AbstractServiceConnectionC2385b0.AbstractC2387b {

        /* renamed from: a */
        public final /* synthetic */ LoginClient.Request f3273a;

        public C2518a(LoginClient.Request request) {
            this.f3273a = request;
        }

        @Override // com.facebook.internal.AbstractServiceConnectionC2385b0.AbstractC2387b
        /* renamed from: a */
        public void mo34193a(Bundle bundle) {
            GetTokenLoginMethodHandler.this.m34482b(this.f3273a, bundle);
        }
    }

    /* renamed from: com.facebook.login.GetTokenLoginMethodHandler$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/GetTokenLoginMethodHandler$b.class */
    public class C2519b implements C2408g0.AbstractC2411c {

        /* renamed from: a */
        public final /* synthetic */ Bundle f3275a;

        /* renamed from: b */
        public final /* synthetic */ LoginClient.Request f3276b;

        public C2519b(Bundle bundle, LoginClient.Request request) {
            this.f3275a = bundle;
            this.f3276b = request;
        }

        @Override // com.facebook.internal.C2408g0.AbstractC2411c
        /* renamed from: a */
        public void mo2366a(C6131k kVar) {
            LoginClient loginClient = GetTokenLoginMethodHandler.this.f3310b;
            loginClient.m34474a(LoginClient.Result.m34434a(loginClient.m34455v(), "Caught exception", kVar.getMessage()));
        }

        @Override // com.facebook.internal.C2408g0.AbstractC2411c
        public void onSuccess(JSONObject jSONObject) {
            try {
                this.f3275a.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString("id"));
                GetTokenLoginMethodHandler.this.m34481c(this.f3276b, this.f3275a);
            } catch (JSONException e) {
                LoginClient loginClient = GetTokenLoginMethodHandler.this.f3310b;
                loginClient.m34474a(LoginClient.Result.m34434a(loginClient.m34455v(), "Caught exception", e.getMessage()));
            }
        }
    }

    /* renamed from: com.facebook.login.GetTokenLoginMethodHandler$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/GetTokenLoginMethodHandler$c.class */
    public static final class C2520c implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
            return new GetTokenLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public GetTokenLoginMethodHandler[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }
    }

    public GetTokenLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    public GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public void mo34410a() {
        C2533c cVar = this.f3272c;
        if (cVar != null) {
            cVar.m34916a();
            this.f3272c.m34913a((AbstractServiceConnectionC2385b0.AbstractC2387b) null);
            this.f3272c = null;
        }
    }

    /* renamed from: a */
    public void m34483a(LoginClient.Request request, Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string == null || string.isEmpty()) {
            this.f3310b.m34454w();
            C2408g0.m34854a(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), (C2408g0.AbstractC2411c) new C2519b(bundle, request));
            return;
        }
        m34481c(request, bundle);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public boolean mo34409a(LoginClient.Request request) {
        this.f3272c = new C2533c(this.f3310b.m34460q(), request.m34450a());
        if (!this.f3272c.m34911c()) {
            return false;
        }
        this.f3310b.m34454w();
        this.f3272c.m34913a(new C2518a(request));
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    public String mo34408b() {
        return "get_token";
    }

    /* renamed from: b */
    public void m34482b(LoginClient.Request request, Bundle bundle) {
        C2533c cVar = this.f3272c;
        if (cVar != null) {
            cVar.m34913a((AbstractServiceConnectionC2385b0.AbstractC2387b) null);
        }
        this.f3272c = null;
        this.f3310b.m34453x();
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Set<String> u = request.m34439u();
            if (stringArrayList == null || (u != null && !stringArrayList.containsAll(u))) {
                HashSet hashSet = new HashSet();
                for (String str : u) {
                    if (!stringArrayList.contains(str)) {
                        hashSet.add(str);
                    }
                }
                if (!hashSet.isEmpty()) {
                    m34428a("new_permissions", TextUtils.join(",", hashSet));
                }
                request.m34448a(hashSet);
            } else {
                m34483a(request, bundle);
                return;
            }
        }
        this.f3310b.m34451z();
    }

    /* renamed from: c */
    public void m34481c(LoginClient.Request request, Bundle bundle) {
        this.f3310b.m34465b(LoginClient.Result.m34436a(this.f3310b.m34455v(), LoginMethodHandler.m34431a(bundle, EnumC6114c.FACEBOOK_APPLICATION_SERVICE, request.m34450a())));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
