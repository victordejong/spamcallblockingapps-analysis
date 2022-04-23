package com.privacystar.core.p011ui.call_center;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.call_center.CallCenterActionFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterActionFragment_ViewBinding.class */
public class CallCenterActionFragment_ViewBinding implements Unbinder {
    private CallCenterActionFragment target;

    @UiThread
    public CallCenterActionFragment_ViewBinding(CallCenterActionFragment callCenterActionFragment, View view) {
        this.target = callCenterActionFragment;
        callCenterActionFragment.mImageView = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_action_image, "field 'mImageView'", ImageView.class);
        callCenterActionFragment.mTextView = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_action_label, "field 'mTextView'", TextView.class);
        callCenterActionFragment.mButtonArea = (RelativeLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_center_action_layout, "field 'mButtonArea'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CallCenterActionFragment callCenterActionFragment = this.target;
        if (callCenterActionFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        callCenterActionFragment.mImageView = null;
        callCenterActionFragment.mTextView = null;
        callCenterActionFragment.mButtonArea = null;
    }
}
