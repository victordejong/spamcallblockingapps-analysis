package androidx.constraintlayout.motion.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$a.class */
public class MotionLayout$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f536a;

    public MotionLayout$a(MotionLayout motionLayout, View view) {
        this.f536a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f536a.setNestedScrollingEnabled(true);
    }
}
