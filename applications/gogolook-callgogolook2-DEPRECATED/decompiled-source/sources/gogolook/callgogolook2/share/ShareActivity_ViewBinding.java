package gogolook.callgogolook2.share;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity_ViewBinding.class */
public class ShareActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public ShareActivity f12940a;

    @UiThread
    public ShareActivity_ViewBinding(ShareActivity shareActivity, View view) {
        this.f12940a = shareActivity;
        shareActivity.mReferralImage = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_referral, "field 'mReferralImage'", ImageView.class);
        shareActivity.mLoadingView = Utils.findRequiredView(view, R$id.pb_loading, "field 'mLoadingView'");
        shareActivity.mCloseButton = Utils.findRequiredView(view, R$id.tv_close_btn, "field 'mCloseButton'");
        shareActivity.mAppButtonMore = Utils.findRequiredView(view, R$id.iv_share_app_more, "field 'mAppButtonMore'");
        shareActivity.mShareTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.iv_share_title, "field 'mShareTitle'", TextView.class);
        shareActivity.mAppButtons = (ImageView[]) Utils.arrayFilteringNull((ImageView) Utils.findRequiredViewAsType(view, R$id.iv_share_app_0, "field 'mAppButtons'", ImageView.class), (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_share_app_1, "field 'mAppButtons'", ImageView.class), (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_share_app_2, "field 'mAppButtons'", ImageView.class));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ShareActivity shareActivity = this.f12940a;
        if (shareActivity != null) {
            this.f12940a = null;
            shareActivity.mReferralImage = null;
            shareActivity.mLoadingView = null;
            shareActivity.mCloseButton = null;
            shareActivity.mAppButtonMore = null;
            shareActivity.mShareTitle = null;
            shareActivity.mAppButtons = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
