package androidx.media2.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/i.class */
abstract class i extends ViewGroup {
    boolean ah = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.ah = z;
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        a(z);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        boolean isShown;
        if (Build.VERSION.SDK_INT < 24 && getWindowVisibility() == 0 && this.ah != (isShown = isShown())) {
            a(isShown);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT < 24 && isShown()) {
            a(i == 0);
        }
    }
}
