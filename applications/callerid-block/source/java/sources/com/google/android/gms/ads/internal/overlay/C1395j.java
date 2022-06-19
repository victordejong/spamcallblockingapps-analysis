package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.C1432l;
/* renamed from: com.google.android.gms.ads.internal.overlay.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/j.class */
final class C1395j extends RelativeLayout {

    /* renamed from: b */
    final C1432l f5507b;

    /* renamed from: c */
    boolean f5508c;

    public C1395j(Context context, String str, String str2, String str3) {
        super(context);
        C1432l c1432l = new C1432l(context, str);
        this.f5507b = c1432l;
        c1432l.m8807d(str2);
        c1432l.m8808c(str3);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f5508c) {
            this.f5507b.m8810a(motionEvent);
            return false;
        }
        return false;
    }
}
