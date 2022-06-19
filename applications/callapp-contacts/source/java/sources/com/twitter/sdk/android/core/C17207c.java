package com.twitter.sdk.android.core;

import android.util.Log;
/* renamed from: com.twitter.sdk.android.core.c */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/c.class */
public final class C17207c implements AbstractC17212f {

    /* renamed from: a */
    private int f60931a;

    public C17207c() {
        this.f60931a = 4;
    }

    public C17207c(int i) {
        this.f60931a = i;
    }

    /* renamed from: a */
    private boolean m5720a(int i) {
        return this.f60931a <= i;
    }

    @Override // com.twitter.sdk.android.core.AbstractC17212f
    /* renamed from: a */
    public final void mo5714a(String str, String str2) {
        m5720a(3);
    }

    @Override // com.twitter.sdk.android.core.AbstractC17212f
    /* renamed from: a */
    public final void mo5713a(String str, String str2, Throwable th) {
        if (m5720a(6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // com.twitter.sdk.android.core.AbstractC17212f
    /* renamed from: b */
    public final void mo5712b(String str, String str2) {
        if (m5720a(5)) {
            Log.w(str, str2, null);
        }
    }

    @Override // com.twitter.sdk.android.core.AbstractC17212f
    /* renamed from: c */
    public final void mo5711c(String str, String str2) {
        mo5713a(str, str2, null);
    }
}
