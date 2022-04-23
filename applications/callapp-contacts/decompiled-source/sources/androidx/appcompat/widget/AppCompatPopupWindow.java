package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.a;
import androidx.core.widget.g;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f910a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f911b;

    static {
        f910a = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet, i, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        ab a2 = ab.a(context, attributeSet, a.j.PopupWindow, i, i2);
        if (a2.g(a.j.PopupWindow_overlapAnchor)) {
            a(a2.a(a.j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(a2.a(a.j.PopupWindow_android_popupBackground));
        a2.f1044a.recycle();
    }

    private void a(boolean z) {
        if (f910a) {
            this.f911b = z;
        } else {
            g.a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f910a) {
            i3 = i2;
            if (this.f911b) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f910a) {
            i4 = i2;
            if (this.f911b) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f910a) {
            i5 = i2;
            if (this.f911b) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
