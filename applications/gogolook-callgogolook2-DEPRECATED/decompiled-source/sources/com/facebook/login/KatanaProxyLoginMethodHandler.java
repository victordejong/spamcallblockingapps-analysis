package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C2372a0;
import com.facebook.login.LoginClient;
/* loaded from: classes-dex2jar.jar:com/facebook/login/KatanaProxyLoginMethodHandler.class */
public class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new C2521a();

    /* renamed from: com.facebook.login.KatanaProxyLoginMethodHandler$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/KatanaProxyLoginMethodHandler$a.class */
    public static final class C2521a implements Parcelable.Creator<KatanaProxyLoginMethodHandler> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
            return new KatanaProxyLoginMethodHandler(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KatanaProxyLoginMethodHandler[] newArray(int i) {
            return new KatanaProxyLoginMethodHandler[i];
        }
    }

    public KatanaProxyLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    public KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public boolean mo34409a(LoginClient.Request request) {
        String A = LoginClient.m34480A();
        Intent b = C2372a0.m34955b(this.f3310b.m34460q(), request.m34450a(), request.m34439u(), A, request.m34437w(), request.m34438v(), request.m34443q(), m34429a(request.m34446b()), request.m34444c());
        m34428a("e2e", A);
        return m34422a(b, LoginClient.m34479B());
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    public String mo34408b() {
        return "katana_proxy_auth";
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
