package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.play.core.internal.C15072h;
/* renamed from: com.google.android.play.core.assetpacks.bu */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bu.class */
public final class C14947bu {

    /* renamed from: a */
    private static final C15072h f54565a = new C15072h("PackageStateCache");

    /* renamed from: b */
    private final Context f54566b;

    /* renamed from: c */
    private int f54567c = -1;

    public C14947bu(Context context) {
        this.f54566b = context;
    }

    /* renamed from: a */
    public final int m9734a() {
        int i;
        synchronized (this) {
            if (this.f54567c == -1) {
                try {
                    this.f54567c = this.f54566b.getPackageManager().getPackageInfo(this.f54566b.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException e) {
                    f54565a.m9509b("The current version of the app could not be retrieved", new Object[0]);
                }
            }
            i = this.f54567c;
        }
        return i;
    }
}
