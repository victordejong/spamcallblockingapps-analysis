package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1027R;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup.class */
public class ChipGroup extends FlowLayout {

    /* renamed from: s */
    private static final int f10452s = C1027R.style.Widget_MaterialComponents_ChipGroup;
    @Dimension

    /* renamed from: j */
    private int f10453j;
    @Dimension

    /* renamed from: k */
    private int f10454k;

    /* renamed from: l */
    private boolean f10455l;

    /* renamed from: m */
    private boolean f10456m;
    @Nullable

    /* renamed from: n */
    private OnCheckedChangeListener f10457n;

    /* renamed from: o */
    private final CheckedStateTracker f10458o;
    @NonNull

    /* renamed from: p */
    private PassThroughHierarchyChangeListener f10459p;
    @IdRes

    /* renamed from: q */
    private int f10460q;

    /* renamed from: r */
    private boolean f10461r;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$CheckedStateTracker.class */
    private class CheckedStateTracker implements CompoundButton.OnCheckedChangeListener {
        private CheckedStateTracker() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(@NonNull CompoundButton compoundButton, boolean z) {
            if (!ChipGroup.this.f10461r) {
                if (!ChipGroup.this.getCheckedChipIds().isEmpty() || !ChipGroup.this.f10456m) {
                    int id = compoundButton.getId();
                    if (z) {
                        if (!(ChipGroup.this.f10460q == -1 || ChipGroup.this.f10460q == id || !ChipGroup.this.f10455l)) {
                            ChipGroup chipGroup = ChipGroup.this;
                            chipGroup.m10049q(chipGroup.f10460q, false);
                        }
                        ChipGroup.this.setCheckedId(id);
                    } else if (ChipGroup.this.f10460q == id) {
                        ChipGroup.this.setCheckedId(-1);
                    }
                } else {
                    ChipGroup.this.m10049q(compoundButton.getId(), true);
                    ChipGroup.this.m10050p(compoundButton.getId(), false);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$LayoutParams.class */
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

    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$OnCheckedChangeListener.class */
    public interface OnCheckedChangeListener {
        /* renamed from: a */
        void m10048a(ChipGroup chipGroup, @IdRes int i);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener.class */
    private class PassThroughHierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: f */
        private ViewGroup.OnHierarchyChangeListener f10463f;

        private PassThroughHierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(Build.VERSION.SDK_INT >= 17 ? View.generateViewId() : view2.hashCode());
                }
                ((Chip) view2).setOnCheckedChangeListenerInternal(ChipGroup.this.f10458o);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f10463f;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f10463f;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.chipGroupStyle);
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10452s), attributeSet, i);
        this.f10458o = new CheckedStateTracker();
        this.f10459p = new PassThroughHierarchyChangeListener();
        this.f10460q = -1;
        this.f10461r = false;
        TypedArray h = ThemeEnforcement.m9445h(getContext(), attributeSet, C1027R.styleable.ChipGroup, i, f10452s, new int[0]);
        int dimensionPixelOffset = h.getDimensionPixelOffset(C1027R.styleable.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(h.getDimensionPixelOffset(C1027R.styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(h.getDimensionPixelOffset(C1027R.styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(h.getBoolean(C1027R.styleable.ChipGroup_singleLine, false));
        setSingleSelection(h.getBoolean(C1027R.styleable.ChipGroup_singleSelection, false));
        setSelectionRequired(h.getBoolean(C1027R.styleable.ChipGroup_selectionRequired, false));
        int resourceId = h.getResourceId(C1027R.styleable.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.f10460q = resourceId;
        }
        h.recycle();
        super.setOnHierarchyChangeListener(this.f10459p);
        ViewCompat.m19163x0(this, 1);
    }

    private int getChipCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            i = i;
            if (getChildAt(i2) instanceof Chip) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m10050p(int i, boolean z) {
        this.f10460q = i;
        OnCheckedChangeListener onCheckedChangeListener = this.f10457n;
        if (onCheckedChangeListener != null && this.f10455l && z) {
            onCheckedChangeListener.m10048a(this, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public void m10049q(@IdRes int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.f10461r = true;
            ((Chip) findViewById).setChecked(z);
            this.f10461r = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i) {
        m10050p(i, true);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f10460q;
                if (i2 != -1 && this.f10455l) {
                    m10049q(i2, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // com.google.android.material.internal.FlowLayout
    /* renamed from: c */
    public boolean mo9549c() {
        return super.mo9549c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    @Override // android.view.ViewGroup
    @NonNull
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    @NonNull
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @IdRes
    public int getCheckedChipId() {
        return this.f10455l ? this.f10460q : -1;
    }

    @NonNull
    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.f10455l) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    @Dimension
    public int getChipSpacingHorizontal() {
        return this.f10453j;
    }

    @Dimension
    public int getChipSpacingVertical() {
        return this.f10454k;
    }

    /* renamed from: m */
    public void m10053m() {
        this.f10461r = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.f10461r = false;
        setCheckedId(-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m10052n(@Nullable View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            i = i;
            if (getChildAt(i2) instanceof Chip) {
                if (((Chip) getChildAt(i2)) == view) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    /* renamed from: o */
    public boolean m10051o() {
        return this.f10455l;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f10460q;
        if (i != -1) {
            m10049q(i, true);
            setCheckedId(this.f10460q);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo).m19022e0(AccessibilityNodeInfoCompat.CollectionInfoCompat.m18974b(getRowCount(), mo9549c() ? getChipCount() : -1, false, m10051o() ? 1 : 2));
    }

    public void setChipSpacing(@Dimension int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(@Dimension int i) {
        if (this.f10453j != i) {
            this.f10453j = i;
            setItemSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@DimenRes int i) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingResource(@DimenRes int i) {
        setChipSpacing(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingVertical(@Dimension int i) {
        if (this.f10454k != i) {
            this.f10454k = i;
            setLineSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@DimenRes int i) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f10457n = onCheckedChangeListener;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f10459p.f10463f = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f10456m = z;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    public void setSingleLine(@BoolRes int i) {
        setSingleLine(getResources().getBoolean(i));
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleSelection(@BoolRes int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f10455l != z) {
            this.f10455l = z;
            m10053m();
        }
    }
}
