package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppRadioButton.class */
public class CallAppRadioButton extends AppCompatRadioButton {

    /* renamed from: b */
    private static int f28610b = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    /* renamed from: c */
    private static int f28611c = ThemeUtils.m27386a(CallAppApplication.get(), 2131099890);

    /* renamed from: a */
    private Drawable f28612a;

    public CallAppRadioButton(Context context) {
        super(context);
    }

    public CallAppRadioButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CallAppRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    private void m26819a() {
        Drawable drawable = this.f28612a;
        if (drawable != null) {
            drawable.setColorFilter(isChecked() ? f28610b : f28611c, PorterDuff.Mode.SRC_IN);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatRadioButton, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        this.f28612a = drawable;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        m26819a();
    }

    @Override // android.widget.RadioButton, android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        super.toggle();
        m26819a();
    }
}
