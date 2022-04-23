package com.callapp.contacts.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DurationAffectedScroller.class */
public class DurationAffectedScroller extends Scroller {

    /* renamed from: a  reason: collision with root package name */
    private int f16492a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16493b = false;

    public DurationAffectedScroller(Context context, Interpolator interpolator, int i) {
        super(context, interpolator);
        this.f16492a = i;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        if (!this.f16493b) {
            i5 = this.f16492a;
        }
        super.startScroll(i, i2, i3, i4, i5);
    }
}
