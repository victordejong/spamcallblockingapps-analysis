package p193e.p1425c.p1430b.p1431a;

import android.view.MotionEvent;
import android.view.View;
import com.amazon.device.ads.DTBAdMRAIDExpandedController;
import java.util.Objects;
/* renamed from: e.c.b.a.v */
/* loaded from: classes-dex2jar.jar:e/c/b/a/v.class */
public final /* synthetic */ class View$OnTouchListenerC22055v implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDExpandedController f61300a;

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController = this.f61300a;
        Objects.requireNonNull(dTBAdMRAIDExpandedController);
        if (motionEvent.getAction() == 0) {
            dTBAdMRAIDExpandedController.closeExpandedPartTwo();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
