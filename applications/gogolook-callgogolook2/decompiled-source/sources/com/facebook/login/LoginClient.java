package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.common.R$string;
import com.facebook.internal.C2398d;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
/* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient.class */
public class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new C2525a();

    /* renamed from: a */
    public LoginMethodHandler[] f3278a;

    /* renamed from: b */
    public int f3279b;

    /* renamed from: c */
    public Fragment f3280c;

    /* renamed from: d */
    public AbstractC2527c f3281d;

    /* renamed from: e */
    public AbstractC2526b f3282e;

    /* renamed from: f */
    public boolean f3283f;

    /* renamed from: g */
    public Request f3284g;

    /* renamed from: h */
    public Map<String, String> f3285h;

    /* renamed from: i */
    public Map<String, String> f3286i;

    /* renamed from: j */
    public C2538f f3287j;

    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Request.class */
    public static class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new C2522a();

        /* renamed from: a */
        public final EnumC2534d f3288a;

        /* renamed from: b */
        public Set<String> f3289b;

        /* renamed from: c */
        public final EnumC2531a f3290c;

        /* renamed from: d */
        public final String f3291d;

        /* renamed from: e */
        public final String f3292e;

        /* renamed from: f */
        public boolean f3293f;

        /* renamed from: g */
        public String f3294g;

        /* renamed from: h */
        public String f3295h;

        /* renamed from: i */
        public String f3296i;

        /* renamed from: com.facebook.login.LoginClient$Request$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Request$a.class */
        public static final class C2522a implements Parcelable.Creator<Request> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Request createFromParcel(Parcel parcel) {
                return new Request(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Request[] newArray(int i) {
                return new Request[i];
            }
        }

        public Request(Parcel parcel) {
            boolean z = false;
            this.f3293f = false;
            String readString = parcel.readString();
            EnumC2531a aVar = null;
            this.f3288a = readString != null ? EnumC2534d.valueOf(readString) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f3289b = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.f3290c = readString2 != null ? EnumC2531a.valueOf(readString2) : aVar;
            this.f3291d = parcel.readString();
            this.f3292e = parcel.readString();
            this.f3293f = parcel.readByte() != 0 ? true : z;
            this.f3294g = parcel.readString();
            this.f3295h = parcel.readString();
            this.f3296i = parcel.readString();
        }

        public /* synthetic */ Request(Parcel parcel, C2525a aVar) {
            this(parcel);
        }

        public Request(EnumC2534d dVar, Set<String> set, EnumC2531a aVar, String str, String str2, String str3) {
            this.f3293f = false;
            this.f3288a = dVar;
            this.f3289b = set == null ? new HashSet<>() : set;
            this.f3290c = aVar;
            this.f3295h = str;
            this.f3291d = str2;
            this.f3292e = str3;
        }

        /* renamed from: a */
        public String m34450a() {
            return this.f3291d;
        }

        /* renamed from: a */
        public void m34449a(String str) {
            this.f3296i = str;
        }

        /* renamed from: a */
        public void m34448a(Set<String> set) {
            C2416h0.m34791a((Object) set, "permissions");
            this.f3289b = set;
        }

        /* renamed from: a */
        public void m34447a(boolean z) {
            this.f3293f = z;
        }

        /* renamed from: b */
        public String m34446b() {
            return this.f3292e;
        }

        /* renamed from: b */
        public void m34445b(String str) {
            this.f3294g = str;
        }

        /* renamed from: c */
        public String m34444c() {
            return this.f3295h;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: q */
        public EnumC2531a m34443q() {
            return this.f3290c;
        }

        /* renamed from: r */
        public String m34442r() {
            return this.f3296i;
        }

        /* renamed from: s */
        public String m34441s() {
            return this.f3294g;
        }

        /* renamed from: t */
        public EnumC2534d m34440t() {
            return this.f3288a;
        }

        /* renamed from: u */
        public Set<String> m34439u() {
            return this.f3289b;
        }

        /* renamed from: v */
        public boolean m34438v() {
            for (String str : this.f3289b) {
                if (C2539g.m34347b(str)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: w */
        public boolean m34437w() {
            return this.f3293f;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            EnumC2534d dVar = this.f3288a;
            String str = null;
            parcel.writeString(dVar != null ? dVar.name() : null);
            parcel.writeStringList(new ArrayList(this.f3289b));
            EnumC2531a aVar = this.f3290c;
            if (aVar != null) {
                str = aVar.name();
            }
            parcel.writeString(str);
            parcel.writeString(this.f3291d);
            parcel.writeString(this.f3292e);
            parcel.writeByte(this.f3293f ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f3294g);
            parcel.writeString(this.f3295h);
            parcel.writeString(this.f3296i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Result.class */
    public static class Result implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new C2523a();

        /* renamed from: a */
        public final EnumC2524b f3297a;

        /* renamed from: b */
        public final AccessToken f3298b;

        /* renamed from: c */
        public final String f3299c;

        /* renamed from: d */
        public final String f3300d;

        /* renamed from: e */
        public final Request f3301e;

        /* renamed from: f */
        public Map<String, String> f3302f;

        /* renamed from: g */
        public Map<String, String> f3303g;

        /* renamed from: com.facebook.login.LoginClient$Result$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Result$a.class */
        public static final class C2523a implements Parcelable.Creator<Result> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Result createFromParcel(Parcel parcel) {
                return new Result(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Result[] newArray(int i) {
                return new Result[i];
            }
        }

        /* renamed from: com.facebook.login.LoginClient$Result$b */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$Result$b.class */
        public enum EnumC2524b {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");
            

            /* renamed from: a */
            public final String f3308a;

            EnumC2524b(String str) {
                this.f3308a = str;
            }

            /* renamed from: a */
            public String m34432a() {
                return this.f3308a;
            }
        }

        public Result(Parcel parcel) {
            this.f3297a = EnumC2524b.valueOf(parcel.readString());
            this.f3298b = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.f3299c = parcel.readString();
            this.f3300d = parcel.readString();
            this.f3301e = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f3302f = C2408g0.m34866a(parcel);
            this.f3303g = C2408g0.m34866a(parcel);
        }

        public /* synthetic */ Result(Parcel parcel, C2525a aVar) {
            this(parcel);
        }

        public Result(Request request, EnumC2524b bVar, AccessToken accessToken, String str, String str2) {
            C2416h0.m34791a(bVar, "code");
            this.f3301e = request;
            this.f3298b = accessToken;
            this.f3299c = str;
            this.f3297a = bVar;
            this.f3300d = str2;
        }

        /* renamed from: a */
        public static Result m34436a(Request request, AccessToken accessToken) {
            return new Result(request, EnumC2524b.SUCCESS, accessToken, null, null);
        }

        /* renamed from: a */
        public static Result m34435a(Request request, String str) {
            return new Result(request, EnumC2524b.CANCEL, null, str, null);
        }

        /* renamed from: a */
        public static Result m34434a(Request request, String str, String str2) {
            return m34433a(request, str, str2, null);
        }

        /* renamed from: a */
        public static Result m34433a(Request request, String str, String str2, String str3) {
            return new Result(request, EnumC2524b.ERROR, null, TextUtils.join(": ", C2408g0.m34835a(str, str2)), str3);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f3297a.name());
            parcel.writeParcelable(this.f3298b, i);
            parcel.writeString(this.f3299c);
            parcel.writeString(this.f3300d);
            parcel.writeParcelable(this.f3301e, i);
            C2408g0.m34865a(parcel, this.f3302f);
            C2408g0.m34865a(parcel, this.f3303g);
        }
    }

    /* renamed from: com.facebook.login.LoginClient$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$a.class */
    public static final class C2525a implements Parcelable.Creator<LoginClient> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LoginClient createFromParcel(Parcel parcel) {
            return new LoginClient(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    }

    /* renamed from: com.facebook.login.LoginClient$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$b.class */
    public interface AbstractC2526b {
        /* renamed from: a */
        void mo34381a();

        /* renamed from: b */
        void mo34380b();
    }

    /* renamed from: com.facebook.login.LoginClient$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/LoginClient$c.class */
    public interface AbstractC2527c {
        /* renamed from: a */
        void mo34382a(Result result);
    }

    public LoginClient(Parcel parcel) {
        this.f3279b = -1;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        this.f3278a = new LoginMethodHandler[readParcelableArray.length];
        for (int i = 0; i < readParcelableArray.length; i++) {
            LoginMethodHandler[] loginMethodHandlerArr = this.f3278a;
            loginMethodHandlerArr[i] = (LoginMethodHandler) readParcelableArray[i];
            loginMethodHandlerArr[i].m34430a(this);
        }
        this.f3279b = parcel.readInt();
        this.f3284g = (Request) parcel.readParcelable(Request.class.getClassLoader());
        this.f3285h = C2408g0.m34866a(parcel);
        this.f3286i = C2408g0.m34866a(parcel);
    }

    public LoginClient(Fragment fragment) {
        this.f3279b = -1;
        this.f3280c = fragment;
    }

    /* renamed from: A */
    public static String m34480A() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    /* renamed from: B */
    public static int m34479B() {
        return C2398d.EnumC2400b.Login.m34900a();
    }

    /* renamed from: a */
    public int m34471a(String str) {
        return m34460q().checkCallingOrSelfPermission(str);
    }

    /* renamed from: a */
    public void m34478a() {
        if (this.f3279b >= 0) {
            m34459r().mo34410a();
        }
    }

    /* renamed from: a */
    public void m34476a(Fragment fragment) {
        if (this.f3280c == null) {
            this.f3280c = fragment;
            return;
        }
        throw new C6131k("Can't set fragment once it is already set.");
    }

    /* renamed from: a */
    public void m34475a(Request request) {
        if (request != null) {
            if (this.f3284g != null) {
                throw new C6131k("Attempted to authorize while a request is pending.");
            } else if (!AccessToken.m35506C() || m34467b()) {
                this.f3284g = request;
                this.f3278a = m34466b(request);
                m34451z();
            }
        }
    }

    /* renamed from: a */
    public void m34474a(Result result) {
        LoginMethodHandler r = m34459r();
        if (r != null) {
            m34470a(r.mo34408b(), result, r.f3309a);
        }
        Map<String, String> map = this.f3285h;
        if (map != null) {
            result.f3302f = map;
        }
        Map<String, String> map2 = this.f3286i;
        if (map2 != null) {
            result.f3303g = map2;
        }
        this.f3278a = null;
        this.f3279b = -1;
        this.f3284g = null;
        this.f3285h = null;
        m34462c(result);
    }

    /* renamed from: a */
    public void m34473a(AbstractC2526b bVar) {
        this.f3282e = bVar;
    }

    /* renamed from: a */
    public void m34472a(AbstractC2527c cVar) {
        this.f3281d = cVar;
    }

    /* renamed from: a */
    public final void m34470a(String str, Result result, Map<String, String> map) {
        m34469a(str, result.f3297a.m34432a(), result.f3299c, result.f3300d, map);
    }

    /* renamed from: a */
    public final void m34469a(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.f3284g == null) {
            m34456u().m34375a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
        } else {
            m34456u().m34374a(this.f3284g.m34446b(), str, str2, str3, str4, map);
        }
    }

    /* renamed from: a */
    public final void m34468a(String str, String str2, boolean z) {
        if (this.f3285h == null) {
            this.f3285h = new HashMap();
        }
        String str3 = str2;
        if (this.f3285h.containsKey(str)) {
            str3 = str2;
            if (z) {
                str3 = this.f3285h.get(str) + "," + str2;
            }
        }
        this.f3285h.put(str, str3);
    }

    /* renamed from: a */
    public boolean m34477a(int i, int i2, Intent intent) {
        if (this.f3284g != null) {
            return m34459r().mo34423a(i, i2, intent);
        }
        return false;
    }

    /* renamed from: b */
    public void m34465b(Result result) {
        if (result.f3298b == null || !AccessToken.m35506C()) {
            m34474a(result);
        } else {
            m34461d(result);
        }
    }

    /* renamed from: b */
    public boolean m34467b() {
        if (this.f3283f) {
            return true;
        }
        if (m34471a("android.permission.INTERNET") != 0) {
            FragmentActivity q = m34460q();
            m34474a(Result.m34434a(this.f3284g, q.getString(R$string.com_facebook_internet_permission_error_title), q.getString(R$string.com_facebook_internet_permission_error_message)));
            return false;
        }
        this.f3283f = true;
        return true;
    }

    /* renamed from: b */
    public LoginMethodHandler[] m34466b(Request request) {
        ArrayList arrayList = new ArrayList();
        EnumC2534d t = request.m34440t();
        if (t.m34391d()) {
            arrayList.add(new GetTokenLoginMethodHandler(this));
        }
        if (t.m34390e()) {
            arrayList.add(new KatanaProxyLoginMethodHandler(this));
        }
        if (t.m34392c()) {
            arrayList.add(new FacebookLiteLoginMethodHandler(this));
        }
        if (t.m34394a()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (t.m34389f()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (t.m34393b()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        LoginMethodHandler[] loginMethodHandlerArr = new LoginMethodHandler[arrayList.size()];
        arrayList.toArray(loginMethodHandlerArr);
        return loginMethodHandlerArr;
    }

    /* renamed from: c */
    public final void m34464c() {
        m34474a(Result.m34434a(this.f3284g, "Login attempt failed.", null));
    }

    /* renamed from: c */
    public void m34463c(Request request) {
        if (!m34457t()) {
            m34475a(request);
        }
    }

    /* renamed from: c */
    public final void m34462c(Result result) {
        AbstractC2527c cVar = this.f3281d;
        if (cVar != null) {
            cVar.mo34382a(result);
        }
    }

    /* renamed from: d */
    public void m34461d(Result result) {
        Result result2;
        if (result.f3298b != null) {
            AccessToken B = AccessToken.m35507B();
            AccessToken accessToken = result.f3298b;
            if (!(B == null || accessToken == null)) {
                try {
                    if (B.m35490w().equals(accessToken.m35490w())) {
                        result2 = Result.m34436a(this.f3284g, result.f3298b);
                        m34474a(result2);
                        return;
                    }
                } catch (Exception e) {
                    m34474a(Result.m34434a(this.f3284g, "Caught exception", e.getMessage()));
                    return;
                }
            }
            result2 = Result.m34434a(this.f3284g, "User logged in as different Facebook user.", null);
            m34474a(result2);
            return;
        }
        throw new C6131k("Can't validate without a token");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: q */
    public FragmentActivity m34460q() {
        return this.f3280c.getActivity();
    }

    /* renamed from: r */
    public LoginMethodHandler m34459r() {
        int i = this.f3279b;
        if (i >= 0) {
            return this.f3278a[i];
        }
        return null;
    }

    /* renamed from: s */
    public Fragment m34458s() {
        return this.f3280c;
    }

    /* renamed from: t */
    public boolean m34457t() {
        return this.f3284g != null && this.f3279b >= 0;
    }

    /* renamed from: u */
    public final C2538f m34456u() {
        C2538f fVar = this.f3287j;
        if (fVar == null || !fVar.m34379a().equals(this.f3284g.m34450a())) {
            this.f3287j = new C2538f(m34460q(), this.f3284g.m34450a());
        }
        return this.f3287j;
    }

    /* renamed from: v */
    public Request m34455v() {
        return this.f3284g;
    }

    /* renamed from: w */
    public void m34454w() {
        AbstractC2526b bVar = this.f3282e;
        if (bVar != null) {
            bVar.mo34381a();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelableArray(this.f3278a, i);
        parcel.writeInt(this.f3279b);
        parcel.writeParcelable(this.f3284g, i);
        C2408g0.m34865a(parcel, this.f3285h);
        C2408g0.m34865a(parcel, this.f3286i);
    }

    /* renamed from: x */
    public void m34453x() {
        AbstractC2526b bVar = this.f3282e;
        if (bVar != null) {
            bVar.mo34380b();
        }
    }

    /* renamed from: y */
    public boolean m34452y() {
        LoginMethodHandler r = m34459r();
        if (!r.mo34406c() || m34467b()) {
            boolean a = r.mo34409a(this.f3284g);
            if (a) {
                m34456u().m34372b(this.f3284g.m34446b(), r.mo34408b());
            } else {
                m34456u().m34376a(this.f3284g.m34446b(), r.mo34408b());
                m34468a("not_tried", r.mo34408b(), true);
            }
            return a;
        }
        m34468a("no_internet_permission", "1", false);
        return false;
    }

    /* renamed from: z */
    public void m34451z() {
        int i;
        if (this.f3279b >= 0) {
            m34469a(m34459r().mo34408b(), "skipped", null, null, m34459r().f3309a);
        }
        do {
            LoginMethodHandler[] loginMethodHandlerArr = this.f3278a;
            if (loginMethodHandlerArr != null && (i = this.f3279b) < loginMethodHandlerArr.length - 1) {
                this.f3279b = i + 1;
            } else if (this.f3284g != null) {
                m34464c();
                return;
            } else {
                return;
            }
        } while (!m34452y());
    }
}
