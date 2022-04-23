package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bf.class */
public final class bf {

    /* renamed from: a  reason: collision with root package name */
    final Context f28751a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, SharedPreferences.Editor> f28752b = new HashMap();

    public bf(Context context) {
        this.f28751a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SharedPreferences.Editor a(String str) {
        if (!this.f28752b.containsKey(str)) {
            this.f28752b.put(str, this.f28751a.getSharedPreferences(str, 0).edit());
        }
        return this.f28752b.get(str);
    }

    public final void a() {
        for (SharedPreferences.Editor editor : this.f28752b.values()) {
            editor.apply();
        }
    }
}
