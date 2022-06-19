package com.appnext.base;

import android.text.TextUtils;
import com.appnext.base.p010b.C0480a;
import com.appnext.core.crashes.C0531b;
/* renamed from: com.appnext.base.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/a.class */
public final class C0472a {
    /* renamed from: a */
    public static void m42577a(String str, Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        String str2 = message;
        if (TextUtils.isEmpty(message)) {
            String th2 = th.toString();
            str2 = th2;
            if (TextUtils.isEmpty(th2)) {
                return;
            }
        }
        C0531b.m42448p(C0480a.getContext()).m42449m(str, str2);
    }
}
