package androidx.core.p028os;

import android.os.Build;
import android.os.Trace;
/* renamed from: androidx.core.os.a */
/* loaded from: classes-dex2jar.jar:androidx/core/os/a.class */
public final class C0612a {
    /* renamed from: a */
    public static void m20242a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: a */
    public static void m20241a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
