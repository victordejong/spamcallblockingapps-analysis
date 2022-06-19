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
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.view.menu.C0203i;
import androidx.core.p025g.C0523e;
import androidx.core.p026h.C0595u;
import androidx.p032e.p033a.p034a.C0649b;
import androidx.p045j.C0778b;
import androidx.p045j.C0815o;
import androidx.p045j.C0819q;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4700h;
import com.google.android.material.p143b.C4529a;
import java.util.HashSet;
/* renamed from: com.google.android.material.bottomnavigation.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/c.class */
public class C4557c extends ViewGroup implements AbstractC0216n {

    /* renamed from: a */
    private static final int[] f19767a = {16842912};

    /* renamed from: b */
    private static final int[] f19768b = {-16842910};

    /* renamed from: A */
    private C0199g f19769A;

    /* renamed from: c */
    private final C0819q f19770c;

    /* renamed from: d */
    private final int f19771d;

    /* renamed from: e */
    private final int f19772e;

    /* renamed from: f */
    private final int f19773f;

    /* renamed from: g */
    private final int f19774g;

    /* renamed from: h */
    private final int f19775h;

    /* renamed from: i */
    private final View.OnClickListener f19776i;

    /* renamed from: j */
    private final C0523e.AbstractC0524a<C4554a> f19777j;

    /* renamed from: k */
    private boolean f19778k;

    /* renamed from: l */
    private int f19779l;

    /* renamed from: m */
    private C4554a[] f19780m;

    /* renamed from: n */
    private int f19781n;

    /* renamed from: o */
    private int f19782o;

    /* renamed from: p */
    private ColorStateList f19783p;

    /* renamed from: q */
    private int f19784q;

    /* renamed from: r */
    private ColorStateList f19785r;

    /* renamed from: s */
    private final ColorStateList f19786s;

    /* renamed from: t */
    private int f19787t;

    /* renamed from: u */
    private int f19788u;

    /* renamed from: v */
    private Drawable f19789v;

    /* renamed from: w */
    private int f19790w;

    /* renamed from: x */
    private int[] f19791x;

    /* renamed from: y */
    private SparseArray<C4529a> f19792y;

    /* renamed from: z */
    private C4559d f19793z;

    public C4557c(Context context) {
        this(context, null);
    }

