package com.callapp.contacts.activity.contact.details;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.LinearLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/CallAppInterceptDisableFrameLayout.class */
public class CallAppInterceptDisableFrameLayout extends LinearLayout {

    /* renamed from: a */
    private ViewGroup f21702a;

    public CallAppInterceptDisableFrameLayout(Context context) {
        this(context, null);
    }

    public CallAppInterceptDisableFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CallAppInterceptDisableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CallAppInterceptDisableFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewGroup viewGroup = this.f21702a;
        if (viewGroup != null) {
            viewGroup.requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
