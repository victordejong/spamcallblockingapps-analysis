package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppCheckBox.class */
public class CallAppCheckBox extends AppCompatCheckedTextView {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f16426a;

    /* renamed from: b  reason: collision with root package name */
    private int f16427b;

    /* renamed from: c  reason: collision with root package name */
    private int f16428c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16429d;

    public CallAppCheckBox(Context context) {
        this(context, null);
    }

    public CallAppCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CallAppCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16427b = ThemeUtils.a(context, 2131099784);
        this.f16428c = ThemeUtils.a(context, 2131099890);
        a();
    }

    private void a() {
        Drawable drawable = this.f16426a;
        if (drawable != null && this.f16429d) {
            drawable.setColorFilter(isChecked() ? this.f16427b : this.f16428c, PorterDuff.Mode.SRC_IN);
        }
    }

    public void setChangeColorAccordingToTheme(boolean z) {
        this.f16429d = z;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        this.f16426a = drawable;
    }

    @Override // android.widget.CheckedTextView, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        a();
    }

    public void setfilterColor(int i) {
        this.f16426a.setColorFilter(i, PorterDuff.Mode.SRC_IN);
    }

    @Override // android.widget.CheckedTextView, android.widget.Checkable
    public void toggle() {
        super.toggle();
        a();
    }
}
