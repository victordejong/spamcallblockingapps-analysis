package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.g;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public h f19658a;

    public m(Context context) {
        this(new h(context, (String) null, (AccessToken) null));
    }

    public m(Context context, String str) {
        this(new h(context, str, (AccessToken) null));
    }

    m(h hVar) {
        this.f19658a = hVar;
    }

    public m(String str, String str2, AccessToken accessToken) {
        this(new h(str, str2, accessToken));
    }

    public final void a(Bundle bundle) {
        if (((bundle.getInt("previous") & 2) != 0) || g.p()) {
            this.f19658a.a("fb_sdk_settings_changed", (Double) null, bundle);
        }
    }

    public final void a(String str) {
        if (g.p()) {
            this.f19658a.a(str, (Double) null, (Bundle) null);
        }
    }

    public final void a(String str, double d2, Bundle bundle) {
        if (g.p()) {
            this.f19658a.a(str, d2, bundle);
        }
    }

    public final void a(String str, Bundle bundle) {
        if (g.p()) {
            this.f19658a.a(str, bundle);
        }
    }

    public final void b(String str, Bundle bundle) {
        if (g.p()) {
            this.f19658a.a(str, (Double) null, bundle);
        }
    }

    public final void c(String str, Bundle bundle) {
        if (g.p()) {
            this.f19658a.a(str, (Double) null, bundle);
        }
    }
}
