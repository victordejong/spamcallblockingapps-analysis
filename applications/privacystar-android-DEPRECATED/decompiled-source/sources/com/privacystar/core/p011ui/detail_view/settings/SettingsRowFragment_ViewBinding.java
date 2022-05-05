package com.privacystar.core.p011ui.detail_view.settings;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.rey.material.widget.Switch;
/* renamed from: com.privacystar.core.ui.detail_view.settings.SettingsRowFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/SettingsRowFragment_ViewBinding.class */
public class SettingsRowFragment_ViewBinding implements Unbinder {
    private SettingsRowFragment target;

    @UiThread
    public SettingsRowFragment_ViewBinding(SettingsRowFragment settingsRowFragment, View view) {
        this.target = settingsRowFragment;
        settingsRowFragment.mSwitch = (Switch) Utils.findRequiredViewAsType(view, C1566R.C1569id.setting_item_switch, "field 'mSwitch'", Switch.class);
        settingsRowFragment.mMainTextView = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.title_text_view, "field 'mMainTextView'", TextView.class);
        settingsRowFragment.mSubTextView = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.sub_text_view, "field 'mSubTextView'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SettingsRowFragment settingsRowFragment = this.target;
        if (settingsRowFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        settingsRowFragment.mSwitch = null;
        settingsRowFragment.mMainTextView = null;
        settingsRowFragment.mSubTextView = null;
    }
}
