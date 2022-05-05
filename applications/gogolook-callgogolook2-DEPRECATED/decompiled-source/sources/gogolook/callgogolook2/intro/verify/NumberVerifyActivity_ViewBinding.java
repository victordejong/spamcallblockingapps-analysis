package gogolook.callgogolook2.intro.verify;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity_ViewBinding.class */
public class NumberVerifyActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public NumberVerifyActivity f10942a;

    @UiThread
    public NumberVerifyActivity_ViewBinding(NumberVerifyActivity numberVerifyActivity, View view) {
        this.f10942a = numberVerifyActivity;
        numberVerifyActivity.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_title, "field 'mTvTitle'", TextView.class);
        numberVerifyActivity.mTvCountryCode = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_country_code, "field 'mTvCountryCode'", TextView.class);
        numberVerifyActivity.mIvDropdown = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_dropdown, "field 'mIvDropdown'", ImageView.class);
        numberVerifyActivity.mEtNumber = (EditText) Utils.findRequiredViewAsType(view, R$id.et_number, "field 'mEtNumber'", EditText.class);
        numberVerifyActivity.mTvWarning = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_warning, "field 'mTvWarning'", TextView.class);
        numberVerifyActivity.mLlCountdown = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_countdown, "field 'mLlCountdown'", LinearLayout.class);
        numberVerifyActivity.mTvCountdown = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_countdown, "field 'mTvCountdown'", TextView.class);
        numberVerifyActivity.mLlFirstRequest = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_first_request, "field 'mLlFirstRequest'", LinearLayout.class);
        numberVerifyActivity.mTvFirstRequest = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_first_request, "field 'mTvFirstRequest'", TextView.class);
        numberVerifyActivity.mTvContactCs = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_contact_cs, "field 'mTvContactCs'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NumberVerifyActivity numberVerifyActivity = this.f10942a;
        if (numberVerifyActivity != null) {
            this.f10942a = null;
            numberVerifyActivity.mTvTitle = null;
            numberVerifyActivity.mTvCountryCode = null;
            numberVerifyActivity.mIvDropdown = null;
            numberVerifyActivity.mEtNumber = null;
            numberVerifyActivity.mTvWarning = null;
            numberVerifyActivity.mLlCountdown = null;
            numberVerifyActivity.mTvCountdown = null;
            numberVerifyActivity.mLlFirstRequest = null;
            numberVerifyActivity.mTvFirstRequest = null;
            numberVerifyActivity.mTvContactCs = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
