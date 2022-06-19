package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.Switch;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SettingsRowSwitch.class */
public class SettingsRowSwitch extends SettingsRowCompoundBtn {

    /* renamed from: a */
    final int f28900a;

    /* renamed from: b */
    final int f28901b;

    /* renamed from: c */
    final int f28902c;

    /* renamed from: d */
    final int f28903d;

    public SettingsRowSwitch(Context context) {
        this(context, null);
    }

    public SettingsRowSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28900a = ThemeUtils.m27386a(context, 2131099890);
        this.f28901b = ThemeUtils.m27386a(context, 2131099784);
        this.f28903d = ThemeUtils.m27386a(context, 2131099891);
        this.f28902c = ThemeUtils.m27386a(context, 2131099786);
        Switch r0 = (Switch) getBtn();
        r0.getThumbDrawable().mutate();
        r0.getTrackDrawable().mutate();
    }

    /* renamed from: a */
    public void m26630a(Switch r5, boolean z) {
        Drawable thumbDrawable = r5.getThumbDrawable();
        Drawable trackDrawable = r5.getTrackDrawable();
        if (thumbDrawable != null && trackDrawable != null) {
            Drawable drawable = thumbDrawable;
            if (thumbDrawable instanceof LayerDrawable) {
                drawable = ((LayerDrawable) thumbDrawable).findDrawableByLayerId(2131364046);
            }
            if (z) {
                drawable.setColorFilter(this.f28901b, PorterDuff.Mode.SRC_IN);
                trackDrawable.setColorFilter(this.f28902c, PorterDuff.Mode.SRC_IN);
            } else {
                drawable.setColorFilter(this.f28900a, PorterDuff.Mode.SRC_IN);
                trackDrawable.setColorFilter(this.f28903d, PorterDuff.Mode.SRC_IN);
            }
        }
        r5.invalidate();
    }

    @Override // com.callapp.contacts.widget.SettingsRowCompoundBtn
    CompoundButton getBtn() {
        return (CompoundButton) findViewById(2131363817);
    }

    @Override // com.callapp.contacts.widget.SettingsRowCompoundBtn, com.callapp.contacts.widget.SettingsRowView
    protected int getLayoutResourceId() {
        return 2131559011;
    }

    @Override // com.callapp.contacts.widget.SettingsRowCompoundBtn
    public void setChecked(boolean z) {
        m26630a((Switch) getBtn(), z);
        super.setChecked(z);
    }

    @Override // com.callapp.contacts.widget.SettingsRowCompoundBtn
    public void setOnCheckedChangeListener(final CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.widget.SettingsRowSwitch.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsRowSwitch.this.m26630a((Switch) compoundButton, z);
                onCheckedChangeListener.onCheckedChanged(compoundButton, z);
            }
        });
    }
}
