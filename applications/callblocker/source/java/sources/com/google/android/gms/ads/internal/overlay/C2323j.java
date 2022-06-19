package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.ads.C3584vv;
/* renamed from: com.google.android.gms.ads.internal.overlay.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/j.class */
final class C2323j extends RelativeLayout {

    /* renamed from: a */
    boolean f6724a;

    /* renamed from: b */
    private C3584vv f6725b;

    public C2323j(Context context, String str, String str2) {
        super(context);
        this.f6725b = new C3584vv(context, str);
        this.f6725b.m6909b(str2);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f6724a) {
            this.f6725b.m6914a(motionEvent);
            return false;
        }
        return false;
    }
}
