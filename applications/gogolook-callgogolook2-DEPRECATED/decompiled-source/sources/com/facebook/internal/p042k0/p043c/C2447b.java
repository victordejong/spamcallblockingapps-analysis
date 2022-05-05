package com.facebook.internal.p042k0.p043c;

import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.internal.C2408g0;
import com.facebook.internal.p042k0.C2442b;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.internal.k0.c.b */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/c/b.class */
public final class C2447b {

    /* renamed from: a */
    public String f3079a;
    @Nullable

    /* renamed from: b */
    public String f3080b;
    @Nullable

    /* renamed from: c */
    public String f3081c;
    @Nullable

    /* renamed from: d */
    public String f3082d;
    @Nullable

    /* renamed from: e */
    public Long f3083e;

    public C2447b(File file) {
        this.f3079a = file.getName();
        JSONObject a = C2442b.m34713a(this.f3079a, true);
        if (a != null) {
            this.f3080b = a.optString("app_version", null);
            this.f3081c = a.optString("reason", null);
            this.f3082d = a.optString("callstack", null);
            this.f3083e = Long.valueOf(a.optLong("timestamp", 0L));
        }
    }

    public C2447b(Throwable th) {
        this.f3080b = C2408g0.m34834b();
        this.f3081c = C2442b.m34712a(th);
        this.f3082d = C2442b.m34710b(th);
        this.f3083e = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("crash_log_");
        stringBuffer.append(this.f3083e.toString());
        stringBuffer.append(".json");
        this.f3079a = stringBuffer.toString();
    }

    /* renamed from: a */
    public int m34703a(C2447b bVar) {
        Long l = this.f3083e;
        if (l == null) {
            return -1;
        }
        Long l2 = bVar.f3083e;
        if (l2 == null) {
            return 1;
        }
        return l2.compareTo(l);
    }

    /* renamed from: a */
    public void m34704a() {
        C2442b.m34716a(this.f3079a);
    }

    @Nullable
    /* renamed from: b */
    public JSONObject m34702b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_os_version", Build.VERSION.RELEASE);
            jSONObject.put("device_model", Build.MODEL);
            if (this.f3080b != null) {
                jSONObject.put("app_version", this.f3080b);
            }
            if (this.f3083e != null) {
                jSONObject.put("timestamp", this.f3083e);
            }
            if (this.f3081c != null) {
                jSONObject.put("reason", this.f3081c);
            }
            if (this.f3082d != null) {
                jSONObject.put("callstack", this.f3082d);
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: c */
    public boolean m34701c() {
        return (this.f3082d == null || this.f3083e == null) ? false : true;
    }

    /* renamed from: d */
    public void m34700d() {
        if (m34701c()) {
            C2442b.m34715a(this.f3079a, toString());
        }
    }

    @Nullable
    public String toString() {
        JSONObject b = m34702b();
        if (b == null) {
            return null;
        }
        return b.toString();
    }
}
