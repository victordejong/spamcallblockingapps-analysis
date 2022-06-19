package androidx.media2.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.media2.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/i.class */
abstract class AbstractC2569i extends ViewGroup {

    /* renamed from: ah */
    boolean f9759ah = false;

    public AbstractC2569i(Context context) {
        super(context);
    }

    public AbstractC2569i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AbstractC2569i(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void mo40661a(boolean z) {
        this.f9759ah = z;
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        mo40661a(z);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        boolean isShown;
        if (Build.VERSION.SDK_INT >= 24 || getWindowVisibility() != 0 || this.f9759ah == (isShown = isShown())) {
            return;
        }
        mo40661a(isShown);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 24 || !isShown()) {
            return;
        }
        mo40661a(i == 0);
    }
}
