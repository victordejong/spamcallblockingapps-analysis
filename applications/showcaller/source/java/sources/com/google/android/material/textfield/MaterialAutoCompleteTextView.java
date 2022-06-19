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
import com.google.android.material.internal.C8178d;
import com.google.android.material.internal.C8203l;
import com.google.android.material.theme.p275a.C8328a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/MaterialAutoCompleteTextView.class */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* renamed from: g */
    private final ListPopupWindow f37359g;

    /* renamed from: h */
    private final AccessibilityManager f37360h;

    /* renamed from: i */
    private final Rect f37361i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.textfield.MaterialAutoCompleteTextView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/MaterialAutoCompleteTextView$a.class */
    public class C8283a implements AdapterView.OnItemClickListener {
        C8283a() {
            MaterialAutoCompleteTextView.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
            if (r10 < 0) goto L12;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        @Override // android.widget.AdapterView.OnItemClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onItemClick(android.widget.AdapterView<?> r8, android.view.View r9, int r10, long r11) {
            /*
                r7 = this;
                r0 = r10
                if (r0 >= 0) goto L12
                r0 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m4085a(r0)
                java.lang.Object r0 = r0.m35124v()
                r8 = r0
                goto L20
            L12:
                r0 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                android.widget.ListAdapter r0 = r0.getAdapter()
                r1 = r10
                java.lang.Object r0 = r0.getItem(r1)
                r8 = r0
            L20:
                r0 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                r1 = r8
                com.google.android.material.textfield.MaterialAutoCompleteTextView.m4084b(r0, r1)
                r0 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                android.widget.AdapterView$OnItemClickListener r0 = r0.getOnItemClickListener()
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L77
                r0 = r9
                if (r0 == 0) goto L3f
                r0 = r10
                r13 = r0
                r0 = r10
                if (r0 >= 0) goto L62
            L3f:
                r0 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m4085a(r0)
                android.view.View r0 = r0.m35121y()
                r9 = r0
                r0 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m4085a(r0)
                int r0 = r0.m35122x()
                r13 = r0
                r0 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m4085a(r0)
                long r0 = r0.m35123w()
                r11 = r0
            L62:
                r0 = r8
                r1 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r1 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                androidx.appcompat.widget.ListPopupWindow r1 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m4085a(r1)
                android.widget.ListView r1 = r1.mo35132k()
                r2 = r9
                r3 = r13
                r4 = r11
                r0.onItemClick(r1, r2, r3, r4)
            L77:
                r0 = r7
                com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m4085a(r0)
                r0.dismiss()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.MaterialAutoCompleteTextView.C8283a.onItemClick(android.widget.AdapterView, android.view.View, int, long):void");
        }
    }

    public MaterialAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.autoCompleteTextViewStyle);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(C8328a.m3881c(context, attributeSet, i, 0), attributeSet, i);
        this.f37361i = new Rect();
        Context context2 = getContext();
        TypedArray m4462h = C8203l.m4462h(context2, attributeSet, C1896l.MaterialAutoCompleteTextView, i, C1895k.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        int i2 = C1896l.MaterialAutoCompleteTextView_android_inputType;
        if (m4462h.hasValue(i2) && m4462h.getInt(i2, 0) == 0) {
            setKeyListener(null);
        }
        this.f37360h = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f37359g = listPopupWindow;
        listPopupWindow.m35146J(true);
        listPopupWindow.m35152D(this);
        listPopupWindow.m35147I(2);
        listPopupWindow.mo35129p(getAdapter());
        listPopupWindow.m35144L(new C8283a());
        m4462h.recycle();
    }

    /* renamed from: c */
    private TextInputLayout m4083c() {
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

    /* renamed from: d */
    private int m4082d() {
        ListAdapter adapter = getAdapter();
        TextInputLayout m4083c = m4083c();
        int i = 0;
        if (adapter == null || m4083c == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int min = Math.min(adapter.getCount(), Math.max(0, this.f37359g.m35122x()) + 15);
        int max = Math.max(0, min - 15);
        View view = null;
        int i2 = 0;
        while (max < min) {
            int itemViewType = adapter.getItemViewType(max);
            int i3 = i;
            if (itemViewType != i) {
                view = null;
                i3 = itemViewType;
            }
            view = adapter.getView(max, view, m4083c);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
            max++;
            i = i3;
        }
        Drawable m35133i = this.f37359g.m35133i();
        int i4 = i2;
        if (m35133i != null) {
            m35133i.getPadding(this.f37361i);
            Rect rect = this.f37361i;
            i4 = i2 + rect.left + rect.right;
        }
        return i4 + m4083c.getEndIconView().getMeasuredWidth();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public <T extends ListAdapter & Filterable> void m4081e(Object obj) {
        if (Build.VERSION.SDK_INT >= 17) {
            setText(convertSelectionToString(obj), false);
            return;
        }
        ListAdapter adapter = getAdapter();
        setAdapter(null);
        setText(convertSelectionToString(obj));
        setAdapter(adapter);
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout m4083c = m4083c();
        return (m4083c == null || !m4083c.m4060O()) ? super.getHint() : m4083c.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout m4083c = m4083c();
        if (m4083c == null || !m4083c.m4060O() || super.getHint() != null || !C8178d.m4551c()) {
            return;
        }
        setHint("");
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m4082d()), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.f37359g.mo35129p(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.f37360h;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f37359g.mo35134h();
        }
    }
}
