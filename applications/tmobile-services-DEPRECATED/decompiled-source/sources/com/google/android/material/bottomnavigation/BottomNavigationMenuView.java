package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.C1027R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.TextScale;
import java.util.HashSet;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenuView.class */
public class BottomNavigationMenuView extends ViewGroup implements MenuView {

    /* renamed from: E */
    private static final int[] f10159E = {16842912};

    /* renamed from: F */
    private static final int[] f10160F = {-16842910};

    /* renamed from: A */
    private int[] f10161A;
    @NonNull

    /* renamed from: B */
    private SparseArray<BadgeDrawable> f10162B;

    /* renamed from: C */
    private BottomNavigationPresenter f10163C;

    /* renamed from: D */
    private MenuBuilder f10164D;
    @NonNull

    /* renamed from: f */
    private final TransitionSet f10165f;

    /* renamed from: g */
    private final int f10166g;

    /* renamed from: h */
    private final int f10167h;

    /* renamed from: i */
    private final int f10168i;

    /* renamed from: j */
    private final int f10169j;

    /* renamed from: k */
    private final int f10170k;
    @NonNull

    /* renamed from: l */
    private final View.OnClickListener f10171l;

    /* renamed from: m */
    private final Pools.Pool<BottomNavigationItemView> f10172m;

    /* renamed from: n */
    private boolean f10173n;

    /* renamed from: o */
    private int f10174o;
    @Nullable

    /* renamed from: p */
    private BottomNavigationItemView[] f10175p;

    /* renamed from: q */
    private int f10176q;

    /* renamed from: r */
    private int f10177r;

    /* renamed from: s */
    private ColorStateList f10178s;
    @Dimension

    /* renamed from: t */
    private int f10179t;

    /* renamed from: u */
    private ColorStateList f10180u;
    @Nullable

    /* renamed from: v */
    private final ColorStateList f10181v;
    @StyleRes

    /* renamed from: w */
    private int f10182w;
    @StyleRes

    /* renamed from: x */
    private int f10183x;

    /* renamed from: y */
    private Drawable f10184y;

