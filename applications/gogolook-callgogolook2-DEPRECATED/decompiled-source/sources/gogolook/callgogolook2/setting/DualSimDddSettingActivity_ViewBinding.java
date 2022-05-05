package gogolook.callgogolook2.setting;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity_ViewBinding.class */
public class DualSimDddSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public DualSimDddSettingActivity f12839a;

    @UiThread
    public DualSimDddSettingActivity_ViewBinding(DualSimDddSettingActivity dualSimDddSettingActivity, View view) {
        this.f12839a = dualSimDddSettingActivity;
        dualSimDddSettingActivity.mOutappDesc = Utils.findRequiredView(view, R$id.ll_outapp_desc, "field 'mOutappDesc'");
        dualSimDddSettingActivity.mSkip = Utils.findRequiredView(view, R$id.tv_skip_ddd, "field 'mSkip'");
        dualSimDddSettingActivity.mDoneButton = (Button) Utils.findRequiredViewAsType(view, R$id.btn_done, "field 'mDoneButton'", Button.class);
        dualSimDddSettingActivity.mEtCarrier1 = (EditText) Utils.findRequiredViewAsType(view, R$id.et_carrier_1, "field 'mEtCarrier1'", EditText.class);
        dualSimDddSettingActivity.mEtDdd1 = (EditText) Utils.findRequiredViewAsType(view, R$id.et_ddd_1, "field 'mEtDdd1'", EditText.class);
        dualSimDddSettingActivity.mEtCarrier2 = (EditText) Utils.findRequiredViewAsType(view, R$id.et_carrier_2, "field 'mEtCarrier2'", EditText.class);
        dualSimDddSettingActivity.mEtDdd2 = (EditText) Utils.findRequiredViewAsType(view, R$id.et_ddd_2, "field 'mEtDdd2'", EditText.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DualSimDddSettingActivity dualSimDddSettingActivity = this.f12839a;
        if (dualSimDddSettingActivity != null) {
            this.f12839a = null;
            dualSimDddSettingActivity.mOutappDesc = null;
            dualSimDddSettingActivity.mSkip = null;
            dualSimDddSettingActivity.mDoneButton = null;
            dualSimDddSettingActivity.mEtCarrier1 = null;
            dualSimDddSettingActivity.mEtDdd1 = null;
            dualSimDddSettingActivity.mEtCarrier2 = null;
            dualSimDddSettingActivity.mEtDdd2 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
