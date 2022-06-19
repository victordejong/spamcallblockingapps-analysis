package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.play.core.internal.C8466a;
/* renamed from: com.google.android.play.core.assetpacks.s1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/s1.class */
public final class C8436s1 {

    /* renamed from: a */
    private static final C8466a f37921a = new C8466a("PackageStateCache");

    /* renamed from: b */
    private final Context f37922b;

    /* renamed from: c */
    private int f37923c = -1;

    public C8436s1(Context context) {
        this.f37922b = context;
    }

    /* renamed from: a */
    public final int m3675a() {
        int i;
        synchronized (this) {
            if (this.f37923c == -1) {
                try {
                    this.f37923c = this.f37922b.getPackageManager().getPackageInfo(this.f37922b.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException e) {
                    f37921a.m3566b("The current version of the app could not be retrieved", new Object[0]);
                }
            }
            i = this.f37923c;
        }
        return i;
    }
}
