package com.google.android.material.chip;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.core.view.a.c;
import androidx.core.view.v;
import com.google.android.material.a;
import com.google.android.material.internal.FlowLayout;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup.class */
public class ChipGroup extends FlowLayout {

    /* renamed from: c  reason: collision with root package name */
    private static final int f30375c = a.k.Widget_MaterialComponents_ChipGroup;

    /* renamed from: a  reason: collision with root package name */
    boolean f30376a;

    /* renamed from: b  reason: collision with root package name */
    int f30377b;

    /* renamed from: d  reason: collision with root package name */
    private int f30378d;
    private int e;
    private boolean f;
    private b g;
    private final a h;
    private c i;
    private boolean j;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup$LayoutParams.class */
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

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup$a.class */
    final class a implements CompoundButton.OnCheckedChangeListener {
        private a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!ChipGroup.this.j) {
                ChipGroup chipGroup = ChipGroup.this;
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < chipGroup.getChildCount(); i++) {
                    View childAt = chipGroup.getChildAt(i);
                    if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                        arrayList.add(Integer.valueOf(childAt.getId()));
                        if (chipGroup.f30376a) {
                            break;
                        }
                    }
                }
                if (!arrayList.isEmpty() || !ChipGroup.this.f) {
                    int id = compoundButton.getId();
                    if (z) {
                        if (!(ChipGroup.this.f30377b == -1 || ChipGroup.this.f30377b == id || !ChipGroup.this.f30376a)) {
                            ChipGroup chipGroup2 = ChipGroup.this;
                            chipGroup2.a(chipGroup2.f30377b, false);
                        }
                        ChipGroup.this.f30377b = id;
                    } else if (ChipGroup.this.f30377b == id) {
                        ChipGroup.this.f30377b = -1;
                    }
                } else {
                    ChipGroup.this.a(compoundButton.getId(), true);
                    ChipGroup.this.f30377b = compoundButton.getId();
                }
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup$b.class */
    public interface b {
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup$c.class */
    final class c implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private ViewGroup.OnHierarchyChangeListener f30381b;

        private c() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(v.a());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ChipGroup chipGroup = (ChipGroup) view;
                    int id = chip.getId();
                    if (id != chipGroup.f30377b) {
                        if (chipGroup.f30377b != -1 && chipGroup.f30376a) {
                            chipGroup.a(chipGroup.f30377b, false);
                        }
                        if (id != -1) {
                            chipGroup.a(id, true);
                        }
                        chipGroup.f30377b = id;
                    }
                }
                chip.f30372b = ChipGroup.this.h;
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f30381b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).f30372b = null;
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f30381b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.chipGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChipGroup(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.chip.ChipGroup.f30375c
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
            com.google.android.material.chip.ChipGroup$a r1 = new com.google.android.material.chip.ChipGroup$a
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.h = r1
            r0 = r7
            com.google.android.material.chip.ChipGroup$c r1 = new com.google.android.material.chip.ChipGroup$c
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.i = r1
            r0 = r7
            r1 = -1
            r0.f30377b = r1
            r0 = r7
            r1 = 0
            r0.j = r1
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = com.google.android.material.a.l.ChipGroup
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.l.a(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r8
            int r1 = com.google.android.material.a.l.ChipGroup_chipSpacing
            r2 = 0
            int r0 = r0.getDimensionPixelOffset(r1, r2)
            r10 = r0
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.ChipGroup_chipSpacingHorizontal
            r3 = r10
            int r1 = r1.getDimensionPixelOffset(r2, r3)
            r0.setChipSpacingHorizontal(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.ChipGroup_chipSpacingVertical
            r3 = r10
            int r1 = r1.getDimensionPixelOffset(r2, r3)
            r0.setChipSpacingVertical(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.ChipGroup_singleLine
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleLine(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.ChipGroup_singleSelection
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleSelection(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.ChipGroup_selectionRequired
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSelectionRequired(r1)
            r0 = r8
            int r1 = com.google.android.material.a.l.ChipGroup_checkedChip
            r2 = -1
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L_0x00a1
            r0 = r7
            r1 = r10
            r0.f30377b = r1
        L_0x00a1:
            r0 = r8
            r0.recycle()
            r0 = r7
            r1 = r7
            com.google.android.material.chip.ChipGroup$c r1 = r1.i
            super.setOnHierarchyChangeListener(r1)
            r0 = r7
            r1 = 1
            androidx.core.view.v.c(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.ChipGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.j = true;
            ((Chip) findViewById).setChecked(z);
            this.j = false;
        }
    }

    @Override // com.google.android.material.internal.FlowLayout
    public final boolean a() {
        return super.a();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f30377b;
                if (i2 != -1 && this.f30376a) {
                    a(i2, false);
                }
                this.f30377b = chip.getId();
            }
        }
        super.addView(view, i, layoutParams);
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

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f30377b;
        if (i != -1) {
            a(i, true);
            this.f30377b = this.f30377b;
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.a.c a2 = androidx.core.view.a.c.a(accessibilityNodeInfo);
        if (super.a()) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= getChildCount()) {
                    break;
                }
                i3 = i3;
                if (getChildAt(i2) instanceof Chip) {
                    i3++;
                }
                i2++;
            }
        } else {
            i = -1;
        }
        a2.a(c.b.a(b(), i, false, this.f30376a ? 1 : 2));
    }

    public void setChipSpacing(int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(int i) {
        if (this.f30378d != i) {
            this.f30378d = i;
            b(i);
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
        if (this.e != i) {
            this.e = i;
            a(i);
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

    public void setOnCheckedChangeListener(b bVar) {
        this.g = bVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.i.f30381b = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f = z;
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
        if (this.f30376a != z) {
            this.f30376a = z;
            this.j = true;
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof Chip) {
                    ((Chip) childAt).setChecked(false);
                }
            }
            this.j = false;
            this.f30377b = -1;
        }
    }
}
