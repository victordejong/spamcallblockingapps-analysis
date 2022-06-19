package com.facebook.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.C0458d;
import com.facebook.C10181g;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.login.C10379a;
/* renamed from: com.facebook.internal.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/d.class */
public class C10278d {

    /* renamed from: a */
    private Uri f33802a;

    public C10278d(String str, Bundle bundle) {
        this.f33802a = m23070a(str, bundle == null ? new Bundle() : bundle);
    }

    /* renamed from: a */
    public static Uri m23070a(String str, Bundle bundle) {
        if (C10249a.m23108a(C10278d.class)) {
            return null;
        }
        try {
            String m23254e = C10210ac.m23254e();
            return C10213ae.m23226a(m23254e, C10181g.m23289j() + "/dialog/" + str, bundle);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10278d.class);
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m23071a(Activity activity, String str) {
        if (C10249a.m23108a(this)) {
            return false;
        }
        try {
            C0458d m45466a = new C0458d.C0459a(C10379a.m22898a()).m45466a();
            m45466a.f1796a.setPackage(str);
            m45466a.f1796a.addFlags(1073741824);
            try {
                m45466a.m45467a(activity, this.f33802a);
                return true;
            } catch (ActivityNotFoundException e) {
                return false;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return false;
        }
    }
}
