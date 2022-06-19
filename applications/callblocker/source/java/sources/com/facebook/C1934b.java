package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.C2084y;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.b */
/* loaded from: classes-dex2jar.jar:com/facebook/b.class */
public class C1934b {

    /* renamed from: a */
    private final SharedPreferences f5826a;

    /* renamed from: b */
    private final C1935a f5827b;

    /* renamed from: c */
    private C2196p f5828c;

    /* renamed from: com.facebook.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/b$a.class */
    public static class C1935a {
        C1935a() {
        }

        /* renamed from: a */
        public C2196p m15819a() {
            return new C2196p(C2095j.m15360h());
        }
    }

    public C1934b() {
        this(C2095j.m15360h().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new C1935a());
    }

    C1934b(SharedPreferences sharedPreferences, C1935a c1935a) {
        this.f5826a = sharedPreferences;
        this.f5827b = c1935a;
    }

    /* renamed from: c */
    private boolean m15824c() {
        return this.f5826a.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    /* renamed from: d */
    private C1803a m15823d() {
        String string = this.f5826a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        C1803a c1803a = null;
        if (string != null) {
            try {
                c1803a = C1803a.m16254a(new JSONObject(string));
            } catch (JSONException e) {
                c1803a = null;
            }
        }
        return c1803a;
    }

    /* renamed from: e */
    private boolean m15822e() {
        return C2095j.m15363e();
    }

    /* renamed from: f */
    private C1803a m15821f() {
        Bundle m14979a = m15820g().m14979a();
        C1803a c1803a = null;
        if (m14979a != null) {
            c1803a = null;
            if (C2196p.m14978a(m14979a)) {
                c1803a = C1803a.m16258a(m14979a);
            }
        }
        return c1803a;
    }

    /* renamed from: g */
    private C2196p m15820g() {
        if (this.f5828c == null) {
            synchronized (this) {
                if (this.f5828c == null) {
                    this.f5828c = this.f5827b.m15819a();
                }
            }
        }
        return this.f5828c;
    }

    /* renamed from: a */
    public C1803a m15827a() {
        C1803a c1803a = null;
        if (m15824c()) {
            c1803a = m15823d();
        } else if (m15822e()) {
            C1803a m15821f = m15821f();
            c1803a = m15821f;
            if (m15821f != null) {
                m15826a(m15821f);
                m15820g().m14975b();
                c1803a = m15821f;
            }
        }
        return c1803a;
    }

    /* renamed from: a */
    public void m15826a(C1803a c1803a) {
        C2084y.m15417a(c1803a, "accessToken");
        try {
            this.f5826a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", c1803a.m16238p().toString()).apply();
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    public void m15825b() {
        this.f5826a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (m15822e()) {
            m15820g().m14975b();
        }
    }
}
