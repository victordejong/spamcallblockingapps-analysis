package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.firebase.C8849c;
import com.google.firebase.crashlytics.p293d.C8898b;
/* renamed from: com.google.firebase.crashlytics.internal.common.q */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/q.class */
public class C9119q {

    /* renamed from: a */
    private final SharedPreferences f39381a;

    /* renamed from: b */
    private final C8849c f39382b;

    /* renamed from: c */
    private final Object f39383c;

    /* renamed from: e */
    boolean f39385e;

    /* renamed from: g */
    private Boolean f39387g;

    /* renamed from: d */
    C7968h<Void> f39384d = new C7968h<>();

    /* renamed from: f */
    private boolean f39386f = false;

    /* renamed from: h */
    private final C7968h<Void> f39388h = new C7968h<>();

    public C9119q(C8849c c8849c) {
        Object obj = new Object();
        this.f39383c = obj;
        this.f39385e = false;
        Context m2533g = c8849c.m2533g();
        this.f39382b = c8849c;
        this.f39381a = CommonUtils.m1956s(m2533g);
        Boolean m1795b = m1795b();
        this.f39387g = m1795b == null ? m1796a(m2533g) : m1795b;
        synchronized (obj) {
            if (m1793d()) {
                this.f39384d.m5803e(null);
                this.f39385e = true;
            }
        }
    }

    /* renamed from: a */
    private Boolean m1796a(Context context) {
        Boolean m1791f = m1791f(context);
        if (m1791f == null) {
            this.f39386f = false;
            return null;
        }
        this.f39386f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(m1791f));
    }

    /* renamed from: b */
    private Boolean m1795b() {
        if (this.f39381a.contains("firebase_crashlytics_collection_enabled")) {
            this.f39386f = false;
            return Boolean.valueOf(this.f39381a.getBoolean("firebase_crashlytics_collection_enabled", true));
        }
        return null;
    }

    /* renamed from: e */
    private void m1792e(boolean z) {
        C8898b.m2397f().m2401b(String.format("Crashlytics automatic data collection %s by %s.", z ? "ENABLED" : "DISABLED", this.f39387g == null ? "global Firebase setting" : this.f39386f ? "firebase_crashlytics_collection_enabled manifest flag" : "API"));
    }

    /* renamed from: f */
    private static Boolean m1791f(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_crashlytics_collection_enabled")) {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            C8898b.m2397f().m2398e("Could not read data collection permission from manifest", e);
            return null;
        }
    }

    /* renamed from: c */
    public void m1794c(boolean z) {
        if (z) {
            this.f39388h.m5803e(null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    /* renamed from: d */
    public boolean m1793d() {
        boolean booleanValue;
        synchronized (this) {
            Boolean bool = this.f39387g;
            booleanValue = bool != null ? bool.booleanValue() : this.f39382b.m2524p();
            m1792e(booleanValue);
        }
        return booleanValue;
    }

    /* renamed from: g */
    public AbstractC7966g<Void> m1790g() {
        AbstractC7966g<Void> m5807a;
        synchronized (this.f39383c) {
            m5807a = this.f39384d.m5807a();
        }
        return m5807a;
    }

    /* renamed from: h */
    public AbstractC7966g<Void> m1789h() {
        return C9086f0.m1915d(this.f39388h.m5807a(), m1790g());
    }
}
