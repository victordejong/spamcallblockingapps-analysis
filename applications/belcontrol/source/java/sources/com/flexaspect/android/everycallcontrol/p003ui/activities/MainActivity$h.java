package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.view.View;
import android.widget.RelativeLayout;
import p000.r71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.MainActivity$h */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/MainActivity$h.class */
public class MainActivity$h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MainActivity f2784a;

    public MainActivity$h(MainActivity mainActivity) {
        this.f2784a = mainActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        View findViewById = this.f2784a.findViewById(2131361931);
        if (findViewById == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) findViewById.getLayoutParams();
        layoutParams.bottomMargin = oe1.m1093c(r71.EnumC1638a.f7947f.m695a() ? 0 : 48);
        findViewById.setLayoutParams(layoutParams);
        findViewById.setVisibility(0);
    }
}
