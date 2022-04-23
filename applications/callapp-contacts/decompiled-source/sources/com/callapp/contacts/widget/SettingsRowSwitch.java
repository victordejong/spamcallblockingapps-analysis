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

    /* renamed from: a  reason: collision with root package name */
    final int f16607a;

    /* renamed from: b  reason: collision with root package name */
    final int f16608b;

    /* renamed from: c  reason: collision with root package name */
    final int f16609c;

    /* renamed from: d  reason: collision with root package name */
    final int f16610d;

    public SettingsRowSwitch(Context context) {
        this(context, null);
    }

    public SettingsRowSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16607a = ThemeUtils.a(context, 2131099890);
        this.f16608b = ThemeUtils.a(context, 2131099784);
        this.f16610d = ThemeUtils.a(context, 2131099891);
        this.f16609c = ThemeUtils.a(context, 2131099786);
        Switch r0 = (Switch) getBtn();
        r0.getThumbDrawable().mutate();
        r0.getTrackDrawable().mutate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Switch r5, boolean z) {
        Drawable thumbDrawable = r5.getThumbDrawable();
        Drawable trackDrawable = r5.getTrackDrawable();
        if (!(thumbDrawable == null || trackDrawable == null)) {
            Drawable drawable = thumbDrawable;
            if (thumbDrawable instanceof LayerDrawable) {
                drawable = ((LayerDrawable) thumbDrawable).findDrawableByLayerId(2131364046);
            }
            if (z) {
                drawable.setColorFilter(this.f16608b, PorterDuff.Mode.SRC_IN);
                trackDrawable.setColorFilter(this.f16609c, PorterDuff.Mode.SRC_IN);
            } else {
                drawable.setColorFilter(this.f16607a, PorterDuff.Mode.SRC_IN);
                trackDrawable.setColorFilter(this.f16610d, PorterDuff.Mode.SRC_IN);
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
        a((Switch) getBtn(), z);
        super.setChecked(z);
    }

    @Override // com.callapp.contacts.widget.SettingsRowCompoundBtn
    public void setOnCheckedChangeListener(final CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.widget.SettingsRowSwitch.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsRowSwitch.this.a((Switch) compoundButton, z);
                onCheckedChangeListener.onCheckedChanged(compoundButton, z);
            }
        });
    }
}
