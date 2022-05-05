package gogolook.callgogolook2.share;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity_ViewBinding.class */
public class ReferralActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public ReferralActivity f12928a;

    @UiThread
    public ReferralActivity_ViewBinding(ReferralActivity referralActivity, View view) {
        this.f12928a = referralActivity;
        referralActivity.mShareApps = Utils.findRequiredView(view, R$id.ll_share_app, "field 'mShareApps'");
        referralActivity.mTvShareVia = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_share_via, "field 'mTvShareVia'", TextView.class);
        referralActivity.mIvShareAppMore = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_share_app_more, "field 'mIvShareAppMore'", ImageView.class);
        referralActivity.mTvReferralExplain = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_referral_explain, "field 'mTvReferralExplain'", TextView.class);
        referralActivity.tvReferralCode = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_referral_code, "field 'tvReferralCode'", TextView.class);
        referralActivity.mTvMore = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_more, "field 'mTvMore'", TextView.class);
        referralActivity.mAppButtons = (ImageView[]) Utils.arrayFilteringNull((ImageView) Utils.findRequiredViewAsType(view, R$id.iv_share_app_0, "field 'mAppButtons'", ImageView.class), (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_share_app_1, "field 'mAppButtons'", ImageView.class), (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_share_app_2, "field 'mAppButtons'", ImageView.class));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ReferralActivity referralActivity = this.f12928a;
        if (referralActivity != null) {
            this.f12928a = null;
            referralActivity.mShareApps = null;
            referralActivity.mTvShareVia = null;
            referralActivity.mIvShareAppMore = null;
            referralActivity.mTvReferralExplain = null;
            referralActivity.tvReferralCode = null;
            referralActivity.mTvMore = null;
            referralActivity.mAppButtons = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
