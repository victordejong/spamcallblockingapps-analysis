package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:androidx/transition/AutoTransition.class */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        m16905C0();
    }

    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m16905C0();
    }

    /* renamed from: C0 */
    private void m16905C0() {
        m16717z0(1);
        m16725r0(new Fade(2));
        m16725r0(new ChangeBounds());
        m16725r0(new Fade(1));
    }
}
