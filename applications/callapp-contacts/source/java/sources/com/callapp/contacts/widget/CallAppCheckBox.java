package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppCheckBox.class */
public class CallAppCheckBox extends AppCompatCheckedTextView {

    /* renamed from: a */
    private Drawable f28606a;

    /* renamed from: b */
    private int f28607b;

    /* renamed from: c */
    private int f28608c;

    /* renamed from: d */
    private boolean f28609d;

    public CallAppCheckBox(Context context) {
        this(context, null);
    }

    public CallAppCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CallAppCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28607b = ThemeUtils.m27386a(context, 2131099784);
        this.f28608c = ThemeUtils.m27386a(context, 2131099890);
        m26820a();
    }

    /* renamed from: a */
    private void m26820a() {
        Drawable drawable = this.f28606a;
        if (drawable == null || !this.f28609d) {
            return;
        }
        drawable.setColorFilter(isChecked() ? this.f28607b : this.f28608c, PorterDuff.Mode.SRC_IN);
    }

    public void setChangeColorAccordingToTheme(boolean z) {
        this.f28609d = z;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        this.f28606a = drawable;
    }

    @Override // android.widget.CheckedTextView, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        m26820a();
    }

    public void setfilterColor(int i) {
        this.f28606a.setColorFilter(i, PorterDuff.Mode.SRC_IN);
    }

    @Override // android.widget.CheckedTextView, android.widget.Checkable
    public void toggle() {
        super.toggle();
        m26820a();
    }
}
