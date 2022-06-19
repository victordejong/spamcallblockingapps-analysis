package com.twitter.sdk.android.core.internal.p486b;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: com.twitter.sdk.android.core.internal.b.b */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/b/b.class */
public final class C17245b implements AbstractC17244a {

    /* renamed from: a */
    private final SharedPreferences f60991a;

    public C17245b(Context context, String str) {
        if (context != null) {
            this.f60991a = context.getSharedPreferences(str, 0);
            return;
        }
        throw new IllegalArgumentException("Context must not be null");
    }

    @Override // com.twitter.sdk.android.core.internal.p486b.AbstractC17244a
    /* renamed from: a */
    public final SharedPreferences mo5673a() {
        return this.f60991a;
    }

    @Override // com.twitter.sdk.android.core.internal.p486b.AbstractC17244a
    /* renamed from: a */
    public final boolean mo5672a(SharedPreferences.Editor editor) {
        editor.apply();
        return true;
    }

    @Override // com.twitter.sdk.android.core.internal.p486b.AbstractC17244a
    /* renamed from: b */
    public final SharedPreferences.Editor mo5671b() {
        return this.f60991a.edit();
    }
}
