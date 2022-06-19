package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.Fragment;
import com.facebook.C1803a;
import com.facebook.FacebookException;
import com.facebook.common.C1974a;
import com.facebook.internal.C2025d;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.login.j */
/* loaded from: classes-dex2jar.jar:com/facebook/login/j.class */
public class C2141j implements Parcelable {
    public static final Parcelable.Creator<C2141j> CREATOR = new Parcelable.Creator<C2141j>() { // from class: com.facebook.login.j.1
        /* renamed from: a */
        public C2141j createFromParcel(Parcel parcel) {
            return new C2141j(parcel);
        }

        /* renamed from: a */
        public C2141j[] newArray(int i) {
            return new C2141j[i];
        }
    };

    /* renamed from: a */
    AbstractC2161n[] f6287a;

    /* renamed from: b */
    int f6288b;

    /* renamed from: c */
    Fragment f6289c;

    /* renamed from: d */
    AbstractC2144b f6290d;

    /* renamed from: e */
    AbstractC2143a f6291e;

    /* renamed from: f */
    boolean f6292f;

    /* renamed from: g */
    C2145c f6293g;

    /* renamed from: h */
    Map<String, String> f6294h;

    /* renamed from: i */
    Map<String, String> f6295i;

    /* renamed from: j */
    private C2153l f6296j;

    /* renamed from: com.facebook.login.j$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j$a.class */
    public interface AbstractC2143a {
        /* renamed from: a */
        void mo15131a();

        /* renamed from: b */
        void mo15130b();
    }

    /* renamed from: com.facebook.login.j$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j$b.class */
    public interface AbstractC2144b {
        /* renamed from: a */
        void mo15132a(C2147d c2147d);
    }

    /* renamed from: com.facebook.login.j$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j$c.class */
    public static class C2145c implements Parcelable {
        public static final Parcelable.Creator<C2145c> CREATOR = new Parcelable.Creator<C2145c>() { // from class: com.facebook.login.j.c.1
            /* renamed from: a */
            public C2145c createFromParcel(Parcel parcel) {
                return new C2145c(parcel);
            }

            /* renamed from: a */
            public C2145c[] newArray(int i) {
                return new C2145c[i];
            }
        };

        /* renamed from: a */
        private final EnumC2140i f6297a;

        /* renamed from: b */
        private Set<String> f6298b;

        /* renamed from: c */
        private final EnumC2118b f6299c;

        /* renamed from: d */
        private final String f6300d;

        /* renamed from: e */
        private final String f6301e;

        /* renamed from: f */
        private boolean f6302f;

        /* renamed from: g */
        private String f6303g;

        /* renamed from: h */
        private String f6304h;

        /* renamed from: i */
        private String f6305i;

        private C2145c(Parcel parcel) {
            this.f6302f = false;
            String readString = parcel.readString();
            this.f6297a = readString != null ? EnumC2140i.valueOf(readString) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f6298b = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.f6299c = readString2 != null ? EnumC2118b.valueOf(readString2) : null;
            this.f6300d = parcel.readString();
            this.f6301e = parcel.readString();
            this.f6302f = parcel.readByte() != 0;
            this.f6303g = parcel.readString();
            this.f6304h = parcel.readString();
            this.f6305i = parcel.readString();
        }

        public C2145c(EnumC2140i enumC2140i, Set<String> set, EnumC2118b enumC2118b, String str, String str2, String str3) {
            this.f6302f = false;
            this.f6297a = enumC2140i;
            this.f6298b = set == null ? new HashSet() : set;
            this.f6299c = enumC2118b;
            this.f6304h = str;
            this.f6300d = str2;
            this.f6301e = str3;
        }

        /* renamed from: a */
        public Set<String> m15160a() {
            return this.f6298b;
        }

        /* renamed from: a */
        public void m15159a(Set<String> set) {
            C2084y.m15417a((Object) set, "permissions");
            this.f6298b = set;
        }

        /* renamed from: a */
        public void m15158a(boolean z) {
            this.f6302f = z;
        }

        /* renamed from: b */
        public EnumC2140i m15157b() {
            return this.f6297a;
        }

        /* renamed from: c */
        public EnumC2118b m15156c() {
            return this.f6299c;
        }

