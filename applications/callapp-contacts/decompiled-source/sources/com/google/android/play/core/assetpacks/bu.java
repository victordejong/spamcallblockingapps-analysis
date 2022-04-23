package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.play.core.internal.h;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bu.class */
final class bu {

    /* renamed from: a  reason: collision with root package name */
    private static final h f31203a = new h("PackageStateCache");

    /* renamed from: b  reason: collision with root package name */
    private final Context f31204b;

    /* renamed from: c  reason: collision with root package name */
    private int f31205c = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(Context context) {
        this.f31204b = context;
    }

    public final int a() {
        int i;
        synchronized (this) {
            if (this.f31205c == -1) {
                try {
                    this.f31205c = this.f31204b.getPackageManager().getPackageInfo(this.f31204b.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException e) {
                    f31203a.b("The current version of the app could not be retrieved", new Object[0]);
                }
            }
            i = this.f31205c;
        }
        return i;
    }
}
