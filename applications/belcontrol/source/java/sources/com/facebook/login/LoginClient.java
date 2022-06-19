package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient.class */
public class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new C0350a();

    /* renamed from: a */
    public LoginMethodHandler[] f2529a;

    /* renamed from: b */
    public int f2530b;

    /* renamed from: c */
    public Fragment f2531c;

    /* renamed from: d */
    public AbstractC0352c f2532d;

    /* renamed from: f */
    public AbstractC0351b f2533f;

    /* renamed from: g */
    public boolean f2534g;

    /* renamed from: h */
    public Request f2535h;

    /* renamed from: j */
    public Map<String, String> f2536j;

    /* renamed from: k */
    public Map<String, String> f2537k;

    /* renamed from: l */
    public vn0 f2538l;

    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Request.class */
    public static class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new C0347a();

        /* renamed from: a */
        public final tn0 f2539a;

        /* renamed from: b */
        public Set<String> f2540b;

        /* renamed from: c */
        public final qn0 f2541c;

        /* renamed from: d */
        public final String f2542d;

        /* renamed from: f */
        public final String f2543f;

        /* renamed from: g */
        public boolean f2544g;

        /* renamed from: h */
        public String f2545h;

        /* renamed from: j */
        public String f2546j;

        /* renamed from: k */
        public String f2547k;

        /* renamed from: com.facebook.login.LoginClient$Request$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Request$a.class */
        public static final class C0347a implements Parcelable.Creator<Request> {
            /* renamed from: a */
            public Request createFromParcel(Parcel parcel) {
                return new Request(parcel, null);
            }

            /* renamed from: b */
            public Request[] newArray(int i) {
                return new Request[i];
            }
        }

        public Request(Parcel parcel) {
            boolean z = false;
            this.f2544g = false;
            String readString = parcel.readString();
            this.f2539a = readString != null ? tn0.valueOf(readString) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f2540b = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.f2541c = readString2 != null ? qn0.valueOf(readString2) : null;
            this.f2542d = parcel.readString();
            this.f2543f = parcel.readString();
            this.f2544g = parcel.readByte() != 0 ? true : z;
            this.f2545h = parcel.readString();
            this.f2546j = parcel.readString();
            this.f2547k = parcel.readString();
        }

        public /* synthetic */ Request(Parcel parcel, C0350a c0350a) {
            this(parcel);
        }

        public Request(tn0 tn0Var, Set<String> set, qn0 qn0Var, String str, String str2, String str3) {
            this.f2544g = false;
            this.f2539a = tn0Var;
            this.f2540b = set == null ? new HashSet() : set;
            this.f2541c = qn0Var;
            this.f2546j = str;
            this.f2542d = str2;
            this.f2543f = str3;
        }

        /* renamed from: a */
        public String m5073a() {
            return this.f2542d;
        }

        /* renamed from: b */
        public String m5072b() {
            return this.f2543f;
        }

        /* renamed from: c */
        public String m5071c() {
            return this.f2546j;
        }

        /* renamed from: d */
        public qn0 m5070d() {
            return this.f2541c;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: e */
        public String m5069e() {
            return this.f2547k;
        }

        /* renamed from: f */
        public String m5068f() {
            return this.f2545h;
        }

        /* renamed from: g */
        public tn0 m5067g() {
            return this.f2539a;
        }

        /* renamed from: h */
        public Set<String> m5066h() {
            return this.f2540b;
        }

        /* renamed from: i */
        public boolean m5065i() {
            for (String str : this.f2540b) {
                if (wn0.g(str)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: j */
        public boolean m5064j() {
            return this.f2544g;
        }

        /* renamed from: k */
        public void m5063k(String str) {
            this.f2547k = str;
        }

        /* renamed from: l */
        public void m5062l(String str) {
            this.f2545h = str;
        }

        /* renamed from: m */
        public void m5061m(Set<String> set) {
            gn0.l(set, "permissions");
            this.f2540b = set;
        }

        /* renamed from: n */
        public void m5060n(boolean z) {
            this.f2544g = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            tn0 tn0Var = this.f2539a;
            parcel.writeString(tn0Var != null ? tn0Var.name() : null);
            parcel.writeStringList(new ArrayList(this.f2540b));
            qn0 qn0Var = this.f2541c;
            String str = null;
            if (qn0Var != null) {
                str = qn0Var.name();
            }
            parcel.writeString(str);
            parcel.writeString(this.f2542d);
            parcel.writeString(this.f2543f);
            parcel.writeByte(this.f2544g ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f2545h);
            parcel.writeString(this.f2546j);
            parcel.writeString(this.f2547k);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Result.class */
    public static class Result implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new C0348a();

        /* renamed from: a */
        public final EnumC0349b f2548a;

        /* renamed from: b */
        public final AccessToken f2549b;

        /* renamed from: c */
        public final String f2550c;

        /* renamed from: d */
        public final String f2551d;

        /* renamed from: f */
        public final Request f2552f;

        /* renamed from: g */
        public Map<String, String> f2553g;

        /* renamed from: h */
        public Map<String, String> f2554h;

        /* renamed from: com.facebook.login.LoginClient$Result$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Result$a.class */
        public static final class C0348a implements Parcelable.Creator<Result> {
            /* renamed from: a */
            public Result createFromParcel(Parcel parcel) {
                return new Result(parcel, null);
            }

            /* renamed from: b */
            public Result[] newArray(int i) {
                return new Result[i];
            }
        }

        /* renamed from: com.facebook.login.LoginClient$Result$b */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Result$b.class */
        public enum EnumC0349b {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");
            

            /* renamed from: a */
            public final String f2559a;

            EnumC0349b(String str) {
                this.f2559a = str;
            }

            /* renamed from: a */
            public String m5051a() {
                return this.f2559a;
            }
        }

        public Result(Parcel parcel) {
            this.f2548a = EnumC0349b.valueOf(parcel.readString());
            this.f2549b = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.f2550c = parcel.readString();
            this.f2551d = parcel.readString();
            this.f2552f = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f2553g = fn0.h0(parcel);
            this.f2554h = fn0.h0(parcel);
        }

        public /* synthetic */ Result(Parcel parcel, C0350a c0350a) {
            this(parcel);
        }

        public Result(Request request, EnumC0349b enumC0349b, AccessToken accessToken, String str, String str2) {
            gn0.l(enumC0349b, "code");
            this.f2552f = request;
            this.f2549b = accessToken;
            this.f2550c = str;
            this.f2548a = enumC0349b;
            this.f2551d = str2;
        }

        /* renamed from: a */
        public static Result m5057a(Request request, String str) {
            return new Result(request, EnumC0349b.CANCEL, null, str, null);
        }

        /* renamed from: b */
        public static Result m5056b(Request request, String str, String str2) {
            return m5055c(request, str, str2, null);
        }

        /* renamed from: c */
        public static Result m5055c(Request request, String str, String str2, String str3) {
            return new Result(request, EnumC0349b.ERROR, null, TextUtils.join(": ", fn0.c(new String[]{str, str2})), str3);
        }

        /* renamed from: d */
        public static Result m5054d(Request request, AccessToken accessToken) {
            return new Result(request, EnumC0349b.SUCCESS, accessToken, null, null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f2548a.name());
            parcel.writeParcelable(this.f2549b, i);
            parcel.writeString(this.f2550c);
            parcel.writeString(this.f2551d);
            parcel.writeParcelable(this.f2552f, i);
            fn0.x0(parcel, this.f2553g);
            fn0.x0(parcel, this.f2554h);
        }
    }

    /* renamed from: com.facebook.login.LoginClient$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$a.class */
    public static final class C0350a implements Parcelable.Creator<LoginClient> {
        /* renamed from: a */
        public LoginClient createFromParcel(Parcel parcel) {
            return new LoginClient(parcel);
        }

        /* renamed from: b */
        public LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    }

    /* renamed from: com.facebook.login.LoginClient$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$b.class */
    public interface AbstractC0351b {
        /* renamed from: a */
        void m5048a();

        /* renamed from: b */
        void m5047b();
    }

    /* renamed from: com.facebook.login.LoginClient$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$c.class */
    public interface AbstractC0352c {
        /* renamed from: a */
        void m5046a(Result result);
    }

    public LoginClient(Parcel parcel) {
        this.f2530b = -1;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        this.f2529a = new LoginMethodHandler[readParcelableArray.length];
        for (int i = 0; i < readParcelableArray.length; i++) {
            LoginMethodHandler[] loginMethodHandlerArr = this.f2529a;
            loginMethodHandlerArr[i] = (LoginMethodHandler) readParcelableArray[i];
            loginMethodHandlerArr[i].m5034l(this);
        }
        this.f2530b = parcel.readInt();
        this.f2535h = (Request) parcel.readParcelable(Request.class.getClassLoader());
        this.f2536j = fn0.h0(parcel);
        this.f2537k = fn0.h0(parcel);
    }

    public LoginClient(Fragment fragment) {
        this.f2530b = -1;
        this.f2531c = fragment;
    }

    /* renamed from: k */
    public static String m5089k() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    /* renamed from: p */
    public static int m5084p() {
        return bm0$b.Login.m5606a();
    }

    /* renamed from: A */
    public void m5103A(Request request) {
        if (!m5086n()) {
            m5098b(request);
        }
    }

    /* renamed from: B */
    public boolean m5102B() {
        LoginMethodHandler m5090j = m5090j();
        if (m5090j.m5037i() && !m5096d()) {
            m5099a("no_internet_permission", "1", false);
            return false;
        }
        boolean m5033m = m5090j.m5033m(this.f2535h);
        vn0 m5085o = m5085o();
        String m5072b = this.f2535h.m5072b();
        if (m5033m) {
            m5085o.d(m5072b, m5090j.m5040f());
        } else {
            m5085o.c(m5072b, m5090j.m5040f());
            m5099a("not_tried", m5090j.m5040f(), true);
        }
        return m5033m;
    }

    /* renamed from: C */
    public void m5101C() {
        int i;
        if (this.f2530b >= 0) {
            m5081s(m5090j().m5040f(), "skipped", null, null, m5090j().f2560a);
        }
        do {
            LoginMethodHandler[] loginMethodHandlerArr = this.f2529a;
            if (loginMethodHandlerArr == null || (i = this.f2530b) >= loginMethodHandlerArr.length - 1) {
                if (this.f2535h == null) {
                    return;
                }
                m5092h();
                return;
            }
            this.f2530b = i + 1;
        } while (!m5102B());
    }

    /* renamed from: D */
    public void m5100D(Result result) {
        Result result2;
        if (result.f2549b != null) {
            AccessToken m5251g = AccessToken.m5251g();
            AccessToken accessToken = result.f2549b;
            if (m5251g != null && accessToken != null) {
                try {
                    if (m5251g.m5240r().equals(accessToken.m5240r())) {
                        result2 = Result.m5054d(this.f2535h, result.f2549b);
                        m5094f(result2);
                        return;
                    }
                } catch (Exception e) {
                    m5094f(Result.m5056b(this.f2535h, "Caught exception", e.getMessage()));
                    return;
                }
            }
            result2 = Result.m5056b(this.f2535h, "User logged in as different Facebook user.", null);
            m5094f(result2);
            return;
        }
        throw new ri0("Can't validate without a token");
    }

    /* renamed from: a */
    public final void m5099a(String str, String str2, boolean z) {
        if (this.f2536j == null) {
            this.f2536j = new HashMap();
        }
        String str3 = str2;
        if (this.f2536j.containsKey(str)) {
            str3 = str2;
            if (z) {
                str3 = this.f2536j.get(str) + "," + str2;
            }
        }
        this.f2536j.put(str, str3);
    }

    /* renamed from: b */
    public void m5098b(Request request) {
        if (request == null) {
            return;
        }
        if (this.f2535h != null) {
            throw new ri0("Attempted to authorize while a request is pending.");
        }
        if (AccessToken.m5239s() && !m5096d()) {
            return;
        }
        this.f2535h = request;
        this.f2529a = m5087m(request);
        m5101C();
    }

    /* renamed from: c */
    public void m5097c() {
        if (this.f2530b >= 0) {
            m5090j().m5044b();
        }
    }

    /* renamed from: d */
    public boolean m5096d() {
        if (this.f2534g) {
            return true;
        }
        if (m5095e("android.permission.INTERNET") == 0) {
            this.f2534g = true;
            return true;
        }
        FragmentActivity m5091i = m5091i();
        m5094f(Result.m5056b(this.f2535h, m5091i.getString(ul0.com_facebook_internet_permission_error_title), m5091i.getString(ul0.com_facebook_internet_permission_error_message)));
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m5095e(String str) {
        return m5091i().checkCallingOrSelfPermission(str);
    }

    /* renamed from: f */
    public void m5094f(Result result) {
        LoginMethodHandler m5090j = m5090j();
        if (m5090j != null) {
            m5082r(m5090j.m5040f(), result, m5090j.f2560a);
        }
        Map<String, String> map = this.f2536j;
        if (map != null) {
            result.f2553g = map;
        }
        Map<String, String> map2 = this.f2537k;
        if (map2 != null) {
            result.f2554h = map2;
        }
        this.f2529a = null;
        this.f2530b = -1;
        this.f2535h = null;
        this.f2536j = null;
        m5078v(result);
    }

    /* renamed from: g */
    public void m5093g(Result result) {
        if (result.f2549b == null || !AccessToken.m5239s()) {
            m5094f(result);
        } else {
            m5100D(result);
        }
    }

    /* renamed from: h */
    public final void m5092h() {
        m5094f(Result.m5056b(this.f2535h, "Login attempt failed.", null));
    }

    /* renamed from: i */
    public FragmentActivity m5091i() {
        return this.f2531c.getActivity();
    }

    /* renamed from: j */
    public LoginMethodHandler m5090j() {
        int i = this.f2530b;
        if (i >= 0) {
            return this.f2529a[i];
        }
        return null;
    }

    /* renamed from: l */
    public Fragment m5088l() {
        return this.f2531c;
    }

    /* renamed from: m */
    public LoginMethodHandler[] m5087m(Request request) {
        ArrayList arrayList = new ArrayList();
        tn0 m5067g = request.m5067g();
        if (m5067g.d()) {
            arrayList.add(new GetTokenLoginMethodHandler(this));
        }
        if (m5067g.e()) {
            arrayList.add(new KatanaProxyLoginMethodHandler(this));
        }
        if (m5067g.c()) {
            arrayList.add(new FacebookLiteLoginMethodHandler(this));
        }
        if (m5067g.a()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (m5067g.f()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (m5067g.b()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        LoginMethodHandler[] loginMethodHandlerArr = new LoginMethodHandler[arrayList.size()];
        arrayList.toArray(loginMethodHandlerArr);
        return loginMethodHandlerArr;
    }

    /* renamed from: n */
    public boolean m5086n() {
        return this.f2535h != null && this.f2530b >= 0;
    }

    /* renamed from: o */
    public final vn0 m5085o() {
        vn0 vn0Var = this.f2538l;
        if (vn0Var == null || !vn0Var.a().equals(this.f2535h.m5073a())) {
            this.f2538l = new vn0(m5091i(), this.f2535h.m5073a());
        }
        return this.f2538l;
    }

    /* renamed from: q */
    public Request m5083q() {
        return this.f2535h;
    }

    /* renamed from: r */
    public final void m5082r(String str, Result result, Map<String, String> map) {
        m5081s(str, result.f2548a.m5051a(), result.f2550c, result.f2551d, map);
    }

    /* renamed from: s */
    public final void m5081s(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.f2535h == null) {
            m5085o().h("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
        } else {
            m5085o().b(this.f2535h.m5072b(), str, str2, str3, str4, map);
        }
    }

    /* renamed from: t */
    public void m5080t() {
        AbstractC0351b abstractC0351b = this.f2533f;
        if (abstractC0351b != null) {
            abstractC0351b.m5048a();
        }
    }

    /* renamed from: u */
    public void m5079u() {
        AbstractC0351b abstractC0351b = this.f2533f;
        if (abstractC0351b != null) {
            abstractC0351b.m5047b();
        }
    }

    /* renamed from: v */
    public final void m5078v(Result result) {
        AbstractC0352c abstractC0352c = this.f2532d;
        if (abstractC0352c != null) {
            abstractC0352c.m5046a(result);
        }
    }

    /* renamed from: w */
    public boolean m5077w(int i, int i2, Intent intent) {
        if (this.f2535h != null) {
            return m5090j().m5036j(i, i2, intent);
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelableArray(this.f2529a, i);
        parcel.writeInt(this.f2530b);
        parcel.writeParcelable(this.f2535h, i);
        fn0.x0(parcel, this.f2536j);
        fn0.x0(parcel, this.f2537k);
    }

    /* renamed from: x */
    public void m5076x(AbstractC0351b abstractC0351b) {
        this.f2533f = abstractC0351b;
    }

    /* renamed from: y */
    public void m5075y(Fragment fragment) {
        if (this.f2531c == null) {
            this.f2531c = fragment;
            return;
        }
        throw new ri0("Can't set fragment once it is already set.");
    }

    /* renamed from: z */
    public void m5074z(AbstractC0352c abstractC0352c) {
        this.f2532d = abstractC0352c;
    }
}
