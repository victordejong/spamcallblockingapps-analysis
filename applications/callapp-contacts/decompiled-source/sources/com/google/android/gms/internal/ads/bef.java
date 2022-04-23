package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewTreeObserver;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bef.class */
public final class bef {

    /* renamed from: a  reason: collision with root package name */
    final bif f24259a;

    /* renamed from: b  reason: collision with root package name */
    final bgy f24260b;

    /* renamed from: c  reason: collision with root package name */
    ViewTreeObserver.OnScrollChangedListener f24261c = null;

    public bef(bif bifVar, bgy bgyVar) {
        this.f24259a = bifVar;
        this.f24260b = bgyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
        }
        ekb.a();
        return yq.a(context, i);
    }
}
