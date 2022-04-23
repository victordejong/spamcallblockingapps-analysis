package com.facebook.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.d;
import com.facebook.g;
import com.facebook.internal.b.b.a;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private Uri f19924a;

    public d(String str, Bundle bundle) {
        this.f19924a = a(str, bundle == null ? new Bundle() : bundle);
    }

    public static Uri a(String str, Bundle bundle) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            String e = ac.e();
            return ae.a(e, g.j() + "/dialog/" + str, bundle);
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    public final boolean a(Activity activity, String str) {
        if (a.a(this)) {
            return false;
        }
        try {
            androidx.browser.customtabs.d a2 = new d.a(com.facebook.login.a.a()).a();
            a2.f1233a.setPackage(str);
            a2.f1233a.addFlags(1073741824);
            try {
                a2.a(activity, this.f19924a);
                return true;
            } catch (ActivityNotFoundException e) {
                return false;
            }
        } catch (Throwable th) {
            a.a(th, this);
            return false;
        }
    }
}
