package com.privacystar.core.p011ui.call_center;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p004v7.widget.CardView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.call_center.CallCenterActivity_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterActivity_ViewBinding.class */
public class CallCenterActivity_ViewBinding implements Unbinder {
    private CallCenterActivity target;
    private View view2131296465;
    private View view2131296467;

    @UiThread
    public CallCenterActivity_ViewBinding(CallCenterActivity callCenterActivity) {
        this(callCenterActivity, callCenterActivity.getWindow().getDecorView());
    }

    @UiThread
    public CallCenterActivity_ViewBinding(final CallCenterActivity callCenterActivity, View view) {
        this.target = callCenterActivity;
        callCenterActivity.rootFl = (FrameLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_root_fl, "field 'rootFl'", FrameLayout.class);
        callCenterActivity.contentCv = (CardView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_content_cv, "field 'contentCv'", CardView.class);
        callCenterActivity.callerTitleTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_title_tv, "field 'callerTitleTv'", TextView.class);
        callCenterActivity.callerSubtitleTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_subtitle_tv, "field 'callerSubtitleTv'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.call_center_close_fl, "field 'closeFl' and method 'onCloseClick'");
        callCenterActivity.closeFl = (FrameLayout) Utils.castView(findRequiredView, C1566R.C1569id.call_center_close_fl, "field 'closeFl'", FrameLayout.class);
        this.view2131296467 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.call_center.CallCenterActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callCenterActivity.onCloseClick();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.call_center_block_ll, "field 'blockLl' and method 'onBlockClick'");
        callCenterActivity.blockLl = (LinearLayout) Utils.castView(findRequiredView2, C1566R.C1569id.call_center_block_ll, "field 'blockLl'", LinearLayout.class);
        this.view2131296465 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.call_center.CallCenterActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callCenterActivity.onBlockClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CallCenterActivity callCenterActivity = this.target;
        if (callCenterActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        callCenterActivity.rootFl = null;
        callCenterActivity.contentCv = null;
        callCenterActivity.callerTitleTv = null;
        callCenterActivity.callerSubtitleTv = null;
        callCenterActivity.closeFl = null;
        callCenterActivity.blockLl = null;
        this.view2131296467.setOnClickListener(null);
        this.view2131296467 = null;
        this.view2131296465.setOnClickListener(null);
        this.view2131296465 = null;
    }
}
