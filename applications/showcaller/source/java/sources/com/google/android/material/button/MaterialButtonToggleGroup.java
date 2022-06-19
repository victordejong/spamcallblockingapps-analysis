package com.google.android.material.button;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.C8209q;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1664h;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p108x.AbstractC1933c;
import p078c.p084c.p085a.p096b.p108x.C1931a;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup.class */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: d */
    private static final String f36345d = MaterialButtonToggleGroup.class.getSimpleName();

    /* renamed from: e */
    private static final int f36346e = C1895k.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: f */
    private final List<C8047d> f36347f;

    /* renamed from: g */
    private final C8046c f36348g;

    /* renamed from: h */
    private final C8049f f36349h;

    /* renamed from: i */
    private final LinkedHashSet<AbstractC8048e> f36350i;

    /* renamed from: j */
    private final Comparator<MaterialButton> f36351j;

    /* renamed from: k */
    private Integer[] f36352k;

    /* renamed from: l */
    private boolean f36353l;

    /* renamed from: m */
    private boolean f36354m;

    /* renamed from: n */
    private boolean f36355n;

    /* renamed from: o */
    private int f36356o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$a.class */
    public class C8044a implements Comparator<MaterialButton> {
        C8044a() {
            MaterialButtonToggleGroup.this = r4;
        }

        /* renamed from: a */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int compareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (compareTo != 0) {
                return compareTo;
            }
            int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return compareTo2 != 0 ? compareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$b.class */
    class C8045b extends C1599a {
        C8045b() {
            MaterialButtonToggleGroup.this = r4;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            c1634c.m29483f0(C1634c.C1637c.m29436a(0, 1, MaterialButtonToggleGroup.this.m5366n(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$c.class */
    public class C8046c implements MaterialButton.AbstractC8042a {
        private C8046c() {
            MaterialButtonToggleGroup.this = r4;
        }

        /* synthetic */ C8046c(MaterialButtonToggleGroup materialButtonToggleGroup, C8044a c8044a) {
            this();
        }

        @Override // com.google.android.material.button.MaterialButton.AbstractC8042a
        /* renamed from: a */
        public void mo5355a(MaterialButton materialButton, boolean z) {
            if (MaterialButtonToggleGroup.this.f36353l) {
                return;
            }
            if (MaterialButtonToggleGroup.this.f36354m) {
                MaterialButtonToggleGroup.this.f36356o = z ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.m5359u(materialButton.getId(), z)) {
                MaterialButtonToggleGroup.this.m5368l(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$d.class */
    public static class C8047d {

        /* renamed from: a */
        private static final AbstractC1933c f36360a = new C1931a(0.0f);

        /* renamed from: b */
        AbstractC1933c f36361b;

        /* renamed from: c */
        AbstractC1933c f36362c;

        /* renamed from: d */
        AbstractC1933c f36363d;

        /* renamed from: e */
        AbstractC1933c f36364e;

        C8047d(AbstractC1933c abstractC1933c, AbstractC1933c abstractC1933c2, AbstractC1933c abstractC1933c3, AbstractC1933c abstractC1933c4) {
            this.f36361b = abstractC1933c;
            this.f36362c = abstractC1933c3;
            this.f36363d = abstractC1933c4;
            this.f36364e = abstractC1933c2;
        }

        /* renamed from: a */
        public static C8047d m5354a(C8047d c8047d) {
            AbstractC1933c abstractC1933c = f36360a;
            return new C8047d(abstractC1933c, c8047d.f36364e, abstractC1933c, c8047d.f36363d);
        }

        /* renamed from: b */
        public static C8047d m5353b(C8047d c8047d, View view) {
            return C8209q.m4445h(view) ? m5352c(c8047d) : m5351d(c8047d);
        }

        /* renamed from: c */
        public static C8047d m5352c(C8047d c8047d) {
            AbstractC1933c abstractC1933c = c8047d.f36361b;
            AbstractC1933c abstractC1933c2 = c8047d.f36364e;
            AbstractC1933c abstractC1933c3 = f36360a;
            return new C8047d(abstractC1933c, abstractC1933c2, abstractC1933c3, abstractC1933c3);
        }

        /* renamed from: d */
        public static C8047d m5351d(C8047d c8047d) {
            AbstractC1933c abstractC1933c = f36360a;
            return new C8047d(abstractC1933c, abstractC1933c, c8047d.f36362c, c8047d.f36363d);
        }

        /* renamed from: e */
        public static C8047d m5350e(C8047d c8047d, View view) {
            return C8209q.m4445h(view) ? m5351d(c8047d) : m5352c(c8047d);
        }

        /* renamed from: f */
        public static C8047d m5349f(C8047d c8047d) {
            AbstractC1933c abstractC1933c = c8047d.f36361b;
            AbstractC1933c abstractC1933c2 = f36360a;
            return new C8047d(abstractC1933c, abstractC1933c2, c8047d.f36362c, abstractC1933c2);
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$e.class */
    public interface AbstractC8048e {
        /* renamed from: a */
        void mo3836a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z);
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$f.class */
    public class C8049f implements MaterialButton.AbstractC8043b {
        private C8049f() {
            MaterialButtonToggleGroup.this = r4;
        }

        /* synthetic */ C8049f(MaterialButtonToggleGroup materialButtonToggleGroup, C8044a c8044a) {
            this();
        }

        @Override // com.google.android.material.button.MaterialButton.AbstractC8043b
        /* renamed from: a */
        public void mo5348a(MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButtonToggleGroup(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.button.MaterialButtonToggleGroup.f36346e
            r11 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            android.content.Context r1 = com.google.android.material.theme.p275a.C8328a.m3881c(r1, r2, r3, r4)
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = r1
            r2.<init>()
            r0.f36347f = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$c r1 = new com.google.android.material.button.MaterialButtonToggleGroup$c
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>(r3, r4)
            r0.f36348g = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$f r1 = new com.google.android.material.button.MaterialButtonToggleGroup$f
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>(r3, r4)
            r0.f36349h = r1
            r0 = r7
            java.util.LinkedHashSet r1 = new java.util.LinkedHashSet
            r2 = r1
            r2.<init>()
            r0.f36350i = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$a r1 = new com.google.android.material.button.MaterialButtonToggleGroup$a
            r2 = r1
            r3 = r7
            r2.<init>()
            r0.f36351j = r1
            r0 = r7
            r1 = 0
            r0.f36353l = r1
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = p078c.p084c.p085a.p096b.C1896l.MaterialButtonToggleGroup
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C8203l.m4462h(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.MaterialButtonToggleGroup_singleSelection
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleSelection(r1)
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.MaterialButtonToggleGroup_checkedButton
            r3 = -1
            int r1 = r1.getResourceId(r2, r3)
            r0.f36356o = r1
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.MaterialButtonToggleGroup_selectionRequired
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.f36355n = r1
            r0 = r7
            r1 = 1
            r0.setChildrenDrawingOrderEnabled(r1)
            r0 = r8
            r0.recycle()
            r0 = r7
            r1 = 1
            p020b.p041h.p050l.C1679w.m29347B0(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonToggleGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m5364p(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m5364p(childCount)) {
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
                    if (m5364p(i)) {
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

    /* renamed from: h */
    private void m5372h() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton m5367m = m5367m(i);
            int min = Math.min(m5367m.getStrokeWidth(), m5367m(i - 1).getStrokeWidth());
            LinearLayout.LayoutParams m5371i = m5371i(m5367m);
            if (getOrientation() == 0) {
                C1664h.m29400c(m5371i, 0);
                C1664h.m29399d(m5371i, -min);
                m5371i.topMargin = 0;
            } else {
                m5371i.bottomMargin = 0;
                m5371i.topMargin = -min;
                C1664h.m29399d(m5371i, 0);
            }
            m5367m.setLayoutParams(m5371i);
        }
        m5362r(firstVisibleChildIndex);
    }

    /* renamed from: i */
    private LinearLayout.LayoutParams m5371i(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    /* renamed from: j */
    private void m5370j(int i) {
        m5361s(i, true);
        m5359u(i, true);
        setCheckedId(i);
    }

    /* renamed from: l */
    public void m5368l(int i, boolean z) {
        Iterator<AbstractC8048e> it = this.f36350i.iterator();
        while (it.hasNext()) {
            it.next().mo3836a(this, i, z);
        }
    }

    /* renamed from: m */
    private MaterialButton m5367m(int i) {
        return (MaterialButton) getChildAt(i);
    }

    /* renamed from: n */
    public int m5366n(View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= getChildCount()) {
                return -1;
            }
            if (getChildAt(i) == view) {
                return i3;
            }
            int i4 = i3;
            if (getChildAt(i) instanceof MaterialButton) {
                i4 = i3;
                if (m5364p(i)) {
                    i4 = i3 + 1;
                }
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: o */
    private C8047d m5365o(int i, int i2, int i3) {
        C8047d c8047d = this.f36347f.get(i);
        if (i2 == i3) {
            return c8047d;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? C8047d.m5350e(c8047d, this) : C8047d.m5349f(c8047d);
        } else if (i != i3) {
            return null;
        } else {
            return z ? C8047d.m5353b(c8047d, this) : C8047d.m5354a(c8047d);
        }
    }

    /* renamed from: p */
    private boolean m5364p(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    /* renamed from: r */
    private void m5362r(int i) {
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m5367m(i).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
            return;
        }
        C1664h.m29400c(layoutParams, 0);
        C1664h.m29399d(layoutParams, 0);
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
    }

    /* renamed from: s */
    private void m5361s(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof MaterialButton) {
            this.f36353l = true;
            ((MaterialButton) findViewById).setChecked(z);
            this.f36353l = false;
        }
    }

    private void setCheckedId(int i) {
        this.f36356o = i;
        m5368l(i, true);
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(C1679w.m29288k());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.m5394a(this.f36348g);
        materialButton.setOnPressedChangeListenerInternal(this.f36349h);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    /* renamed from: t */
    private static void m5360t(C1946m.C1948b c1948b, C8047d c8047d) {
        if (c8047d == null) {
            c1948b.m28526o(0.0f);
        } else {
            c1948b.m28545F(c8047d.f36361b).m28518w(c8047d.f36364e).m28541J(c8047d.f36362c).m28550A(c8047d.f36363d);
        }
    }

    /* renamed from: u */
    public boolean m5359u(int i, boolean z) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.f36355n && checkedButtonIds.isEmpty()) {
            m5361s(i, true);
            this.f36356o = i;
            return false;
        } else if (!z || !this.f36354m) {
            return true;
        } else {
            checkedButtonIds.remove(Integer.valueOf(i));
            for (Integer num : checkedButtonIds) {
                int intValue = num.intValue();
                m5361s(intValue, false);
                m5368l(intValue, false);
            }
            return true;
        }
    }

    /* renamed from: v */
    private void m5358v() {
        TreeMap treeMap = new TreeMap(this.f36351j);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m5367m(i), Integer.valueOf(i));
        }
        this.f36352k = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(f36345d, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        if (materialButton.isChecked()) {
            m5359u(materialButton.getId(), true);
            setCheckedId(materialButton.getId());
        }
        C1946m shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f36347f.add(new C8047d(shapeAppearanceModel.m28558r(), shapeAppearanceModel.m28566j(), shapeAppearanceModel.m28556t(), shapeAppearanceModel.m28564l()));
        C1679w.m29273r0(materialButton, new C8045b());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m5358v();
        super.dispatchDraw(canvas);
    }

    /* renamed from: g */
    public void m5373g(AbstractC8048e abstractC8048e) {
        this.f36350i.add(abstractC8048e);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    public int getCheckedButtonId() {
        return this.f36354m ? this.f36356o : -1;
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton m5367m = m5367m(i);
            if (m5367m.isChecked()) {
                arrayList.add(Integer.valueOf(m5367m.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f36352k;
        if (numArr == null || i2 >= numArr.length) {
            Log.w(f36345d, "Child order wasn't updated");
            return i2;
        }
        return numArr[i2].intValue();
    }

    /* renamed from: k */
    public void m5369k() {
        this.f36353l = true;
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton m5367m = m5367m(i);
            m5367m.setChecked(false);
            m5368l(m5367m.getId(), false);
        }
        this.f36353l = false;
        setCheckedId(-1);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f36356o;
        if (i != -1) {
            m5370j(i);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C1634c.m29513H0(accessibilityNodeInfo).m29485e0(C1634c.C1636b.m29437b(1, getVisibleButtonCount(), false, m5363q() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m5357w();
        m5372h();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.m5387h(this.f36348g);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f36347f.remove(indexOfChild);
        }
        m5357w();
        m5372h();
    }

    /* renamed from: q */
    public boolean m5363q() {
        return this.f36354m;
    }

    public void setSelectionRequired(boolean z) {
        this.f36355n = z;
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f36354m != z) {
            this.f36354m = z;
            m5369k();
        }
    }

    /* renamed from: w */
    void m5357w() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton m5367m = m5367m(i);
            if (m5367m.getVisibility() != 8) {
                C1946m.C1948b m28554v = m5367m.getShapeAppearanceModel().m28554v();
                m5360t(m28554v, m5365o(i, firstVisibleChildIndex, lastVisibleChildIndex));
                m5367m.setShapeAppearanceModel(m28554v.m28528m());
            }
        }
    }
}
