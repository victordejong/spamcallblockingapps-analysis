package com.facebook.appevents.p285f;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.C10181g;
/* renamed from: com.facebook.appevents.f.i */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/i.class */
public final class C10044i {

    /* renamed from: a */
    private String f33335a;

    /* renamed from: b */
    private boolean f33336b;

    public C10044i(String str, boolean z) {
        this.f33335a = str;
        this.f33336b = z;
    }

    /* renamed from: a */
    public final void m23540a() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C10181g.m23290i()).edit();
        edit.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.f33335a);
        edit.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.f33336b);
        edit.apply();
    }

    public final String toString() {
        String str = this.f33336b ? "Applink" : "Unclassified";
        String str2 = str;
        if (this.f33335a != null) {
            str2 = str + "(" + this.f33335a + ")";
        }
        return str2;
    }
}
