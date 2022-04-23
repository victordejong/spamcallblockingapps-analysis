package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.activity.settings.CustomSwitchPreference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MultipleTitleLinesSwitchPreference.class */
public class MultipleTitleLinesSwitchPreference extends CustomSwitchPreference {
    public MultipleTitleLinesSwitchPreference(Context context) {
        super(context);
    }

    public MultipleTitleLinesSwitchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MultipleTitleLinesSwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(viewGroup.getChildAt(i));
            }
        } else if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setSingleLine(false);
            textView.setEllipsize(null);
        }
    }

    @Override // android.preference.SwitchPreference, android.preference.Preference
    protected void onBindView(View view) {
        super.onBindView(view);
        a(view);
    }
}
