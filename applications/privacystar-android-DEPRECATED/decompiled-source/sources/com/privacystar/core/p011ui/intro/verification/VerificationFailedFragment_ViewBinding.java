package com.privacystar.core.p011ui.intro.verification;

import android.support.annotation.UiThread;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.intro.verification.VerificationFailedFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/VerificationFailedFragment_ViewBinding.class */
public final class VerificationFailedFragment_ViewBinding implements Unbinder {
    private VerificationFailedFragment target;
    private View view2131297389;

    @UiThread
    public VerificationFailedFragment_ViewBinding(final VerificationFailedFragment verificationFailedFragment, View view) {
        this.target = verificationFailedFragment;
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.verification_failed_cv, "method 'onRetryClick'");
        this.view2131297389 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.intro.verification.VerificationFailedFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                verificationFailedFragment.onRetryClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        if (this.target == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        this.view2131297389.setOnClickListener(null);
        this.view2131297389 = null;
    }
}
