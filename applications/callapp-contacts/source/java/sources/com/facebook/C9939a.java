package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.C10218af;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/a.class */
public final class C9939a {

    /* renamed from: a */
    private final SharedPreferences f33103a;

    /* renamed from: b */
    private final C9940a f33104b;

    /* renamed from: c */
    private C10353l f33105c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/a$a.class */
    public static final class C9940a {
        C9940a() {
        }
    }

    public C9939a() {
        this(C10181g.m23290i().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new C9940a());
    }

    C9939a(SharedPreferences sharedPreferences, C9940a c9940a) {
        this.f33103a = sharedPreferences;
        this.f33104b = c9940a;
    }

    /* renamed from: c */
    private AccessToken m23751c() {
        String string = this.f33103a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string != null) {
            try {
                return AccessToken.createFromJSONObject(new JSONObject(string));
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: d */
    private C10353l m23750d() {
        if (this.f33105c == null) {
            synchronized (this) {
                if (this.f33105c == null) {
                    this.f33105c = new C10353l(C10181g.m23290i());
                }
            }
        }
        return this.f33105c;
    }

    /* renamed from: a */
    public final AccessToken m23754a() {
        AccessToken accessToken = null;
        if (this.f33103a.contains("com.facebook.AccessTokenManager.CachedAccessToken")) {
            accessToken = m23751c();
        } else if (C10181g.m23294e()) {
            Bundle m22931a = m23750d().m22931a();
            AccessToken accessToken2 = null;
            if (m22931a != null) {
                accessToken2 = null;
                if (C10353l.m22930a(m22931a)) {
                    accessToken2 = AccessToken.createFromLegacyCache(m22931a);
                }
            }
            accessToken = accessToken2;
            if (accessToken2 != null) {
                m23753a(accessToken2);
                m23750d().m22927b();
                accessToken = accessToken2;
            }
        }
        return accessToken;
    }

    /* renamed from: a */
    public final void m23753a(AccessToken accessToken) {
        C10218af.m23179a(accessToken, "accessToken");
        try {
            this.f33103a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.toJSONObject().toString()).apply();
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    public final void m23752b() {
        this.f33103a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (C10181g.m23294e()) {
            m23750d().m22927b();
        }
    }
}
