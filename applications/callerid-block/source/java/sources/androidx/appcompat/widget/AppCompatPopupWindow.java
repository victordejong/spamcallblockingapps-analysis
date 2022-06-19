package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.widget.C0298h;
import d.a.j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: b */
    private static final boolean f391b;

    /* renamed from: a */
    private boolean f392a;

    static {
        f391b = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m14781a(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m14781a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m14781a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0127d0 m14618v = C0127d0.m14618v(context, attributeSet, j.PopupWindow, i, i2);
        int i3 = j.PopupWindow_overlapAnchor;
        if (m14618v.m14621s(i3)) {
            m14780b(m14618v.m14639a(i3, false));
        }
        setBackgroundDrawable(m14618v.m14633g(j.PopupWindow_android_popupBackground));
        m14618v.m14617w();
    }

    /* renamed from: b */
    private void m14780b(boolean z) {
        if (f391b) {
            this.f392a = z;
        } else {
            C0298h.m13407a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f391b) {
            i3 = i2;
            if (this.f392a) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f391b) {
            i4 = i2;
            if (this.f392a) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f391b) {
            i5 = i2;
            if (this.f392a) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
