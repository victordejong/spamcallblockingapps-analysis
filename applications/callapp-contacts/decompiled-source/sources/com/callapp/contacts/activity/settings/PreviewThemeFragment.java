package com.callapp.contacts.activity.settings;

import android.widget.CompoundButton;
import com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/PreviewThemeFragment.class */
public class PreviewThemeFragment extends BaseChooseThemeFragment {
    private JSONStoreItemTheme e = null;

    @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment
    public final void a() {
        boolean isThemeLight = ThemeUtils.isThemeLight();
        if (this.e != null) {
            a(getActivity(), a(this.e.getSku(), isThemeLight), isThemeLight, 0);
        }
        this.f13026b.setChecked(!isThemeLight);
        this.f13026b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.settings.PreviewThemeFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                boolean z2 = !PreviewThemeFragment.this.f13026b.isChecked();
                if (PreviewThemeFragment.this.e != null) {
                    String a2 = PreviewThemeFragment.a(PreviewThemeFragment.this.e.getSku(), z2);
                    PreviewThemeFragment previewThemeFragment = PreviewThemeFragment.this;
                    previewThemeFragment.a(previewThemeFragment.getActivity(), a2, z2, 250);
                }
                if (PreviewThemeFragment.this.f13028d != null) {
                    PreviewThemeFragment.this.f13028d.a();
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558985;
    }

    public void setDefaultTheme(JSONStoreItemTheme jSONStoreItemTheme) {
        this.e = jSONStoreItemTheme;
    }
}
