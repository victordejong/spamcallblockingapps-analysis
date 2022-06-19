package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.C10181g;
/* renamed from: com.facebook.appevents.m */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/m.class */
public final class C10097m {

    /* renamed from: a */
    public C10063h f33445a;

    public C10097m(Context context) {
        this(new C10063h(context, (String) null, (AccessToken) null));
    }

    public C10097m(Context context, String str) {
        this(new C10063h(context, str, (AccessToken) null));
    }

    C10097m(C10063h c10063h) {
        this.f33445a = c10063h;
    }

    public C10097m(String str, String str2, AccessToken accessToken) {
        this(new C10063h(str, str2, accessToken));
    }

    /* renamed from: a */
    public final void m23417a(Bundle bundle) {
        if (((bundle.getInt("previous") & 2) != 0) || C10181g.m23283p()) {
            this.f33445a.m23482a("fb_sdk_settings_changed", (Double) null, bundle);
        }
    }

    /* renamed from: a */
    public final void m23416a(String str) {
        if (C10181g.m23283p()) {
            this.f33445a.m23482a(str, (Double) null, (Bundle) null);
        }
    }

    /* renamed from: a */
    public final void m23415a(String str, double d, Bundle bundle) {
        if (C10181g.m23283p()) {
            this.f33445a.m23484a(str, d, bundle);
        }
    }

    /* renamed from: a */
    public final void m23414a(String str, Bundle bundle) {
        if (C10181g.m23283p()) {
            this.f33445a.m23483a(str, bundle);
        }
    }

    /* renamed from: b */
    public final void m23413b(String str, Bundle bundle) {
        if (C10181g.m23283p()) {
            this.f33445a.m23482a(str, (Double) null, bundle);
        }
    }

    /* renamed from: c */
    public final void m23412c(String str, Bundle bundle) {
        if (C10181g.m23283p()) {
            this.f33445a.m23482a(str, (Double) null, bundle);
        }
    }
}
