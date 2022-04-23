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
import androidx.core.view.a.c;
import androidx.core.view.h;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.r;
import com.google.android.material.k.m;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup.class */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final String f30340a = "MaterialButtonToggleGroup";

    /* renamed from: b  reason: collision with root package name */
    private static final int f30341b = a.k.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: c  reason: collision with root package name */
    private final List<b> f30342c;

    /* renamed from: d  reason: collision with root package name */
    private final a f30343d;
    private final d e;
    private final LinkedHashSet<c> f;
    private final Comparator<MaterialButton> g;
    private Integer[] h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$a.class */
    final class a implements MaterialButton.a {
        private a() {
        }

        @Override // com.google.android.material.button.MaterialButton.a
        public final void a(MaterialButton materialButton, boolean z) {
            if (!MaterialButtonToggleGroup.this.i) {
                if (MaterialButtonToggleGroup.this.j) {
                    MaterialButtonToggleGroup.this.l = z ? materialButton.getId() : -1;
                }
                if (MaterialButtonToggleGroup.this.b(materialButton.getId(), z)) {
                    MaterialButtonToggleGroup.this.c(materialButton.getId(), materialButton.isChecked());
                }
                MaterialButtonToggleGroup.this.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$b.class */
    public static final class b {
        private static final com.google.android.material.k.c e = new com.google.android.material.k.a(BitmapDescriptorFactory.HUE_RED);

        /* renamed from: a  reason: collision with root package name */
        com.google.android.material.k.c f30347a;

        /* renamed from: b  reason: collision with root package name */
        com.google.android.material.k.c f30348b;

        /* renamed from: c  reason: collision with root package name */
        com.google.android.material.k.c f30349c;

        /* renamed from: d  reason: collision with root package name */
        com.google.android.material.k.c f30350d;

        b(com.google.android.material.k.c cVar, com.google.android.material.k.c cVar2, com.google.android.material.k.c cVar3, com.google.android.material.k.c cVar4) {
            this.f30347a = cVar;
            this.f30348b = cVar3;
            this.f30349c = cVar4;
            this.f30350d = cVar2;
        }

        public static b a(b bVar) {
            com.google.android.material.k.c cVar = bVar.f30347a;
            com.google.android.material.k.c cVar2 = e;
            return new b(cVar, cVar2, bVar.f30348b, cVar2);
        }

        public static b a(b bVar, View view) {
            return r.a(view) ? d(bVar) : c(bVar);
        }

        public static b b(b bVar) {
            com.google.android.material.k.c cVar = e;
            return new b(cVar, bVar.f30350d, cVar, bVar.f30349c);
        }

        public static b b(b bVar, View view) {
            return r.a(view) ? c(bVar) : d(bVar);
        }

        private static b c(b bVar) {
            com.google.android.material.k.c cVar = bVar.f30347a;
            com.google.android.material.k.c cVar2 = bVar.f30350d;
            com.google.android.material.k.c cVar3 = e;
            return new b(cVar, cVar2, cVar3, cVar3);
        }

        private static b d(b bVar) {
            com.google.android.material.k.c cVar = e;
            return new b(cVar, cVar, bVar.f30348b, bVar.f30349c);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$c.class */
    public interface c {
        void a(int i, boolean z);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$d.class */
    final class d implements MaterialButton.b {
        private d() {
        }

        @Override // com.google.android.material.button.MaterialButton.b
        public final void a() {
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButtonToggleGroup(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.button.MaterialButtonToggleGroup.f30341b
            r11 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            android.content.Context r1 = com.google.android.material.theme.a.a.a(r1, r2, r3, r4)
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = r1
            r2.<init>()
            r0.f30342c = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$a r1 = new com.google.android.material.button.MaterialButtonToggleGroup$a
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.f30343d = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$d r1 = new com.google.android.material.button.MaterialButtonToggleGroup$d
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.e = r1
            r0 = r7
            java.util.LinkedHashSet r1 = new java.util.LinkedHashSet
            r2 = r1
            r2.<init>()
            r0.f = r1
            r0 = r7
            com.google.android.material.button.MaterialButtonToggleGroup$1 r1 = new com.google.android.material.button.MaterialButtonToggleGroup$1
            r2 = r1
            r3 = r7
            r2.<init>()
            r0.g = r1
            r0 = r7
            r1 = 0
            r0.i = r1
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = com.google.android.material.a.l.MaterialButtonToggleGroup
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.l.a(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.MaterialButtonToggleGroup_singleSelection
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleSelection(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.MaterialButtonToggleGroup_checkedButton
            r3 = -1
            int r1 = r1.getResourceId(r2, r3)
            r0.l = r1
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.MaterialButtonToggleGroup_selectionRequired
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.k = r1
            r0 = r7
            r1 = 1
            r0.setChildrenDrawingOrderEnabled(r1)
            r0 = r8
            r0.recycle()
            r0 = r7
            r1 = 1
            androidx.core.view.v.c(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonToggleGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    static /* synthetic */ int a(MaterialButtonToggleGroup materialButtonToggleGroup, View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < materialButtonToggleGroup.getChildCount(); i2++) {
            if (materialButtonToggleGroup.getChildAt(i2) == view) {
                return i;
            }
            i = i;
            if (materialButtonToggleGroup.getChildAt(i2) instanceof MaterialButton) {
                i = i;
                if (materialButtonToggleGroup.e(i2)) {
                    i++;
                }
            }
        }
        return -1;
    }

    private static LinearLayout.LayoutParams a(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private b a(int i, int i2, int i3) {
        b bVar = this.f30342c.get(i);
        if (i2 == i3) {
            return bVar;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? b.a(bVar, this) : b.a(bVar);
        }
        if (i == i3) {
            return z ? b.b(bVar, this) : b.b(bVar);
        }
        return null;
    }

    private List<Integer> a() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton c2 = c(i);
            if (c2.isChecked()) {
                arrayList.add(Integer.valueOf(c2.getId()));
            }
        }
        return arrayList;
    }

    private void a(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof MaterialButton) {
            this.i = true;
            ((MaterialButton) findViewById).setChecked(z);
            this.i = false;
        }
    }

    private static void a(m.a aVar, b bVar) {
        if (bVar == null) {
            aVar.a(BitmapDescriptorFactory.HUE_RED);
            return;
        }
        aVar.e = bVar.f30347a;
        aVar.h = bVar.f30350d;
        aVar.f = bVar.f30348b;
        aVar.g = bVar.f30349c;
    }

    private void b() {
        int d2 = d();
        if (d2 != -1) {
            for (int i = d2 + 1; i < getChildCount(); i++) {
                MaterialButton c2 = c(i);
                int min = Math.min(c2.c(), c(i - 1).c());
                LinearLayout.LayoutParams a2 = a(c2);
                if (getOrientation() == 0) {
                    h.b(a2, 0);
                    h.a(a2, -min);
                    a2.topMargin = 0;
                } else {
                    a2.bottomMargin = 0;
                    a2.topMargin = -min;
                    h.a(a2, 0);
                }
                c2.setLayoutParams(a2);
            }
            d(d2);
        }
    }

    private void b(int i) {
        this.l = i;
        c(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(int i, boolean z) {
        List<Integer> a2 = a();
        if (this.k && a2.isEmpty()) {
            a(i, true);
            this.l = i;
            return false;
        } else if (!z || !this.j) {
            return true;
        } else {
            a2.remove(Integer.valueOf(i));
            for (Integer num : a2) {
                int intValue = num.intValue();
                a(intValue, false);
                c(intValue, false);
            }
            return true;
        }
    }

    private MaterialButton c(int i) {
        return (MaterialButton) getChildAt(i);
    }

    private void c() {
        int childCount = getChildCount();
        int d2 = d();
        int e = e();
        for (int i = 0; i < childCount; i++) {
            MaterialButton c2 = c(i);
            if (c2.getVisibility() != 8) {
                m.a b2 = c2.d().b();
                a(b2, a(i, d2, e));
                c2.setShapeAppearanceModel(b2.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i, boolean z) {
        Iterator<c> it2 = this.f.iterator();
        while (it2.hasNext()) {
            it2.next().a(i, z);
        }
    }

    private int d() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (e(i)) {
                return i;
            }
        }
        return -1;
    }

    private void d(int i) {
        if (getChildCount() != 0 && i != -1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) c(i).getLayoutParams();
            if (getOrientation() == 1) {
                layoutParams.topMargin = 0;
                layoutParams.bottomMargin = 0;
                return;
            }
            h.b(layoutParams, 0);
            h.a(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    private int e() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (e(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private boolean e(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    private void f(int i) {
        a(i, true);
        b(i, true);
        b(i);
    }

    public final void a(int i) {
        if (i != this.l) {
            f(i);
        }
    }

    public final void a(c cVar) {
        this.f.add(cVar);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(f30340a, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        if (materialButton.getId() == -1) {
            materialButton.setId(v.a());
        }
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.f30338b.add(this.f30343d);
        materialButton.f30339c = this.e;
        if (materialButton.e()) {
            com.google.android.material.button.a aVar = materialButton.f30337a;
            aVar.o = true;
            aVar.c();
        }
        if (materialButton.isChecked()) {
            b(materialButton.getId(), true);
            b(materialButton.getId());
        }
        m d2 = materialButton.d();
        this.f30342c.add(new b(d2.f, d2.i, d2.g, d2.h));
        v.a(materialButton, new androidx.core.view.a() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.2
            @Override // androidx.core.view.a
            public final void a(View view2, androidx.core.view.a.c cVar) {
                super.a(view2, cVar);
                cVar.b(c.C0052c.a(0, 1, MaterialButtonToggleGroup.a(MaterialButtonToggleGroup.this, view2), 1, ((MaterialButton) view2).isChecked()));
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.g);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(c(i), Integer.valueOf(i));
        }
        this.h = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.h;
        if (numArr != null && i2 < numArr.length) {
            return numArr[i2].intValue();
        }
        Log.w(f30340a, "Child order wasn't updated");
        return i2;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.l;
        if (i != -1) {
            f(i);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.a.c a2 = androidx.core.view.a.c.a(accessibilityNodeInfo);
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            i = i;
            if (getChildAt(i2) instanceof MaterialButton) {
                i = i;
                if (e(i2)) {
                    i++;
                }
            }
        }
        a2.a(c.b.a(1, i, false, this.j ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        c();
        b();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.f30338b.remove(this.f30343d);
            materialButton.f30339c = null;
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f30342c.remove(indexOfChild);
        }
        c();
        b();
    }

    public void setSelectionRequired(boolean z) {
        this.k = z;
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.j != z) {
            this.j = z;
            this.i = true;
            for (int i = 0; i < getChildCount(); i++) {
                MaterialButton c2 = c(i);
                c2.setChecked(false);
                c(c2.getId(), false);
            }
            this.i = false;
            b(-1);
        }
    }
}
