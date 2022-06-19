package p1727n3.p1874y.p1908e;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: n3.y.e.v */
/* loaded from: classes-dex2jar.jar:n3/y/e/v.class */
public abstract class AbstractC27541v extends ViewGroup {

    /* renamed from: a */
    public boolean f77571a = false;

    public AbstractC27541v(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public abstract void m150a(boolean z);

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        m150a(z);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        boolean isShown;
        if (Build.VERSION.SDK_INT >= 24 || getWindowVisibility() != 0 || this.f77571a == (isShown = isShown())) {
            return;
        }
        m150a(isShown);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 24 || !isShown()) {
            return;
        }
        m150a(i == 0);
    }
}
