package com.telguarder.features.settings;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.telguarder.C2083R;
import com.telguarder.helpers.p022ui.UiHelper;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/settings/SettingsProvider.class */
public class SettingsProvider {
    private static SettingsProvider mInstance;

    public static SettingsProvider getInstance() {
        SettingsProvider settingsProvider;
        synchronized (SettingsProvider.class) {
            try {
                if (mInstance == null) {
                    mInstance = new SettingsProvider();
                }
                settingsProvider = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return settingsProvider;
    }

    private void setSettingOptionsSwitcher(SwitchCompat switchCompat, boolean z) {
        switchCompat.setChecked(z);
    }

    private void setSettingOptionsTitle(TextView textView, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            str = str + "\n" + str2;
        }
        textView.setText(str);
    }

    public View getSettingsOptionView(Activity activity, SettingsOption settingsOption) {
        View inflate = ((LayoutInflater) activity.getSystemService("layout_inflater")).inflate(C2083R.layout.item_settings_options, (ViewGroup) null);
        inflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 1.0f));
        TextView textView = (TextView) inflate.findViewById(C2083R.C2086id.settings_option_title);
        SwitchCompat switchCompat = (SwitchCompat) inflate.findViewById(C2083R.C2086id.settings_option_switcher);
        if (settingsOption.disabled) {
            textView.setTextColor(UiHelper.getColorWrapper(activity, C2083R.C2084color.text_dark_google));
            switchCompat.setEnabled(false);
        }
        switchCompat.setSwitchTextAppearance(activity, C2083R.style.Theme_telGuarder_TextAppearance_Switch);
        setSettingOptionsTitle(textView, settingsOption.title, settingsOption.comment);
        setSettingOptionsSwitcher(switchCompat, settingsOption.isActive);
        return inflate;
    }
}
