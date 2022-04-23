package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatToggleButton.class */
public class AppCompatToggleButton extends ToggleButton {

    /* renamed from: a  reason: collision with root package name */
    private final l f942a;

    public AppCompatToggleButton(Context context) {
        this(context, null);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        x.a(this, getContext());
        l lVar = new l(this);
        this.f942a = lVar;
        lVar.a(attributeSet, i);
    }
}
