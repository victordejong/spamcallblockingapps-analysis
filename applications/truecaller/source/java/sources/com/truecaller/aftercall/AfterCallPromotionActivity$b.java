package com.truecaller.aftercall;

import android.view.ViewTreeObserver;
/* loaded from: classes3-dex2jar.jar:com/truecaller/aftercall/AfterCallPromotionActivity$b.class */
public class AfterCallPromotionActivity$b implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPromotionActivity f9916a;

    public AfterCallPromotionActivity$b(AfterCallPromotionActivity afterCallPromotionActivity) {
        this.f9916a = afterCallPromotionActivity;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        float f = -this.f9916a.d.getHeight();
        this.f9916a.e.setFloatValues(f, 0.0f);
        this.f9916a.f.setFloatValues(0.0f, f);
        this.f9916a.d.getViewTreeObserver().removeOnPreDrawListener(this);
        AfterCallPromotionActivity afterCallPromotionActivity = this.f9916a;
        if (afterCallPromotionActivity.e.isRunning()) {
            return false;
        }
        if (afterCallPromotionActivity.g > -1) {
            afterCallPromotionActivity.e.start();
            afterCallPromotionActivity.e.setCurrentPlayTime(afterCallPromotionActivity.g);
            return false;
        } else if (afterCallPromotionActivity.h == 0) {
            return false;
        } else {
            afterCallPromotionActivity.ua();
            return false;
        }
    }
}
