package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.SharedPreferences;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.consent_sdk.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/m.class */
public final class C13253m {

    /* renamed from: a */
    final SharedPreferences f50495a;

    /* renamed from: b */
    final Set<String> f50496b;

    /* renamed from: c */
    private final Application f50497c;

    public C13253m(Application application) {
        this.f50497c = application;
        SharedPreferences sharedPreferences = application.getSharedPreferences("__GOOGLE_FUNDING_CHOICE_SDK_INTERNAL__", 0);
        this.f50495a = sharedPreferences;
        this.f50496b = new HashSet(sharedPreferences.getStringSet("written_values", Collections.emptySet()));
    }

    /* renamed from: a */
    public final void m13530a(int i) {
        this.f50495a.edit().putInt("consent_status", i).apply();
    }

    /* renamed from: b */
    public final void m13529b(int i) {
        this.f50495a.edit().putInt("consent_type", i).apply();
    }
}
