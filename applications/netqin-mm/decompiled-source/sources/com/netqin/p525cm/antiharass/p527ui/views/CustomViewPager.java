package com.netqin.p525cm.antiharass.p527ui.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
/* renamed from: com.netqin.cm.antiharass.ui.views.CustomViewPager */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/views/CustomViewPager.class */
public class CustomViewPager extends ViewPager {

    /* renamed from: j0 */
    public boolean f35595j0 = true;

    /* renamed from: k0 */
    public AbstractC9142a f35596k0;

    /* renamed from: com.netqin.cm.antiharass.ui.views.CustomViewPager$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/views/CustomViewPager$a.class */
    public interface AbstractC9142a {
        /* renamed from: a */
        boolean m3346a();
    }

    public CustomViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC9142a aVar = this.f35596k0;
        if (aVar != null) {
            this.f35595j0 = aVar.m3346a();
        }
        if (this.f35595j0) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        AbstractC9142a aVar = this.f35596k0;
        if (aVar != null) {
            this.f35595j0 = aVar.m3346a();
        }
        if (this.f35595j0) {
            super.scrollTo(i, i2);
        }
    }

    public void setScrollAbleCondition(AbstractC9142a aVar) {
        this.f35596k0 = aVar;
    }
}