        /* renamed from: d */
        public String m15155d() {
            return this.f6300d;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: e */
        public String m15154e() {
            return this.f6301e;
        }

        /* renamed from: f */
        public boolean m15153f() {
            return this.f6302f;
        }

        /* renamed from: g */
        public String m15152g() {
            return this.f6303g;
        }

        /* renamed from: h */
        public String m15151h() {
            return this.f6305i;
        }

        /* renamed from: i */
        public String m15150i() {
            return this.f6304h;
        }

        /* renamed from: j */
        public boolean m15149j() {
            boolean z;
            Iterator<String> it = this.f6298b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (C2154m.m15098b(it.next())) {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f6297a != null ? this.f6297a.name() : null);
            parcel.writeStringList(new ArrayList(this.f6298b));
            String str = null;
            if (this.f6299c != null) {
                str = this.f6299c.name();
            }
            parcel.writeString(str);
            parcel.writeString(this.f6300d);
            parcel.writeString(this.f6301e);
            parcel.writeByte((byte) (this.f6302f ? 1 : 0));
            parcel.writeString(this.f6303g);
            parcel.writeString(this.f6304h);
            parcel.writeString(this.f6305i);
        }
    }

    /* renamed from: com.facebook.login.j$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j$d.class */
    public static class C2147d implements Parcelable {
        public static final Parcelable.Creator<C2147d> CREATOR = new Parcelable.Creator<C2147d>() { // from class: com.facebook.login.j.d.1
            /* renamed from: a */
            public C2147d createFromParcel(Parcel parcel) {
                return new C2147d(parcel);
            }

            /* renamed from: a */
            public C2147d[] newArray(int i) {
                return new C2147d[i];
            }
        };

        /* renamed from: a */
        final EnumC2149a f6306a;

        /* renamed from: b */
        final C1803a f6307b;

        /* renamed from: c */
        final String f6308c;

        /* renamed from: d */
        final String f6309d;

        /* renamed from: e */
        final C2145c f6310e;

        /* renamed from: f */
        public Map<String, String> f6311f;

        /* renamed from: g */
        public Map<String, String> f6312g;

        /* renamed from: com.facebook.login.j$d$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/j$d$a.class */
        public enum EnumC2149a {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");
            

            /* renamed from: d */
            private final String f6317d;

            EnumC2149a(String str) {
                this.f6317d = str;
            }

            /* renamed from: a */
            public String m15140a() {
                return this.f6317d;
            }
        }

        private C2147d(Parcel parcel) {
            this.f6306a = EnumC2149a.valueOf(parcel.readString());
            this.f6307b = (C1803a) parcel.readParcelable(C1803a.class.getClassLoader());
            this.f6308c = parcel.readString();
            this.f6309d = parcel.readString();
            this.f6310e = (C2145c) parcel.readParcelable(C2145c.class.getClassLoader());
            this.f6311f = C2079x.m15482a(parcel);
            this.f6312g = C2079x.m15482a(parcel);
        }

        C2147d(C2145c c2145c, EnumC2149a enumC2149a, C1803a c1803a, String str, String str2) {
            C2084y.m15417a(enumC2149a, "code");
            this.f6310e = c2145c;
            this.f6307b = c1803a;
            this.f6308c = str;
            this.f6306a = enumC2149a;
            this.f6309d = str2;
        }

        /* renamed from: a */
        public static C2147d m15146a(C2145c c2145c, C1803a c1803a) {
            return new C2147d(c2145c, EnumC2149a.SUCCESS, c1803a, null, null);
        }

        /* renamed from: a */
        public static C2147d m15145a(C2145c c2145c, String str) {
            return new C2147d(c2145c, EnumC2149a.CANCEL, null, str, null);
        }

        /* renamed from: a */
        public static C2147d m15144a(C2145c c2145c, String str, String str2) {
            return m15143a(c2145c, str, str2, null);
        }

        /* renamed from: a */
        public static C2147d m15143a(C2145c c2145c, String str, String str2, String str3) {
            return new C2147d(c2145c, EnumC2149a.ERROR, null, TextUtils.join(": ", C2079x.m15446b(str, str2)), str3);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f6306a.name());
            parcel.writeParcelable(this.f6307b, i);
            parcel.writeString(this.f6308c);
            parcel.writeString(this.f6309d);
            parcel.writeParcelable(this.f6310e, i);
            C2079x.m15481a(parcel, this.f6311f);
            C2079x.m15481a(parcel, this.f6312g);
        }
    }

