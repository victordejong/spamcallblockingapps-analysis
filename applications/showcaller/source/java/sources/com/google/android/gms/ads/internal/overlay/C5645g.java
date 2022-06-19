package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.C5744w;
/* renamed from: com.google.android.gms.ads.internal.overlay.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/g.class */
final class C5645g extends RelativeLayout {

    /* renamed from: d */
    final C5744w f18340d;

    /* renamed from: e */
    boolean f18341e;

    public C5645g(Context context, String str, String str2, String str3) {
        super(context);
        C5744w c5744w = new C5744w(context, str);
        this.f18340d = c5744w;
        c5744w.m17942d(str2);
        c5744w.m17943c(str3);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f18341e) {
            this.f18340d.m17945a(motionEvent);
            return false;
        }
        return false;
    }
}
