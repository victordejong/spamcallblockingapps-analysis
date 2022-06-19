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
import androidx.appcompat.C0142a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
import androidx.core.p036e.C0829c;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.p046g.p047a.p048a.C1157b;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionSet;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.material.C14376a;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.C14419a;
import com.google.android.material.internal.C14644j;
import java.util.HashSet;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenuView.class */
public class BottomNavigationMenuView extends ViewGroup implements AbstractC0285n {

    /* renamed from: k */
    private static final int[] f52601k = {16842912};

    /* renamed from: l */
    private static final int[] f52602l = {-16842910};

    /* renamed from: A */
    private int f52603A;

    /* renamed from: B */
    private int[] f52604B;

    /* renamed from: a */
    final TransitionSet f52605a;

    /* renamed from: b */
    boolean f52606b;

    /* renamed from: c */
    int f52607c;

    /* renamed from: d */
    BottomNavigationItemView[] f52608d;

    /* renamed from: e */
    int f52609e;

    /* renamed from: f */
    int f52610f;

    /* renamed from: g */
    Drawable f52611g;

    /* renamed from: h */
    SparseArray<BadgeDrawable> f52612h;

    /* renamed from: i */
    BottomNavigationPresenter f52613i;

    /* renamed from: j */
    C0268g f52614j;

    /* renamed from: m */
    private final int f52615m;

    /* renamed from: n */
    private final int f52616n;

    /* renamed from: o */
    private final int f52617o;

    /* renamed from: p */
    private final int f52618p;

    /* renamed from: q */
    private final int f52619q;

    /* renamed from: r */
    private final View.OnClickListener f52620r;

    /* renamed from: s */
    private final C0829c.AbstractC0830a<BottomNavigationItemView> f52621s;

    /* renamed from: t */
    private final SparseArray<View.OnTouchListener> f52622t;

    /* renamed from: u */
    private ColorStateList f52623u;

    /* renamed from: v */
    private int f52624v;

    /* renamed from: w */
    private ColorStateList f52625w;

    /* renamed from: x */
    private final ColorStateList f52626x;

    /* renamed from: y */
    private int f52627y;

