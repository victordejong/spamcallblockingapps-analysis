package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4690c;
import com.google.android.material.internal.C4702i;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup.class */
public class ChipGroup extends C4690c {

    /* renamed from: a */
    private int f19921a;

    /* renamed from: b */
    private int f19922b;

    /* renamed from: c */
    private boolean f19923c;

    /* renamed from: d */
    private AbstractC4585c f19924d;

    /* renamed from: e */
    private final C4583a f19925e;

    /* renamed from: f */
    private ViewGroup$OnHierarchyChangeListenerC4586d f19926f;

    /* renamed from: g */
    private int f19927g;

    /* renamed from: h */
    private boolean f19928h;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.chip.ChipGroup$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$a.class */
    public class C4583a implements CompoundButton.OnCheckedChangeListener {
        private C4583a() {
            ChipGroup.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (ChipGroup.this.f19928h) {
                return;
            }
            int id = compoundButton.getId();
            if (!z) {
                if (ChipGroup.this.f19927g != id) {
                    return;
                }
                ChipGroup.this.setCheckedId(-1);
                return;
            }
            if (ChipGroup.this.f19927g != -1 && ChipGroup.this.f19927g != id && ChipGroup.this.f19923c) {
                ChipGroup.this.m3436a(ChipGroup.this.f19927g, false);
            }
            ChipGroup.this.setCheckedId(id);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$b.class */
    public static class C4584b extends ViewGroup.MarginLayoutParams {
        public C4584b(int i, int i2) {
            super(i, i2);
        }

        public C4584b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C4584b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$c.class */
    public interface AbstractC4585c {
        /* renamed from: a */
        void m3429a(ChipGroup chipGroup, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.chip.ChipGroup$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$d.class */
    public class ViewGroup$OnHierarchyChangeListenerC4586d implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: b */
        private ViewGroup.OnHierarchyChangeListener f19931b;

        private ViewGroup$OnHierarchyChangeListenerC4586d() {
            ChipGroup.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(Build.VERSION.SDK_INT >= 17 ? View.generateViewId() : view2.hashCode());
                }
                ((Chip) view2).setOnCheckedChangeListenerInternal(ChipGroup.this.f19925e);
            }
            if (this.f19931b != null) {
                this.f19931b.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            if (this.f19931b != null) {
                this.f19931b.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.chipGroupStyle);
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19925e = new C4583a();
        this.f19926f = new ViewGroup$OnHierarchyChangeListenerC4586d();
        this.f19927g = -1;
        this.f19928h = false;
        TypedArray m2825a = C4702i.m2825a(context, attributeSet, C4492a.C4504l.ChipGroup, i, C4492a.C4503k.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = m2825a.getDimensionPixelOffset(C4492a.C4504l.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(m2825a.getDimensionPixelOffset(C4492a.C4504l.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(m2825a.getDimensionPixelOffset(C4492a.C4504l.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(m2825a.getBoolean(C4492a.C4504l.ChipGroup_singleLine, false));
        setSingleSelection(m2825a.getBoolean(C4492a.C4504l.ChipGroup_singleSelection, false));
        int resourceId = m2825a.getResourceId(C4492a.C4504l.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.f19927g = resourceId;
        }
        m2825a.recycle();
        super.setOnHierarchyChangeListener(this.f19926f);
    }

    /* renamed from: a */
    public void m3436a(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.f19928h = true;
            ((Chip) findViewById).setChecked(z);
            this.f19928h = false;
        }
    }

    public void setCheckedId(int i) {
        this.f19927g = i;
        if (this.f19924d == null || !this.f19923c) {
            return;
        }
        this.f19924d.m3429a(this, i);
    }

    /* renamed from: a */
    public void m3437a() {
        this.f19928h = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.f19928h = false;
        setCheckedId(-1);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                if (this.f19927g != -1 && this.f19923c) {
                    m3436a(this.f19927g, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // com.google.android.material.internal.C4690c
    /* renamed from: b */
    public boolean mo2852b() {
        return super.mo2852b();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C4584b);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C4584b(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C4584b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C4584b(layoutParams);
    }

    public int getCheckedChipId() {
        return this.f19923c ? this.f19927g : -1;
    }

    public int getChipSpacingHorizontal() {
        return this.f19921a;
    }

    public int getChipSpacingVertical() {
        return this.f19922b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.f19927g != -1) {
            m3436a(this.f19927g, true);
            setCheckedId(this.f19927g);
        }
    }

    public void setChipSpacing(int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(int i) {
        if (this.f19921a != i) {
            this.f19921a = i;
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
        if (this.f19922b != i) {
            this.f19922b = i;
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

    public void setOnCheckedChangeListener(AbstractC4585c abstractC4585c) {
        this.f19924d = abstractC4585c;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f19926f.f19931b = onHierarchyChangeListener;
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

    @Override // com.google.android.material.internal.C4690c
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f19923c != z) {
            this.f19923c = z;
            m3437a();
        }
    }
}
