package com.iab.omid.library.verizonmedia.p450d;

import android.text.TextUtils;
import android.util.Log;
import com.iab.omid.library.verizonmedia.C16493b;
/* renamed from: com.iab.omid.library.verizonmedia.d.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d/c.class */
public final class C16513c {
    /* renamed from: a */
    public static void m7105a(String str) {
        if (C16493b.f58053a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    /* renamed from: a */
    public static void m7104a(String str, Exception exc) {
        if (C16493b.f58053a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
        Log.e("OMIDLIB", str, exc);
    }
}
