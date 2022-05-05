package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C2372a0;
import com.facebook.login.LoginClient;
/* loaded from: classes-dex2jar.jar:com/facebook/login/FacebookLiteLoginMethodHandler.class */
public class FacebookLiteLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<FacebookLiteLoginMethodHandler> CREATOR = new C2517a();

    /* renamed from: com.facebook.login.FacebookLiteLoginMethodHandler$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/FacebookLiteLoginMethodHandler$a.class */
    public static final class C2517a implements Parcelable.Creator<FacebookLiteLoginMethodHandler> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FacebookLiteLoginMethodHandler createFromParcel(Parcel parcel) {
            return new FacebookLiteLoginMethodHandler(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FacebookLiteLoginMethodHandler[] newArray(int i) {
            return new FacebookLiteLoginMethodHandler[i];
        }
    }

    public FacebookLiteLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    public FacebookLiteLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public boolean mo34409a(LoginClient.Request request) {
        String A = LoginClient.m34480A();
        Intent a = C2372a0.m34969a(this.f3310b.m34460q(), request.m34450a(), request.m34439u(), A, request.m34437w(), request.m34438v(), request.m34443q(), m34429a(request.m34446b()), request.m34444c());
        m34428a("e2e", A);
        return m34422a(a, LoginClient.m34479B());
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    public String mo34408b() {
        return "fb_lite_login";
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
