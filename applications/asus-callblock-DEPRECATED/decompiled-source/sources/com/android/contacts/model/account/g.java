package com.android.contacts.model.account;

import android.content.Context;
import android.util.Log;
import com.android.contacts.model.account.a;
import com.asus.contacts.a;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/g.class */
public final class g extends d {
    private g(Context context) {
        this.f2000a = null;
        this.f2001b = null;
        this.e = 2131755023;
        this.f = 2131558402;
        this.c = null;
        this.d = null;
        try {
            t();
            i(context);
            u();
            j(context);
            g(context);
            f(context);
            e(context);
            h(context);
            k(context);
            l(context);
            m(context);
            n(context);
            String a2 = a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR);
            if (!a2.toLowerCase().startsWith("cn") && !a2.toLowerCase().startsWith("cta")) {
                v();
            }
            this.h = true;
        } catch (a.C0050a e) {
            Log.e("FallbackAccountType", "Problem building account type", e);
        }
    }

    public g(Context context, byte b2) {
        this(context);
    }

    @Override // com.android.contacts.model.account.a
    public final boolean d() {
        return true;
    }
}
