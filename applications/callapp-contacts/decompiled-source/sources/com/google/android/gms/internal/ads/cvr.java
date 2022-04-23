package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.ads.beb;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvr.class */
public final class cvr implements cvu {

    /* renamed from: a  reason: collision with root package name */
    private static final beb.a f26482a = beb.a.c().c("E").f();

    @Override // com.google.android.gms.internal.ads.cvu
    public final beb.a a() {
        return f26482a;
    }

    @Override // com.google.android.gms.internal.ads.cvu
    public final beb.a a(Context context) throws PackageManager.NameNotFoundException {
        return cvj.a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }
}
