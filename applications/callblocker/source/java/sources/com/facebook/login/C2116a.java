package com.facebook.login;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.C1990i;
import com.facebook.C2095j;
import com.facebook.CustomTabMainActivity;
import com.facebook.EnumC1981d;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookServiceException;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import com.facebook.login.C2141j;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.login.a */
/* loaded from: classes-dex2jar.jar:com/facebook/login/a.class */
public class C2116a extends AbstractC2172s {

    /* renamed from: d */
    private String f6225d;

    /* renamed from: e */
    private String f6226e;

    /* renamed from: f */
    private String f6227f;

    /* renamed from: c */
    private static final String[] f6224c = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};
    public static final Parcelable.Creator<C2116a> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.a.1
        /* renamed from: a */
        public C2116a createFromParcel(Parcel parcel) {
            return new C2116a(parcel);
        }

        /* renamed from: a */
        public C2116a[] newArray(int i) {
            return new C2116a[i];
        }
    };

    C2116a(Parcel parcel) {
        super(parcel);
        this.f6227f = "";
        this.f6226e = parcel.readString();
    }

    public C2116a(C2141j c2141j) {
        super(c2141j);
        this.f6227f = "";
        this.f6226e = C2079x.m15490a(20);
        if (C2084y.m15419a(C2095j.m15360h(), m15261f())) {
            this.f6227f = m15261f();
        } else if (!C2084y.m15419a(C2095j.m15360h(), m15260g())) {
        } else {
            this.f6227f = m15260g();
        }
    }

    /* renamed from: a */
    private void m15262a(String str, C2141j.C2145c c2145c) {
        int i;
        if (str != null) {
            if (!str.startsWith("fbconnect://cct.") && !str.startsWith(super.mo15072c())) {
                return;
            }
            Uri parse = Uri.parse(str);
            Bundle m15437d = C2079x.m15437d(parse.getQuery());
            m15437d.putAll(C2079x.m15437d(parse.getFragment()));
            if (!m15263a(m15437d)) {
                super.m15074a(c2145c, (Bundle) null, new FacebookException("Invalid state parameter"));
                return;
            }
            String string = m15437d.getString("error");
            String str2 = string;
            if (string == null) {
                str2 = m15437d.getString("error_type");
            }
            String string2 = m15437d.getString("error_msg");
            String str3 = string2;
            if (string2 == null) {
                str3 = m15437d.getString("error_message");
            }
            String str4 = str3;
            if (str3 == null) {
                str4 = m15437d.getString("error_description");
            }
            String string3 = m15437d.getString("error_code");
            if (!C2079x.m15472a(string3)) {
                try {
                    i = Integer.parseInt(string3);
                } catch (NumberFormatException e) {
                    i = -1;
                }
            } else {
                i = -1;
            }
            if (C2079x.m15472a(str2) && C2079x.m15472a(str4) && i == -1) {
                super.m15074a(c2145c, m15437d, (FacebookException) null);
            } else if (str2 != null && (str2.equals("access_denied") || str2.equals("OAuthAccessDeniedException"))) {
                super.m15074a(c2145c, (Bundle) null, new FacebookOperationCanceledException());
            } else if (i == 4201) {
                super.m15074a(c2145c, (Bundle) null, new FacebookOperationCanceledException());
            } else {
                super.m15074a(c2145c, (Bundle) null, new FacebookServiceException(new C1990i(i, str2, str4), str4));
            }
        }
    }

    /* renamed from: a */
    private boolean m15263a(Bundle bundle) {
        boolean z = false;
        try {
            String string = bundle.getString("state");
            if (string != null) {
                z = new JSONObject(string).getString("7_challenge").equals(this.f6226e);
            }
        } catch (JSONException e) {
        }
        return z;
    }

    /* renamed from: f */
    private String m15261f() {
        return super.mo15072c();
    }

    /* renamed from: g */
    private String m15260g() {
        return "fbconnect://cct." + C2095j.m15360h().getPackageName();
    }

    /* renamed from: h */
    private boolean m15259h() {
        return m15258i() != null && !mo15072c().isEmpty();
    }

    /* renamed from: i */
    private String m15258i() {
        String str;
        if (this.f6225d != null) {
            str = this.f6225d;
        } else {
            List<ResolveInfo> queryIntentServices = this.f6340b.m15181b().getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
            if (queryIntentServices != null) {
                HashSet hashSet = new HashSet(Arrays.asList(f6224c));
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                        this.f6225d = serviceInfo.packageName;
                        str = this.f6225d;
                        break;
                    }
                }
            }
            str = null;
        }
        return str;
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public String mo15068a() {
        return "custom_tab";
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    protected void mo15088a(JSONObject jSONObject) {
        jSONObject.put("7_challenge", this.f6226e);
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public boolean mo15083a(int i, int i2, Intent intent) {
        boolean z = true;
        if (i != 1) {
            z = super.mo15083a(i, i2, intent);
        } else {
            C2141j.C2145c m15178c = this.f6340b.m15178c();
            if (i2 == -1) {
                m15262a(intent.getStringExtra(CustomTabMainActivity.f5467c), m15178c);
            } else {
                super.m15074a(m15178c, (Bundle) null, new FacebookOperationCanceledException());
                z = false;
            }
        }
        return z;
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public boolean mo15067a(C2141j.C2145c c2145c) {
        boolean z = true;
        if (!m15259h()) {
            z = false;
        } else {
            Bundle a = m15075a(m15073b(c2145c), c2145c);
            Intent intent = new Intent(this.f6340b.m15181b(), CustomTabMainActivity.class);
            intent.putExtra(CustomTabMainActivity.f5465a, a);
            intent.putExtra(CustomTabMainActivity.f5466b, m15258i());
            this.f6340b.m15192a().startActivityForResult(intent, 1);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.login.AbstractC2172s
    /* renamed from: c */
    public String mo15072c() {
        return this.f6227f;
    }

    @Override // com.facebook.login.AbstractC2172s
    /* renamed from: d */
    protected String mo15071d() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.AbstractC2172s
    /* renamed from: d_ */
    EnumC1981d mo15064d_() {
        return EnumC1981d.CHROME_CUSTOM_TAB;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.AbstractC2161n, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f6226e);
    }
}
