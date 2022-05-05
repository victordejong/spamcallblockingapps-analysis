package com.privacystar.core.p011ui.widgets;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.ProvisioningConfirmationFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ProvisioningConfirmationFragment_ViewBinding.class */
public class ProvisioningConfirmationFragment_ViewBinding implements Unbinder {
    private ProvisioningConfirmationFragment target;
    private View view2131296884;
    private View view2131296885;
    private View view2131296886;

    @UiThread
    public ProvisioningConfirmationFragment_ViewBinding(final ProvisioningConfirmationFragment provisioningConfirmationFragment, View view) {
        this.target = provisioningConfirmationFragment;
        provisioningConfirmationFragment.confirmCb = (CheckBox) Utils.findRequiredViewAsType(view, C1566R.C1569id.log_context_confirm_cb, "field 'confirmCb'", CheckBox.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.log_context_terms_link, "field 'termsLink' and method 'onTermsLinkClick'");
        provisioningConfirmationFragment.termsLink = (TextView) Utils.castView(findRequiredView, C1566R.C1569id.log_context_terms_link, "field 'termsLink'", TextView.class);
        this.view2131296886 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.ProvisioningConfirmationFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                provisioningConfirmationFragment.onTermsLinkClick();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.log_context_dialog_cancel, "method 'onCancelClick'");
        this.view2131296884 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.ProvisioningConfirmationFragment_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                provisioningConfirmationFragment.onCancelClick();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, C1566R.C1569id.log_context_dialog_subscribe, "method 'onSubscribeClick'");
        this.view2131296885 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.ProvisioningConfirmationFragment_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                provisioningConfirmationFragment.onSubscribeClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ProvisioningConfirmationFragment provisioningConfirmationFragment = this.target;
        if (provisioningConfirmationFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        provisioningConfirmationFragment.confirmCb = null;
        provisioningConfirmationFragment.termsLink = null;
        this.view2131296886.setOnClickListener(null);
        this.view2131296886 = null;
        this.view2131296884.setOnClickListener(null);
        this.view2131296884 = null;
        this.view2131296885.setOnClickListener(null);
        this.view2131296885 = null;
    }
}
