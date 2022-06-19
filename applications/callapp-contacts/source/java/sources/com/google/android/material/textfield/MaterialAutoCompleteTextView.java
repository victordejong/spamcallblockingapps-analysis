package com.google.android.material.textfield;

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
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14620c;
import com.google.android.material.internal.C14647l;
import com.google.android.material.theme.p376a.C14828a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/MaterialAutoCompleteTextView.class */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* renamed from: a */
    private final ListPopupWindow f53975a;

    /* renamed from: b */
    private final AccessibilityManager f53976b;

    /* renamed from: c */
    private final Rect f53977c;

    public MaterialAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.autoCompleteTextViewStyle);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(C14828a.m9923a(context, attributeSet, i, 0), attributeSet, i);
        this.f53977c = new Rect();
        Context context2 = getContext();
        TypedArray m10508a = C14647l.m10508a(context2, attributeSet, C14376a.C14388l.MaterialAutoCompleteTextView, i, C14376a.C14387k.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (m10508a.hasValue(C14376a.C14388l.MaterialAutoCompleteTextView_android_inputType) && m10508a.getInt(C14376a.C14388l.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f53976b = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f53975a = listPopupWindow;
        listPopupWindow.m45918j();
        listPopupWindow.f1256i = this;
        listPopupWindow.m45916l();
        listPopupWindow.mo45930a(getAdapter());
        listPopupWindow.f1257j = new AdapterView.OnItemClickListener() { // from class: com.google.android.material.textfield.MaterialAutoCompleteTextView.1
            /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
                if (r10 < 0) goto L15;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v31, types: [long] */
            /* JADX WARN: Type inference failed for: r11v4 */
            @Override // android.widget.AdapterView.OnItemClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onItemClick(android.widget.AdapterView<?> r8, android.view.View r9, int r10, long r11) {
                /*
                    r7 = this;
                    r0 = 0
                    r13 = r0
                    r0 = r10
                    if (r0 >= 0) goto L29
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m10070a(r0)
                    r8 = r0
                    r0 = r8
                    android.widget.PopupWindow r0 = r0.f1261n
                    boolean r0 = r0.isShowing()
                    if (r0 != 0) goto L1e
                    r0 = 0
                    r8 = r0
                    goto L37
                L1e:
                    r0 = r8
                    androidx.appcompat.widget.DropDownListView r0 = r0.f1252e
                    java.lang.Object r0 = r0.getSelectedItem()
                    r8 = r0
                    goto L37
                L29:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    android.widget.ListAdapter r0 = r0.getAdapter()
                    r1 = r10
                    java.lang.Object r0 = r0.getItem(r1)
                    r8 = r0
                L37:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    r1 = r8
                    com.google.android.material.textfield.MaterialAutoCompleteTextView.m10069a(r0, r1)
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    android.widget.AdapterView$OnItemClickListener r0 = r0.getOnItemClickListener()
                    r14 = r0
                    r0 = r14
                    if (r0 == 0) goto Lc8
                    r0 = r9
                    if (r0 == 0) goto L60
                    r0 = r9
                    r8 = r0
                    r0 = r10
                    r15 = r0
                    r0 = r10
                    if (r0 >= 0) goto L5d
                    goto L60
                L5d:
                    goto Lb2
                L60:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m10070a(r0)
                    r8 = r0
                    r0 = r8
                    android.widget.PopupWindow r0 = r0.f1261n
                    boolean r0 = r0.isShowing()
                    if (r0 != 0) goto L78
                    r0 = r13
                    r8 = r0
                    goto L80
                L78:
                    r0 = r8
                    androidx.appcompat.widget.DropDownListView r0 = r0.f1252e
                    android.view.View r0 = r0.getSelectedView()
                    r8 = r0
                L80:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m10070a(r0)
                    int r0 = r0.m45913o()
                    r15 = r0
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m10070a(r0)
                    r9 = r0
                    r0 = r9
                    android.widget.PopupWindow r0 = r0.f1261n
                    boolean r0 = r0.isShowing()
                    if (r0 != 0) goto La6
                    r0 = -9223372036854775808
                    r11 = r0
                    goto L5d
                La6:
                    r0 = r9
                    androidx.appcompat.widget.DropDownListView r0 = r0.f1252e
                    long r0 = r0.getSelectedItemId()
                    r11 = r0
                    goto L5d
                Lb2:
                    r0 = r14
                    r1 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r1 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r1 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m10070a(r1)
                    androidx.appcompat.widget.DropDownListView r1 = r1.f1252e
                    r2 = r8
                    r3 = r15
                    r4 = r11
                    r0.onItemClick(r1, r2, r3, r4)
                Lc8:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m10070a(r0)
                    r0.mo45925d()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.MaterialAutoCompleteTextView.C147831.onItemClick(android.widget.AdapterView, android.view.View, int, long):void");
            }
        };
        m10508a.recycle();
    }

    /* renamed from: a */
    private TextInputLayout m10071a() {
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

    /* renamed from: a */
    static /* synthetic */ void m10069a(MaterialAutoCompleteTextView materialAutoCompleteTextView, Object obj) {
        if (Build.VERSION.SDK_INT >= 17) {
            materialAutoCompleteTextView.setText(materialAutoCompleteTextView.convertSelectionToString(obj), false);
            return;
        }
        ListAdapter adapter = materialAutoCompleteTextView.getAdapter();
        materialAutoCompleteTextView.setAdapter(null);
        materialAutoCompleteTextView.setText(materialAutoCompleteTextView.convertSelectionToString(obj));
        materialAutoCompleteTextView.setAdapter(adapter);
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout m10071a = m10071a();
        return (m10071a == null || !m10071a.f54047g) ? super.getHint() : m10071a.m10045a();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout m10071a = m10071a();
        if (m10071a == null || !m10071a.f54047g || super.getHint() != null || !C14620c.m10555a()) {
            return;
        }
        setHint("");
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout m10071a = m10071a();
            int i3 = 0;
            int i4 = 0;
            if (adapter != null) {
                if (m10071a == null) {
                    i4 = 0;
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                    int min = Math.min(adapter.getCount(), Math.max(0, this.f53975a.m45913o()) + 15);
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
                        view = adapter.getView(max, view, m10071a);
                        if (view.getLayoutParams() == null) {
                            view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                        }
                        view.measure(makeMeasureSpec, makeMeasureSpec2);
                        i5 = Math.max(i5, view.getMeasuredWidth());
                        max++;
                        i3 = i6;
                    }
                    Drawable background = this.f53975a.f1261n.getBackground();
                    int i7 = i5;
                    if (background != null) {
                        background.getPadding(this.f53977c);
                        i7 = i5 + this.f53977c.left + this.f53977c.right;
                    }
                    i4 = i7 + m10071a.f54051k.getMeasuredWidth();
                }
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i4), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.f53975a.mo45930a(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.f53976b;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f53975a.mo45922e_();
        }
    }
}
