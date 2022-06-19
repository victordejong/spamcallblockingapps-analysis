package com.google.android.material.chip;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import com.google.android.material.C14376a;
import com.google.android.material.internal.FlowLayout;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup.class */
public class ChipGroup extends FlowLayout {

    /* renamed from: c */
    private static final int f52832c = C14376a.C14387k.Widget_MaterialComponents_ChipGroup;

    /* renamed from: a */
    boolean f52833a;

    /* renamed from: b */
    int f52834b;

    /* renamed from: d */
    private int f52835d;

    /* renamed from: e */
    private int f52836e;

    /* renamed from: f */
    private boolean f52837f;

    /* renamed from: g */
    private AbstractC14482b f52838g;

    /* renamed from: h */
    private final C14481a f52839h;

    /* renamed from: i */
    private ViewGroup$OnHierarchyChangeListenerC14483c f52840i;

    /* renamed from: j */
    private boolean f52841j;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.chip.ChipGroup$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup$a.class */
    public final class C14481a implements CompoundButton.OnCheckedChangeListener {
        private C14481a() {
            ChipGroup.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (ChipGroup.this.f52841j) {
                return;
            }
            ChipGroup chipGroup = ChipGroup.this;
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < chipGroup.getChildCount(); i++) {
                View childAt = chipGroup.getChildAt(i);
                if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                    arrayList.add(Integer.valueOf(childAt.getId()));
                    if (chipGroup.f52833a) {
                        break;
                    }
                }
            }
            if (arrayList.isEmpty() && ChipGroup.this.f52837f) {
                ChipGroup.this.m10957a(compoundButton.getId(), true);
                ChipGroup.this.f52834b = compoundButton.getId();
                return;
            }
            int id = compoundButton.getId();
            if (!z) {
                if (ChipGroup.this.f52834b != id) {
                    return;
                }
                ChipGroup.this.f52834b = -1;
                return;
            }
            if (ChipGroup.this.f52834b != -1 && ChipGroup.this.f52834b != id && ChipGroup.this.f52833a) {
                ChipGroup chipGroup2 = ChipGroup.this;
                chipGroup2.m10957a(chipGroup2.f52834b, false);
            }
            ChipGroup.this.f52834b = id;
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup$b.class */
    public interface AbstractC14482b {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.chip.ChipGroup$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/ChipGroup$c.class */
    public final class ViewGroup$OnHierarchyChangeListenerC14483c implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: b */
        private ViewGroup.OnHierarchyChangeListener f52844b;

        private ViewGroup$OnHierarchyChangeListenerC14483c() {
            ChipGroup.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(C0926v.m44141a());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ChipGroup chipGroup = (ChipGroup) view;
                    int id = chip.getId();
                    if (id != chipGroup.f52834b) {
                        if (chipGroup.f52834b != -1 && chipGroup.f52833a) {
                            chipGroup.m10957a(chipGroup.f52834b, false);
                        }
                        if (id != -1) {
                            chipGroup.m10957a(id, true);
                        }
                        chipGroup.f52834b = id;
                    }
                }
                chip.f52814b = ChipGroup.this.f52839h;
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f52844b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).f52814b = null;
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f52844b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.chipGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChipGroup(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.chip.ChipGroup.f52832c
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
            com.google.android.material.chip.ChipGroup$a r1 = new com.google.android.material.chip.ChipGroup$a
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.f52839h = r1
            r0 = r7
            com.google.android.material.chip.ChipGroup$c r1 = new com.google.android.material.chip.ChipGroup$c
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>()
            r0.f52840i = r1
            r0 = r7
            r1 = -1
            r0.f52834b = r1
            r0 = r7
            r1 = 0
            r0.f52841j = r1
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = com.google.android.material.C14376a.C14388l.ChipGroup
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C14647l.m10508a(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r8
            int r1 = com.google.android.material.C14376a.C14388l.ChipGroup_chipSpacing
            r2 = 0
            int r0 = r0.getDimensionPixelOffset(r1, r2)
            r10 = r0
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.ChipGroup_chipSpacingHorizontal
            r3 = r10
            int r1 = r1.getDimensionPixelOffset(r2, r3)
            r0.setChipSpacingHorizontal(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.ChipGroup_chipSpacingVertical
            r3 = r10
            int r1 = r1.getDimensionPixelOffset(r2, r3)
            r0.setChipSpacingVertical(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.ChipGroup_singleLine
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleLine(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.ChipGroup_singleSelection
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSingleSelection(r1)
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.ChipGroup_selectionRequired
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.setSelectionRequired(r1)
            r0 = r8
            int r1 = com.google.android.material.C14376a.C14388l.ChipGroup_checkedChip
            r2 = -1
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto La1
            r0 = r7
            r1 = r10
            r0.f52834b = r1
        La1:
            r0 = r8
            r0.recycle()
            r0 = r7
            r1 = r7
            com.google.android.material.chip.ChipGroup$c r1 = r1.f52840i
            super.setOnHierarchyChangeListener(r1)
            r0 = r7
            r1 = 1
            androidx.core.view.C0926v.m44102c(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.ChipGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    public final void m10957a(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.f52841j = true;
            ((Chip) findViewById).setChecked(z);
            this.f52841j = false;
        }
    }

    @Override // com.google.android.material.internal.FlowLayout
    /* renamed from: a */
    public final boolean mo10620a() {
        return super.mo10620a();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f52834b;
                if (i2 != -1 && this.f52833a) {
                    m10957a(i2, false);
                }
                this.f52834b = chip.getId();
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
        int i = this.f52834b;
        if (i != -1) {
            m10957a(i, true);
            this.f52834b = this.f52834b;
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0869c m44278a = C0869c.m44278a(accessibilityNodeInfo);
        if (super.mo10620a()) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                i = i4;
                if (i2 >= getChildCount()) {
                    break;
                }
                int i5 = i4;
                if (getChildAt(i2) instanceof Chip) {
                    i5 = i4 + 1;
                }
                i2++;
                i3 = i5;
            }
        } else {
            i = -1;
        }
        m44278a.m44274a(C0869c.C0871b.m44235a(m10615b(), i, false, this.f52833a ? 1 : 2));
    }

    public void setChipSpacing(int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(int i) {
        if (this.f52835d != i) {
            this.f52835d = i;
            m10614b(i);
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
        if (this.f52836e != i) {
            this.f52836e = i;
            m10619a(i);
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

    public void setOnCheckedChangeListener(AbstractC14482b abstractC14482b) {
        this.f52838g = abstractC14482b;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f52840i.f52844b = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f52837f = z;
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
        if (this.f52833a != z) {
            this.f52833a = z;
            this.f52841j = true;
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof Chip) {
                    ((Chip) childAt).setChecked(false);
                }
            }
            this.f52841j = false;
            this.f52834b = -1;
        }
    }
}
