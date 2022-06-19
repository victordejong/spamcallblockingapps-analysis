package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.C0051a;
import androidx.core.widget.C0604h;
/* renamed from: androidx.appcompat.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o.class */
class C0342o extends PopupWindow {

    /* renamed from: a */
    private static final boolean f1387a;

    /* renamed from: b */
    private boolean f1388b;

    static {
        f1387a = Build.VERSION.SDK_INT < 21;
    }

    public C0342o(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m7042a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m7042a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0311as m7156a = C0311as.m7156a(context, attributeSet, C0051a.C0061j.PopupWindow, i, i2);
        if (m7156a.m7144g(C0051a.C0061j.PopupWindow_overlapAnchor)) {
            m7041a(m7156a.m7159a(C0051a.C0061j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(m7156a.m7163a(C0051a.C0061j.PopupWindow_android_popupBackground));
        m7156a.m7164a();
    }

    /* renamed from: a */
    private void m7041a(boolean z) {
        if (f1387a) {
            this.f1388b = z;
        } else {
            C0604h.m5982a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f1387a) {
            i3 = i2;
            if (this.f1388b) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f1387a) {
            i4 = i2;
            if (this.f1388b) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f1387a) {
            i5 = i2;
            if (this.f1388b) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
