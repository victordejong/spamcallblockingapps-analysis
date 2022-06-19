package androidx.core.p025os;

import android.os.Build;
import android.os.Trace;
/* renamed from: androidx.core.os.b */
/* loaded from: classes-dex2jar.jar:androidx/core/os/b.class */
public final class C0590b {
    /* renamed from: a */
    public static void m6069a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: a */
    public static void m6068a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
