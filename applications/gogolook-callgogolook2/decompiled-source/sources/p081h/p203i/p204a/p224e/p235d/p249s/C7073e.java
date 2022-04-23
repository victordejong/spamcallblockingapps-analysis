package p081h.p203i.p204a.p224e.p235d.p249s;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
/* renamed from: h.i.a.e.d.s.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/e.class */
public class C7073e {
    /* renamed from: a */
    public static int m21156a(Context context, String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        PackageInfo b = m21155b(context, str);
        if (b == null || (applicationInfo = b.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }

    /* renamed from: a */
    public static boolean m21157a() {
        return false;
    }

    @Nullable
    /* renamed from: b */
    public static PackageInfo m21155b(Context context, String str) {
        try {
            return C7097c.m21085b(context).m21087b(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static boolean m21154c(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            return (C7097c.m21085b(context).m21091a(str, 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
