package androidx.core.p008os;

import android.content.res.Configuration;
import android.os.Build;
/* renamed from: androidx.core.os.c */
/* loaded from: classes-dex2jar.jar:androidx/core/os/c.class */
public final class C0625c {
    /* renamed from: a */
    public static C0628e m33195a(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? C0628e.m33189d(configuration.getLocales()) : C0628e.m33192a(configuration.locale);
    }
}
