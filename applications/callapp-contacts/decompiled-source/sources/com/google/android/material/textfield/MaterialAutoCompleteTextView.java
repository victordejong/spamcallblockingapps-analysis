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
import com.google.android.material.a;
import com.google.android.material.internal.c;
import com.google.android.material.internal.l;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/MaterialAutoCompleteTextView.class */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* renamed from: a  reason: collision with root package name */
    private final ListPopupWindow f30874a;

    /* renamed from: b  reason: collision with root package name */
    private final AccessibilityManager f30875b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f30876c;

    public MaterialAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.autoCompleteTextViewStyle);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, 0), attributeSet, i);
        this.f30876c = new Rect();
        Context context2 = getContext();
        TypedArray a2 = l.a(context2, attributeSet, a.l.MaterialAutoCompleteTextView, i, a.k.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (a2.hasValue(a.l.MaterialAutoCompleteTextView_android_inputType) && a2.getInt(a.l.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f30875b = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f30874a = listPopupWindow;
        listPopupWindow.j();
        listPopupWindow.i = this;
        listPopupWindow.l();
        listPopupWindow.a(getAdapter());
        listPopupWindow.j = new AdapterView.OnItemClickListener() { // from class: com.google.android.material.textfield.MaterialAutoCompleteTextView.1
            /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
                if (r10 < 0) goto L_0x0060;
             */
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
                    if (r0 >= 0) goto L_0x0029
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.a(r0)
                    r8 = r0
                    r0 = r8
                    android.widget.PopupWindow r0 = r0.n
                    boolean r0 = r0.isShowing()
                    if (r0 != 0) goto L_0x001e
                    r0 = 0
                    r8 = r0
                    goto L_0x0037
                L_0x001e:
                    r0 = r8
                    androidx.appcompat.widget.DropDownListView r0 = r0.e
                    java.lang.Object r0 = r0.getSelectedItem()
                    r8 = r0
                    goto L_0x0037
                L_0x0029:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    android.widget.ListAdapter r0 = r0.getAdapter()
                    r1 = r10
                    java.lang.Object r0 = r0.getItem(r1)
                    r8 = r0
                L_0x0037:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    r1 = r8
                    com.google.android.material.textfield.MaterialAutoCompleteTextView.a(r0, r1)
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    android.widget.AdapterView$OnItemClickListener r0 = r0.getOnItemClickListener()
                    r14 = r0
                    r0 = r14
                    if (r0 == 0) goto L_0x00c8
                    r0 = r9
                    if (r0 == 0) goto L_0x0060
                    r0 = r9
                    r8 = r0
                    r0 = r10
                    r15 = r0
                    r0 = r10
                    if (r0 >= 0) goto L_0x005d
                    goto L_0x0060
                L_0x005d:
                    goto L_0x00b2
                L_0x0060:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.a(r0)
                    r8 = r0
                    r0 = r8
                    android.widget.PopupWindow r0 = r0.n
                    boolean r0 = r0.isShowing()
                    if (r0 != 0) goto L_0x0078
                    r0 = r13
                    r8 = r0
                    goto L_0x0080
                L_0x0078:
                    r0 = r8
                    androidx.appcompat.widget.DropDownListView r0 = r0.e
                    android.view.View r0 = r0.getSelectedView()
                    r8 = r0
                L_0x0080:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.a(r0)
                    int r0 = r0.o()
                    r15 = r0
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.a(r0)
                    r9 = r0
                    r0 = r9
                    android.widget.PopupWindow r0 = r0.n
                    boolean r0 = r0.isShowing()
                    if (r0 != 0) goto L_0x00a6
                    r0 = -9223372036854775808
                    r11 = r0
                    goto L_0x005d
                L_0x00a6:
                    r0 = r9
                    androidx.appcompat.widget.DropDownListView r0 = r0.e
                    long r0 = r0.getSelectedItemId()
                    r11 = r0
                    goto L_0x005d
                L_0x00b2:
                    r0 = r14
                    r1 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r1 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r1 = com.google.android.material.textfield.MaterialAutoCompleteTextView.a(r1)
                    androidx.appcompat.widget.DropDownListView r1 = r1.e
                    r2 = r8
                    r3 = r15
                    r4 = r11
                    r0.onItemClick(r1, r2, r3, r4)
                L_0x00c8:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.a(r0)
                    r0.d()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.MaterialAutoCompleteTextView.AnonymousClass1.onItemClick(android.widget.AdapterView, android.view.View, int, long):void");
            }
        };
        a2.recycle();
    }

    private TextInputLayout a() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    static /* synthetic */ void a(MaterialAutoCompleteTextView materialAutoCompleteTextView, Object obj) {
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
        TextInputLayout a2 = a();
        return (a2 == null || !a2.g) ? super.getHint() : a2.a();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout a2 = a();
        if (a2 != null && a2.g && super.getHint() == null && c.a()) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout a2 = a();
            int i3 = 0;
            int i4 = 0;
            if (adapter != null) {
                if (a2 == null) {
                    i4 = 0;
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                    int min = Math.min(adapter.getCount(), Math.max(0, this.f30874a.o()) + 15);
                    View view = null;
                    int i5 = 0;
                    for (int max = Math.max(0, min - 15); max < min; max++) {
                        int itemViewType = adapter.getItemViewType(max);
                        i3 = i3;
                        if (itemViewType != i3) {
                            view = null;
                            i3 = itemViewType;
                        }
                        view = adapter.getView(max, view, a2);
                        if (view.getLayoutParams() == null) {
                            view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                        }
                        view.measure(makeMeasureSpec, makeMeasureSpec2);
                        i5 = Math.max(i5, view.getMeasuredWidth());
                    }
                    Drawable background = this.f30874a.n.getBackground();
                    int i6 = i5;
                    if (background != null) {
                        background.getPadding(this.f30876c);
                        i6 = i5 + this.f30876c.left + this.f30876c.right;
                    }
                    i4 = i6 + a2.k.getMeasuredWidth();
                }
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i4), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.f30874a.a(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.f30875b;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f30874a.e_();
        }
    }
}
