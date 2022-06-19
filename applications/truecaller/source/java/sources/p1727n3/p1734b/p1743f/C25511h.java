package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
/* renamed from: n3.b.f.h */
/* loaded from: classes-dex2jar.jar:n3/b/f/h.class */
public class C25511h extends PopupWindow {
    public C25511h(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0032R.styleable.PopupWindow, i, i2);
        int i3 = C0032R.styleable.PopupWindow_overlapAnchor;
        if (obtainStyledAttributes.hasValue(i3)) {
            setOverlapAnchor(obtainStyledAttributes.getBoolean(i3, false));
        }
        int i4 = C0032R.styleable.PopupWindow_android_popupBackground;
        setBackgroundDrawable((!obtainStyledAttributes.hasValue(i4) || (resourceId = obtainStyledAttributes.getResourceId(i4, 0)) == 0) ? obtainStyledAttributes.getDrawable(i4) : C25440a.m3540a(context, resourceId));
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        super.showAsDropDown(view, i, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        super.update(view, i, i2, i3, i4);
    }
}
