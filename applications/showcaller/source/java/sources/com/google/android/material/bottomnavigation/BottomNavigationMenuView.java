package com.google.android.material.bottomnavigation;

import android.annotation.SuppressLint;
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
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
import androidx.transition.AutoTransition;
import androidx.transition.C1169v;
import androidx.transition.TransitionSet;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.C8200j;
import java.util.HashSet;
import p020b.p021a.C1423a;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p049k.AbstractC1594e;
import p020b.p041h.p049k.C1596g;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p062n.p063a.p064a.C1754b;
import p078c.p084c.p085a.p096b.C1888d;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenuView.class */
public class BottomNavigationMenuView extends ViewGroup implements AbstractC0195n {

    /* renamed from: d */
    private static final int[] f36221d = {16842912};

    /* renamed from: e */
    private static final int[] f36222e = {-16842910};

    /* renamed from: A */
    private int f36223A;

    /* renamed from: B */
    private int[] f36224B;

    /* renamed from: C */
    private SparseArray<BadgeDrawable> f36225C;

    /* renamed from: D */
    private BottomNavigationPresenter f36226D;

    /* renamed from: E */
    private C0178g f36227E;

    /* renamed from: f */
    private final TransitionSet f36228f;

    /* renamed from: g */
    private final int f36229g;

    /* renamed from: h */
    private final int f36230h;

    /* renamed from: i */
    private final int f36231i;

    /* renamed from: j */
    private final int f36232j;

    /* renamed from: k */
    private final int f36233k;

    /* renamed from: l */
    private final View.OnClickListener f36234l;

    /* renamed from: m */
    private final AbstractC1594e<BottomNavigationItemView> f36235m;

    /* renamed from: n */
    private final SparseArray<View.OnTouchListener> f36236n;

    /* renamed from: o */
    private boolean f36237o;

    /* renamed from: p */
    private int f36238p;

    /* renamed from: q */
    private BottomNavigationItemView[] f36239q;

    /* renamed from: r */
    private int f36240r;

    /* renamed from: s */
    private int f36241s;

    /* renamed from: t */
    private ColorStateList f36242t;

    /* renamed from: u */
    private int f36243u;

    /* renamed from: v */
    private ColorStateList f36244v;

    /* renamed from: w */
    private final ColorStateList f36245w;

    /* renamed from: x */
    private int f36246x;

    /* renamed from: y */
    private int f36247y;

