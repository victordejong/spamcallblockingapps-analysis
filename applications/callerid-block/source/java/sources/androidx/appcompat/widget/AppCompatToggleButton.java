package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatToggleButton.class */
public class AppCompatToggleButton extends ToggleButton {

    /* renamed from: b */
    private final C0142l f403b;

    public AppCompatToggleButton(Context context) {
        this(context, null);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0161y.m14406a(this, getContext());
        C0142l c0142l = new C0142l(this);
        this.f403b = c0142l;
        c0142l.m14546m(attributeSet, i);
    }
}
