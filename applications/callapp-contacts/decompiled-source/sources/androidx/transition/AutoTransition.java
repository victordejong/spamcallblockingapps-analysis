package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:androidx/transition/AutoTransition.class */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        l();
    }

    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l();
    }

    private void l() {
        a(1);
        a(new Fade(2)).a(new ChangeBounds()).a(new Fade(1));
    }
}
