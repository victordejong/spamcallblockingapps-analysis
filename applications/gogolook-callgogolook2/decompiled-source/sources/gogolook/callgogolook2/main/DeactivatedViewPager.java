package gogolook.callgogolook2.main;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.MapView;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/DeactivatedViewPager.class */
public class DeactivatedViewPager extends ViewPager {

    /* renamed from: a */
    public boolean f11020a = true;

    public DeactivatedViewPager(Context context) {
        super(context);
    }

    public DeactivatedViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public void m27902a(boolean z) {
        this.f11020a = z;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        if (!(view instanceof MapView) || view.getVisibility() == 0) {
            return super.canScroll(view, z, i, i2, i3);
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f11020a && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f11020a && super.onTouchEvent(motionEvent);
    }
}
