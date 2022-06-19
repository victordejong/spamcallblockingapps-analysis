package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C2064s;
import com.facebook.login.C2141j;
/* renamed from: com.facebook.login.e */
/* loaded from: classes-dex2jar.jar:com/facebook/login/e.class */
public class C2131e extends AbstractC2163p {
    public static final Parcelable.Creator<C2131e> CREATOR = new Parcelable.Creator<C2131e>() { // from class: com.facebook.login.e.1
        /* renamed from: a */
        public C2131e createFromParcel(Parcel parcel) {
            return new C2131e(parcel);
        }

        /* renamed from: a */
        public C2131e[] newArray(int i) {
            return new C2131e[i];
        }
    };

    C2131e(Parcel parcel) {
        super(parcel);
    }

    public C2131e(C2141j c2141j) {
        super(c2141j);
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public String mo15068a() {
        return "fb_lite_login";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.AbstractC2163p, com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public boolean mo15067a(C2141j.C2145c c2145c) {
        String m15165m = C2141j.m15165m();
        Intent m15536a = C2064s.m15536a(this.f6340b.m15181b(), c2145c.m15155d(), c2145c.m15160a(), m15165m, c2145c.m15153f(), c2145c.m15149j(), c2145c.m15156c(), m15091a(c2145c.m15154e()), c2145c.m15150i());
        m15090a("e2e", m15165m);
        return m15082a(m15536a, C2141j.m15175d());
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