    /* renamed from: z */
    private int f52628z;

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f52621s = new C0829c.C0832c(5);
        this.f52622t = new SparseArray<>(5);
        this.f52609e = 0;
        this.f52610f = 0;
        this.f52612h = new SparseArray<>(5);
        Resources resources = getResources();
        this.f52615m = resources.getDimensionPixelSize(C14376a.C14380d.design_bottom_navigation_item_max_width);
        this.f52616n = resources.getDimensionPixelSize(C14376a.C14380d.design_bottom_navigation_item_min_width);
        this.f52617o = resources.getDimensionPixelSize(C14376a.C14380d.design_bottom_navigation_active_item_max_width);
        this.f52618p = resources.getDimensionPixelSize(C14376a.C14380d.design_bottom_navigation_active_item_min_width);
        this.f52619q = resources.getDimensionPixelSize(C14376a.C14380d.design_bottom_navigation_height);
        this.f52626x = m11146a();
        AutoTransition autoTransition = new AutoTransition();
        this.f52605a = autoTransition;
        autoTransition.m39792a(0);
        autoTransition.mo39791a(115L);
        autoTransition.mo39790a(new C1157b());
        autoTransition.m39785a(new C14644j());
        this.f52620r = new View.OnClickListener() { // from class: com.google.android.material.bottomnavigation.BottomNavigationMenuView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0272i c0272i = ((BottomNavigationItemView) view).f52585b;
                if (!BottomNavigationMenuView.this.f52614j.m46102a(c0272i, BottomNavigationMenuView.this.f52613i, 0)) {
                    c0272i.setChecked(true);
                }
            }
        };
        this.f52604B = new int[5];
        C0926v.m44102c((View) this, 1);
    }

    /* renamed from: a */
    public static boolean m11145a(int i, int i2) {
        return i == -1 ? i2 > 3 : i == 0;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: a */
    public final ColorStateList m11146a() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(16842808, typedValue, true)) {
            return null;
        }
        ColorStateList m46375a = C0153a.m46375a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0142a.C0143a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i = typedValue.data;
        int defaultColor = m46375a.getDefaultColor();
        int[] iArr = f52602l;
        return new ColorStateList(new int[]{iArr, f52601k, EMPTY_STATE_SET}, new int[]{m46375a.getColorForState(iArr, defaultColor), i, defaultColor});
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n
    /* renamed from: a */
    public final void mo10610a(C0268g c0268g) {
        this.f52614j = c0268g;
    }

    /* renamed from: b */
    public final void m11143b() {
        BadgeDrawable badgeDrawable;
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.f52621s.mo37606a(bottomNavigationItemView);
                    ImageView imageView = bottomNavigationItemView.f52584a;
                    if (bottomNavigationItemView.m11148c()) {
                        if (imageView != null) {
                            bottomNavigationItemView.setClipChildren(true);
                            bottomNavigationItemView.setClipToPadding(true);
                            C14419a.m11225a(bottomNavigationItemView.f52586c, imageView);
                        }
                        bottomNavigationItemView.f52586c = null;
                    }
                }
            }
        }
        if (this.f52614j.size() == 0) {
            this.f52609e = 0;
            this.f52610f = 0;
            this.f52608d = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.f52614j.size(); i++) {
            hashSet.add(Integer.valueOf(this.f52614j.getItem(i).getItemId()));
        }
        for (int i2 = 0; i2 < this.f52612h.size(); i2++) {
            int keyAt = this.f52612h.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.f52612h.delete(keyAt);
            }
        }
        this.f52608d = new BottomNavigationItemView[this.f52614j.size()];
        boolean m11145a = m11145a(this.f52607c, this.f52614j.m46084i().size());
        for (int i3 = 0; i3 < this.f52614j.size(); i3++) {
            this.f52613i.f52631b = true;
            this.f52614j.getItem(i3).setCheckable(true);
            this.f52613i.f52631b = false;
            BottomNavigationItemView mo37607a = this.f52621s.mo37607a();
            BottomNavigationItemView bottomNavigationItemView2 = mo37607a;
            if (mo37607a == null) {
                bottomNavigationItemView2 = new BottomNavigationItemView(getContext());
            }
            this.f52608d[i3] = bottomNavigationItemView2;
            bottomNavigationItemView2.setIconTintList(this.f52623u);
            bottomNavigationItemView2.setIconSize(this.f52624v);
            bottomNavigationItemView2.setTextColor(this.f52626x);
            bottomNavigationItemView2.setTextAppearanceInactive(this.f52627y);
            bottomNavigationItemView2.setTextAppearanceActive(this.f52628z);
            bottomNavigationItemView2.setTextColor(this.f52625w);
            Drawable drawable = this.f52611g;
            if (drawable != null) {
                bottomNavigationItemView2.setItemBackground(drawable);
            } else {
                bottomNavigationItemView2.setItemBackground(this.f52603A);
            }
            bottomNavigationItemView2.setShifting(m11145a);
            bottomNavigationItemView2.setLabelVisibilityMode(this.f52607c);
            C0272i c0272i = (C0272i) this.f52614j.getItem(i3);
            bottomNavigationItemView2.mo10612a(c0272i);
            bottomNavigationItemView2.setItemPosition(i3);
            int itemId = c0272i.getItemId();
            bottomNavigationItemView2.setOnTouchListener(this.f52622t.get(itemId));
            bottomNavigationItemView2.setOnClickListener(this.f52620r);
            int i4 = this.f52609e;
            if (i4 != 0 && itemId == i4) {
                this.f52610f = i3;
            }
            int id = bottomNavigationItemView2.getId();
            if ((id != -1) && (badgeDrawable = this.f52612h.get(id)) != null) {
                bottomNavigationItemView2.m11151a(badgeDrawable);
            }
            addView(bottomNavigationItemView2);
        }
        int min = Math.min(this.f52614j.size() - 1, this.f52610f);
        this.f52610f = min;
        this.f52614j.getItem(min).setChecked(true);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0869c.m44278a(accessibilityNodeInfo).m44274a(C0869c.C0871b.m44235a(1, this.f52614j.m46084i().size(), false, 1));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i4 - i2;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 < childCount) {
                View childAt = getChildAt(i6);
                int i9 = i8;
                if (childAt.getVisibility() != 8) {
                    if (C0926v.m44097f(this) == 1) {
                        int i10 = (i3 - i) - i8;
                        childAt.layout(i10 - childAt.getMeasuredWidth(), 0, i10, i5);
                    } else {
                        childAt.layout(i8, 0, childAt.getMeasuredWidth() + i8, i5);
                    }
                    i9 = i8 + childAt.getMeasuredWidth();
                }
                i6++;
                i7 = i9;
            } else {
                return;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f52614j.m46084i().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f52619q, 1073741824);
        if (!m11145a(this.f52607c, size2) || !this.f52606b) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.f52617o);
            int i5 = size - (size2 * min);
            int i6 = 0;
            while (i6 < childCount) {
                if (getChildAt(i6).getVisibility() != 8) {
                    int[] iArr = this.f52604B;
                    iArr[i6] = min;
                    i3 = i5;
                    if (i5 > 0) {
                        iArr[i6] = iArr[i6] + 1;
                        i3 = i5 - 1;
                    }
                } else {
                    this.f52604B[i6] = 0;
                    i3 = i5;
                }
                i6++;
                i5 = i3;
            }
        } else {
            View childAt = getChildAt(this.f52610f);
            int i7 = this.f52618p;
            int i8 = i7;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f52617o, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), makeMeasureSpec);
                i8 = Math.max(i7, childAt.getMeasuredWidth());
            }
            int i9 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.f52616n * i9), Math.min(i8, this.f52617o));
            int i10 = size - min2;
            int min3 = Math.min(i10 / (i9 == 0 ? 1 : i9), this.f52615m);
            int i11 = i10 - (i9 * min3);
            int i12 = 0;
            while (i12 < childCount) {
                if (getChildAt(i12).getVisibility() != 8) {
                    int[] iArr2 = this.f52604B;
                    iArr2[i12] = i12 == this.f52610f ? min2 : min3;
                    i4 = i11;
                    if (i11 > 0) {
                        iArr2[i12] = iArr2[i12] + 1;
                        i4 = i11 - 1;
                    }
                } else {
                    this.f52604B[i12] = 0;
                    i4 = i11;
                }
                i12++;
                i11 = i4;
            }
        }
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i13 >= childCount) {
                setMeasuredDimension(View.resolveSizeAndState(i15, View.MeasureSpec.makeMeasureSpec(i15, 1073741824), 0), View.resolveSizeAndState(this.f52619q, makeMeasureSpec, 0));
                return;
            }
            View childAt2 = getChildAt(i13);
            int i16 = i15;
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f52604B[i13], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i16 = i15 + childAt2.getMeasuredWidth();
            }
            i13++;
            i14 = i16;
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f52623u = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.f52611g = drawable;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.f52603A = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(i);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.f52606b = z;
    }

    public void setItemIconSize(int i) {
        this.f52624v = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconSize(i);
            }
        }
    }

    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f52622t.remove(i);
        } else {
            this.f52622t.put(i, onTouchListener);
        }
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView.f52585b.getItemId() == i) {
                    bottomNavigationItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemTextAppearanceActive(int i) {
        this.f52628z = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.f52625w;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i) {
        this.f52627y = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.f52625w;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f52625w = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f52608d;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.f52607c = i;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.f52613i = bottomNavigationPresenter;
    }
}
