package com.iab.omid.library.verizonmedia.d;

import android.text.TextUtils;
import android.util.Log;
import com.iab.omid.library.verizonmedia.b;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d/c.class */
public final class c {
    public static void a(String str) {
        if (b.f33449a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    public static void a(String str, Exception exc) {
        if (b.f33449a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
        Log.e("OMIDLIB", str, exc);
    }
}
