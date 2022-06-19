package com.mopub.volley.toolbox;

import android.os.Looper;
/* renamed from: com.mopub.volley.toolbox.a */
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/a.class */
final class C17026a {
    private C17026a() {
    }

    /* renamed from: a */
    public static void m5978a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Must be invoked from the main thread.");
    }
}
