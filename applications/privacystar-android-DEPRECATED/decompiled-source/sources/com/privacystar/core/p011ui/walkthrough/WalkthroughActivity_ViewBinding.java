package com.privacystar.core.p011ui.walkthrough;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p001v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.walkthrough.WalkthroughActivity_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/walkthrough/WalkthroughActivity_ViewBinding.class */
public class WalkthroughActivity_ViewBinding implements Unbinder {
    private WalkthroughActivity target;

    @UiThread
    public WalkthroughActivity_ViewBinding(WalkthroughActivity walkthroughActivity) {
        this(walkthroughActivity, walkthroughActivity.getWindow().getDecorView());
    }

    @UiThread
    public WalkthroughActivity_ViewBinding(WalkthroughActivity walkthroughActivity, View view) {
        this.target = walkthroughActivity;
        walkthroughActivity.viewPager = (ViewPager) Utils.findRequiredViewAsType(view, C1566R.C1569id.viewpager_walkthrough, "field 'viewPager'", ViewPager.class);
        walkthroughActivity.dotHolder = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.walkthrough_dot_holder, "field 'dotHolder'", LinearLayout.class);
        walkthroughActivity.closeContainer = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.walkthrough_close_container, "field 'closeContainer'", LinearLayout.class);
        walkthroughActivity.title = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.walkthrough_title, "field 'title'", TextView.class);
        walkthroughActivity.subtitle = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.walkthrough_subtitle, "field 'subtitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WalkthroughActivity walkthroughActivity = this.target;
        if (walkthroughActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        walkthroughActivity.viewPager = null;
        walkthroughActivity.dotHolder = null;
        walkthroughActivity.closeContainer = null;
        walkthroughActivity.title = null;
        walkthroughActivity.subtitle = null;
    }
}
