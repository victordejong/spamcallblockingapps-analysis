package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
/* renamed from: com.google.firebase.crashlytics.internal.common.v */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/v.class */
class C9127v {

    /* renamed from: a */
    private String f39407a;

    /* renamed from: b */
    private static String m1770b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        String str = installerPackageName;
        if (installerPackageName == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: a */
    public String m1771a(Context context) {
        String str;
        synchronized (this) {
            if (this.f39407a == null) {
                this.f39407a = m1770b(context);
            }
            str = "".equals(this.f39407a) ? null : this.f39407a;
        }
        return str;
    }
}
