package com.facebook.internal.p042k0.p044d;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.internal.p042k0.C2442b;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.internal.k0.d.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/d/a.class */
public final class C2448a {

    /* renamed from: a */
    public String f3084a;
    @Nullable

    /* renamed from: b */
    public String f3085b;
    @Nullable

    /* renamed from: c */
    public Long f3086c;

    public C2448a(File file) {
        this.f3084a = file.getName();
        JSONObject a = C2442b.m34713a(this.f3084a, true);
        if (a != null) {
            this.f3086c = Long.valueOf(a.optLong("timestamp", 0L));
            this.f3085b = a.optString("error_message", null);
        }
    }

    public C2448a(String str) {
        this.f3086c = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f3085b = str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("error_log_");
        stringBuffer.append(this.f3086c);
        stringBuffer.append(".json");
        this.f3084a = stringBuffer.toString();
    }

    /* renamed from: a */
    public int m34698a(C2448a aVar) {
        Long l = this.f3086c;
        if (l == null) {
            return -1;
        }
        Long l2 = aVar.f3086c;
        if (l2 == null) {
            return 1;
        }
        return l2.compareTo(l);
    }

    /* renamed from: a */
    public void m34699a() {
        C2442b.m34716a(this.f3084a);
    }

    @Nullable
    /* renamed from: b */
    public JSONObject m34697b() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f3086c != null) {
                jSONObject.put("timestamp", this.f3086c);
            }
            jSONObject.put("error_message", this.f3085b);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: c */
    public boolean m34696c() {
        return (this.f3085b == null || this.f3086c == null) ? false : true;
    }

    /* renamed from: d */
    public void m34695d() {
        if (m34696c()) {
            C2442b.m34715a(this.f3084a, toString());
        }
    }

    @Nullable
    public String toString() {
        JSONObject b = m34697b();
        if (b == null) {
            return null;
        }
        return b.toString();
    }
}
