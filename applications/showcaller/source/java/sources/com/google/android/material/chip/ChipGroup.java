package com.google.android.material.chip;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import com.google.android.material.internal.FlowLayout;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup.class */
public class ChipGroup extends FlowLayout {

    /* renamed from: h */
    private static final int f36444h = C1895k.Widget_MaterialComponents_ChipGroup;

    /* renamed from: i */
    private int f36445i;

    /* renamed from: j */
    private int f36446j;

    /* renamed from: k */
    private boolean f36447k;

    /* renamed from: l */
    private boolean f36448l;

    /* renamed from: m */
    private AbstractC8059c f36449m;

    /* renamed from: n */
    private final C8058b f36450n;

    /* renamed from: o */
    private ViewGroup$OnHierarchyChangeListenerC8060d f36451o;

    /* renamed from: p */
    private int f36452p;

    /* renamed from: q */
    private boolean f36453q;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.chip.ChipGroup$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup$b.class */
    public class C8058b implements CompoundButton.OnCheckedChangeListener {
        private C8058b() {
            ChipGroup.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (ChipGroup.this.f36453q) {
                return;
            }
            if (ChipGroup.this.getCheckedChipIds().isEmpty() && ChipGroup.this.f36448l) {
                ChipGroup.this.m5206r(compoundButton.getId(), true);
                ChipGroup.this.m5207q(compoundButton.getId(), false);
                return;
            }
            int id = compoundButton.getId();
            if (!z) {
                if (ChipGroup.this.f36452p != id) {
                    return;
                }
                ChipGroup.this.setCheckedId(-1);
                return;
            }
            if (ChipGroup.this.f36452p != -1 && ChipGroup.this.f36452p != id && ChipGroup.this.f36447k) {
                ChipGroup chipGroup = ChipGroup.this;
                chipGroup.m5206r(chipGroup.f36452p, false);
            }
            ChipGroup.this.setCheckedId(id);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup$c.class */
    public interface AbstractC8059c {
        /* renamed from: a */
        void m5205a(ChipGroup chipGroup, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.chip.ChipGroup$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup$d.class */
    public class ViewGroup$OnHierarchyChangeListenerC8060d implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: d */
        private ViewGroup.OnHierarchyChangeListener f36455d;

        private ViewGroup$OnHierarchyChangeListenerC8060d() {
            ChipGroup.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(C1679w.m29288k());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ((ChipGroup) view).m5211m(chip.getId());
                }
                chip.setOnCheckedChangeListenerInternal(ChipGroup.this.f36450n);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f36455d;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f36455d;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.chipGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChipGroup(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.chip.ChipGroup.f36444h
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
            com.google.android.material.chip.ChipGroup$b r1 = new com.google.android.material.chip.ChipGroup$b
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.f36450n = r1
            r0 = r7
            com.google.android.material.chip.ChipGroup$d r1 = new com.google.android.material.chip.ChipGroup$d
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.f36451o = r1
            r0 = r7
            r1 = -1
            r0.f36452p = r1
            r0 = r7
            r1 = 0
            r0.f36453q = r1
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = p078c.p084c.p085a.p096b.C1896l.ChipGroup
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C8203l.m4462h(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r8
            int r1 = p078c.p084c.p085a.p096b.C1896l.ChipGroup_chipSpacing
            r2 = 0
            int r0 = r0.getDimensionPixelOffset(r1, r2)
            r10 = r0
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.ChipGroup_chipSpacingHorizontal
            r3 = r10
            int r1 = r1.getDimensionPixelOffset(r2, r3)
            r0.setChipSpacingHorizontal(r1)
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.ChipGroup_chipSpacingVertical
            r3 = r10
            int r1 = r1.getDimensionPixelOffset(r2, r3)
            r0.setChipSpacingVertical(r1)
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.ChipGroup_singleLine
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleLine(r1)
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.ChipGroup_singleSelection
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleSelection(r1)
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.ChipGroup_selectionRequired
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSelectionRequired(r1)
            r0 = r8
            int r1 = p078c.p084c.p085a.p096b.C1896l.ChipGroup_checkedChip
            r2 = -1
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto La1
            r0 = r7
            r1 = r10
            r0.f36452p = r1
        La1:
            r0 = r8
            r0.recycle()
            r0 = r7
            r1 = r7
            com.google.android.material.chip.ChipGroup$d r1 = r1.f36451o
            super.setOnHierarchyChangeListener(r1)
            r0 = r7
            r1 = 1
            p020b.p041h.p050l.C1679w.m29347B0(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.ChipGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private int getChipCount() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < getChildCount()) {
                int i4 = i3;
                if (getChildAt(i) instanceof Chip) {
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: q */
    public void m5207q(int i, boolean z) {
        this.f36452p = i;
        AbstractC8059c abstractC8059c = this.f36449m;
        if (abstractC8059c == null || !this.f36447k || !z) {
            return;
        }
        abstractC8059c.m5205a(this, i);
    }

    /* renamed from: r */
    public void m5206r(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.f36453q = true;
            ((Chip) findViewById).setChecked(z);
            this.f36453q = false;
        }
    }

    public void setCheckedId(int i) {
        m5207q(i, true);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f36452p;
                if (i2 != -1 && this.f36447k) {
                    m5206r(i2, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // com.google.android.material.internal.FlowLayout
    /* renamed from: c */
    public boolean mo4647c() {
        return super.mo4647c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getCheckedChipId() {
        return this.f36447k ? this.f36452p : -1;
    }

    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.f36447k) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    public int getChipSpacingHorizontal() {
        return this.f36445i;
    }

    public int getChipSpacingVertical() {
        return this.f36446j;
    }

    /* renamed from: m */
    public void m5211m(int i) {
        int i2 = this.f36452p;
        if (i == i2) {
            return;
        }
        if (i2 != -1 && this.f36447k) {
            m5206r(i2, false);
        }
        if (i != -1) {
            m5206r(i, true);
        }
        setCheckedId(i);
    }

    /* renamed from: n */
    public void m5210n() {
        this.f36453q = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.f36453q = false;
        setCheckedId(-1);
    }

    /* renamed from: o */
    public int m5209o(View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= getChildCount()) {
                return -1;
            }
            int i4 = i3;
            if (getChildAt(i) instanceof Chip) {
                if (((Chip) getChildAt(i)) == view) {
                    return i3;
                }
                i4 = i3 + 1;
            }
            i++;
            i2 = i4;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f36452p;
        if (i != -1) {
            m5206r(i, true);
            setCheckedId(this.f36452p);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C1634c.m29513H0(accessibilityNodeInfo).m29485e0(C1634c.C1636b.m29437b(getRowCount(), mo4647c() ? getChipCount() : -1, false, m5208p() ? 1 : 2));
    }

    /* renamed from: p */
    public boolean m5208p() {
        return this.f36447k;
    }

    public void setChipSpacing(int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(int i) {
        if (this.f36445i != i) {
            this.f36445i = i;
            setItemSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingResource(int i) {
        setChipSpacing(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingVertical(int i) {
        if (this.f36446j != i) {
            this.f36446j = i;
            setLineSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(AbstractC8059c abstractC8059c) {
        this.f36449m = abstractC8059c;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f36451o.f36455d = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f36448l = z;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    public void setSingleLine(int i) {
        setSingleLine(getResources().getBoolean(i));
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f36447k != z) {
            this.f36447k = z;
            m5210n();
        }
    }
}