    public C2141j(Parcel parcel) {
        this.f6288b = -1;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(AbstractC2161n.class.getClassLoader());
        this.f6287a = new AbstractC2161n[readParcelableArray.length];
        for (int i = 0; i < readParcelableArray.length; i++) {
            this.f6287a[i] = (AbstractC2161n) readParcelableArray[i];
            this.f6287a[i].m15092a(this);
        }
        this.f6288b = parcel.readInt();
        this.f6293g = (C2145c) parcel.readParcelable(C2145c.class.getClassLoader());
        this.f6294h = C2079x.m15482a(parcel);
        this.f6295i = C2079x.m15482a(parcel);
    }

    public C2141j(Fragment fragment) {
        this.f6288b = -1;
        this.f6289c = fragment;
    }

    /* renamed from: a */
    private void m15184a(String str, C2147d c2147d, Map<String, String> map) {
        m15183a(str, c2147d.f6306a.m15140a(), c2147d.f6308c, c2147d.f6309d, map);
    }

    /* renamed from: a */
    private void m15183a(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.f6293g == null) {
            m15163o().m15125a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
        } else {
            m15163o().m15124a(this.f6293g.m15154e(), str, str2, str3, str4, map);
        }
    }

    /* renamed from: a */
    private void m15182a(String str, String str2, boolean z) {
        if (this.f6294h == null) {
            this.f6294h = new HashMap();
        }
        String str3 = str2;
        if (this.f6294h.containsKey(str)) {
            str3 = str2;
            if (z) {
                str3 = this.f6294h.get(str) + "," + str2;
            }
        }
        this.f6294h.put(str, str3);
    }

    /* renamed from: d */
    public static int m15175d() {
        return C2025d.EnumC2027b.Login.m15643a();
    }

    /* renamed from: d */
    private void m15174d(C2147d c2147d) {
        if (this.f6290d != null) {
            this.f6290d.mo15132a(c2147d);
        }
    }

    /* renamed from: m */
    public static String m15165m() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    /* renamed from: n */
    private void m15164n() {
        m15179b(C2147d.m15144a(this.f6293g, "Login attempt failed.", null));
    }

    /* renamed from: o */
    private C2153l m15163o() {
        if (this.f6296j == null || !this.f6296j.m15129a().equals(this.f6293g.m15155d())) {
            this.f6296j = new C2153l(m15181b(), this.f6293g.m15155d());
        }
        return this.f6296j;
    }

    /* renamed from: a */
    int m15185a(String str) {
        return m15181b().checkCallingOrSelfPermission(str);
    }

    /* renamed from: a */
    public Fragment m15192a() {
        return this.f6289c;
    }

    /* renamed from: a */
    public void m15190a(Fragment fragment) {
        if (this.f6289c != null) {
            throw new FacebookException("Can't set fragment once it is already set.");
        }
        this.f6289c = fragment;
    }

    /* renamed from: a */
    public void m15189a(AbstractC2143a abstractC2143a) {
        this.f6291e = abstractC2143a;
    }

    /* renamed from: a */
    public void m15188a(AbstractC2144b abstractC2144b) {
        this.f6290d = abstractC2144b;
    }

    /* renamed from: a */
    public void m15187a(C2145c c2145c) {
        if (!m15173e()) {
            m15180b(c2145c);
        }
    }

    /* renamed from: a */
    public void m15186a(C2147d c2147d) {
        if (c2147d.f6307b == null || !C1803a.m16253b()) {
            m15179b(c2147d);
        } else {
            m15176c(c2147d);
        }
    }

    /* renamed from: a */
    public boolean m15191a(int i, int i2, Intent intent) {
        return this.f6293g != null ? m15171g().mo15083a(i, i2, intent) : false;
    }

    /* renamed from: b */
    public ActivityC0664d m15181b() {
        return this.f6289c.m19922r();
    }

    /* renamed from: b */
    void m15180b(C2145c c2145c) {
        if (c2145c == null) {
            return;
        }
        if (this.f6293g != null) {
            throw new FacebookException("Attempted to authorize while a request is pending.");
        }
        if (C1803a.m16253b() && !m15170h()) {
            return;
        }
        this.f6293g = c2145c;
        this.f6287a = m15177c(c2145c);
        m15169i();
    }

    /* renamed from: b */
    public void m15179b(C2147d c2147d) {
        AbstractC2161n m15171g = m15171g();
        if (m15171g != null) {
            m15184a(m15171g.mo15068a(), c2147d, m15171g.f6339a);
        }
        if (this.f6294h != null) {
            c2147d.f6311f = this.f6294h;
        }
        if (this.f6295i != null) {
            c2147d.f6312g = this.f6295i;
        }
        this.f6287a = null;
        this.f6288b = -1;
        this.f6293g = null;
        this.f6294h = null;
        m15174d(c2147d);
    }

    /* renamed from: c */
    public C2145c m15178c() {
        return this.f6293g;
    }

    /* renamed from: c */
    void m15176c(C2147d c2147d) {
        C2147d m15144a;
        if (c2147d.f6307b == null) {
            throw new FacebookException("Can't validate without a token");
        }
        C1803a m16259a = C1803a.m16259a();
        C1803a c1803a = c2147d.f6307b;
        if (m16259a != null && c1803a != null) {
            try {
                if (m16259a.m16241m().equals(c1803a.m16241m())) {
                    m15144a = C2147d.m15146a(this.f6293g, c2147d.f6307b);
                    m15179b(m15144a);
                }
            } catch (Exception e) {
                m15179b(C2147d.m15144a(this.f6293g, "Caught exception", e.getMessage()));
                return;
            }
        }
        m15144a = C2147d.m15144a(this.f6293g, "User logged in as different Facebook user.", null);
        m15179b(m15144a);
    }

    /* renamed from: c */
    protected AbstractC2161n[] m15177c(C2145c c2145c) {
        ArrayList arrayList = new ArrayList();
        EnumC2140i m15157b = c2145c.m15157b();
        if (m15157b.m15198a()) {
            arrayList.add(new C2134g(this));
        }
        if (m15157b.m15197b()) {
            arrayList.add(new C2138h(this));
        }
        if (m15157b.m15193f()) {
            arrayList.add(new C2131e(this));
        }
        if (m15157b.m15194e()) {
            arrayList.add(new C2116a(this));
        }
        if (m15157b.m15196c()) {
            arrayList.add(new C2173t(this));
        }
        if (m15157b.m15195d()) {
            arrayList.add(new C2129d(this));
        }
        AbstractC2161n[] abstractC2161nArr = new AbstractC2161n[arrayList.size()];
        arrayList.toArray(abstractC2161nArr);
        return abstractC2161nArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    boolean m15173e() {
        return this.f6293g != null && this.f6288b >= 0;
    }

    /* renamed from: f */
    public void m15172f() {
        if (this.f6288b >= 0) {
            m15171g().mo15066b();
        }
    }

    /* renamed from: g */
    public AbstractC2161n m15171g() {
        return this.f6288b >= 0 ? this.f6287a[this.f6288b] : null;
    }

    /* renamed from: h */
    boolean m15170h() {
        boolean z = true;
        if (!this.f6292f) {
            if (m15185a("android.permission.INTERNET") != 0) {
                ActivityC0664d m15181b = m15181b();
                m15179b(C2147d.m15144a(this.f6293g, m15181b.getString(C1974a.C1979e.com_facebook_internet_permission_error_title), m15181b.getString(C1974a.C1979e.com_facebook_internet_permission_error_message)));
                z = false;
            } else {
                this.f6292f = true;
            }
        }
        return z;
    }

    /* renamed from: i */
    public void m15169i() {
        if (this.f6288b >= 0) {
            m15183a(m15171g().mo15068a(), "skipped", null, null, m15171g().f6339a);
        }
        while (this.f6287a != null && this.f6288b < this.f6287a.length - 1) {
            this.f6288b++;
            if (m15168j()) {
                return;
            }
        }
        if (this.f6293g != null) {
            m15164n();
        }
    }

    /* renamed from: j */
    boolean m15168j() {
        boolean z = false;
        AbstractC2161n m15171g = m15171g();
        if (!m15171g.mo15063e() || m15170h()) {
            z = m15171g.mo15067a(this.f6293g);
            if (z) {
                m15163o().m15126a(this.f6293g.m15154e(), m15171g.mo15068a());
            } else {
                m15163o().m15122b(this.f6293g.m15154e(), m15171g.mo15068a());
                m15182a("not_tried", m15171g.mo15068a(), true);
            }
        } else {
            m15182a("no_internet_permission", "1", false);
        }
        return z;
    }

    /* renamed from: k */
    public void m15167k() {
        if (this.f6291e != null) {
            this.f6291e.mo15131a();
        }
    }

    /* renamed from: l */
    public void m15166l() {
        if (this.f6291e != null) {
            this.f6291e.mo15130b();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelableArray(this.f6287a, i);
        parcel.writeInt(this.f6288b);
        parcel.writeParcelable(this.f6293g, i);
        C2079x.m15481a(parcel, this.f6294h);
        C2079x.m15481a(parcel, this.f6295i);
    }
}
