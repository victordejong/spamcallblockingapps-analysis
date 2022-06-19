package carbon.widget;

import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:carbon/widget/DropDown$a.class */
public class DropDown$a extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ DropDown f2260a;

    public DropDown$a(DropDown dropDown) {
        this.f2260a = dropDown;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        this.f2260a.O();
        return true;
    }
}
