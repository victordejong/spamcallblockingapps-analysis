package com.google.android.material.button;

import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.google.android.material.C2080R;
import e.m.a.g.u.a;
import e.m.a.g.u.c;
import e.m.a.g.u.l;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup.class */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: k */
    public static final String f6655k = MaterialButtonToggleGroup.class.getSimpleName();

    /* renamed from: l */
    public static final int f6656l = C2080R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: f */
    public Integer[] f6662f;

    /* renamed from: h */
    public boolean f6664h;

    /* renamed from: i */
    public boolean f6665i;

    /* renamed from: j */
    public int f6666j;

    /* renamed from: a */
    public final List<C2088d> f6657a = new ArrayList();

    /* renamed from: b */
    public final c f6658b = new c(this, (C2087a) null);

    /* renamed from: c */
    public final f f6659c = new f(this, (C2087a) null);

    /* renamed from: d */
    public final LinkedHashSet<AbstractC2089e> f6660d = new LinkedHashSet<>();

    /* renamed from: e */
    public final Comparator<MaterialButton> f6661e = new C2087a();

    /* renamed from: g */
    public boolean f6663g = false;

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$a.class */
    public class C2087a implements Comparator<MaterialButton> {
        public C2087a() {
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

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$d.class */
    public static class C2088d {

        /* renamed from: e */
        public static final c f6668e = new a(0.0f);

        /* renamed from: a */
        public c f6669a;

        /* renamed from: b */
        public c f6670b;

        /* renamed from: c */
        public c f6671c;

        /* renamed from: d */
        public c f6672d;

        public C2088d(c cVar, c cVar2, c cVar3, c cVar4) {
            this.f6669a = cVar;
            this.f6670b = cVar3;
            this.f6671c = cVar4;
            this.f6672d = cVar2;
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$e.class */
    public interface AbstractC2089e {
        /* renamed from: a */
        void m38454a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButtonToggleGroup(android.content.Context r8, android.util.AttributeSet r9) {
        /*
            r7 = this;
            int r0 = com.google.android.material.C2080R.attr.materialButtonToggleGroupStyle
            r10 = r0
            int r0 = com.google.android.material.button.MaterialButtonToggleGroup.f6656l
            r11 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            android.content.Context r1 = e.m.a.g.z.a.a.a(r1, r2, r3, r4)
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = r1
            r2.<init>()
            r0.f6657a = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$c r1 = new com.google.android.material.button.MaterialButtonToggleGroup$c
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>(r3, r4)
            r0.f6658b = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$f r1 = new com.google.android.material.button.MaterialButtonToggleGroup$f
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>(r3, r4)
            r0.f6659c = r1
            r0 = r7
            java.util.LinkedHashSet r1 = new java.util.LinkedHashSet
            r2 = r1
            r2.<init>()
            r0.f6660d = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$a r1 = new com.google.android.material.button.MaterialButtonToggleGroup$a
            r2 = r1
            r3 = r7
            r2.<init>()
            r0.f6661e = r1
            r0 = r7
            r1 = 0
            r0.f6663g = r1
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = com.google.android.material.C2080R.styleable.MaterialButtonToggleGroup
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = e.m.a.g.o.n.d(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C2080R.styleable.MaterialButtonToggleGroup_singleSelection
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleSelection(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C2080R.styleable.MaterialButtonToggleGroup_checkedButton
            r3 = -1
            int r1 = r1.getResourceId(r2, r3)
            r0.f6666j = r1
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C2080R.styleable.MaterialButtonToggleGroup_selectionRequired
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.f6665i = r1
            r0 = r7
            r1 = 1
            r0.setChildrenDrawingOrderEnabled(r1)
            r0 = r8
            r0.recycle()
            java.util.concurrent.atomic.AtomicInteger r0 = p1727n3.p1807k.p1821i.C26614s.f74505a
            r8 = r0
            r0 = r7
            r1 = 1
            r0.setImportantForAccessibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonToggleGroup.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m38458d(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m38458d(childCount)) {
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
                    if (m38458d(i)) {
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
        this.f6666j = i;
        m38460b(i, true);
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            materialButton.setId(View.generateViewId());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.d.add(this.f6658b);
        materialButton.setOnPressedChangeListenerInternal(this.f6659c);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    /* renamed from: a */
    public final void m38461a() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton m38459c = m38459c(i);
            int min = Math.min(m38459c.getStrokeWidth(), m38459c(i - 1).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams = m38459c.getLayoutParams();
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
            m38459c.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) getChildAt(firstVisibleChildIndex).getLayoutParams();
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
            m38456f(materialButton.getId(), true);
            setCheckedId(materialButton.getId());
        }
        l shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f6657a.add(new C2088d(shapeAppearanceModel.e, shapeAppearanceModel.h, shapeAppearanceModel.f, shapeAppearanceModel.g));
        C26614s.m1564q(materialButton, new b(this));
    }

    /* renamed from: b */
    public final void m38460b(int i, boolean z) {
        Iterator<AbstractC2089e> it = this.f6660d.iterator();
        while (it.hasNext()) {
            it.next().m38454a(this, i, z);
        }
    }

    /* renamed from: c */
    public final MaterialButton m38459c(int i) {
        return getChildAt(i);
    }

    /* renamed from: d */
    public final boolean m38458d(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f6661e);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m38459c(i), Integer.valueOf(i));
        }
        this.f6662f = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    /* renamed from: e */
    public final void m38457e(int i, boolean z) {
        MaterialButton findViewById = findViewById(i);
        if (findViewById instanceof MaterialButton) {
            this.f6663g = true;
            findViewById.setChecked(z);
            this.f6663g = false;
        }
    }

    /* renamed from: f */
    public final boolean m38456f(int i, boolean z) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.f6665i && checkedButtonIds.isEmpty()) {
            m38457e(i, true);
            this.f6666j = i;
            return false;
        } else if (!z || !this.f6664h) {
            return true;
        } else {
            checkedButtonIds.remove(Integer.valueOf(i));
            for (Integer num : checkedButtonIds) {
                int intValue = num.intValue();
                m38457e(intValue, false);
                m38460b(intValue, false);
            }
            return true;
        }
    }

    /* renamed from: g */
    public void m38455g() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        int i = 0;
        while (i < childCount) {
            MaterialButton m38459c = m38459c(i);
            if (m38459c.getVisibility() != 8) {
                l shapeAppearanceModel = m38459c.getShapeAppearanceModel();
                Objects.requireNonNull(shapeAppearanceModel);
                l.b bVar = new l.b(shapeAppearanceModel);
                c cVar = C2088d.f6668e;
                C2088d c2088d = this.f6657a.get(i);
                if (firstVisibleChildIndex != lastVisibleChildIndex) {
                    boolean z = getOrientation() == 0;
                    c2088d = i == firstVisibleChildIndex ? z ? C26232y.m2407U0(this) ? new C2088d(cVar, cVar, c2088d.f6670b, c2088d.f6671c) : new C2088d(c2088d.f6669a, c2088d.f6672d, cVar, cVar) : new C2088d(c2088d.f6669a, cVar, c2088d.f6670b, cVar) : i == lastVisibleChildIndex ? z ? C26232y.m2407U0(this) ? new C2088d(c2088d.f6669a, c2088d.f6672d, cVar, cVar) : new C2088d(cVar, cVar, c2088d.f6670b, c2088d.f6671c) : new C2088d(cVar, c2088d.f6672d, cVar, c2088d.f6671c) : null;
                }
                if (c2088d == null) {
                    bVar.c(0.0f);
                } else {
                    bVar.e = c2088d.f6669a;
                    bVar.h = c2088d.f6672d;
                    bVar.f = c2088d.f6670b;
                    bVar.g = c2088d.f6671c;
                }
                m38459c.setShapeAppearanceModel(bVar.a());
            }
            i++;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    public int getCheckedButtonId() {
        return this.f6664h ? this.f6666j : -1;
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton m38459c = m38459c(i);
            if (m38459c.isChecked()) {
                arrayList.add(Integer.valueOf(m38459c.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f6662f;
        return (numArr == null || i2 >= numArr.length) ? i2 : numArr[i2].intValue();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        MaterialButton findViewById;
        super.onFinishInflate();
        int i = this.f6666j;
        if (i == -1 || (findViewById = findViewById(i)) == null) {
            return;
        }
        findViewById.setChecked(true);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C26584b.C26586b.m1611a(1, getVisibleButtonCount(), false, this.f6664h ? 1 : 2).f74481a);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m38455g();
        m38461a();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.d.remove(this.f6658b);
            materialButton.setOnPressedChangeListenerInternal((MaterialButton$b) null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f6657a.remove(indexOfChild);
        }
        m38455g();
        m38461a();
    }

    public void setSelectionRequired(boolean z) {
        this.f6665i = z;
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f6664h != z) {
            this.f6664h = z;
            this.f6663g = true;
            for (int i = 0; i < getChildCount(); i++) {
                MaterialButton m38459c = m38459c(i);
                m38459c.setChecked(false);
                m38460b(m38459c.getId(), false);
            }
            this.f6663g = false;
            setCheckedId(-1);
        }
    }
}
