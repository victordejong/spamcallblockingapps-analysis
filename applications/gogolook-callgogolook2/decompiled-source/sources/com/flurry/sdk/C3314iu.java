package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.flurry.sdk.C3438kv;
/* renamed from: com.flurry.sdk.iu */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/iu.class */
public class C3314iu implements C3438kv.AbstractC3439a {

    /* renamed from: a */
    public static final String f5629a = "iu";

    /* renamed from: b */
    public static C3314iu f5630b;

    /* renamed from: c */
    public String f5631c;

    /* renamed from: d */
    public String f5632d;

    public C3314iu() {
        C3437ku a = C3437ku.m32494a();
        this.f5631c = (String) a.m32493a("VersionName");
        a.m32492a("VersionName", (C3438kv.AbstractC3439a) this);
        String str = f5629a;
        C3356jq.m32615a(4, str, "initSettings, VersionName = " + this.f5631c);
    }

    /* renamed from: a */
    public static C3314iu m32707a() {
        C3314iu iuVar;
        synchronized (C3314iu.class) {
            try {
                if (f5630b == null) {
                    f5630b = new C3314iu();
                }
                iuVar = f5630b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iuVar;
    }

    /* renamed from: a */
    public static String m32706a(Context context) {
        String str;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                str = packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                str = "unknown";
            }
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: b */
    public static String m32705b() {
        return Build.VERSION.RELEASE;
    }

    /* renamed from: c */
    public static String m32704c() {
        return Build.DEVICE;
    }

    /* renamed from: d */
    public static String m32703d() {
        return Build.ID;
    }

    /* renamed from: e */
    public static String m32702e() {
        return Build.MANUFACTURER;
    }

    /* renamed from: f */
    public static String m32701f() {
        return Build.MODEL;
    }

    /* renamed from: h */
    public static String m32699h() {
        try {
            Context context = C3331jb.m32681a().f5679a;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo.versionName != null ? packageInfo.versionName : packageInfo.versionCode != 0 ? Integer.toString(packageInfo.versionCode) : "Unknown";
        } catch (Throwable th) {
            C3356jq.m32614a(6, f5629a, "", th);
            return "Unknown";
        }
    }

    @Override // com.flurry.sdk.C3438kv.AbstractC3439a
    /* renamed from: a */
    public final void mo32423a(String str, Object obj) {
        if (str.equals("VersionName")) {
            this.f5631c = (String) obj;
            String str2 = f5629a;
            C3356jq.m32615a(4, str2, "onSettingUpdate, VersionName = " + this.f5631c);
            return;
        }
        C3356jq.m32615a(6, f5629a, "onSettingUpdate internal error!");
    }

    /* renamed from: g */
    public final String m32700g() {
        synchronized (this) {
            if (!TextUtils.isEmpty(this.f5631c)) {
                return this.f5631c;
            } else if (!TextUtils.isEmpty(this.f5632d)) {
                return this.f5632d;
            } else {
                this.f5632d = m32699h();
                return this.f5632d;
            }
        }
    }
}
