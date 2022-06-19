package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.widget.C0303z0;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.internal.NavigationMenuView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p029c4.C0817a;
import p029c4.C0822f;
import p029c4.C0827i;
import p029c4.C0830j;
import p066d0.C2134a;
import p097g.C2788a;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p140k.C3302f;
import p163m0.C3551b0;
import p163m0.C3589v;
import p163m0.C3611y;
import p216r0.AbstractC4178a;
import p230s3.C4285a;
import p262v3.C4606g;
import p262v3.C4607h;
import p262v3.C4623k;
import p262v3.C4634p;
import p284x3.ViewTreeObserver$OnGlobalLayoutListenerC4856a;
import p304z3.C5071c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView.class */
public class NavigationView extends C4623k {

    /* renamed from: s */
    public static final int[] f6727s = {16842912};

    /* renamed from: t */
    public static final int[] f6728t = {-16842910};

    /* renamed from: f */
    public final C4606g f6729f;

    /* renamed from: g */
    public final C4607h f6730g;

    /* renamed from: h */
    public AbstractC1795a f6731h;

    /* renamed from: i */
    public final int f6732i;

    /* renamed from: k */
    public MenuInflater f6734k;

    /* renamed from: l */
    public ViewTreeObserver.OnGlobalLayoutListener f6735l;

    /* renamed from: o */
    public int f6738o;

    /* renamed from: p */
    public int f6739p;

    /* renamed from: q */
    public Path f6740q;

    /* renamed from: j */
    public final int[] f6733j = new int[2];

    /* renamed from: m */
    public boolean f6736m = true;

    /* renamed from: n */
    public boolean f6737n = true;

    /* renamed from: r */
    public final RectF f6741r = new RectF();

    /* renamed from: com.google.android.material.navigation.NavigationView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$a.class */
    public interface AbstractC1795a {
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$b.class */
    public static class C1796b extends AbstractC4178a {
        public static final Parcelable.Creator<C1796b> CREATOR = new C1797a();

        /* renamed from: c */
        public Bundle f6742c;

        /* renamed from: com.google.android.material.navigation.NavigationView$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$b$a.class */
        public static final class C1797a implements Parcelable.ClassLoaderCreator<C1796b> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C1796b(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C1796b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1796b(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C1796b[i];
            }
        }

        public C1796b(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f6742c = parcel.readBundle(classLoader);
        }

