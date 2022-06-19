package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.EnumC1981d;
import com.facebook.FacebookException;
import com.facebook.internal.AbstractServiceConnectionC2073t;
import com.facebook.internal.C2079x;
import com.facebook.login.C2141j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.login.g */
/* loaded from: classes-dex2jar.jar:com/facebook/login/g.class */
public class C2134g extends AbstractC2161n {
    public static final Parcelable.Creator<C2134g> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.g.3
        /* renamed from: a */
        public C2134g createFromParcel(Parcel parcel) {
            return new C2134g(parcel);
        }

        /* renamed from: a */
        public C2134g[] newArray(int i) {
            return new C2134g[i];
        }
    };

    /* renamed from: c */
    private C2133f f6267c;

    C2134g(Parcel parcel) {
        super(parcel);
    }

    public C2134g(C2141j c2141j) {
        super(c2141j);
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public String mo15068a() {
        return "get_token";
    }

    /* renamed from: a */
    void m15206a(C2141j.C2145c c2145c, Bundle bundle) {
        if (this.f6267c != null) {
            this.f6267c.m15504a((AbstractServiceConnectionC2073t.AbstractC2075a) null);
        }
        this.f6267c = null;
        this.f6340b.m15166l();
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Set<String> m15160a = c2145c.m15160a();
            if (stringArrayList != null && (m15160a == null || stringArrayList.containsAll(m15160a))) {
                m15204c(c2145c, bundle);
                return;
            }
            HashSet hashSet = new HashSet();
            for (String str : m15160a) {
                if (!stringArrayList.contains(str)) {
                    hashSet.add(str);
                }
            }
            if (!hashSet.isEmpty()) {
                m15090a("new_permissions", TextUtils.join(",", hashSet));
            }
            c2145c.m15159a(hashSet);
        }
        this.f6340b.m15169i();
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public boolean mo15067a(final C2141j.C2145c c2145c) {
        boolean z;
        this.f6267c = new C2133f(this.f6340b.m15181b(), c2145c.m15155d());
        if (!this.f6267c.m15506a()) {
            z = false;
        } else {
            this.f6340b.m15167k();
            this.f6267c.m15504a(new AbstractServiceConnectionC2073t.AbstractC2075a() { // from class: com.facebook.login.g.1
                @Override // com.facebook.internal.AbstractServiceConnectionC2073t.AbstractC2075a
                /* renamed from: a */
                public void mo15203a(Bundle bundle) {
                    C2134g.this.m15206a(c2145c, bundle);
                }
            });
            z = true;
        }
        return z;
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: b */
    public void mo15066b() {
        if (this.f6267c != null) {
            this.f6267c.m15503b();
            this.f6267c.m15504a((AbstractServiceConnectionC2073t.AbstractC2075a) null);
            this.f6267c = null;
        }
    }

    /* renamed from: b */
    void m15205b(C2141j.C2145c c2145c, Bundle bundle) {
        this.f6340b.m15186a(C2141j.C2147d.m15146a(this.f6340b.m15178c(), m15093a(bundle, EnumC1981d.FACEBOOK_APPLICATION_SERVICE, c2145c.m15155d())));
    }

    /* renamed from: c */
    void m15204c(final C2141j.C2145c c2145c, final Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string != null && !string.isEmpty()) {
            m15205b(c2145c, bundle);
            return;
        }
        this.f6340b.m15167k();
        C2079x.m15471a(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), new C2079x.AbstractC2082a() { // from class: com.facebook.login.g.2
            @Override // com.facebook.internal.C2079x.AbstractC2082a
            /* renamed from: a */
            public void mo14965a(FacebookException facebookException) {
                C2134g.this.f6340b.m15179b(C2141j.C2147d.m15144a(C2134g.this.f6340b.m15178c(), "Caught exception", facebookException.getMessage()));
            }

            @Override // com.facebook.internal.C2079x.AbstractC2082a
            /* renamed from: a */
            public void mo14964a(JSONObject jSONObject) {
                try {
                    bundle.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString("id"));
                    C2134g.this.m15205b(c2145c, bundle);
                } catch (JSONException e) {
                    C2134g.this.f6340b.m15179b(C2141j.C2147d.m15144a(C2134g.this.f6340b.m15178c(), "Caught exception", e.getMessage()));
                }
            }
        });
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.AbstractC2161n, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
