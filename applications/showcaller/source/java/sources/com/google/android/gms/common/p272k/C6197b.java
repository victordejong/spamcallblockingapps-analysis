package com.google.android.gms.common.p272k;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.C6237o;
import p020b.p041h.p049k.C1593d;
/* renamed from: com.google.android.gms.common.k.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/k/b.class */
public class C6197b {
    @RecentlyNonNull

    /* renamed from: a */
    protected final Context f19640a;

    public C6197b(@RecentlyNonNull Context context) {
        this.f19640a = context;
    }

    /* renamed from: a */
    public int m16893a(@RecentlyNonNull String str) {
        return this.f19640a.checkCallingOrSelfPermission(str);
    }

    /* renamed from: b */
    public int m16892b(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        return this.f19640a.getPackageManager().checkPermission(str, str2);
    }

    @RecentlyNonNull
    /* renamed from: c */
    public ApplicationInfo m16891c(@RecentlyNonNull String str, int i) {
        return this.f19640a.getPackageManager().getApplicationInfo(str, i);
    }

    @RecentlyNonNull
    /* renamed from: d */
    public CharSequence m16890d(@RecentlyNonNull String str) {
        return this.f19640a.getPackageManager().getApplicationLabel(this.f19640a.getPackageManager().getApplicationInfo(str, 0));
    }

    @RecentlyNonNull
    /* renamed from: e */
    public C1593d<CharSequence, Drawable> m16889e(@RecentlyNonNull String str) {
        ApplicationInfo applicationInfo = this.f19640a.getPackageManager().getApplicationInfo(str, 0);
        return C1593d.m29665a(this.f19640a.getPackageManager().getApplicationLabel(applicationInfo), this.f19640a.getPackageManager().getApplicationIcon(applicationInfo));
    }

    @RecentlyNonNull
    /* renamed from: f */
    public PackageInfo m16888f(@RecentlyNonNull String str, int i) {
        return this.f19640a.getPackageManager().getPackageInfo(str, i);
    }

    /* renamed from: g */
    public boolean m16887g() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return C6196a.m16894a(this.f19640a);
        }
        if (C6237o.m16773k() && (nameForUid = this.f19640a.getPackageManager().getNameForUid(Binder.getCallingUid())) != null) {
            return this.f19640a.getPackageManager().isInstantApp(nameForUid);
        }
        return false;
    }

    @TargetApi(19)
    /* renamed from: h */
    public final boolean m16886h(int i, @RecentlyNonNull String str) {
        if (C6237o.m16778f()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.f19640a.getSystemService("appops");
                if (appOpsManager == null) {
                    throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
                }
                appOpsManager.checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = this.f19640a.getPackageManager().getPackagesForUid(i);
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
