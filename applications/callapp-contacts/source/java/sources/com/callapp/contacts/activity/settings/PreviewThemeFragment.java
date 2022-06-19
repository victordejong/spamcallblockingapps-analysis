package com.callapp.contacts.activity.settings;

import android.widget.CompoundButton;
import com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/PreviewThemeFragment.class */
public class PreviewThemeFragment extends BaseChooseThemeFragment {

    /* renamed from: e */
    private JSONStoreItemTheme f24123e = null;

    @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment
    /* renamed from: a */
    public final void mo29667a() {
        boolean isThemeLight = ThemeUtils.isThemeLight();
        if (this.f24123e != null) {
            m30165a(getActivity(), m30159a(this.f24123e.getSku(), isThemeLight), isThemeLight, 0);
        }
        this.f23228b.setChecked(!isThemeLight);
        this.f23228b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.settings.PreviewThemeFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                boolean z2 = !PreviewThemeFragment.this.f23228b.isChecked();
                if (PreviewThemeFragment.this.f24123e != null) {
                    String a = PreviewThemeFragment.m30159a(PreviewThemeFragment.this.f24123e.getSku(), z2);
                    PreviewThemeFragment previewThemeFragment = PreviewThemeFragment.this;
                    previewThemeFragment.m30165a(previewThemeFragment.getActivity(), a, z2, 250);
                }
                if (PreviewThemeFragment.this.f23230d != null) {
                    PreviewThemeFragment.this.f23230d.mo30017a();
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558985;
    }

    public void setDefaultTheme(JSONStoreItemTheme jSONStoreItemTheme) {
        this.f24123e = jSONStoreItemTheme;
    }
}
