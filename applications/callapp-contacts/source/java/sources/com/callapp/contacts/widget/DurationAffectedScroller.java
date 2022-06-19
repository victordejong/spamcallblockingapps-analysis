package com.callapp.contacts.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DurationAffectedScroller.class */
public class DurationAffectedScroller extends Scroller {

    /* renamed from: a */
    private int f28704a;

    /* renamed from: b */
    private boolean f28705b = false;

    public DurationAffectedScroller(Context context, Interpolator interpolator, int i) {
        super(context, interpolator);
        this.f28704a = i;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        if (!this.f28705b) {
            i5 = this.f28704a;
        }
        super.startScroll(i, i2, i3, i4, i5);
    }
}
