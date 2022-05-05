package com.aotter.net.trek.ads.impression;

import android.graphics.Rect;
import android.os.SystemClock;
import android.view.View;
import androidx.annotation.Nullable;
/* renamed from: com.aotter.net.trek.ads.impression.e */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/impression/e.class */
public class C1675e {

    /* renamed from: a */
    public final Rect f1222a = new Rect();

    /* renamed from: a */
    public boolean m36537a(long j, long j2) {
        return SystemClock.uptimeMillis() - j >= j2;
    }

    /* renamed from: a */
    public boolean m36536a(@Nullable View view, @Nullable View view2, int i) {
        boolean z = false;
        if (view2 != null) {
            z = false;
            if (view2.getVisibility() == 0) {
                if (view.getParent() == null) {
                    z = false;
                } else if (!view2.getGlobalVisibleRect(this.f1222a)) {
                    return false;
                } else {
                    long height = this.f1222a.height();
                    long width = this.f1222a.width();
                    long height2 = view2.getHeight() * view2.getWidth();
                    if (height2 <= 0) {
                        return false;
                    }
                    z = false;
                    if (height * width * 100 >= i * height2) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }
}
