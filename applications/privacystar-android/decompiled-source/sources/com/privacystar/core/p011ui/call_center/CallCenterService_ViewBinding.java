package com.privacystar.core.p011ui.call_center;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p004v7.widget.CardView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.call_center.CallCenterService_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterService_ViewBinding.class */
public class CallCenterService_ViewBinding implements Unbinder {
    private CallCenterService target;
    private View view2131296466;
    private View view2131296467;

    @UiThread
    public CallCenterService_ViewBinding(final CallCenterService callCenterService, View view) {
        this.target = callCenterService;
        callCenterService.rootFl = (FrameLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_root_fl, "field 'rootFl'", FrameLayout.class);
        callCenterService.contentCv = (CardView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_content_cv, "field 'contentCv'", CardView.class);
        callCenterService.callerTitleTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_title_tv, "field 'callerTitleTv'", TextView.class);
        callCenterService.callerSubtitleTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_subtitle_tv, "field 'callerSubtitleTv'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.call_center_close_fl, "field 'closeFl' and method 'onCloseClick'");
        callCenterService.closeFl = (FrameLayout) Utils.castView(findRequiredView, C1566R.C1569id.call_center_close_fl, "field 'closeFl'", FrameLayout.class);
        this.view2131296467 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.call_center.CallCenterService_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callCenterService.onCloseClick();
            }
        });
        callCenterService.divider = Utils.findRequiredView(view, C1566R.C1569id.call_center_divider, "field 'divider'");
        callCenterService.blockLl = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_block_ll, "field 'blockLl'", LinearLayout.class);
        callCenterService.appLogo = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.app_logo, "field 'appLogo'", ImageView.class);
        callCenterService.closeIcon = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_close_iv, "field 'closeIcon'", ImageView.class);
        callCenterService.blockIcon = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_block_iv, "field 'blockIcon'", ImageView.class);
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.call_center_block_tv, "method 'onBlockClick'");
        this.view2131296466 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.call_center.CallCenterService_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callCenterService.onBlockClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CallCenterService callCenterService = this.target;
        if (callCenterService == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        callCenterService.rootFl = null;
        callCenterService.contentCv = null;
        callCenterService.callerTitleTv = null;
        callCenterService.callerSubtitleTv = null;
        callCenterService.closeFl = null;
        callCenterService.divider = null;
        callCenterService.blockLl = null;
        callCenterService.appLogo = null;
        callCenterService.closeIcon = null;
        callCenterService.blockIcon = null;
        this.view2131296467.setOnClickListener(null);
        this.view2131296467 = null;
        this.view2131296466.setOnClickListener(null);
        this.view2131296466 = null;
    }
}
