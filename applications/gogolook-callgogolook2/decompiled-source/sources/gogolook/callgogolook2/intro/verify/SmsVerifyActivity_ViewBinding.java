package gogolook.callgogolook2.intro.verify;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/SmsVerifyActivity_ViewBinding.class */
public class SmsVerifyActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public SmsVerifyActivity f10958a;

    @UiThread
    public SmsVerifyActivity_ViewBinding(SmsVerifyActivity smsVerifyActivity, View view) {
        this.f10958a = smsVerifyActivity;
        smsVerifyActivity.mEtVerifyCode = (TextView) Utils.findRequiredViewAsType(view, R$id.et_verify_code, "field 'mEtVerifyCode'", TextView.class);
        smsVerifyActivity.mTvWarning = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_warning, "field 'mTvWarning'", TextView.class);
        smsVerifyActivity.mTvCountdown = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_countdown, "field 'mTvCountdown'", TextView.class);
        smsVerifyActivity.mTvRequestSms = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_request_sms, "field 'mTvRequestSms'", TextView.class);
        smsVerifyActivity.mTvBackHint = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_back_hint, "field 'mTvBackHint'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SmsVerifyActivity smsVerifyActivity = this.f10958a;
        if (smsVerifyActivity != null) {
            this.f10958a = null;
            smsVerifyActivity.mEtVerifyCode = null;
            smsVerifyActivity.mTvWarning = null;
            smsVerifyActivity.mTvCountdown = null;
            smsVerifyActivity.mTvRequestSms = null;
            smsVerifyActivity.mTvBackHint = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
