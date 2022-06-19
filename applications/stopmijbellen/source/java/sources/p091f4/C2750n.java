package p091f4;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.appcompat.widget.C0215d;
import androidx.appcompat.widget.C0252m0;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Locale;
import me.zhanghai.android.materialprogressbar.C3681R;
import p102g4.C2811a;
import p134j4.C3260w0;
import p262v3.C4634p;
/* renamed from: f4.n */
/* loaded from: classes-dex2jar.jar:f4/n.class */
public class C2750n extends C0215d {

    /* renamed from: e */
    public final C0252m0 f9434e;

    /* renamed from: f */
    public final AccessibilityManager f9435f;

    /* renamed from: g */
    public final Rect f9436g = new Rect();

    public C2750n(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, C3681R.attr.autoCompleteTextViewStyle, 0), attributeSet, C3681R.attr.autoCompleteTextViewStyle);
        Context context2 = getContext();
        TypedArray m687d = C4634p.m687d(context2, attributeSet, C3260w0.f11035p, C3681R.attr.autoCompleteTextViewStyle, C3681R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (m687d.hasValue(0) && m687d.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        this.f9435f = (AccessibilityManager) context2.getSystemService("accessibility");
        C0252m0 c0252m0 = new C0252m0(context2, null, C3681R.attr.listPopupWindowStyle, 0);
        this.f9434e = c0252m0;
        c0252m0.m8458r(true);
        c0252m0.f1033o = this;
        c0252m0.f1043y.setInputMethodMode(2);
        c0252m0.mo8403o(getAdapter());
        c0252m0.f1034p = new C2749m(this);
        m687d.recycle();
    }

    /* renamed from: a */
    public static void m3170a(C2750n c2750n, Object obj) {
        c2750n.setText(c2750n.convertSelectionToString(obj), false);
    }

    /* renamed from: b */
    public final TextInputLayout m3169b() {
        ViewParent parent = getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent != null) {
                if (viewParent instanceof TextInputLayout) {
                    return (TextInputLayout) viewParent;
                }
                parent = viewParent.getParent();
            } else {
                return null;
            }
        }
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout m3169b = m3169b();
        return (m3169b == null || !m3169b.f6758E) ? super.getHint() : m3169b.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout m3169b = m3169b();
        if (m3169b == null || !m3169b.f6758E || super.getHint() != null || !Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu")) {
            return;
        }
        setHint("");
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout m3169b = m3169b();
            int i3 = 0;
            int i4 = 0;
            if (adapter != null) {
                if (m3169b == null) {
                    i4 = 0;
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                    C0252m0 c0252m0 = this.f9434e;
                    int min = Math.min(adapter.getCount(), Math.max(0, !c0252m0.mo2305b() ? -1 : c0252m0.f1021c.getSelectedItemPosition()) + 15);
                    int max = Math.max(0, min - 15);
                    View view = null;
                    int i5 = 0;
                    while (max < min) {
                        int itemViewType = adapter.getItemViewType(max);
                        int i6 = i3;
                        if (itemViewType != i3) {
                            view = null;
                            i6 = itemViewType;
                        }
                        view = adapter.getView(max, view, m3169b);
                        if (view.getLayoutParams() == null) {
                            view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                        }
                        view.measure(makeMeasureSpec, makeMeasureSpec2);
                        i5 = Math.max(i5, view.getMeasuredWidth());
                        max++;
                        i3 = i6;
                    }
                    Drawable m8464e = this.f9434e.m8464e();
                    int i7 = i5;
                    if (m8464e != null) {
                        m8464e.getPadding(this.f9436g);
                        Rect rect = this.f9436g;
                        i7 = i5 + rect.left + rect.right;
                    }
                    i4 = m3169b.getEndIconView().getMeasuredWidth() + i7;
                }
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i4), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.f9434e.mo8403o(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.f9435f;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f9434e.show();
        }
    }
}
