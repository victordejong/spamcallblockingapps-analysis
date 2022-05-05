package gogolook.callgogolook2.setting;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SuggestedSettingsActivity_ViewBinding.class */
public class SuggestedSettingsActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public SuggestedSettingsActivity f12886a;

    @UiThread
    public SuggestedSettingsActivity_ViewBinding(SuggestedSettingsActivity suggestedSettingsActivity, View view) {
        this.f12886a = suggestedSettingsActivity;
        suggestedSettingsActivity.mLlPowerSetting = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_power_setting, "field 'mLlPowerSetting'", LinearLayout.class);
        suggestedSettingsActivity.mLlDataSetting = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_data_setting, "field 'mLlDataSetting'", LinearLayout.class);
        suggestedSettingsActivity.mLlLocationPermissionSetting = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_location_permission_setting, "field 'mLlLocationPermissionSetting'", LinearLayout.class);
        suggestedSettingsActivity.mLlDefaultPhoneSetting = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_default_phone_setting, "field 'mLlDefaultPhoneSetting'", LinearLayout.class);
        suggestedSettingsActivity.mLlDefaultSmsSetting = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_default_sms_setting, "field 'mLlDefaultSmsSetting'", LinearLayout.class);
        suggestedSettingsActivity.mLlDefaultCallerIdSetting = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_default_caller_id_setting, "field 'mLlDefaultCallerIdSetting'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SuggestedSettingsActivity suggestedSettingsActivity = this.f12886a;
        if (suggestedSettingsActivity != null) {
            this.f12886a = null;
            suggestedSettingsActivity.mLlPowerSetting = null;
            suggestedSettingsActivity.mLlDataSetting = null;
            suggestedSettingsActivity.mLlLocationPermissionSetting = null;
            suggestedSettingsActivity.mLlDefaultPhoneSetting = null;
            suggestedSettingsActivity.mLlDefaultSmsSetting = null;
            suggestedSettingsActivity.mLlDefaultCallerIdSetting = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
