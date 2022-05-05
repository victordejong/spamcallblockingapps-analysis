package com.flurry.android;

import com.flurry.sdk.C3331jb;
import com.flurry.sdk.C3356jq;
/* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryAdSettings.class */
public final class FlurryAdSettings {

    /* renamed from: a */
    public static final String f3811a = "FlurryAdSettings";

    /* renamed from: c */
    public static FlurryAdSettings f3812c;

    /* renamed from: b */
    public FlurryCustomTabsSetting f3813b = null;

    public static FlurryAdSettings getInstance() {
        FlurryAdSettings flurryAdSettings;
        synchronized (FlurryAdSettings.class) {
            try {
                if (C3331jb.m32681a() != null) {
                    if (f3812c == null) {
                        f3812c = new FlurryAdSettings();
                    }
                    flurryAdSettings = f3812c;
                } else {
                    C3356jq.m32615a(3, f3811a, "Flurry SDK must be initialized before apply settings");
                    throw new IllegalStateException("Flurry SDK must be initialized before apply settings");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return flurryAdSettings;
    }

    public final FlurryCustomTabsSetting getCustomTabsSetting() {
        return this.f3813b;
    }
}
