package com.android.contacts.dialpad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusHandwritingCandidateContainer.class */
public class AsusHandwritingCandidateContainer extends LinearLayout implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    View f833a;

    /* renamed from: b  reason: collision with root package name */
    View f834b;
    AsusHandwritingCandidate c;
    private int d;
    private int e;

    public AsusHandwritingCandidateContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void a() {
        if (this.c != null) {
            this.c.c();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || view != this.f833a) {
            return false;
        }
        this.c.a(this.d, this.e);
        return false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.c != null) {
            this.c.getWidth();
            if (this.c.getScrollX() == 0) {
                getWidth();
            }
        }
        super.requestLayout();
    }

    public void setHandwriteHeightAndWidth(int i, int i2) {
        this.d = i;
        this.e = i2;
    }
}
