package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.TreeMap;
import java.util.WeakHashMap;
import p029c4.AbstractC0819c;
import p029c4.C0817a;
import p029c4.C0827i;
import p102g4.C2811a;
import p134j4.C3260w0;
import p163m0.C3546a;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p262v3.C4634p;
import p262v3.C4638t;
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup.class */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: k */
    public static final /* synthetic */ int f6386k = 0;

    /* renamed from: f */
    public Integer[] f6392f;

    /* renamed from: h */
    public boolean f6394h;

    /* renamed from: i */
    public boolean f6395i;

    /* renamed from: j */
    public int f6396j;

    /* renamed from: a */
    public final List<C1714d> f6387a = new ArrayList();

    /* renamed from: b */
    public final C1713c f6388b = new C1713c(null);

    /* renamed from: c */
    public final C1716f f6389c = new C1716f(null);

    /* renamed from: d */
    public final LinkedHashSet<AbstractC1715e> f6390d = new LinkedHashSet<>();

    /* renamed from: e */
    public final Comparator<MaterialButton> f6391e = new C1711a();

    /* renamed from: g */
    public boolean f6393g = false;

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$a.class */
    public class C1711a implements Comparator<MaterialButton> {
        public C1711a() {
            MaterialButtonToggleGroup.this = r4;
        }

        @Override // java.util.Comparator
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            MaterialButton materialButton3 = materialButton;
            MaterialButton materialButton4 = materialButton2;
            int compareTo = Boolean.valueOf(materialButton3.isChecked()).compareTo(Boolean.valueOf(materialButton4.isChecked()));
            if (compareTo == 0) {
                compareTo = Boolean.valueOf(materialButton3.isPressed()).compareTo(Boolean.valueOf(materialButton4.isPressed()));
                if (compareTo == 0) {
                    compareTo = Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton3)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton4)));
                }
            }
            return compareTo;
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$b.class */
    public class C1712b extends C3546a {
        public C1712b() {
            MaterialButtonToggleGroup.this = r4;
        }

        @Override // p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            int i;
            this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            int i2 = MaterialButtonToggleGroup.f6386k;
            Objects.requireNonNull(materialButtonToggleGroup);
            if (!(view instanceof MaterialButton)) {
                i = -1;
            } else {
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    int i5 = i4;
                    i = -1;
                    if (i3 >= materialButtonToggleGroup.getChildCount()) {
                        break;
                    } else if (materialButtonToggleGroup.getChildAt(i3) == view) {
                        i = i5;
                        break;
                    } else {
                        int i6 = i5;
                        if (materialButtonToggleGroup.getChildAt(i3) instanceof MaterialButton) {
                            i6 = i5;
                            if (materialButtonToggleGroup.m4712d(i3)) {
                                i6 = i5 + 1;
                            }
                        }
                        i3++;
                        i4 = i6;
                    }
                }
            }
            c3694b.m1871m(C3694b.C3697c.m1865a(0, 1, i, 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$c.class */
    public class C1713c implements MaterialButton.AbstractC1707a {
        public C1713c(C1711a c1711a) {
            MaterialButtonToggleGroup.this = r4;
        }

        @Override // com.google.android.material.button.MaterialButton.AbstractC1707a
        /* renamed from: a */
        public void mo4708a(MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            if (materialButtonToggleGroup.f6393g) {
                return;
            }
            if (materialButtonToggleGroup.f6394h) {
                materialButtonToggleGroup.f6396j = z ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.m4710f(materialButton.getId(), z)) {
                MaterialButtonToggleGroup.this.m4714b(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$d.class */
    public static class C1714d {

        /* renamed from: e */
        public static final AbstractC0819c f6400e = new C0817a(0.0f);

        /* renamed from: a */
        public AbstractC0819c f6401a;

        /* renamed from: b */
        public AbstractC0819c f6402b;

        /* renamed from: c */
        public AbstractC0819c f6403c;

        /* renamed from: d */
        public AbstractC0819c f6404d;

        public C1714d(AbstractC0819c abstractC0819c, AbstractC0819c abstractC0819c2, AbstractC0819c abstractC0819c3, AbstractC0819c abstractC0819c4) {
            this.f6401a = abstractC0819c;
            this.f6402b = abstractC0819c3;
            this.f6403c = abstractC0819c4;
            this.f6404d = abstractC0819c2;
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$e.class */
    public interface AbstractC1715e {
        /* renamed from: a */
        void mo4491a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z);
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$f.class */
    public class C1716f implements MaterialButton.AbstractC1708b {
        public C1716f(C1711a c1711a) {
            MaterialButtonToggleGroup.this = r4;
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 2130969280, 2131887082), attributeSet, 2130969280);
        TypedArray m687d = C4634p.m687d(getContext(), attributeSet, C3260w0.f11037r, 2130969280, 2131887082, new int[0]);
        setSingleSelection(m687d.getBoolean(2, false));
        this.f6396j = m687d.getResourceId(0, -1);
        this.f6395i = m687d.getBoolean(1, false);
        setChildrenDrawingOrderEnabled(true);
        m687d.recycle();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2075s(this, 1);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m4712d(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m4712d(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < getChildCount()) {
                int i4 = i3;
                if (getChildAt(i) instanceof MaterialButton) {
                    i4 = i3;
                    if (m4712d(i)) {
                        i4 = i3 + 1;
                    }
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    private void setCheckedId(int i) {
        this.f6396j = i;
        m4714b(i, true);
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            materialButton.setId(C3589v.C3594e.m2074a());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.f6373e.add(this.f6388b);
        materialButton.setOnPressedChangeListenerInternal(this.f6389c);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    /* renamed from: a */
    public final void m4715a() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton m4713c = m4713c(i);
            int min = Math.min(m4713c.getStrokeWidth(), m4713c(i - 1).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams = m4713c.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(-min);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -min;
                layoutParams2.setMarginStart(0);
            }
            m4713c.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
            return;
        }
        layoutParams3.setMarginEnd(0);
        layoutParams3.setMarginStart(0);
        layoutParams3.leftMargin = 0;
        layoutParams3.rightMargin = 0;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        if (materialButton.isChecked()) {
            m4710f(materialButton.getId(), true);
            setCheckedId(materialButton.getId());
        }
        C0827i shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f6387a.add(new C1714d(shapeAppearanceModel.f3062e, shapeAppearanceModel.f3065h, shapeAppearanceModel.f3063f, shapeAppearanceModel.f3064g));
        C3589v.m2103u(materialButton, new C1712b());
    }

    /* renamed from: b */
    public final void m4714b(int i, boolean z) {
        Iterator<AbstractC1715e> it2 = this.f6390d.iterator();
        while (it2.hasNext()) {
            it2.next().mo4491a(this, i, z);
        }
    }

    /* renamed from: c */
    public final MaterialButton m4713c(int i) {
        return (MaterialButton) getChildAt(i);
    }

    /* renamed from: d */
    public final boolean m4712d(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f6391e);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m4713c(i), Integer.valueOf(i));
        }
        this.f6392f = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    /* renamed from: e */
    public final void m4711e(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof MaterialButton) {
            this.f6393g = true;
            ((MaterialButton) findViewById).setChecked(z);
            this.f6393g = false;
        }
    }

    /* renamed from: f */
    public final boolean m4710f(int i, boolean z) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.f6395i && checkedButtonIds.isEmpty()) {
            m4711e(i, true);
            this.f6396j = i;
            return false;
        } else if (!z || !this.f6394h) {
            return true;
        } else {
            checkedButtonIds.remove(Integer.valueOf(i));
            for (Integer num : checkedButtonIds) {
                int intValue = num.intValue();
                m4711e(intValue, false);
                m4714b(intValue, false);
            }
            return true;
        }
    }

    /* renamed from: g */
    public void m4709g() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton m4713c = m4713c(i);
            if (m4713c.getVisibility() != 8) {
                C0827i shapeAppearanceModel = m4713c.getShapeAppearanceModel();
                Objects.requireNonNull(shapeAppearanceModel);
                C0827i.C0829b c0829b = new C0827i.C0829b(shapeAppearanceModel);
                C1714d c1714d = this.f6387a.get(i);
                if (firstVisibleChildIndex != lastVisibleChildIndex) {
                    boolean z = getOrientation() == 0;
                    if (i == firstVisibleChildIndex) {
                        if (!z) {
                            AbstractC0819c abstractC0819c = c1714d.f6401a;
                            AbstractC0819c abstractC0819c2 = C1714d.f6400e;
                            c1714d = new C1714d(abstractC0819c, abstractC0819c2, c1714d.f6402b, abstractC0819c2);
                        } else if (C4638t.m685a(this)) {
                            AbstractC0819c abstractC0819c3 = C1714d.f6400e;
                            c1714d = new C1714d(abstractC0819c3, abstractC0819c3, c1714d.f6402b, c1714d.f6403c);
                        } else {
                            AbstractC0819c abstractC0819c4 = c1714d.f6401a;
                            AbstractC0819c abstractC0819c5 = c1714d.f6404d;
                            AbstractC0819c abstractC0819c6 = C1714d.f6400e;
                            c1714d = new C1714d(abstractC0819c4, abstractC0819c5, abstractC0819c6, abstractC0819c6);
                        }
                    } else if (i != lastVisibleChildIndex) {
                        c1714d = null;
                    } else if (!z) {
                        AbstractC0819c abstractC0819c7 = C1714d.f6400e;
                        c1714d = new C1714d(abstractC0819c7, c1714d.f6404d, abstractC0819c7, c1714d.f6403c);
                    } else if (C4638t.m685a(this)) {
                        AbstractC0819c abstractC0819c8 = c1714d.f6401a;
                        AbstractC0819c abstractC0819c9 = c1714d.f6404d;
                        AbstractC0819c abstractC0819c10 = C1714d.f6400e;
                        c1714d = new C1714d(abstractC0819c8, abstractC0819c9, abstractC0819c10, abstractC0819c10);
                    } else {
                        AbstractC0819c abstractC0819c11 = C1714d.f6400e;
                        c1714d = new C1714d(abstractC0819c11, abstractC0819c11, c1714d.f6402b, c1714d.f6403c);
                    }
                }
                if (c1714d == null) {
                    c0829b.m7295e(0.0f);
                    c0829b.m7294f(0.0f);
                    c0829b.m7296d(0.0f);
                    c0829b.m7297c(0.0f);
                } else {
                    c0829b.f3074e = c1714d.f6401a;
                    c0829b.f3077h = c1714d.f6404d;
                    c0829b.f3075f = c1714d.f6402b;
                    c0829b.f3076g = c1714d.f6403c;
                }
                m4713c.setShapeAppearanceModel(c0829b.m7299a());
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    public int getCheckedButtonId() {
        return this.f6394h ? this.f6396j : -1;
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton m4713c = m4713c(i);
            if (m4713c.isChecked()) {
                arrayList.add(Integer.valueOf(m4713c.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f6392f;
        if (numArr == null || i2 >= numArr.length) {
            Log.w("MaterialButtonToggleGroup", "Child order wasn't updated");
            return i2;
        }
        return numArr[i2].intValue();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        MaterialButton materialButton;
        super.onFinishInflate();
        int i = this.f6396j;
        if (i == -1 || (materialButton = (MaterialButton) findViewById(i)) == null) {
            return;
        }
        materialButton.setChecked(true);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3694b.C3696b.m1866a(1, getVisibleButtonCount(), false, this.f6394h ? 1 : 2).f12087a);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m4709g();
        m4715a();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.f6373e.remove(this.f6388b);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f6387a.remove(indexOfChild);
        }
        m4709g();
        m4715a();
    }

    public void setSelectionRequired(boolean z) {
        this.f6395i = z;
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f6394h != z) {
            this.f6394h = z;
            this.f6393g = true;
            for (int i = 0; i < getChildCount(); i++) {
                MaterialButton m4713c = m4713c(i);
                m4713c.setChecked(false);
                m4714b(m4713c.getId(), false);
            }
            this.f6393g = false;
            setCheckedId(-1);
        }
    }
}
