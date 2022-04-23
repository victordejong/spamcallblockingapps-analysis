package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cu.class */
final class cu extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4367b = h.APP_NAME.toString();
    private final Context c;

    public cu(Context context) {
        super(f4367b, new String[0]);
        this.c = context;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a f;
        try {
            PackageManager packageManager = this.c.getPackageManager();
            f = cn.a((Object) packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.c.getPackageName(), 0)).toString());
        } catch (PackageManager.NameNotFoundException e) {
            an.a("App name is not found.", e);
            f = cn.f();
        }
        return f;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
