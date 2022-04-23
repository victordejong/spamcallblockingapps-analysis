package com.asus.privatecontacts.settings;

import android.content.Context;
import android.preference.SwitchPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/settings/CustomSwitchPreference.class */
public class CustomSwitchPreference extends SwitchPreference {

    /* renamed from: a  reason: collision with root package name */
    public View.OnClickListener f3073a = new View.OnClickListener() { // from class: com.asus.privatecontacts.settings.CustomSwitchPreference.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CustomSwitchPreference.this.a();
        }
    };

    public CustomSwitchPreference(Context context) {
        super(context);
    }

    public CustomSwitchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomSwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof Switch) {
                ((Switch) childAt).setOnClickListener(this.f3073a);
                return;
            }
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt);
            }
        }
    }

    public final void a() {
        super.onClick();
        setChecked(!isChecked());
    }

    @Override // android.preference.SwitchPreference, android.preference.Preference
    protected void onBindView(View view) {
        super.onBindView(view);
        if (view instanceof ViewGroup) {
            a((ViewGroup) view);
        }
    }

    @Override // android.preference.TwoStatePreference, android.preference.Preference
    protected void onClick() {
    }
}
