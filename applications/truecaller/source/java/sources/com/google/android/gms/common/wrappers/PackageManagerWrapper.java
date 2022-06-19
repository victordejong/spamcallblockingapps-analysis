package com.google.android.gms.common.wrappers;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/wrappers/PackageManagerWrapper.class */
public class PackageManagerWrapper {

    /* renamed from: a */
    public final Context f6151a;

    public PackageManagerWrapper(Context context) {
        this.f6151a = context;
    }

    @KeepForSdk
    /* renamed from: a */
    public ApplicationInfo m38768a(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f6151a.getPackageManager().getApplicationInfo(str, i);
    }

    @KeepForSdk
    /* renamed from: b */
    public CharSequence m38767b(String str) throws PackageManager.NameNotFoundException {
        return this.f6151a.getPackageManager().getApplicationLabel(this.f6151a.getPackageManager().getApplicationInfo(str, 0));
    }

    @KeepForSdk
    /* renamed from: c */
    public PackageInfo m38766c(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f6151a.getPackageManager().getPackageInfo(str, i);
    }

    @KeepForSdk
    /* renamed from: d */
    public boolean m38765d() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return InstantApps.m38769a(this.f6151a);
        }
        if (PlatformVersion.m38776a() && (nameForUid = this.f6151a.getPackageManager().getNameForUid(Binder.getCallingUid())) != null) {
            return this.f6151a.getPackageManager().isInstantApp(nameForUid);
        }
        return false;
    }
}
