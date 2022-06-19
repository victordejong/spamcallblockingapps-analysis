package com.iab.omid.library.pubmatic.p014d;

import android.text.TextUtils;
import android.util.Log;
import com.iab.omid.library.pubmatic.C1747a;
/* renamed from: com.iab.omid.library.pubmatic.d.c */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/d/c.class */
public final class C1772c {
    /* renamed from: a */
    public static void m1228a(String str) {
        if (!C1747a.f208a.booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.i("OMIDLIB", str);
    }

    /* renamed from: a */
    public static void m1227a(String str, Exception exc) {
        if ((!C1747a.f208a.booleanValue() || TextUtils.isEmpty(str)) && exc == null) {
            return;
        }
        Log.e("OMIDLIB", str, exc);
    }
}
