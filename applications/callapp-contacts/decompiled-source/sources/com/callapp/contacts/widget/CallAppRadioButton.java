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

    /* renamed from: b  reason: collision with root package name */
    private static int f16430b = ThemeUtils.a(CallAppApplication.get(), 2131099784);

    /* renamed from: c  reason: collision with root package name */
    private static int f16431c = ThemeUtils.a(CallAppApplication.get(), 2131099890);

    /* renamed from: a  reason: collision with root package name */
    private Drawable f16432a;

    public CallAppRadioButton(Context context) {
        super(context);
    }

    public CallAppRadioButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CallAppRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a() {
        Drawable drawable = this.f16432a;
        if (drawable != null) {
            drawable.setColorFilter(isChecked() ? f16430b : f16431c, PorterDuff.Mode.SRC_IN);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatRadioButton, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        this.f16432a = drawable;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        a();
    }

    @Override // android.widget.RadioButton, android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        super.toggle();
        a();
    }
}
