package org.mistergroup.shouldianswer.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.p061b.p062a.C1186c;
import kotlin.p081e.p083b.C1694h;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/BetterEditText.class */
public final class BetterEditText extends C1186c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BetterEditText(Context context) {
        super(context);
        C1694h.m3117b(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BetterEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C1694h.m3117b(context, "context");
        C1694h.m3117b(attributeSet, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BetterEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C1694h.m3117b(context, "context");
        C1694h.m3117b(attributeSet, "attrs");
    }

    @Override // com.p061b.p062a.C1186c, android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C1694h.m3117b(motionEvent, "event");
        if (motionEvent.getAction() == 1 && !isFocused()) {
            requestFocusFromTouch();
        }
        return super.onTouchEvent(motionEvent);
    }
}
