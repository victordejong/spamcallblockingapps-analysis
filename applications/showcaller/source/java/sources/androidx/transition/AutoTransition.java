package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:androidx/transition/AutoTransition.class */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        m31079z0();
    }

    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m31079z0();
    }

    /* renamed from: z0 */
    private void m31079z0() {
        m30956w0(1);
        m30966o0(new Fade(2)).m30966o0(new ChangeBounds()).m30966o0(new Fade(1));
    }
}
