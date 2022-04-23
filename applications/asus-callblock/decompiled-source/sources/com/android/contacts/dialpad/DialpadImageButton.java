package com.android.contacts.dialpad;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageButton;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/DialpadImageButton.class */
public class DialpadImageButton extends ImageButton {

    /* renamed from: a  reason: collision with root package name */
    private AccessibilityManager f898a;

    /* renamed from: b  reason: collision with root package name */
    private Rect f899b = new Rect();
    private a c;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/DialpadImageButton$a.class */
    public interface a {
    }

    public DialpadImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public DialpadImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.f898a = (AccessibilityManager) context.getSystemService("accessibility");
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (this.f898a.isEnabled() && this.f898a.isTouchExplorationEnabled()) {
            switch (motionEvent.getActionMasked()) {
                case 9:
                    setClickable(false);
                    break;
                case 10:
                    if (this.f899b.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                        performClick();
                    }
                    setClickable(true);
                    break;
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f899b.left = getPaddingLeft();
        this.f899b.right = i - getPaddingRight();
        this.f899b.top = getPaddingTop();
        this.f899b.bottom = i2 - getPaddingBottom();
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean performClick;
        if (this.f898a.isEnabled()) {
            performClick = true;
            if (!isPressed()) {
                setPressed(true);
                setPressed(false);
                performClick = true;
            }
        } else {
            performClick = super.performClick();
        }
        return performClick;
    }

    public void setOnPressedListener(a aVar) {
        this.c = aVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
    }
}
