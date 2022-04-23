package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.SharedPreferences;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f28843a;

    /* renamed from: b  reason: collision with root package name */
    final Set<String> f28844b;

    /* renamed from: c  reason: collision with root package name */
    private final Application f28845c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Application application) {
        this.f28845c = application;
        SharedPreferences sharedPreferences = application.getSharedPreferences("__GOOGLE_FUNDING_CHOICE_SDK_INTERNAL__", 0);
        this.f28843a = sharedPreferences;
        this.f28844b = new HashSet(sharedPreferences.getStringSet("written_values", Collections.emptySet()));
    }

    public final void a(int i) {
        this.f28843a.edit().putInt("consent_status", i).apply();
    }

    public final void b(int i) {
        this.f28843a.edit().putInt("consent_type", i).apply();
    }
}
