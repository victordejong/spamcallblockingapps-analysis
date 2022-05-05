package gogolook.callgogolook2.setting;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity_ViewBinding.class */
public class CarrierIdSettingsActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public CarrierIdSettingsActivity f12819a;

    @UiThread
    public CarrierIdSettingsActivity_ViewBinding(CarrierIdSettingsActivity carrierIdSettingsActivity, View view) {
        this.f12819a = carrierIdSettingsActivity;
        carrierIdSettingsActivity.mHint = (ImageView) Utils.findRequiredViewAsType(view, R$id.imgv_hint, "field 'mHint'", ImageView.class);
        carrierIdSettingsActivity.mDefaultPhone = Utils.findRequiredView(view, R$id.layout_default_phone_setting, "field 'mDefaultPhone'");
        carrierIdSettingsActivity.mCarrierHint = Utils.findRequiredView(view, R$id.layout_carrier_hint, "field 'mCarrierHint'");
        carrierIdSettingsActivity.mSimRecommendation = Utils.findRequiredView(view, R$id.layout_sim_recommendation, "field 'mSimRecommendation'");
        carrierIdSettingsActivity.mShowWhen = Utils.findRequiredView(view, R$id.lnrlayout_show_when, "field 'mShowWhen'");
        carrierIdSettingsActivity.mShowWhenTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_show_when_title, "field 'mShowWhenTitle'", TextView.class);
        carrierIdSettingsActivity.mShowWhenDesc = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_show_when_desc, "field 'mShowWhenDesc'", TextView.class);
        carrierIdSettingsActivity.mCarrierInfoSetting = Utils.findRequiredView(view, R$id.lnrlayout_carrier_info_setting, "field 'mCarrierInfoSetting'");
        carrierIdSettingsActivity.mCarrierInfoDesc = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_carrier_info_desc, "field 'mCarrierInfoDesc'", TextView.class);
        carrierIdSettingsActivity.mContactUs = Utils.findRequiredView(view, R$id.lnrlayout_contact_us, "field 'mContactUs'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CarrierIdSettingsActivity carrierIdSettingsActivity = this.f12819a;
        if (carrierIdSettingsActivity != null) {
            this.f12819a = null;
            carrierIdSettingsActivity.mHint = null;
            carrierIdSettingsActivity.mDefaultPhone = null;
            carrierIdSettingsActivity.mCarrierHint = null;
            carrierIdSettingsActivity.mSimRecommendation = null;
            carrierIdSettingsActivity.mShowWhen = null;
            carrierIdSettingsActivity.mShowWhenTitle = null;
            carrierIdSettingsActivity.mShowWhenDesc = null;
            carrierIdSettingsActivity.mCarrierInfoSetting = null;
            carrierIdSettingsActivity.mCarrierInfoDesc = null;
            carrierIdSettingsActivity.mContactUs = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
