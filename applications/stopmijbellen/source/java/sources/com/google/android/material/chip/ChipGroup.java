package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p102g4.C2811a;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p262v3.C4604e;
import p262v3.C4634p;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup.class */
public class ChipGroup extends C4604e {

    /* renamed from: e */
    public int f6428e;

    /* renamed from: f */
    public int f6429f;

    /* renamed from: g */
    public boolean f6430g;

    /* renamed from: h */
    public boolean f6431h;

    /* renamed from: i */
    public AbstractC1722d f6432i;

    /* renamed from: l */
    public int f6435l;

    /* renamed from: j */
    public final C1720b f6433j = new C1720b(null);

    /* renamed from: k */
    public ViewGroup$OnHierarchyChangeListenerC1723e f6434k = new ViewGroup$OnHierarchyChangeListenerC1723e(null);

    /* renamed from: m */
    public boolean f6436m = false;

    /* renamed from: com.google.android.material.chip.ChipGroup$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$b.class */
    public class C1720b implements CompoundButton.OnCheckedChangeListener {
        public C1720b(C1719a c1719a) {
            ChipGroup.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            ChipGroup chipGroup = ChipGroup.this;
            if (chipGroup.f6436m) {
                return;
            }
            if (chipGroup.getCheckedChipIds().isEmpty()) {
                ChipGroup chipGroup2 = ChipGroup.this;
                if (chipGroup2.f6431h) {
                    chipGroup2.m4694d(compoundButton.getId(), true);
                    ChipGroup.this.f6435l = compoundButton.getId();
                    return;
                }
            }
            int id = compoundButton.getId();
            if (!z) {
                ChipGroup chipGroup3 = ChipGroup.this;
                if (chipGroup3.f6435l != id) {
                    return;
                }
                chipGroup3.setCheckedId(-1);
                return;
            }
            ChipGroup chipGroup4 = ChipGroup.this;
            int i = chipGroup4.f6435l;
            if (i != -1 && i != id && chipGroup4.f6430g) {
                chipGroup4.m4694d(i, false);
            }
            ChipGroup.this.setCheckedId(id);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$c.class */
    public static class C1721c extends ViewGroup.MarginLayoutParams {
        public C1721c(int i, int i2) {
            super(i, i2);
        }

        public C1721c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C1721c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$d.class */
    public interface AbstractC1722d {
        /* renamed from: a */
        void m4693a(ChipGroup chipGroup, int i);
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$e.class */
    public class ViewGroup$OnHierarchyChangeListenerC1723e implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: a */
        public ViewGroup.OnHierarchyChangeListener f6438a;

        public ViewGroup$OnHierarchyChangeListenerC1723e(C1719a c1719a) {
            ChipGroup.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    view2.setId(C3589v.C3594e.m2074a());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ((ChipGroup) view).m4695c(chip.getId());
                }
                chip.setOnCheckedChangeListenerInternal(ChipGroup.this.f6433j);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f6438a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f6438a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 2130968764, 2131887068), attributeSet, 2130968764);
        this.f6435l = -1;
        TypedArray m687d = C4634p.m687d(getContext(), attributeSet, C3260w0.f11027h, 2130968764, 2131887068, new int[0]);
        int dimensionPixelOffset = m687d.getDimensionPixelOffset(1, 0);
        setChipSpacingHorizontal(m687d.getDimensionPixelOffset(2, dimensionPixelOffset));
        setChipSpacingVertical(m687d.getDimensionPixelOffset(3, dimensionPixelOffset));
        setSingleLine(m687d.getBoolean(5, false));
        setSingleSelection(m687d.getBoolean(6, false));
        setSelectionRequired(m687d.getBoolean(4, false));
        int resourceId = m687d.getResourceId(0, -1);
        if (resourceId != -1) {
            this.f6435l = resourceId;
        }
        m687d.recycle();
        super.setOnHierarchyChangeListener(this.f6434k);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2075s(this, 1);
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

    public void setCheckedId(int i) {
        this.f6435l = i;
        AbstractC1722d abstractC1722d = this.f6432i;
        if (abstractC1722d == null || !this.f6430g) {
            return;
        }
        abstractC1722d.m4693a(this, i);
    }

    @Override // p262v3.C4604e
    /* renamed from: a */
    public boolean mo718a() {
        return this.f14244c;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f6435l;
                if (i2 != -1 && this.f6430g) {
                    m4694d(i2, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    /* renamed from: c */
    public void m4695c(int i) {
        int i2 = this.f6435l;
        if (i == i2) {
            return;
        }
        if (i2 != -1 && this.f6430g) {
            m4694d(i2, false);
        }
        if (i != -1) {
            m4694d(i, true);
        }
        setCheckedId(i);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C1721c);
    }

    /* renamed from: d */
    public final void m4694d(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.f6436m = true;
            ((Chip) findViewById).setChecked(z);
            this.f6436m = false;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1721c(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1721c(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C1721c(layoutParams);
    }

    public int getCheckedChipId() {
        return this.f6430g ? this.f6435l : -1;
    }

    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.f6430g) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    public int getChipSpacingHorizontal() {
        return this.f6428e;
    }

    public int getChipSpacingVertical() {
        return this.f6429f;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f6435l;
        if (i != -1) {
            m4694d(i, true);
            setCheckedId(this.f6435l);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3694b.C3696b.m1866a(getRowCount(), this.f14244c ? getChipCount() : -1, false, this.f6430g ? 1 : 2).f12087a);
    }

    public void setChipSpacing(int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(int i) {
        if (this.f6428e != i) {
            this.f6428e = i;
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
        if (this.f6429f != i) {
            this.f6429f = i;
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

    public void setOnCheckedChangeListener(AbstractC1722d abstractC1722d) {
        this.f6432i = abstractC1722d;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f6434k.f6438a = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f6431h = z;
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

    @Override // p262v3.C4604e
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f6430g != z) {
            this.f6430g = z;
            this.f6436m = true;
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof Chip) {
                    ((Chip) childAt).setChecked(false);
                }
            }
            this.f6436m = false;
            setCheckedId(-1);
        }
    }
}
