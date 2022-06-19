package com.callapp.contacts.widget.horizontalHeader;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/horizontalHeader/FixedSpeedScroller.class */
public class FixedSpeedScroller extends Scroller {

    /* renamed from: a */
    private int f29274a = 2000;

    public FixedSpeedScroller(Context context) {
        super(context);
    }

    public FixedSpeedScroller(Context context, Interpolator interpolator) {
        super(context, interpolator);
    }

    public FixedSpeedScroller(Context context, Interpolator interpolator, boolean z) {
        super(context, interpolator, z);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4) {
        super.startScroll(i, i2, i3, i4, this.f29274a);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, this.f29274a);
    }
}