    /* renamed from: z */
    private Drawable f36248z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationMenuView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenuView$a.class */
    public class View$OnClickListenerC8025a implements View.OnClickListener {
        View$OnClickListenerC8025a() {
            BottomNavigationMenuView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0182i itemData = ((BottomNavigationItemView) view).getItemData();
            if (!BottomNavigationMenuView.this.f36227E.m35405O(itemData, BottomNavigationMenuView.this.f36226D, 0)) {
                itemData.setChecked(true);
            }
        }
    }

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36235m = new C1596g(5);
        this.f36236n = new SparseArray<>(5);
        this.f36240r = 0;
        this.f36241s = 0;
        this.f36225C = new SparseArray<>(5);
        Resources resources = getResources();
        this.f36229g = resources.getDimensionPixelSize(C1888d.design_bottom_navigation_item_max_width);
        this.f36230h = resources.getDimensionPixelSize(C1888d.design_bottom_navigation_item_min_width);
        this.f36231i = resources.getDimensionPixelSize(C1888d.design_bottom_navigation_active_item_max_width);
        this.f36232j = resources.getDimensionPixelSize(C1888d.design_bottom_navigation_active_item_min_width);
        this.f36233k = resources.getDimensionPixelSize(C1888d.design_bottom_navigation_height);
        this.f36245w = m5488e(16842808);
        AutoTransition autoTransition = new AutoTransition();
        this.f36228f = autoTransition;
        autoTransition.m30956w0(0);
        autoTransition.mo30976d0(115L);
        autoTransition.mo30974f0(new C1754b());
        autoTransition.m30966o0(new C8200j());
        this.f36234l = new View$OnClickListenerC8025a();
        this.f36224B = new int[5];
        C1679w.m29347B0(this, 1);
    }

    /* renamed from: g */
    private boolean m5486g(int i, int i2) {
        boolean z = true;
        if (i != -1 ? i != 0 : i2 <= 3) {
            z = false;
        }
        return z;
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView mo22686a = this.f36235m.mo22686a();
        BottomNavigationItemView bottomNavigationItemView = mo22686a;
        if (mo22686a == null) {
            bottomNavigationItemView = new BottomNavigationItemView(getContext());
        }
        return bottomNavigationItemView;
    }

    /* renamed from: h */
    private boolean m5485h(int i) {
        return i != -1;
    }

    /* renamed from: i */
    private void m5484i() {
        int i;
        HashSet hashSet = new HashSet();
        int i2 = 0;
        while (true) {
            if (i2 < this.f36227E.size()) {
                hashSet.add(Integer.valueOf(this.f36227E.getItem(i2).getItemId()));
                i2++;
            }
        }
        for (i = 0; i < this.f36225C.size(); i++) {
            int keyAt = this.f36225C.keyAt(i);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.f36225C.delete(keyAt);
            }
        }
    }

    private void setBadgeIfNeeded(BottomNavigationItemView bottomNavigationItemView) {
        BadgeDrawable badgeDrawable;
        int id = bottomNavigationItemView.getId();
        if (m5485h(id) && (badgeDrawable = this.f36225C.get(id)) != null) {
            bottomNavigationItemView.setBadge(badgeDrawable);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n
    /* renamed from: b */
    public void mo4639b(C0178g c0178g) {
        this.f36227E = c0178g;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: d */
    public void m5489d() {
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.f36235m.mo22685b(bottomNavigationItemView);
                    bottomNavigationItemView.m5498h();
                }
            }
        }
        if (this.f36227E.size() == 0) {
            this.f36240r = 0;
            this.f36241s = 0;
            this.f36239q = null;
            return;
        }
        m5484i();
        this.f36239q = new BottomNavigationItemView[this.f36227E.size()];
        boolean m5486g = m5486g(this.f36238p, this.f36227E.m35409G().size());
        for (int i = 0; i < this.f36227E.size(); i++) {
            this.f36226D.m5479k(true);
            this.f36227E.getItem(i).setCheckable(true);
            this.f36226D.m5479k(false);
            BottomNavigationItemView newItem = getNewItem();
            this.f36239q[i] = newItem;
            newItem.setIconTintList(this.f36242t);
            newItem.setIconSize(this.f36243u);
            newItem.setTextColor(this.f36245w);
            newItem.setTextAppearanceInactive(this.f36246x);
            newItem.setTextAppearanceActive(this.f36247y);
            newItem.setTextColor(this.f36244v);
            Drawable drawable = this.f36248z;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f36223A);
            }
            newItem.setShifting(m5486g);
            newItem.setLabelVisibilityMode(this.f36238p);
            C0182i c0182i = (C0182i) this.f36227E.getItem(i);
            newItem.mo4640e(c0182i, 0);
            newItem.setItemPosition(i);
            int itemId = c0182i.getItemId();
            newItem.setOnTouchListener(this.f36236n.get(itemId));
            newItem.setOnClickListener(this.f36234l);
            int i2 = this.f36240r;
            if (i2 != 0 && itemId == i2) {
                this.f36241s = i;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int min = Math.min(this.f36227E.size() - 1, this.f36241s);
        this.f36241s = min;
        this.f36227E.getItem(min).setChecked(true);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: e */
    public ColorStateList m5488e(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList m30127c = C1433a.m30127c(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C1423a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = m30127c.getDefaultColor();
        int[] iArr = f36222e;
        return new ColorStateList(new int[]{iArr, f36221d, ViewGroup.EMPTY_STATE_SET}, new int[]{m30127c.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    /* renamed from: f */
    public boolean m5487f() {
        return this.f36237o;
    }

    public SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.f36225C;
    }

    public ColorStateList getIconTintList() {
        return this.f36242t;
    }

    public Drawable getItemBackground() {
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        return (bottomNavigationItemViewArr == null || bottomNavigationItemViewArr.length <= 0) ? this.f36248z : bottomNavigationItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f36223A;
    }

    public int getItemIconSize() {
        return this.f36243u;
    }

    public int getItemTextAppearanceActive() {
        return this.f36247y;
    }

    public int getItemTextAppearanceInactive() {
        return this.f36246x;
    }

    public ColorStateList getItemTextColor() {
        return this.f36244v;
    }

    public int getLabelVisibilityMode() {
        return this.f36238p;
    }

    public int getSelectedItemId() {
        return this.f36240r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    /* renamed from: j */
    public void m5483j(int i) {
        int size = this.f36227E.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f36227E.getItem(i2);
            if (i == item.getItemId()) {
                this.f36240r = i;
                this.f36241s = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    /* renamed from: k */
    public void m5482k() {
        C0178g c0178g = this.f36227E;
        if (c0178g == null || this.f36239q == null) {
            return;
        }
        int size = c0178g.size();
        if (size != this.f36239q.length) {
            m5489d();
            return;
        }
        int i = this.f36240r;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f36227E.getItem(i2);
            if (item.isChecked()) {
                this.f36240r = item.getItemId();
                this.f36241s = i2;
            }
        }
        if (i != this.f36240r) {
            C1169v.m30826a(this, this.f36228f);
        }
        boolean m5486g = m5486g(this.f36238p, this.f36227E.m35409G().size());
        for (int i3 = 0; i3 < size; i3++) {
            this.f36226D.m5479k(true);
            this.f36239q[i3].setLabelVisibilityMode(this.f36238p);
            this.f36239q[i3].setShifting(m5486g);
            this.f36239q[i3].mo4640e((C0182i) this.f36227E.getItem(i3), 0);
            this.f36226D.m5479k(false);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C1634c.m29513H0(accessibilityNodeInfo).m29485e0(C1634c.C1636b.m29437b(1, this.f36227E.m35409G().size(), false, 1));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i4 - i2;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                if (C1679w.m29346C(this) == 1) {
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
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f36227E.m35409G().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f36233k, 1073741824);
        if (!m5486g(this.f36238p, size2) || !this.f36237o) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.f36231i);
            int i5 = size - (size2 * min);
            int i6 = 0;
            while (i6 < childCount) {
                if (getChildAt(i6).getVisibility() != 8) {
                    int[] iArr = this.f36224B;
                    iArr[i6] = min;
                    i3 = i5;
                    if (i5 > 0) {
                        iArr[i6] = iArr[i6] + 1;
                        i3 = i5 - 1;
                    }
                } else {
                    this.f36224B[i6] = 0;
                    i3 = i5;
                }
                i6++;
                i5 = i3;
            }
        } else {
            View childAt = getChildAt(this.f36241s);
            int i7 = this.f36232j;
            int i8 = i7;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f36231i, Integer.MIN_VALUE), makeMeasureSpec);
                i8 = Math.max(i7, childAt.getMeasuredWidth());
            }
            int i9 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.f36230h * i9), Math.min(i8, this.f36231i));
            int i10 = size - min2;
            int min3 = Math.min(i10 / (i9 == 0 ? 1 : i9), this.f36229g);
            int i11 = i10 - (i9 * min3);
            int i12 = 0;
            while (i12 < childCount) {
                if (getChildAt(i12).getVisibility() != 8) {
                    int[] iArr2 = this.f36224B;
                    iArr2[i12] = i12 == this.f36241s ? min2 : min3;
                    i4 = i11;
                    if (i11 > 0) {
                        iArr2[i12] = iArr2[i12] + 1;
                        i4 = i11 - 1;
                    }
                } else {
                    this.f36224B[i12] = 0;
                    i4 = i11;
                }
                i12++;
                i11 = i4;
            }
        }
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f36224B[i14], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i13 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i13, View.MeasureSpec.makeMeasureSpec(i13, 1073741824), 0), View.resolveSizeAndState(this.f36233k, makeMeasureSpec, 0));
    }

    public void setBadgeDrawables(SparseArray<BadgeDrawable> sparseArray) {
        this.f36225C = sparseArray;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setBadge(sparseArray.get(bottomNavigationItemView.getId()));
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f36242t = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.f36248z = drawable;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.f36223A = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(i);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.f36237o = z;
    }

    public void setItemIconSize(int i) {
        this.f36243u = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconSize(i);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f36236n.remove(i);
        } else {
            this.f36236n.put(i, onTouchListener);
        }
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView.getItemData().getItemId() == i) {
                    bottomNavigationItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemTextAppearanceActive(int i) {
        this.f36247y = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.f36244v;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i) {
        this.f36246x = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.f36244v;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f36244v = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f36239q;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.f36238p = i;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.f36226D = bottomNavigationPresenter;
    }
}
