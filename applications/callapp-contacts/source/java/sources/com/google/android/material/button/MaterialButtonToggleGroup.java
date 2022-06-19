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
import androidx.core.view.C0865a;
import androidx.core.view.C0912h;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p374k.AbstractC14665c;
import com.google.android.material.p374k.C14663a;
import com.google.android.material.p374k.C14678m;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup.class */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: a */
    private static final String f52729a = "MaterialButtonToggleGroup";

    /* renamed from: b */
    private static final int f52730b = C14376a.C14387k.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: c */
    private final List<C14469b> f52731c;

    /* renamed from: d */
    private final C14468a f52732d;

    /* renamed from: e */
    private final C14471d f52733e;

    /* renamed from: f */
    private final LinkedHashSet<AbstractC14470c> f52734f;

    /* renamed from: g */
    private final Comparator<MaterialButton> f52735g;

    /* renamed from: h */
    private Integer[] f52736h;

    /* renamed from: i */
    private boolean f52737i;

    /* renamed from: j */
    private boolean f52738j;

    /* renamed from: k */
    private boolean f52739k;

    /* renamed from: l */
    private int f52740l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$a.class */
    public final class C14468a implements MaterialButton.AbstractC14464a {
        private C14468a() {
            MaterialButtonToggleGroup.this = r4;
        }

        @Override // com.google.android.material.button.MaterialButton.AbstractC14464a
        /* renamed from: a */
        public final void mo11035a(MaterialButton materialButton, boolean z) {
            if (MaterialButtonToggleGroup.this.f52737i) {
                return;
            }
            if (MaterialButtonToggleGroup.this.f52738j) {
                MaterialButtonToggleGroup.this.f52740l = z ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.m11046b(materialButton.getId(), z)) {
                MaterialButtonToggleGroup.this.m11041c(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$b.class */
    public static final class C14469b {

        /* renamed from: e */
        private static final AbstractC14665c f52744e = new C14663a(BitmapDescriptorFactory.HUE_RED);

        /* renamed from: a */
        AbstractC14665c f52745a;

        /* renamed from: b */
        AbstractC14665c f52746b;

        /* renamed from: c */
        AbstractC14665c f52747c;

        /* renamed from: d */
        AbstractC14665c f52748d;

        C14469b(AbstractC14665c abstractC14665c, AbstractC14665c abstractC14665c2, AbstractC14665c abstractC14665c3, AbstractC14665c abstractC14665c4) {
            this.f52745a = abstractC14665c;
            this.f52746b = abstractC14665c3;
            this.f52747c = abstractC14665c4;
            this.f52748d = abstractC14665c2;
        }

        /* renamed from: a */
        public static C14469b m11034a(C14469b c14469b) {
            AbstractC14665c abstractC14665c = c14469b.f52745a;
            AbstractC14665c abstractC14665c2 = f52744e;
            return new C14469b(abstractC14665c, abstractC14665c2, c14469b.f52746b, abstractC14665c2);
        }

        /* renamed from: a */
        public static C14469b m11033a(C14469b c14469b, View view) {
            return C14654r.m10497a(view) ? m11029d(c14469b) : m11030c(c14469b);
        }

        /* renamed from: b */
        public static C14469b m11032b(C14469b c14469b) {
            AbstractC14665c abstractC14665c = f52744e;
            return new C14469b(abstractC14665c, c14469b.f52748d, abstractC14665c, c14469b.f52747c);
        }

        /* renamed from: b */
        public static C14469b m11031b(C14469b c14469b, View view) {
            return C14654r.m10497a(view) ? m11030c(c14469b) : m11029d(c14469b);
        }

        /* renamed from: c */
        private static C14469b m11030c(C14469b c14469b) {
            AbstractC14665c abstractC14665c = c14469b.f52745a;
            AbstractC14665c abstractC14665c2 = c14469b.f52748d;
            AbstractC14665c abstractC14665c3 = f52744e;
            return new C14469b(abstractC14665c, abstractC14665c2, abstractC14665c3, abstractC14665c3);
        }

        /* renamed from: d */
        private static C14469b m11029d(C14469b c14469b) {
            AbstractC14665c abstractC14665c = f52744e;
            return new C14469b(abstractC14665c, abstractC14665c, c14469b.f52746b, c14469b.f52747c);
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$c.class */
    public interface AbstractC14470c {
        /* renamed from: a */
        void mo9853a(int i, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$d */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$d.class */
    public final class C14471d implements MaterialButton.AbstractC14465b {
        private C14471d() {
            MaterialButtonToggleGroup.this = r4;
        }

        @Override // com.google.android.material.button.MaterialButton.AbstractC14465b
        /* renamed from: a */
        public final void mo11028a() {
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButtonToggleGroup(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.button.MaterialButtonToggleGroup.f52730b
            r11 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            android.content.Context r1 = com.google.android.material.theme.p376a.C14828a.m9923a(r1, r2, r3, r4)
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = r1
            r2.<init>()
            r0.f52731c = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$a r1 = new com.google.android.material.button.MaterialButtonToggleGroup$a
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.f52732d = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$d r1 = new com.google.android.material.button.MaterialButtonToggleGroup$d
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.f52733e = r1
            r0 = r7
            java.util.LinkedHashSet r1 = new java.util.LinkedHashSet
            r2 = r1
            r2.<init>()
            r0.f52734f = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$1 r1 = new com.google.android.material.button.MaterialButtonToggleGroup$1
            r2 = r1
            r3 = r7
            r2.<init>()
            r0.f52735g = r1
            r0 = r7
            r1 = 0
            r0.f52737i = r1
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = com.google.android.material.C14376a.C14388l.MaterialButtonToggleGroup
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C14647l.m10508a(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.MaterialButtonToggleGroup_singleSelection
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleSelection(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.MaterialButtonToggleGroup_checkedButton
            r3 = -1
            int r1 = r1.getResourceId(r2, r3)
            r0.f52740l = r1
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.MaterialButtonToggleGroup_selectionRequired
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.f52739k = r1
            r0 = r7
            r1 = 1
            r0.setChildrenDrawingOrderEnabled(r1)
            r0 = r8
            r0.recycle()
            r0 = r7
            r1 = 1
            androidx.core.view.C0926v.m44102c(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonToggleGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    static /* synthetic */ int m11050a(MaterialButtonToggleGroup materialButtonToggleGroup, View view) {
        if (view instanceof MaterialButton) {
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= materialButtonToggleGroup.getChildCount()) {
                    return -1;
                }
                if (materialButtonToggleGroup.getChildAt(i) == view) {
                    return i3;
                }
                int i4 = i3;
                if (materialButtonToggleGroup.getChildAt(i) instanceof MaterialButton) {
                    i4 = i3;
                    if (materialButtonToggleGroup.m11037e(i)) {
                        i4 = i3 + 1;
                    }
                }
                i++;
                i2 = i4;
            }
        } else {
            return -1;
        }
    }

    /* renamed from: a */
    private static LinearLayout.LayoutParams m11055a(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    /* renamed from: a */
    private C14469b m11057a(int i, int i2, int i3) {
        C14469b c14469b = this.f52731c.get(i);
        if (i2 == i3) {
            return c14469b;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? C14469b.m11033a(c14469b, this) : C14469b.m11034a(c14469b);
        } else if (i != i3) {
            return null;
        } else {
            return z ? C14469b.m11031b(c14469b, this) : C14469b.m11032b(c14469b);
        }
    }

    /* renamed from: a */
    private List<Integer> m11059a() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton m11042c = m11042c(i);
            if (m11042c.isChecked()) {
                arrayList.add(Integer.valueOf(m11042c.getId()));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m11056a(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof MaterialButton) {
            this.f52737i = true;
            ((MaterialButton) findViewById).setChecked(z);
            this.f52737i = false;
        }
    }

    /* renamed from: a */
    private static void m11049a(C14678m.C14680a c14680a, C14469b c14469b) {
        if (c14469b == null) {
            c14680a.m10420a(BitmapDescriptorFactory.HUE_RED);
            return;
        }
        c14680a.f53543e = c14469b.f52745a;
        c14680a.f53546h = c14469b.f52748d;
        c14680a.f53544f = c14469b.f52746b;
        c14680a.f53545g = c14469b.f52747c;
    }

    /* renamed from: b */
    private void m11048b() {
        int m11040d = m11040d();
        if (m11040d == -1) {
            return;
        }
        for (int i = m11040d + 1; i < getChildCount(); i++) {
            MaterialButton m11042c = m11042c(i);
            int min = Math.min(m11042c.m11070c(), m11042c(i - 1).m11070c());
            LinearLayout.LayoutParams m11055a = m11055a(m11042c);
            if (getOrientation() == 0) {
                C0912h.m44184b(m11055a, 0);
                C0912h.m44186a(m11055a, -min);
                m11055a.topMargin = 0;
            } else {
                m11055a.bottomMargin = 0;
                m11055a.topMargin = -min;
                C0912h.m44186a(m11055a, 0);
            }
            m11042c.setLayoutParams(m11055a);
        }
        m11039d(m11040d);
    }

    /* renamed from: b */
    private void m11047b(int i) {
        this.f52740l = i;
        m11041c(i, true);
    }

    /* renamed from: b */
    public boolean m11046b(int i, boolean z) {
        List<Integer> m11059a = m11059a();
        if (this.f52739k && m11059a.isEmpty()) {
            m11056a(i, true);
            this.f52740l = i;
            return false;
        } else if (!z || !this.f52738j) {
            return true;
        } else {
            m11059a.remove(Integer.valueOf(i));
            for (Integer num : m11059a) {
                int intValue = num.intValue();
                m11056a(intValue, false);
                m11041c(intValue, false);
            }
            return true;
        }
    }

    /* renamed from: c */
    private MaterialButton m11042c(int i) {
        return (MaterialButton) getChildAt(i);
    }

    /* renamed from: c */
    private void m11043c() {
        int childCount = getChildCount();
        int m11040d = m11040d();
        int m11038e = m11038e();
        for (int i = 0; i < childCount; i++) {
            MaterialButton m11042c = m11042c(i);
            if (m11042c.getVisibility() != 8) {
                C14678m.C14680a m10422b = m11042c.m11069d().m10422b();
                m11049a(m10422b, m11057a(i, m11040d, m11038e));
                m11042c.setShapeAppearanceModel(m10422b.m10421a());
            }
        }
    }

    /* renamed from: c */
    public void m11041c(int i, boolean z) {
        Iterator<AbstractC14470c> it2 = this.f52734f.iterator();
        while (it2.hasNext()) {
            it2.next().mo9853a(i, z);
        }
    }

    /* renamed from: d */
    private int m11040d() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m11037e(i)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: d */
    private void m11039d(int i) {
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m11042c(i).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
            return;
        }
        C0912h.m44184b(layoutParams, 0);
        C0912h.m44186a(layoutParams, 0);
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
    }

    /* renamed from: e */
    private int m11038e() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m11037e(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    /* renamed from: e */
    private boolean m11037e(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    /* renamed from: f */
    private void m11036f(int i) {
        m11056a(i, true);
        m11046b(i, true);
        m11047b(i);
    }

    /* renamed from: a */
    public final void m11058a(int i) {
        if (i == this.f52740l) {
            return;
        }
        m11036f(i);
    }

    /* renamed from: a */
    public final void m11054a(AbstractC14470c abstractC14470c) {
        this.f52734f.add(abstractC14470c);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(f52729a, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        if (materialButton.getId() == -1) {
            materialButton.setId(C0926v.m44141a());
        }
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.f52717b.add(this.f52732d);
        materialButton.f52718c = this.f52733e;
        if (materialButton.m11068e()) {
            C14472a c14472a = materialButton.f52716a;
            c14472a.f52764o = true;
            c14472a.m11020c();
        }
        if (materialButton.isChecked()) {
            m11046b(materialButton.getId(), true);
            m11047b(materialButton.getId());
        }
        C14678m m11069d = materialButton.m11069d();
        this.f52731c.add(new C14469b(m11069d.f53531f, m11069d.f53534i, m11069d.f53532g, m11069d.f53533h));
        C0926v.m44123a(materialButton, new C0865a() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.2
            @Override // androidx.core.view.C0865a
            /* renamed from: a */
            public final void mo9886a(View view2, C0869c c0869c) {
                super.mo9886a(view2, c0869c);
                c0869c.m44264b(C0869c.C0872c.m44234a(0, 1, MaterialButtonToggleGroup.m11050a(MaterialButtonToggleGroup.this, view2), 1, ((MaterialButton) view2).isChecked()));
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f52735g);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m11042c(i), Integer.valueOf(i));
        }
        this.f52736h = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f52736h;
        if (numArr == null || i2 >= numArr.length) {
            Log.w(f52729a, "Child order wasn't updated");
            return i2;
        }
        return numArr[i2].intValue();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f52740l;
        if (i != -1) {
            m11036f(i);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0869c m44278a = C0869c.m44278a(accessibilityNodeInfo);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= getChildCount()) {
                break;
            }
            int i4 = i;
            if (getChildAt(i2) instanceof MaterialButton) {
                i4 = i;
                if (m11037e(i2)) {
                    i4 = i + 1;
                }
            }
            i2++;
            i3 = i4;
        }
        m44278a.m44274a(C0869c.C0871b.m44235a(1, i, false, this.f52738j ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m11043c();
        m11048b();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.f52717b.remove(this.f52732d);
            materialButton.f52718c = null;
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f52731c.remove(indexOfChild);
        }
        m11043c();
        m11048b();
    }

    public void setSelectionRequired(boolean z) {
        this.f52739k = z;
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f52738j != z) {
            this.f52738j = z;
            this.f52737i = true;
            for (int i = 0; i < getChildCount(); i++) {
                MaterialButton m11042c = m11042c(i);
                m11042c.setChecked(false);
                m11041c(m11042c.getId(), false);
            }
            this.f52737i = false;
            m11047b(-1);
        }
    }
}
