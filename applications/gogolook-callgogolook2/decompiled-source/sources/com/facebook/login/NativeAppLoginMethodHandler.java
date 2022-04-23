package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.facebook.internal.C2401d0;
import com.facebook.internal.C2408g0;
import com.facebook.login.LoginClient;
import p081h.p154f.C6131k;
import p081h.p154f.EnumC6114c;
/* loaded from: classes-dex2jar.jar:com/facebook/login/NativeAppLoginMethodHandler.class */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    public NativeAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    public NativeAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* renamed from: a */
    public final LoginClient.Result m34420a(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String a = m34421a(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        return "CONNECTION_FAILURE".equals(obj) ? LoginClient.Result.m34433a(request, a, m34419b(extras), obj) : LoginClient.Result.m34435a(request, a);
    }

    /* renamed from: a */
    public final String m34421a(Bundle bundle) {
        String string = bundle.getString("error");
        String str = string;
        if (string == null) {
            str = bundle.getString("error_type");
        }
        return str;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public boolean mo34423a(int i, int i2, Intent intent) {
        LoginClient.Request v = this.f3310b.m34455v();
        LoginClient.Result a = intent == null ? LoginClient.Result.m34435a(v, "Operation canceled") : i2 == 0 ? m34420a(v, intent) : i2 != -1 ? LoginClient.Result.m34434a(v, "Unexpected resultCode from authorization.", null) : m34418b(v, intent);
        if (a != null) {
            this.f3310b.m34465b(a);
            return true;
        }
        this.f3310b.m34451z();
        return true;
    }

    /* renamed from: a */
    public boolean m34422a(Intent intent, int i) {
        if (intent == null) {
            return false;
        }
        try {
            this.f3310b.m34458s().startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public final LoginClient.Result m34418b(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String a = m34421a(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        String b = m34419b(extras);
        String string = extras.getString("e2e");
        if (!C2408g0.m34816d(string)) {
            m34425b(string);
        }
        if (a == null && obj == null && b == null) {
            try {
                return LoginClient.Result.m34436a(request, LoginMethodHandler.m34427a(request.m34439u(), extras, EnumC6114c.FACEBOOK_APPLICATION_WEB, request.m34450a()));
            } catch (C6131k e) {
                return LoginClient.Result.m34434a(request, null, e.getMessage());
            }
        } else if (C2401d0.f2988b.contains(a)) {
            return null;
        } else {
            return C2401d0.f2989c.contains(a) ? LoginClient.Result.m34435a(request, (String) null) : LoginClient.Result.m34433a(request, a, b, obj);
        }
    }

    /* renamed from: b */
    public final String m34419b(Bundle bundle) {
        String string = bundle.getString("error_message");
        String str = string;
        if (string == null) {
            str = bundle.getString("error_description");
        }
        return str;
    }
}
