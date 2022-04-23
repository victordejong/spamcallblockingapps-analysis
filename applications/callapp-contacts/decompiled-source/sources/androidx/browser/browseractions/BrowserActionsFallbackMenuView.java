package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.browser.a;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/browser/browseractions/BrowserActionsFallbackMenuView.class */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f1195a = getResources().getDimensionPixelOffset(a.C0026a.browser_actions_context_menu_min_padding);

    /* renamed from: b  reason: collision with root package name */
    private final int f1196b = getResources().getDimensionPixelOffset(a.C0026a.browser_actions_context_menu_max_width);

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f1195a * 2), this.f1196b), 1073741824), i2);
    }
}
