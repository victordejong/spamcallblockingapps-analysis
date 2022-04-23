package p012b.p076s.p118e;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: b.s.e.h */
/* loaded from: classes-dex2jar.jar:b/s/e/h.class */
public abstract class AbstractC1843h extends ViewGroup {

    /* renamed from: a */
    public boolean f7359a = false;

    public AbstractC1843h(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void mo31944a(boolean z) {
        this.f7359a = z;
    }

    /* renamed from: a */
    public boolean m31945a() {
        return this.f7359a;
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        mo31944a(z);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        boolean isShown;
        if (Build.VERSION.SDK_INT < 24 && getWindowVisibility() == 0 && this.f7359a != (isShown = isShown())) {
            mo31944a(isShown);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT < 24 && isShown()) {
            mo31944a(i == 0);
        }
    }
}
