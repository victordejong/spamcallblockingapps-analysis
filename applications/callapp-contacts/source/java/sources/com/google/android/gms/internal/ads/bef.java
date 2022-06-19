package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewTreeObserver;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bef.class */
public final class bef {

    /* renamed from: a */
    final bif f43706a;

    /* renamed from: b */
    final bgy f43707b;

    /* renamed from: c */
    ViewTreeObserver.OnScrollChangedListener f43708c = null;

    public bef(bif bifVar, bgy bgyVar) {
        this.f43706a = bifVar;
        this.f43707b = bgyVar;
    }

    /* renamed from: a */
    public static int m17930a(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
        }
        ekb.m14835a();
        return C13077yq.m13950a(context, i);
    }
}
