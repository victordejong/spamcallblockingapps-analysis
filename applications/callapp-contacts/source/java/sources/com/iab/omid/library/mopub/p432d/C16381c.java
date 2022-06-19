package com.iab.omid.library.mopub.p432d;

import android.text.TextUtils;
import android.util.Log;
import com.iab.omid.library.mopub.C16361b;
/* renamed from: com.iab.omid.library.mopub.d.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/c.class */
public final class C16381c {
    /* renamed from: a */
    public static void m7328a(String str) {
        if (C16361b.f57792a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    /* renamed from: a */
    public static void m7327a(String str, Exception exc) {
        if (C16361b.f57792a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
        Log.e("OMIDLIB", str, exc);
    }
}
