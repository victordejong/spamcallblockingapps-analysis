package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.widget.C0648j;
import p020b.p021a.C1432j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: a */
    private static final boolean f904a;

    /* renamed from: b */
    private boolean f905b;

    static {
        f904a = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m35202a(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m35202a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m35202a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, C1432j.PopupWindow, i, i2);
        int i3 = C1432j.PopupWindow_overlapAnchor;
        if (m34946v.m34949s(i3)) {
            m35201b(m34946v.m34967a(i3, false));
        }
        setBackgroundDrawable(m34946v.m34961g(C1432j.PopupWindow_android_popupBackground));
        m34946v.m34945w();
    }

    /* renamed from: b */
    private void m35201b(boolean z) {
        if (f904a) {
            this.f905b = z;
        } else {
            C0648j.m33093a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f904a) {
            i3 = i2;
            if (this.f905b) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f904a) {
            i4 = i2;
            if (this.f905b) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f904a) {
            i5 = i2;
            if (this.f905b) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
