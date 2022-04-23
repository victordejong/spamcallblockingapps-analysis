package com.iab.omid.library.mopub.d;

import android.text.TextUtils;
import android.util.Log;
import com.iab.omid.library.mopub.b;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/c.class */
public final class c {
    public static void a(String str) {
        if (b.f33258a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    public static void a(String str, Exception exc) {
        if (b.f33258a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
        Log.e("OMIDLIB", str, exc);
    }
}