        public C1796b(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeBundle(this.f6742c);
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 2130969480, 2131886888), attributeSet, 2130969480);
        C4607h c4607h = new C4607h();
        this.f6730g = c4607h;
        this.f6738o = 0;
        this.f6739p = 0;
        Context context2 = getContext();
        C4606g c4606g = new C4606g(context2);
        this.f6729f = c4606g;
        int[] iArr = C3260w0.f11007A;
        C4634p.m690a(context2, attributeSet, 2130969480, 2131886888);
        C4634p.m689b(context2, attributeSet, iArr, 2130969480, 2131886888, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, 2130969480, 2131886888);
        C0303z0 c0303z0 = new C0303z0(context2, obtainStyledAttributes);
        if (c0303z0.m8385o(1)) {
            Drawable m8393g = c0303z0.m8393g(1);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2077q(this, m8393g);
        }
        this.f6739p = c0303z0.m8394f(7, 0);
        this.f6738o = c0303z0.m8390j(0, 0);
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            C0827i m7299a = C0827i.m7304b(context2, attributeSet, 2130969480, 2131886888).m7299a();
            Drawable background = getBackground();
            C0822f c0822f = new C0822f(m7299a);
            if (background instanceof ColorDrawable) {
                c0822f.m7314q(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            c0822f.f3010a.f3035b = new C4285a(context2);
            c0822f.m7307x();
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            C3589v.C3593d.m2077q(this, c0822f);
        }
        if (c0303z0.m8385o(8)) {
            setElevation(c0303z0.m8394f(8, 0));
        }
        setFitsSystemWindows(c0303z0.m8399a(2, false));
        this.f6732i = c0303z0.m8394f(3, 0);
        ColorStateList m8397c = c0303z0.m8385o(29) ? c0303z0.m8397c(29) : null;
        int m8388l = c0303z0.m8385o(32) ? c0303z0.m8388l(32, 0) : 0;
        ColorStateList colorStateList = m8397c;
        if (m8388l == 0) {
            colorStateList = m8397c;
            if (m8397c == null) {
                colorStateList = m4550b(16842808);
            }
        }
        ColorStateList m8397c2 = c0303z0.m8385o(14) ? c0303z0.m8397c(14) : m4550b(16842808);
        int m8388l2 = c0303z0.m8385o(23) ? c0303z0.m8388l(23, 0) : 0;
        if (c0303z0.m8385o(13)) {
            setItemIconSize(c0303z0.m8394f(13, 0));
        }
        ColorStateList m8397c3 = c0303z0.m8385o(24) ? c0303z0.m8397c(24) : null;
        ColorStateList colorStateList2 = m8397c3;
        if (m8388l2 == 0) {
            colorStateList2 = m8397c3;
            if (m8397c3 == null) {
                colorStateList2 = m4550b(16842806);
            }
        }
        Drawable m8393g2 = c0303z0.m8393g(10);
        InsetDrawable insetDrawable = m8393g2;
        if (m8393g2 == null) {
            insetDrawable = m8393g2;
            if (c0303z0.m8385o(16) || c0303z0.m8385o(17)) {
                C0822f c0822f2 = new C0822f(C0827i.m7305a(getContext(), c0303z0.m8388l(16, 0), c0303z0.m8388l(17, 0), new C0817a(0)).m7299a());
                c0822f2.m7314q(C5071c.m71b(getContext(), c0303z0, 18));
                insetDrawable = new InsetDrawable((Drawable) c0822f2, c0303z0.m8394f(21, 0), c0303z0.m8394f(22, 0), c0303z0.m8394f(20, 0), c0303z0.m8394f(19, 0));
            }
        }
        if (c0303z0.m8385o(11)) {
            setItemHorizontalPadding(c0303z0.m8394f(11, 0));
        }
        if (c0303z0.m8385o(25)) {
            setItemVerticalPadding(c0303z0.m8394f(25, 0));
        }
        setDividerInsetStart(c0303z0.m8394f(6, 0));
        setDividerInsetEnd(c0303z0.m8394f(5, 0));
        setSubheaderInsetStart(c0303z0.m8394f(31, 0));
        setSubheaderInsetEnd(c0303z0.m8394f(30, 0));
        setTopInsetScrimEnabled(c0303z0.m8399a(33, this.f6736m));
        setBottomInsetScrimEnabled(c0303z0.m8399a(4, this.f6737n));
        int m8394f = c0303z0.m8394f(12, 0);
        setItemMaxLines(c0303z0.m8390j(15, 1));
        c4606g.f431e = new C1798a(this);
        c4607h.f14255d = 1;
        c4607h.mo715c(context2, c4606g);
        if (m8388l != 0) {
            c4607h.f14258g = m8388l;
            c4607h.mo711g(false);
        }
        c4607h.f14259h = colorStateList;
        c4607h.mo711g(false);
        c4607h.f14262k = m8397c2;
        c4607h.mo711g(false);
        int overScrollMode = getOverScrollMode();
        c4607h.f14276y = overScrollMode;
        NavigationMenuView navigationMenuView = c4607h.f14252a;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(overScrollMode);
        }
        if (m8388l2 != 0) {
            c4607h.f14260i = m8388l2;
            c4607h.mo711g(false);
        }
        c4607h.f14261j = colorStateList2;
        c4607h.mo711g(false);
        c4607h.f14263l = insetDrawable;
        c4607h.mo711g(false);
        c4607h.m716b(m8394f);
        c4606g.m8713b(c4607h, c4606g.f427a);
        if (c4607h.f14252a == null) {
            NavigationMenuView navigationMenuView2 = (NavigationMenuView) c4607h.f14257f.inflate(2131492934, (ViewGroup) this, false);
            c4607h.f14252a = navigationMenuView2;
            navigationMenuView2.setAccessibilityDelegateCompat(new C4607h.C4615h(c4607h.f14252a));
            if (c4607h.f14256e == null) {
                c4607h.f14256e = new C4607h.C4610c();
            }
            int i = c4607h.f14276y;
            if (i != -1) {
                c4607h.f14252a.setOverScrollMode(i);
            }
            c4607h.f14253b = (LinearLayout) c4607h.f14257f.inflate(2131492931, (ViewGroup) c4607h.f14252a, false);
            c4607h.f14252a.setAdapter(c4607h.f14256e);
        }
        addView(c4607h.f14252a);
        if (c0303z0.m8385o(26)) {
            int m8388l3 = c0303z0.m8388l(26, 0);
            c4607h.m712f(true);
            getMenuInflater().inflate(m8388l3, c4606g);
            c4607h.m712f(false);
            c4607h.mo711g(false);
        }
        if (c0303z0.m8385o(9)) {
            c4607h.f14253b.addView(c4607h.f14257f.inflate(c0303z0.m8388l(9, 0), (ViewGroup) c4607h.f14253b, false));
            NavigationMenuView navigationMenuView3 = c4607h.f14252a;
            navigationMenuView3.setPadding(0, 0, 0, navigationMenuView3.getPaddingBottom());
        }
        obtainStyledAttributes.recycle();
        this.f6735l = new ViewTreeObserver$OnGlobalLayoutListenerC4856a(this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.f6735l);
    }

