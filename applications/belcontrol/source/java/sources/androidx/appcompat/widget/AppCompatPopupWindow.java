package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
public class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: b */
    public static final boolean f534b;

    /* renamed from: a */
    public boolean f535a;

    static {
        f534b = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6974a(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m6974a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    public final void m6974a(Context context, AttributeSet attributeSet, int i, int i2) {
        n2 v = n2.v(context, attributeSet, o.PopupWindow, i, i2);
        int i3 = o.PopupWindow_overlapAnchor;
        if (v.s(i3)) {
            m6973b(v.a(i3, false));
        }
        setBackgroundDrawable(v.g(o.PopupWindow_android_popupBackground));
        v.w();
    }

    /* renamed from: b */
    public final void m6973b(boolean z) {
        if (f534b) {
            this.f535a = z;
        } else {
            hc.a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f534b) {
            i3 = i2;
            if (this.f535a) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f534b) {
            i4 = i2;
            if (this.f535a) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f534b) {
            i5 = i2;
            if (this.f535a) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
