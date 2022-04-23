package androidx.constraintlayout.motion.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$a.class */
class MotionLayout$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ View f806b;

    MotionLayout$a(MotionLayout motionLayout, View view) {
        this.f806b = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f806b.setNestedScrollingEnabled(true);
    }
}
