package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.consent_sdk.bf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bf.class */
public final class C13203bf {

    /* renamed from: a */
    final Context f50382a;

    /* renamed from: b */
    private final Map<String, SharedPreferences.Editor> f50383b = new HashMap();

    public C13203bf(Context context) {
        this.f50382a = context;
    }

    /* renamed from: a */
    public final SharedPreferences.Editor m13562a(String str) {
        if (!this.f50383b.containsKey(str)) {
            this.f50383b.put(str, this.f50382a.getSharedPreferences(str, 0).edit());
        }
        return this.f50383b.get(str);
    }

    /* renamed from: a */
    public final void m13563a() {
        for (SharedPreferences.Editor editor : this.f50383b.values()) {
            editor.apply();
        }
    }
}
