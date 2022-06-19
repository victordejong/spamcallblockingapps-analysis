package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.C0142a;
import androidx.core.widget.C0958g;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: a */
    private static final boolean f1153a;

    /* renamed from: b */
    private boolean f1154b;

    static {
        f1153a = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m45980a(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m45980a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m45980a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0370ab m45804a = C0370ab.m45804a(context, attributeSet, C0142a.C0152j.PopupWindow, i, i2);
        if (m45804a.m45793g(C0142a.C0152j.PopupWindow_overlapAnchor)) {
            m45979a(m45804a.m45807a(C0142a.C0152j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(m45804a.m45810a(C0142a.C0152j.PopupWindow_android_popupBackground));
        m45804a.f1491a.recycle();
    }

    /* renamed from: a */
    private void m45979a(boolean z) {
        if (f1153a) {
            this.f1154b = z;
        } else {
            C0958g.m43967a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f1153a) {
            i3 = i2;
            if (this.f1154b) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f1153a) {
            i4 = i2;
            if (this.f1154b) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f1153a) {
            i5 = i2;
            if (this.f1154b) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
