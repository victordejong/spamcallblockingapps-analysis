package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.C0083a;
import androidx.core.widget.C0627h;
/* renamed from: androidx.appcompat.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
class C0355m extends PopupWindow {

    /* renamed from: a */
    private static final boolean f1473a;

    /* renamed from: b */
    private boolean f1474b;

    static {
        f1473a = Build.VERSION.SDK_INT < 21;
    }

    public C0355m(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m21281a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m21281a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0317ap m21433a = C0317ap.m21433a(context, attributeSet, C0083a.C0093j.PopupWindow, i, i2);
        if (m21433a.m21421g(C0083a.C0093j.PopupWindow_overlapAnchor)) {
            m21280a(m21433a.m21436a(C0083a.C0093j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(m21433a.m21440a(C0083a.C0093j.PopupWindow_android_popupBackground));
        m21433a.m21441a();
    }

    /* renamed from: a */
    private void m21280a(boolean z) {
        if (f1473a) {
            this.f1474b = z;
        } else {
            C0627h.m20147a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f1473a) {
            i3 = i2;
            if (this.f1474b) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f1473a) {
            i4 = i2;
            if (this.f1474b) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (f1473a && this.f1474b) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }
}
