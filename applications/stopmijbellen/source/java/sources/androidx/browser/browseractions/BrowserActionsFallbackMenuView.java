package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.applovin.mediation.C1564R;
/* loaded from: classes-dex2jar.jar:androidx/browser/browseractions/BrowserActionsFallbackMenuView.class */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: a */
    public final int f1166a = getResources().getDimensionPixelOffset(C1564R.dimen.browser_actions_context_menu_min_padding);

    /* renamed from: b */
    public final int f1167b = getResources().getDimensionPixelOffset(C1564R.dimen.browser_actions_context_menu_max_width);

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f1166a * 2), this.f1167b), 1073741824), i2);
    }
}