    private MenuInflater getMenuInflater() {
        if (this.f6734k == null) {
            this.f6734k = new C3302f(getContext());
        }
        return this.f6734k;
    }

    @Override // p262v3.C4623k
    /* renamed from: a */
    public void mo695a(C3551b0 c3551b0) {
        C4607h c4607h = this.f6730g;
        Objects.requireNonNull(c4607h);
        int m2178e = c3551b0.m2178e();
        if (c4607h.f14274w != m2178e) {
            c4607h.f14274w = m2178e;
            c4607h.m706m();
        }
        NavigationMenuView navigationMenuView = c4607h.f14252a;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, c3551b0.m2181b());
        C3589v.m2119e(c4607h.f14253b, c3551b0);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: b */
    public final ColorStateList m4550b(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList m3016a = C2788a.m3016a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C3681R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = m3016a.getDefaultColor();
        int[] iArr = f6728t;
        return new ColorStateList(new int[]{iArr, f6727s, FrameLayout.EMPTY_STATE_SET}, new int[]{m3016a.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.f6740q == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.clipPath(this.f6740q);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    public MenuItem getCheckedItem() {
        return this.f6730g.f14256e.f14280d;
    }

    public int getDividerInsetEnd() {
        return this.f6730g.f14269r;
    }

    public int getDividerInsetStart() {
        return this.f6730g.f14268q;
    }

    public int getHeaderCount() {
        return this.f6730g.f14253b.getChildCount();
    }

    public Drawable getItemBackground() {
        return this.f6730g.f14263l;
    }

    public int getItemHorizontalPadding() {
        return this.f6730g.f14264m;
    }

    public int getItemIconPadding() {
        return this.f6730g.f14266o;
    }

    public ColorStateList getItemIconTintList() {
        return this.f6730g.f14262k;
    }

    public int getItemMaxLines() {
        return this.f6730g.f14273v;
    }

    public ColorStateList getItemTextColor() {
        return this.f6730g.f14261j;
    }

    public int getItemVerticalPadding() {
        return this.f6730g.f14265n;
    }

    public Menu getMenu() {
        return this.f6729f;
    }

    public int getSubheaderInsetEnd() {
        Objects.requireNonNull(this.f6730g);
        return 0;
    }

    public int getSubheaderInsetStart() {
        return this.f6730g.f14270s;
    }

    @Override // p262v3.C4623k, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof C0822f) {
            C3102d.m2644H(this, (C0822f) background);
        }
    }

    @Override // p262v3.C4623k, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f6735l);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.f6732i), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.f6732i, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C1796b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1796b c1796b = (C1796b) parcelable;
        super.onRestoreInstanceState(c1796b.f13167a);
        C4606g c4606g = this.f6729f;
        Bundle bundle = c1796b.f6742c;
        Objects.requireNonNull(c4606g);
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || c4606g.f447u.isEmpty()) {
            return;
        }
        Iterator<WeakReference<AbstractC0144i>> it2 = c4606g.f447u.iterator();
        while (it2.hasNext()) {
            WeakReference<AbstractC0144i> next = it2.next();
            AbstractC0144i abstractC0144i = next.get();
            if (abstractC0144i == null) {
                c4606g.f447u.remove(next);
            } else {
                int id = abstractC0144i.getId();
                if (id > 0 && (parcelable2 = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    abstractC0144i.mo714d(parcelable2);
                }
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable mo709i;
        C1796b c1796b = new C1796b(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        c1796b.f6742c = bundle;
        C4606g c4606g = this.f6729f;
        if (!c4606g.f447u.isEmpty()) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            Iterator<WeakReference<AbstractC0144i>> it2 = c4606g.f447u.iterator();
            while (it2.hasNext()) {
                WeakReference<AbstractC0144i> next = it2.next();
                AbstractC0144i abstractC0144i = next.get();
                if (abstractC0144i == null) {
                    c4606g.f447u.remove(next);
                } else {
                    int id = abstractC0144i.getId();
                    if (id > 0 && (mo709i = abstractC0144i.mo709i()) != null) {
                        sparseArray.put(id, mo709i);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
        return c1796b;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (!(getParent() instanceof DrawerLayout) || this.f6739p <= 0 || !(getBackground() instanceof C0822f)) {
            this.f6740q = null;
            this.f6741r.setEmpty();
            return;
        }
        C0822f c0822f = (C0822f) getBackground();
        C0827i c0827i = c0822f.f3010a.f3034a;
        Objects.requireNonNull(c0827i);
        C0827i.C0829b c0829b = new C0827i.C0829b(c0827i);
        int i5 = this.f6738o;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (Gravity.getAbsoluteGravity(i5, C3589v.C3594e.m2071d(this)) == 3) {
            c0829b.m7294f(this.f6739p);
            c0829b.m7296d(this.f6739p);
        } else {
            c0829b.m7295e(this.f6739p);
            c0829b.m7297c(this.f6739p);
        }
        c0822f.f3010a.f3034a = c0829b.m7299a();
        c0822f.invalidateSelf();
        if (this.f6740q == null) {
            this.f6740q = new Path();
        }
        this.f6740q.reset();
        this.f6741r.set(0.0f, 0.0f, i, i2);
        C0830j c0830j = C0830j.C0831a.f3094a;
        C0822f.C0824b c0824b = c0822f.f3010a;
        c0830j.m7293a(c0824b.f3034a, c0824b.f3044k, this.f6741r, this.f6740q);
        invalidate();
    }

    public void setBottomInsetScrimEnabled(boolean z) {
        this.f6737n = z;
    }

    public void setCheckedItem(int i) {
        MenuItem findItem = this.f6729f.findItem(i);
        if (findItem != null) {
            this.f6730g.f14256e.m698h((C0140g) findItem);
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem findItem = this.f6729f.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f6730g.f14256e.m698h((C0140g) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    public void setDividerInsetEnd(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14269r = i;
        c4607h.mo711g(false);
    }

    public void setDividerInsetStart(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14268q = i;
        c4607h.mo711g(false);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C3102d.m2645G(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        C4607h c4607h = this.f6730g;
        c4607h.f14263l = drawable;
        c4607h.mo711g(false);
    }

    public void setItemBackgroundResource(int i) {
        Context context = getContext();
        Object obj = C2134a.f7832a;
        setItemBackground(C2134a.C2136b.m3841b(context, i));
    }

    public void setItemHorizontalPadding(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14264m = i;
        c4607h.mo711g(false);
    }

    public void setItemHorizontalPaddingResource(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14264m = getResources().getDimensionPixelSize(i);
        c4607h.mo711g(false);
    }

    public void setItemIconPadding(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14266o = i;
        c4607h.mo711g(false);
    }

    public void setItemIconPaddingResource(int i) {
        this.f6730g.m716b(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(int i) {
        C4607h c4607h = this.f6730g;
        if (c4607h.f14267p != i) {
            c4607h.f14267p = i;
            c4607h.f14271t = true;
            c4607h.mo711g(false);
        }
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        C4607h c4607h = this.f6730g;
        c4607h.f14262k = colorStateList;
        c4607h.mo711g(false);
    }

    public void setItemMaxLines(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14273v = i;
        c4607h.mo711g(false);
    }

    public void setItemTextAppearance(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14260i = i;
        c4607h.mo711g(false);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        C4607h c4607h = this.f6730g;
        c4607h.f14261j = colorStateList;
        c4607h.mo711g(false);
    }

    public void setItemVerticalPadding(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14265n = i;
        c4607h.mo711g(false);
    }

    public void setItemVerticalPaddingResource(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14265n = getResources().getDimensionPixelSize(i);
        c4607h.mo711g(false);
    }

    public void setNavigationItemSelectedListener(AbstractC1795a abstractC1795a) {
        this.f6731h = abstractC1795a;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        C4607h c4607h = this.f6730g;
        if (c4607h != null) {
            c4607h.f14276y = i;
            NavigationMenuView navigationMenuView = c4607h.f14252a;
            if (navigationMenuView == null) {
                return;
            }
            navigationMenuView.setOverScrollMode(i);
        }
    }

    public void setSubheaderInsetEnd(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14270s = i;
        c4607h.mo711g(false);
    }

    public void setSubheaderInsetStart(int i) {
        C4607h c4607h = this.f6730g;
        c4607h.f14270s = i;
        c4607h.mo711g(false);
    }

    public void setTopInsetScrimEnabled(boolean z) {
        this.f6736m = z;
    }
}
