package com.twitter.sdk.android.core.internal.b;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/b/b.class */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f35144a;

    public b(Context context, String str) {
        if (context != null) {
            this.f35144a = context.getSharedPreferences(str, 0);
            return;
        }
        throw new IllegalArgumentException("Context must not be null");
    }

    @Override // com.twitter.sdk.android.core.internal.b.a
    public final SharedPreferences a() {
        return this.f35144a;
    }

    @Override // com.twitter.sdk.android.core.internal.b.a
    public final boolean a(SharedPreferences.Editor editor) {
        editor.apply();
        return true;
    }

    @Override // com.twitter.sdk.android.core.internal.b.a
    public final SharedPreferences.Editor b() {
        return this.f35144a.edit();
    }
}
