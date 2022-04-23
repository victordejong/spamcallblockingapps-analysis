package com.mopub.volley.toolbox;

import android.os.Looper;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/a.class */
final class a {
    private a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Must be invoked from the main thread.");
        }
    }
}
