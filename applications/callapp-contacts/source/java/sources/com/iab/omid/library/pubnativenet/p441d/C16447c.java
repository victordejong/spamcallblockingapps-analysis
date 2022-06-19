package com.iab.omid.library.pubnativenet.p441d;

import android.text.TextUtils;
import android.util.Log;
import com.iab.omid.library.pubnativenet.C16428b;
/* renamed from: com.iab.omid.library.pubnativenet.d.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/d/c.class */
public final class C16447c {
    /* renamed from: a */
    public static void m7226a(String str) {
        if (C16428b.f57924a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    /* renamed from: a */
    public static void m7225a(String str, Exception exc) {
        if (C16428b.f57924a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
        Log.e("OMIDLIB", str, exc);
    }
}
