package com.google.android.material.timepicker;

import android.os.Build;
import android.view.View;
import android.widget.TextView;
import p163m0.C3546a;
import p174n0.C3694b;
/* renamed from: com.google.android.material.timepicker.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/b.class */
public class C1837b extends C3546a {

    /* renamed from: d */
    public final /* synthetic */ ClockFaceView f6933d;

    public C1837b(ClockFaceView clockFaceView) {
        this.f6933d = clockFaceView;
    }

    @Override // p163m0.C3546a
    /* renamed from: d */
    public void mo697d(View view, C3694b c3694b) {
        this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
        int intValue = ((Integer) view.getTag(2131296767)).intValue();
        if (intValue > 0) {
            TextView textView = this.f6933d.f6908y.get(intValue - 1);
            if (Build.VERSION.SDK_INT >= 22) {
                c3694b.f12070a.setTraversalAfter(textView);
            }
        }
        c3694b.m1871m(C3694b.C3697c.m1865a(0, 1, intValue, 1, false, view.isSelected()));
    }
}
