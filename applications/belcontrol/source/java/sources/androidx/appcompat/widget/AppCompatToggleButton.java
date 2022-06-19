package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatToggleButton.class */
public class AppCompatToggleButton extends ToggleButton {

    /* renamed from: a */
    public final v1 f546a;

    public AppCompatToggleButton(Context context) {
        this(context, null);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        i2.a(this, getContext());
        v1 v1Var = new v1(this);
        this.f546a = v1Var;
        v1Var.m(attributeSet, i);
    }
}
