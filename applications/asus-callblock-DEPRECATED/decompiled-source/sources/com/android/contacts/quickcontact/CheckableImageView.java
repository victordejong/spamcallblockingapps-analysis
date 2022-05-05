package com.android.contacts.quickcontact;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/CheckableImageView.class */
public class CheckableImageView extends ImageView implements Checkable {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f2042b = {16842912};

    /* renamed from: a  reason: collision with root package name */
    private boolean f2043a;

    public CheckableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f2043a;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f2042b);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f2043a != z) {
            this.f2043a = z;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f2043a);
    }
}
