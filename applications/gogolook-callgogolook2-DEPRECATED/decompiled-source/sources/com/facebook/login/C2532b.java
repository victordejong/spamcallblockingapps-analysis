package com.facebook.login;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.facebook.login.LoginClient;
import java.util.Collection;
/* renamed from: com.facebook.login.b */
/* loaded from: classes-dex2jar.jar:com/facebook/login/b.class */
public class C2532b extends C2539g {

    /* renamed from: i */
    public static volatile C2532b f3326i;

    /* renamed from: g */
    public Uri f3327g;
    @Nullable

    /* renamed from: h */
    public String f3328h;

    /* renamed from: b */
    public static C2532b m34397b() {
        if (f3326i == null) {
            synchronized (C2532b.class) {
                try {
                    if (f3326i == null) {
                        f3326i = new C2532b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3326i;
    }

    @Override // com.facebook.login.C2539g
    /* renamed from: a */
    public LoginClient.Request mo34352a(Collection<String> collection) {
        LoginClient.Request a = super.mo34352a(collection);
        Uri e = m34395e();
        if (e != null) {
            a.m34445b(e.toString());
        }
        String d = m34396d();
        if (d != null) {
            a.m34449a(d);
        }
        return a;
    }

    /* renamed from: a */
    public void m34398a(Uri uri) {
        this.f3327g = uri;
    }

    @Nullable
    /* renamed from: d */
    public String m34396d() {
        return this.f3328h;
    }

    /* renamed from: e */
    public Uri m34395e() {
        return this.f3327g;
    }
}
