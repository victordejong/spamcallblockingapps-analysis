package com.google.android.gms.common.p080g;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.C1617n;
import d.h.l.d;
/* renamed from: com.google.android.gms.common.g.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/g/b.class */
public class C1561b {
    @RecentlyNonNull

    /* renamed from: a */
    protected final Context f5822a;

    public C1561b(@RecentlyNonNull Context context) {
        this.f5822a = context;
    }

    /* renamed from: a */
    public int m8435a(@RecentlyNonNull String str) {
        return this.f5822a.checkCallingOrSelfPermission(str);
    }

    /* renamed from: b */
    public int m8434b(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        return this.f5822a.getPackageManager().checkPermission(str, str2);
    }

    @RecentlyNonNull
    /* renamed from: c */
    public ApplicationInfo m8433c(@RecentlyNonNull String str, int i) {
        return this.f5822a.getPackageManager().getApplicationInfo(str, i);
    }

    @RecentlyNonNull
    /* renamed from: d */
    public CharSequence m8432d(@RecentlyNonNull String str) {
        return this.f5822a.getPackageManager().getApplicationLabel(this.f5822a.getPackageManager().getApplicationInfo(str, 0));
    }

    @RecentlyNonNull
    /* renamed from: e */
    public d<CharSequence, Drawable> m8431e(@RecentlyNonNull String str) {
        ApplicationInfo applicationInfo = this.f5822a.getPackageManager().getApplicationInfo(str, 0);
        return d.a(this.f5822a.getPackageManager().getApplicationLabel(applicationInfo), this.f5822a.getPackageManager().getApplicationIcon(applicationInfo));
    }

    @RecentlyNonNull
    /* renamed from: f */
    public PackageInfo m8430f(@RecentlyNonNull String str, int i) {
        return this.f5822a.getPackageManager().getPackageInfo(str, i);
    }

    /* renamed from: g */
    public boolean m8429g() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return C1560a.m8436a(this.f5822a);
        }
        if (!C1617n.m8207k() || (nameForUid = this.f5822a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f5822a.getPackageManager().isInstantApp(nameForUid);
    }

    @TargetApi(19)
    /* renamed from: h */
    public final boolean m8428h(int i, @RecentlyNonNull String str) {
        if (C1617n.m8212f()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.f5822a.getSystemService("appops");
                if (appOpsManager != null) {
                    appOpsManager.checkPackage(i, str);
                    return true;
                }
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            } catch (SecurityException e) {
                return false;
            }
        } else {
            String[] packagesForUid = this.f5822a.getPackageManager().getPackagesForUid(i);
            if (str == null || packagesForUid == null) {
                return false;
            }
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
            return false;
        }
    }
}
