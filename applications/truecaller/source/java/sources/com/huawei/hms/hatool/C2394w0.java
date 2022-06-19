package com.huawei.hms.hatool;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: com.huawei.hms.hatool.w0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/w0.class */
public class C2394w0 {

    /* renamed from: c */
    public static C2394w0 f7608c = new C2394w0();

    /* renamed from: a */
    public boolean f7609a = false;

    /* renamed from: b */
    public Context f7610b = AbstractC2349b.m37779i();

    /* renamed from: b */
    public static C2394w0 m37493b() {
        return f7608c;
    }

    /* renamed from: a */
    public boolean m37494a() {
        boolean z;
        if (!this.f7609a) {
            Context context = this.f7610b;
            if (context == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                UserManager userManager = (UserManager) context.getSystemService("user");
                if (userManager != null) {
                    z = userManager.isUserUnlocked();
                } else {
                    this.f7609a = false;
                }
            } else {
                z = true;
            }
            this.f7609a = z;
        }
        return this.f7609a;
    }
}