    /* renamed from: z */
    private int f10185z;

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10172m = new Pools.SynchronizedPool(5);
        this.f10176q = 0;
        this.f10177r = 0;
        this.f10162B = new SparseArray<>(5);
        Resources resources = getResources();
        this.f10166g = resources.getDimensionPixelSize(C1027R.dimen.design_bottom_navigation_item_max_width);
        this.f10167h = resources.getDimensionPixelSize(C1027R.dimen.design_bottom_navigation_item_min_width);
        this.f10168i = resources.getDimensionPixelSize(C1027R.dimen.design_bottom_navigation_active_item_max_width);
        this.f10169j = resources.getDimensionPixelSize(C1027R.dimen.design_bottom_navigation_active_item_min_width);
        this.f10170k = resources.getDimensionPixelSize(C1027R.dimen.design_bottom_navigation_height);
        this.f10181v = m10467e(16842808);
        AutoTransition autoTransition = new AutoTransition();
        this.f10165f = autoTransition;
        autoTransition.m16717z0(0);
        this.f10165f.m16719x0(115L);
        this.f10165f.mo16735h0(new FastOutSlowInInterpolator());
        this.f10165f.m16725r0(new TextScale());
        this.f10171l = new View.OnClickListener() { // from class: com.google.android.material.bottomnavigation.BottomNavigationMenuView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MenuItemImpl itemData = ((BottomNavigationItemView) view).getItemData();
                if (!BottomNavigationMenuView.this.f10164D.m21886O(itemData, BottomNavigationMenuView.this.f10163C, 0)) {
                    itemData.setChecked(true);
                }
            }
        };
        this.f10161A = new int[5];
        ViewCompat.m19163x0(this, 1);
    }

    /* renamed from: g */
    private boolean m10465g(int i, int i2) {
        boolean z = true;
        if (i != -1 ? i != 0 : i2 <= 3) {
            z = false;
        }
        return z;
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView b = this.f10172m.mo19341b();
        BottomNavigationItemView bottomNavigationItemView = b;
        if (b == null) {
            bottomNavigationItemView = new BottomNavigationItemView(getContext());
        }
        return bottomNavigationItemView;
    }

    /* renamed from: h */
    private boolean m10464h(int i) {
        return i != -1;
    }

    /* renamed from: i */
    private void m10463i() {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.f10164D.size(); i++) {
            hashSet.add(Integer.valueOf(this.f10164D.getItem(i).getItemId()));
        }
        for (int i2 = 0; i2 < this.f10162B.size(); i2++) {
            int keyAt = this.f10162B.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.f10162B.delete(keyAt);
            }
        }
    }

    private void setBadgeIfNeeded(@NonNull BottomNavigationItemView bottomNavigationItemView) {
        BadgeDrawable badgeDrawable;
        int id = bottomNavigationItemView.getId();
        if (m10464h(id) && (badgeDrawable = this.f10162B.get(id)) != null) {
            bottomNavigationItemView.setBadge(badgeDrawable);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView
    /* renamed from: b */
    public void mo9485b(MenuBuilder menuBuilder) {
        this.f10164D = menuBuilder;
    }

    /* renamed from: d */
    public void m10468d() {
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.f10172m.mo19342a(bottomNavigationItemView);
                    bottomNavigationItemView.m10477h();
                }
            }
        }
        if (this.f10164D.size() == 0) {
            this.f10176q = 0;
            this.f10177r = 0;
            this.f10175p = null;
            return;
        }
        m10463i();
        this.f10175p = new BottomNavigationItemView[this.f10164D.size()];
        boolean g = m10465g(this.f10174o, this.f10164D.m21890G().size());
        for (int i = 0; i < this.f10164D.size(); i++) {
            this.f10163C.m10458k(true);
            this.f10164D.getItem(i).setCheckable(true);
            this.f10163C.m10458k(false);
            BottomNavigationItemView newItem = getNewItem();
            this.f10175p[i] = newItem;
            newItem.setIconTintList(this.f10178s);
            newItem.setIconSize(this.f10179t);
            newItem.setTextColor(this.f10181v);
            newItem.setTextAppearanceInactive(this.f10182w);
            newItem.setTextAppearanceActive(this.f10183x);
            newItem.setTextColor(this.f10180u);
            Drawable drawable = this.f10184y;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f10185z);
            }
            newItem.setShifting(g);
            newItem.setLabelVisibilityMode(this.f10174o);
            newItem.mo9538e((MenuItemImpl) this.f10164D.getItem(i), 0);
            newItem.setItemPosition(i);
            newItem.setOnClickListener(this.f10171l);
            if (this.f10176q != 0 && this.f10164D.getItem(i).getItemId() == this.f10176q) {
                this.f10177r = i;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int min = Math.min(this.f10164D.size() - 1, this.f10177r);
        this.f10177r = min;
        this.f10164D.getItem(min).setChecked(true);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    @Nullable
    /* renamed from: e */
    public ColorStateList m10467e(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList c = AppCompatResources.m22070c(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0042R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = c.getDefaultColor();
        return new ColorStateList(new int[]{f10160F, f10159E, ViewGroup.EMPTY_STATE_SET}, new int[]{c.getColorForState(f10160F, defaultColor), i2, defaultColor});
    }

    /* renamed from: f */
    public boolean m10466f() {
        return this.f10173n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.f10162B;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f10178s;
    }

    @Nullable
    public Drawable getItemBackground() {
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        return (bottomNavigationItemViewArr == null || bottomNavigationItemViewArr.length <= 0) ? this.f10184y : bottomNavigationItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f10185z;
    }

    @Dimension
    public int getItemIconSize() {
        return this.f10179t;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f10183x;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f10182w;
    }

    public ColorStateList getItemTextColor() {
        return this.f10180u;
    }

    public int getLabelVisibilityMode() {
        return this.f10174o;
    }

    public int getSelectedItemId() {
        return this.f10176q;
    }

    public int getWindowAnimations() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m10462j(int i) {
        int size = this.f10164D.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f10164D.getItem(i2);
            if (i == item.getItemId()) {
                this.f10176q = i;
                this.f10177r = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    /* renamed from: k */
    public void m10461k() {
        MenuBuilder menuBuilder = this.f10164D;
        if (!(menuBuilder == null || this.f10175p == null)) {
            int size = menuBuilder.size();
            if (size != this.f10175p.length) {
                m10468d();
                return;
            }
            int i = this.f10176q;
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = this.f10164D.getItem(i2);
                if (item.isChecked()) {
                    this.f10176q = item.getItemId();
                    this.f10177r = i2;
                }
            }
            if (i != this.f10176q) {
                TransitionManager.m16752a(this, this.f10165f);
            }
            boolean g = m10465g(this.f10174o, this.f10164D.m21890G().size());
            for (int i3 = 0; i3 < size; i3++) {
                this.f10163C.m10458k(true);
                this.f10175p[i3].setLabelVisibilityMode(this.f10174o);
                this.f10175p[i3].setShifting(g);
                this.f10175p[i3].mo9538e((MenuItemImpl) this.f10164D.getItem(i3), 0);
                this.f10163C.m10458k(false);
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo).m19022e0(AccessibilityNodeInfoCompat.CollectionInfoCompat.m18974b(1, this.f10164D.m21890G().size(), false, 1));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i4 - i2;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.m19244A(this) == 1) {
                    int i8 = (i3 - i) - i6;
                    childAt.layout(i8 - childAt.getMeasuredWidth(), 0, i8, i5);
                } else {
                    childAt.layout(i6, 0, childAt.getMeasuredWidth() + i6, i5);
                }
                i6 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f10164D.m21890G().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f10170k, 1073741824);
        if (!m10465g(this.f10174o, size2) || !this.f10173n) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.f10168i);
            int i3 = size - (size2 * min);
            for (int i4 = 0; i4 < childCount; i4++) {
                if (getChildAt(i4).getVisibility() != 8) {
                    int[] iArr = this.f10161A;
                    iArr[i4] = min;
                    i3 = i3;
                    if (i3 > 0) {
                        iArr[i4] = iArr[i4] + 1;
                        i3--;
                    }
                } else {
                    this.f10161A[i4] = 0;
                    i3 = i3;
                }
            }
        } else {
            View childAt = getChildAt(this.f10177r);
            int i5 = this.f10169j;
            int i6 = i5;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f10168i, Integer.MIN_VALUE), makeMeasureSpec);
                i6 = Math.max(i5, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.f10167h * i7), Math.min(i6, this.f10168i));
            int i8 = size - min2;
            int min3 = Math.min(i8 / (i7 == 0 ? 1 : i7), this.f10166g);
            int i9 = i8 - (i7 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    this.f10161A[i10] = i10 == this.f10177r ? min2 : min3;
                    i9 = i9;
                    if (i9 > 0) {
                        int[] iArr2 = this.f10161A;
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.f10161A[i10] = 0;
                    i9 = i9;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f10161A[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.f10170k, makeMeasureSpec, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeDrawables(SparseArray<BadgeDrawable> sparseArray) {
        this.f10162B = sparseArray;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setBadge(sparseArray.get(bottomNavigationItemView.getId()));
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f10178s = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f10184y = drawable;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.f10185z = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(i);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.f10173n = z;
    }

    public void setItemIconSize(@Dimension int i) {
        this.f10179t = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconSize(i);
            }
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.f10183x = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.f10180u;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.f10182w = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.f10180u;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f10180u = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f10175p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.f10174o = i;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.f10163C = bottomNavigationPresenter;
    }
}
