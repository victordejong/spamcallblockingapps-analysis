package com.privacystar.core.p011ui.detail_view.about;

import android.support.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.detail_view.about.AccountInformationFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/AccountInformationFragment_ViewBinding.class */
public final class AccountInformationFragment_ViewBinding implements Unbinder {
    private AccountInformationFragment target;

    @UiThread
    public AccountInformationFragment_ViewBinding(AccountInformationFragment accountInformationFragment, View view) {
        this.target = accountInformationFragment;
        accountInformationFragment.subscriptionStatus = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.account_information_subscription_status, "field 'subscriptionStatus'", TextView.class);
        accountInformationFragment.subscriptionExpiration = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.account_information_subscription_expiration, "field 'subscriptionExpiration'", TextView.class);
        accountInformationFragment.subscriptionExpirationTitle = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.account_information_subscription_expiration_title, "field 'subscriptionExpirationTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        AccountInformationFragment accountInformationFragment = this.target;
        if (accountInformationFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        accountInformationFragment.subscriptionStatus = null;
        accountInformationFragment.subscriptionExpiration = null;
        accountInformationFragment.subscriptionExpirationTitle = null;
    }
}
