package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:androidx/transition/AutoTransition.class */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        m39839l();
    }

    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m39839l();
    }

    /* renamed from: l */
    private void m39839l() {
        m39792a(1);
        m39785a(new Fade(2)).m39785a(new ChangeBounds()).m39785a(new Fade(1));
    }
}