    public C4557c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19777j = new C0523e.C0526c(5);
        this.f19781n = 0;
        this.f19782o = 0;
        this.f19792y = new SparseArray<>(5);
        Resources resources = getResources();
        this.f19771d = resources.getDimensionPixelSize(C4492a.C4496d.design_bottom_navigation_item_max_width);
        this.f19772e = resources.getDimensionPixelSize(C4492a.C4496d.design_bottom_navigation_item_min_width);
        this.f19773f = resources.getDimensionPixelSize(C4492a.C4496d.design_bottom_navigation_active_item_max_width);
        this.f19774g = resources.getDimensionPixelSize(C4492a.C4496d.design_bottom_navigation_active_item_min_width);
        this.f19775h = resources.getDimensionPixelSize(C4492a.C4496d.design_bottom_navigation_height);
        this.f19786s = m3599a(16842808);
        this.f19770c = new C0778b();
        this.f19770c.m19378a(0);
        this.f19770c.mo19377a(115L);
        this.f19770c.mo19376a(new C0649b());
        this.f19770c.m19371a(new C4700h());
        this.f19776i = new View.OnClickListener() { // from class: com.google.android.material.bottomnavigation.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C0203i itemData = ((C4554a) view).getItemData();
                if (!C4557c.this.f19769A.m21887a(itemData, C4557c.this.f19793z, 0)) {
                    itemData.setChecked(true);
                }
            }
        };
        this.f19791x = new int[5];
    }

    /* renamed from: a */
    private boolean m3598a(int i, int i2) {
        boolean z = true;
        if (i == -1) {
            if (i2 <= 3) {
                z = false;
            }
        } else if (i != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private boolean m3592c(int i) {
        return i != -1;
    }

    /* renamed from: d */
    private void m3591d() {
        int i;
        HashSet hashSet = new HashSet();
        int i2 = 0;
        while (true) {
            if (i2 < this.f19769A.size()) {
                hashSet.add(Integer.valueOf(this.f19769A.getItem(i2).getItemId()));
                i2++;
            }
        }
        for (i = 0; i < this.f19792y.size(); i++) {
            int keyAt = this.f19792y.keyAt(i);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.f19792y.delete(keyAt);
            }
        }
    }

    private C4554a getNewItem() {
        C4554a mo17021a = this.f19777j.mo17021a();
        C4554a c4554a = mo17021a;
        if (mo17021a == null) {
            c4554a = new C4554a(getContext());
        }
        return c4554a;
    }

    private void setBadgeIfNeeded(C4554a c4554a) {
        C4529a c4529a;
        int id = c4554a.getId();
        if (m3592c(id) && (c4529a = this.f19792y.get(id)) != null) {
            c4554a.setBadge(c4529a);
        }
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: a */
    public ColorStateList m3599a(int i) {
        ColorStateList colorStateList = null;
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            ColorStateList m22277a = C0094a.m22277a(getContext(), typedValue.resourceId);
            if (getContext().getTheme().resolveAttribute(C0083a.C0084a.colorPrimary, typedValue, true)) {
                int i2 = typedValue.data;
                int defaultColor = m22277a.getDefaultColor();
                colorStateList = new ColorStateList(new int[]{f19768b, f19767a, EMPTY_STATE_SET}, new int[]{m22277a.getColorForState(f19768b, defaultColor), i2, defaultColor});
            }
        }
        return colorStateList;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n
    /* renamed from: a */
    public void mo2905a(C0199g c0199g) {
        this.f19769A = c0199g;
    }

    /* renamed from: a */
    public boolean m3600a() {
        return this.f19778k;
    }

    /* renamed from: b */
    public void m3596b() {
        C4554a[] c4554aArr;
        removeAllViews();
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                if (c4554a != null) {
                    this.f19777j.mo17020a(c4554a);
                    c4554a.m3606b();
                }
            }
        }
        if (this.f19769A.size() == 0) {
            this.f19781n = 0;
            this.f19782o = 0;
            this.f19780m = null;
            return;
        }
        m3591d();
        this.f19780m = new C4554a[this.f19769A.size()];
        boolean m3598a = m3598a(this.f19779l, this.f19769A.m21856j().size());
        for (int i = 0; i < this.f19769A.size(); i++) {
            this.f19793z.m3579b(true);
            this.f19769A.getItem(i).setCheckable(true);
            this.f19793z.m3579b(false);
            C4554a newItem = getNewItem();
            this.f19780m[i] = newItem;
            newItem.setIconTintList(this.f19783p);
            newItem.setIconSize(this.f19784q);
            newItem.setTextColor(this.f19786s);
            newItem.setTextAppearanceInactive(this.f19787t);
            newItem.setTextAppearanceActive(this.f19788u);
            newItem.setTextColor(this.f19785r);
            if (this.f19789v != null) {
                newItem.setItemBackground(this.f19789v);
            } else {
                newItem.setItemBackground(this.f19790w);
            }
            newItem.setShifting(m3598a);
            newItem.setLabelVisibilityMode(this.f19779l);
            newItem.mo2909a((C0203i) this.f19769A.getItem(i), 0);
            newItem.setItemPosition(i);
            newItem.setOnClickListener(this.f19776i);
            if (this.f19781n != 0 && this.f19769A.getItem(i).getItemId() == this.f19781n) {
                this.f19782o = i;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        this.f19782o = Math.min(this.f19769A.size() - 1, this.f19782o);
        this.f19769A.getItem(this.f19782o).setChecked(true);
    }

    /* renamed from: b */
    public void m3595b(int i) {
        int size = this.f19769A.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f19769A.getItem(i2);
            if (i == item.getItemId()) {
                this.f19781n = i;
                this.f19782o = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    /* renamed from: c */
    public void m3593c() {
        if (this.f19769A == null || this.f19780m == null) {
            return;
        }
        int size = this.f19769A.size();
        if (size != this.f19780m.length) {
            m3596b();
            return;
        }
        int i = this.f19781n;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f19769A.getItem(i2);
            if (item.isChecked()) {
                this.f19781n = item.getItemId();
                this.f19782o = i2;
            }
        }
        if (i != this.f19781n) {
            C0815o.m19385a(this, this.f19770c);
        }
        boolean m3598a = m3598a(this.f19779l, this.f19769A.m21856j().size());
        for (int i3 = 0; i3 < size; i3++) {
            this.f19793z.m3579b(true);
            this.f19780m[i3].setLabelVisibilityMode(this.f19779l);
            this.f19780m[i3].setShifting(m3598a);
            this.f19780m[i3].mo2909a((C0203i) this.f19769A.getItem(i3), 0);
            this.f19793z.m3579b(false);
        }
    }

    public SparseArray<C4529a> getBadgeDrawables() {
        return this.f19792y;
    }

    public ColorStateList getIconTintList() {
        return this.f19783p;
    }

    public Drawable getItemBackground() {
        return (this.f19780m == null || this.f19780m.length <= 0) ? this.f19789v : this.f19780m[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f19790w;
    }

    public int getItemIconSize() {
        return this.f19784q;
    }

    public int getItemTextAppearanceActive() {
        return this.f19788u;
    }

    public int getItemTextAppearanceInactive() {
        return this.f19787t;
    }

    public ColorStateList getItemTextColor() {
        return this.f19785r;
    }

    public int getLabelVisibilityMode() {
        return this.f19779l;
    }

    public int getSelectedItemId() {
        return this.f19781n;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                if (C0595u.m20320g(this) == 1) {
                    childAt.layout((i5 - i7) - childAt.getMeasuredWidth(), 0, i5 - i7, i6);
                } else {
                    childAt.layout(i7, 0, childAt.getMeasuredWidth() + i7, i6);
                }
                i7 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f19769A.m21856j().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f19775h, 1073741824);
        if (!m3598a(this.f19779l, size2) || !this.f19778k) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.f19773f);
            int i4 = size - (min * size2);
            int i5 = 0;
            while (i5 < childCount) {
                if (getChildAt(i5).getVisibility() != 8) {
                    this.f19791x[i5] = min;
                    i3 = i4;
                    if (i4 > 0) {
                        int[] iArr = this.f19791x;
                        iArr[i5] = iArr[i5] + 1;
                        i3 = i4 - 1;
                    }
                } else {
                    this.f19791x[i5] = 0;
                    i3 = i4;
                }
                i5++;
                i4 = i3;
            }
        } else {
            View childAt = getChildAt(this.f19782o);
            int i6 = this.f19774g;
            int i7 = i6;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f19773f, RecyclerView.UNDEFINED_DURATION), makeMeasureSpec);
                i7 = Math.max(i6, childAt.getMeasuredWidth());
            }
            int i8 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.f19772e * i8), Math.min(i7, this.f19773f));
            int min3 = Math.min((size - min2) / (i8 == 0 ? 1 : i8), this.f19771d);
            int i9 = (size - min2) - (i8 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    this.f19791x[i10] = i10 == this.f19782o ? min2 : min3;
                    if (i9 > 0) {
                        int[] iArr2 = this.f19791x;
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.f19791x[i10] = 0;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f19791x[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.f19775h, makeMeasureSpec, 0));
    }

    public void setBadgeDrawables(SparseArray<C4529a> sparseArray) {
        C4554a[] c4554aArr;
        this.f19792y = sparseArray;
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                c4554a.setBadge(sparseArray.get(c4554a.getId()));
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f19783p = colorStateList;
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                c4554a.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.f19789v = drawable;
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                c4554a.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.f19790w = i;
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                c4554a.setItemBackground(i);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.f19778k = z;
    }

    public void setItemIconSize(int i) {
        this.f19784q = i;
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                c4554a.setIconSize(i);
            }
        }
    }

    public void setItemTextAppearanceActive(int i) {
        C4554a[] c4554aArr;
        this.f19788u = i;
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                c4554a.setTextAppearanceActive(i);
                if (this.f19785r != null) {
                    c4554a.setTextColor(this.f19785r);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i) {
        C4554a[] c4554aArr;
        this.f19787t = i;
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                c4554a.setTextAppearanceInactive(i);
                if (this.f19785r != null) {
                    c4554a.setTextColor(this.f19785r);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f19785r = colorStateList;
        if (this.f19780m != null) {
            for (C4554a c4554a : this.f19780m) {
                c4554a.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.f19779l = i;
    }

    public void setPresenter(C4559d c4559d) {
        this.f19793z = c4559d;
    }
}
