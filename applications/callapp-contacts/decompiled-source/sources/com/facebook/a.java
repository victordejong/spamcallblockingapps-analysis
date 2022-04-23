package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.af;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f19387a;

    /* renamed from: b  reason: collision with root package name */
    private final C0382a f19388b;

    /* renamed from: c  reason: collision with root package name */
    private l f19389c;

    /* renamed from: com.facebook.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/a$a.class */
    static final class C0382a {
        C0382a() {
        }
    }

    public a() {
        this(g.i().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new C0382a());
    }

    a(SharedPreferences sharedPreferences, C0382a aVar) {
        this.f19387a = sharedPreferences;
        this.f19388b = aVar;
    }

    private AccessToken c() {
        String string = this.f19387a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string == null) {
            return null;
        }
        try {
            return AccessToken.createFromJSONObject(new JSONObject(string));
        } catch (JSONException e) {
            return null;
        }
    }

    private l d() {
        if (this.f19389c == null) {
            synchronized (this) {
                if (this.f19389c == null) {
                    this.f19389c = new l(g.i());
                }
            }
        }
        return this.f19389c;
    }

    public final AccessToken a() {
        AccessToken accessToken = null;
        if (this.f19387a.contains("com.facebook.AccessTokenManager.CachedAccessToken")) {
            accessToken = c();
        } else if (g.e()) {
            Bundle a2 = d().a();
            AccessToken accessToken2 = null;
            if (a2 != null) {
                accessToken2 = null;
                if (l.a(a2)) {
                    accessToken2 = AccessToken.createFromLegacyCache(a2);
                }
            }
            accessToken = accessToken2;
            if (accessToken2 != null) {
                a(accessToken2);
                d().b();
                accessToken = accessToken2;
            }
        }
        return accessToken;
    }

    public final void a(AccessToken accessToken) {
        af.a(accessToken, "accessToken");
        try {
            this.f19387a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.toJSONObject().toString()).apply();
        } catch (JSONException e) {
        }
    }

    public final void b() {
        this.f19387a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (g.e()) {
            d().b();
        }
    }
}
