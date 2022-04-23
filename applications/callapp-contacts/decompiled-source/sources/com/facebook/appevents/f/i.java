package com.facebook.appevents.f;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private String f19569a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f19570b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str, boolean z) {
        this.f19569a = str;
        this.f19570b = z;
    }

    public final void a() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(g.i()).edit();
        edit.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.f19569a);
        edit.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.f19570b);
        edit.apply();
    }

    public final String toString() {
        String str = this.f19570b ? "Applink" : "Unclassified";
        String str2 = str;
        if (this.f19569a != null) {
            str2 = str + "(" + this.f19569a + ")";
        }
        return str2;
    }
}
