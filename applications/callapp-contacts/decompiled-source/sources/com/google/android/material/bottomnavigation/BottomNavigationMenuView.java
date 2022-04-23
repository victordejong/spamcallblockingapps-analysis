package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.core.e.c;
import androidx.core.view.a.c;
import androidx.core.view.v;
import androidx.g.a.a.b;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionSet;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.material.a;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.j;
import java.util.HashSet;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenuView.class */
public class BottomNavigationMenuView extends ViewGroup implements n {
    private static final int[] k = {16842912};
    private static final int[] l = {-16842910};
    private int A;
    private int[] B;

    /* renamed from: a  reason: collision with root package name */
    final TransitionSet f30296a;

    /* renamed from: b  reason: collision with root package name */
    boolean f30297b;

    /* renamed from: c  reason: collision with root package name */
    int f30298c;

    /* renamed from: d  reason: collision with root package name */
    BottomNavigationItemView[] f30299d;
    int e;
    int f;
    Drawable g;
    SparseArray<BadgeDrawable> h;
    BottomNavigationPresenter i;
    g j;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;
    private final View.OnClickListener r;
    private final c.a<BottomNavigationItemView> s;
    private final SparseArray<View.OnTouchListener> t;
    private ColorStateList u;
    private int v;
    private ColorStateList w;
    private final ColorStateList x;
    private int y;
    private int z;

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = new c.C0049c(5);
        this.t = new SparseArray<>(5);
        this.e = 0;
        this.f = 0;
        this.h = new SparseArray<>(5);
        Resources resources = getResources();
        this.m = resources.getDimensionPixelSize(a.d.design_bottom_navigation_item_max_width);
        this.n = resources.getDimensionPixelSize(a.d.design_bottom_navigation_item_min_width);
        this.o = resources.getDimensionPixelSize(a.d.design_bottom_navigation_active_item_max_width);
        this.p = resources.getDimensionPixelSize(a.d.design_bottom_navigation_active_item_min_width);
        this.q = resources.getDimensionPixelSize(a.d.design_bottom_navigation_height);
        this.x = a();
        AutoTransition autoTransition = new AutoTransition();
        this.f30296a = autoTransition;
        autoTransition.a(0);
        autoTransition.a(115L);
        autoTransition.a(new b());
        autoTransition.a(new j());
        this.r = new View.OnClickListener() { // from class: com.google.android.material.bottomnavigation.BottomNavigationMenuView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i iVar = ((BottomNavigationItemView) view).f30293b;
                if (!BottomNavigationMenuView.this.j.a(iVar, BottomNavigationMenuView.this.i, 0)) {
                    iVar.setChecked(true);
                }
            }
        };
        this.B = new int[5];
        v.c((View) this, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i, int i2) {
        return i == -1 ? i2 > 3 : i == 0;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    public final ColorStateList a() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(16842808, typedValue, true)) {
            return null;
        }
        ColorStateList a2 = androidx.appcompat.a.a.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(a.C0018a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i = typedValue.data;
        int defaultColor = a2.getDefaultColor();
        int[] iArr = l;
        return new ColorStateList(new int[]{iArr, k, EMPTY_STATE_SET}, new int[]{a2.getColorForState(iArr, defaultColor), i, defaultColor});
    }

    @Override // androidx.appcompat.view.menu.n
    public final void a(g gVar) {
        this.j = gVar;
    }

    public final void b() {
        BadgeDrawable badgeDrawable;
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.s.a(bottomNavigationItemView);
                    ImageView imageView = bottomNavigationItemView.f30292a;
                    if (bottomNavigationItemView.c()) {
                        if (imageView != null) {
                            bottomNavigationItemView.setClipChildren(true);
                            bottomNavigationItemView.setClipToPadding(true);
                            com.google.android.material.badge.a.a(bottomNavigationItemView.f30294c, imageView);
                        }
                        bottomNavigationItemView.f30294c = null;
                    }
                }
            }
        }
        if (this.j.size() == 0) {
            this.e = 0;
            this.f = 0;
            this.f30299d = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.j.size(); i++) {
            hashSet.add(Integer.valueOf(this.j.getItem(i).getItemId()));
        }
        for (int i2 = 0; i2 < this.h.size(); i2++) {
            int keyAt = this.h.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.h.delete(keyAt);
            }
        }
        this.f30299d = new BottomNavigationItemView[this.j.size()];
        boolean a2 = a(this.f30298c, this.j.i().size());
        for (int i3 = 0; i3 < this.j.size(); i3++) {
            this.i.f30302b = true;
            this.j.getItem(i3).setCheckable(true);
            this.i.f30302b = false;
            BottomNavigationItemView a3 = this.s.a();
            BottomNavigationItemView bottomNavigationItemView2 = a3;
            if (a3 == null) {
                bottomNavigationItemView2 = new BottomNavigationItemView(getContext());
            }
            this.f30299d[i3] = bottomNavigationItemView2;
            bottomNavigationItemView2.setIconTintList(this.u);
            bottomNavigationItemView2.setIconSize(this.v);
            bottomNavigationItemView2.setTextColor(this.x);
            bottomNavigationItemView2.setTextAppearanceInactive(this.y);
            bottomNavigationItemView2.setTextAppearanceActive(this.z);
            bottomNavigationItemView2.setTextColor(this.w);
            Drawable drawable = this.g;
            if (drawable != null) {
                bottomNavigationItemView2.setItemBackground(drawable);
            } else {
                bottomNavigationItemView2.setItemBackground(this.A);
            }
            bottomNavigationItemView2.setShifting(a2);
            bottomNavigationItemView2.setLabelVisibilityMode(this.f30298c);
            i iVar = (i) this.j.getItem(i3);
            bottomNavigationItemView2.a(iVar);
            bottomNavigationItemView2.setItemPosition(i3);
            int itemId = iVar.getItemId();
            bottomNavigationItemView2.setOnTouchListener(this.t.get(itemId));
            bottomNavigationItemView2.setOnClickListener(this.r);
            int i4 = this.e;
            if (i4 != 0 && itemId == i4) {
                this.f = i3;
            }
            int id = bottomNavigationItemView2.getId();
            if ((id != -1) && (badgeDrawable = this.h.get(id)) != null) {
                bottomNavigationItemView2.a(badgeDrawable);
            }
            addView(bottomNavigationItemView2);
        }
        int min = Math.min(this.j.size() - 1, this.f);
        this.f = min;
        this.j.getItem(min).setChecked(true);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.a.c.a(accessibilityNodeInfo).a(c.b.a(1, this.j.i().size(), false, 1));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i4 - i2;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            i6 = i6;
            if (childAt.getVisibility() != 8) {
                if (v.f(this) == 1) {
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
        int size2 = this.j.i().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.q, 1073741824);
        if (!a(this.f30298c, size2) || !this.f30297b) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.o);
            int i3 = size - (size2 * min);
            for (int i4 = 0; i4 < childCount; i4++) {
                if (getChildAt(i4).getVisibility() != 8) {
                    int[] iArr = this.B;
                    iArr[i4] = min;
                    i3 = i3;
                    if (i3 > 0) {
                        iArr[i4] = iArr[i4] + 1;
                        i3--;
                    }
                } else {
                    this.B[i4] = 0;
                    i3 = i3;
                }
            }
        } else {
            View childAt = getChildAt(this.f);
            int i5 = this.p;
            int i6 = i5;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.o, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), makeMeasureSpec);
                i6 = Math.max(i5, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.n * i7), Math.min(i6, this.o));
            int i8 = size - min2;
            int min3 = Math.min(i8 / (i7 == 0 ? 1 : i7), this.m);
            int i9 = i8 - (i7 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    int[] iArr2 = this.B;
                    iArr2[i10] = i10 == this.f ? min2 : min3;
                    i9 = i9;
                    if (i9 > 0) {
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.B[i10] = 0;
                    i9 = i9;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            i11 = i11;
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.B[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.q, makeMeasureSpec, 0));
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.u = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.g = drawable;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.A = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(i);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.f30297b = z;
    }

    public void setItemIconSize(int i) {
        this.v = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconSize(i);
            }
        }
    }

    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.t.remove(i);
        } else {
            this.t.put(i, onTouchListener);
        }
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView.f30293b.getItemId() == i) {
                    bottomNavigationItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemTextAppearanceActive(int i) {
        this.z = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.w;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i) {
        this.y = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.w;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.w = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f30299d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.f30298c = i;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.i = bottomNavigationPresenter;
    }
}
