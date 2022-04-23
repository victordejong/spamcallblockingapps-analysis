package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.core.widget.PopupWindowCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: b */
    private static final boolean f958b;

    /* renamed from: a */
    private boolean f959a;

    static {
        f958b = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        m21611a(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        m21611a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m21611a(Context context, AttributeSet attributeSet, int i, int i2) {
        TintTypedArray v = TintTypedArray.m21244v(context, attributeSet, C0042R.styleable.PopupWindow, i, i2);
        if (v.m21247s(C0042R.styleable.PopupWindow_overlapAnchor)) {
            m21610b(v.m21265a(C0042R.styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(v.m21259g(C0042R.styleable.PopupWindow_android_popupBackground));
        v.m21243w();
    }

    /* renamed from: b */
    private void m21610b(boolean z) {
        if (f958b) {
            this.f959a = z;
        } else {
            PopupWindowCompat.m18847a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (f958b) {
            i3 = i2;
            if (this.f959a) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (f958b) {
            i4 = i2;
            if (this.f959a) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (f958b) {
            i5 = i2;
            if (this.f959a) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
