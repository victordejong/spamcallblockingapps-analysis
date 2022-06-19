package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.internal.C8466a;
/* renamed from: com.google.android.play.core.splitinstall.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/k.class */
public final class C8564k {

    /* renamed from: a */
    private static final C8466a f38150a = new C8466a("SplitInstallInfoProvider");

    /* renamed from: b */
    private final Context f38151b;

    /* renamed from: c */
    private final String f38152c;

    public C8564k(Context context) {
        this.f38151b = context;
        this.f38152c = context.getPackageName();
    }

    /* renamed from: a */
    public static boolean m3339a(String str) {
        return str.startsWith("config.");
    }

    /* renamed from: b */
    public static boolean m3338b(String str) {
        return m3339a(str) || str.contains(".config.");
    }
}
