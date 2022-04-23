package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import p012b.p016b.C0583j;
import p012b.p016b.p026q.C0691f0;
import p012b.p042i.p056q.C1031h;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
public class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: b */
    public static final boolean f559b;

    /* renamed from: a */
    public boolean f560a;

    static {
        f559b = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m39011a(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m39011a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    public final void m39011a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0691f0 a = C0691f0.m36414a(context, attributeSet, C0583j.PopupWindow, i, i2);
        if (a.m36402g(C0583j.PopupWindow_overlapAnchor)) {
            m39010a(a.m36417a(C0583j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(a.m36412b(C0583j.PopupWindow_android_popupBackground));
        a.m36413b();
    }

    /* renamed from: a */
    public final void m39010a(boolean z) {
        if (f559b) {
            this.f560a = z;
        } else {
            C1031h.m35104a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f559b) {
            i3 = i2;
            if (this.f560a) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f559b) {
            i4 = i2;
            if (this.f560a) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f559b) {
            i5 = i2;
            if (this.f560a) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
