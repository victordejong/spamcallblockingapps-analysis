package com.google.android.material.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.widget.C0286e0;
import androidx.core.content.C0586a;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.C8176b;
import com.google.android.material.internal.C8179e;
import com.google.android.material.internal.C8180f;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import p020b.p021a.C1423a;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p021a.p028o.C1462g;
import p020b.p041h.p050l.C1615e0;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1942i;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView.class */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: i */
    private static final int[] f37047i = {16842912};

    /* renamed from: j */
    private static final int[] f37048j = {-16842910};

    /* renamed from: k */
    private static final int f37049k = C1895k.Widget_Design_NavigationView;

    /* renamed from: l */
    private final C8179e f37050l;

    /* renamed from: m */
    private final C8180f f37051m;

    /* renamed from: n */
    AbstractC8219c f37052n;

    /* renamed from: o */
    private final int f37053o;

    /* renamed from: p */
    private final int[] f37054p;

    /* renamed from: q */
    private MenuInflater f37055q;

    /* renamed from: r */
    private ViewTreeObserver.OnGlobalLayoutListener f37056r;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8216a();

        /* renamed from: f */
        public Bundle f37057f;

        /* renamed from: com.google.android.material.navigation.NavigationView$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$SavedState$a.class */
        static final class C8216a implements Parcelable.ClassLoaderCreator<SavedState> {
            C8216a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f37057f = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f37057f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.navigation.NavigationView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$a.class */
    public class C8217a implements C0178g.AbstractC0179a {
        C8217a() {
            NavigationView.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
        /* renamed from: a */
        public boolean mo4426a(C0178g c0178g, MenuItem menuItem) {
            AbstractC8219c abstractC8219c = NavigationView.this.f37052n;
            return abstractC8219c != null && abstractC8219c.m4424a(menuItem);
        }

        @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
        /* renamed from: b */
        public void mo4425b(C0178g c0178g) {
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$b.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC8218b implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC8218b() {
            NavigationView.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.f37054p);
            boolean z = NavigationView.this.f37054p[1] == 0;
            NavigationView.this.f37051m.m4516x(z);
            NavigationView.this.setDrawTopInsetForeground(z);
            Activity m4557a = C8176b.m4557a(NavigationView.this.getContext());
            if (m4557a == null || Build.VERSION.SDK_INT < 21) {
                return;
            }
            NavigationView.this.setDrawBottomInsetForeground((m4557a.findViewById(16908290).getHeight() == NavigationView.this.getHeight()) && (Color.alpha(m4557a.getWindow().getNavigationBarColor()) != 0));
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$c.class */
    public interface AbstractC8219c {
        /* renamed from: a */
        boolean m4424a(MenuItem menuItem);
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NavigationView(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: d */
    private ColorStateList m4435d(int i) {
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
        int[] iArr = f37048j;
        return new ColorStateList(new int[]{iArr, f37047i, FrameLayout.EMPTY_STATE_SET}, new int[]{m30127c.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    /* renamed from: e */
    private final Drawable m4434e(C0286e0 c0286e0) {
        C1938h c1938h = new C1938h(C1946m.m28574b(getContext(), c0286e0.m34954n(C1896l.NavigationView_itemShapeAppearance, 0), c0286e0.m34954n(C1896l.NavigationView_itemShapeAppearanceOverlay, 0)).m28528m());
        c1938h.m28625a0(C1919c.m28685b(getContext(), c0286e0, C1896l.NavigationView_itemShapeFillColor));
        return new InsetDrawable((Drawable) c1938h, c0286e0.m34962f(C1896l.NavigationView_itemShapeInsetStart, 0), c0286e0.m34962f(C1896l.NavigationView_itemShapeInsetTop, 0), c0286e0.m34962f(C1896l.NavigationView_itemShapeInsetEnd, 0), c0286e0.m34962f(C1896l.NavigationView_itemShapeInsetBottom, 0));
    }

    /* renamed from: f */
    private boolean m4433f(C0286e0 c0286e0) {
        return c0286e0.m34949s(C1896l.NavigationView_itemShapeAppearance) || c0286e0.m34949s(C1896l.NavigationView_itemShapeAppearanceOverlay);
    }

    private MenuInflater getMenuInflater() {
        if (this.f37055q == null) {
            this.f37055q = new C1462g(getContext());
        }
        return this.f37055q;
    }

    /* renamed from: i */
    private void m4430i() {
        this.f37056r = new ViewTreeObserver$OnGlobalLayoutListenerC8218b();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f37056r);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    /* renamed from: a */
    protected void mo4438a(C1615e0 c1615e0) {
        this.f37051m.m4529k(c1615e0);
    }

    /* renamed from: g */
    public View m4432g(int i) {
        return this.f37051m.m4517w(i);
    }

    public MenuItem getCheckedItem() {
        return this.f37051m.m4526n();
    }

    public int getHeaderCount() {
        return this.f37051m.m4525o();
    }

    public Drawable getItemBackground() {
        return this.f37051m.m4524p();
    }

    public int getItemHorizontalPadding() {
        return this.f37051m.m4523q();
    }

    public int getItemIconPadding() {
        return this.f37051m.m4522r();
    }

    public ColorStateList getItemIconTintList() {
        return this.f37051m.m4519u();
    }

    public int getItemMaxLines() {
        return this.f37051m.m4521s();
    }

    public ColorStateList getItemTextColor() {
        return this.f37051m.m4520t();
    }

    public Menu getMenu() {
        return this.f37050l;
    }

    /* renamed from: h */
    public void m4431h(int i) {
        this.f37051m.m4540J(true);
        getMenuInflater().inflate(i, this.f37050l);
        this.f37051m.m4540J(false);
        this.f37051m.mo4536c(false);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1942i.m28580e(this);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT < 16) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.f37056r);
        } else {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.f37056r);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.f37053o), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.f37053o, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        this.f37050l.m35401S(savedState.f37057f);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f37057f = bundle;
        this.f37050l.m35399U(bundle);
        return savedState;
    }

    public void setCheckedItem(int i) {
        MenuItem findItem = this.f37050l.findItem(i);
        if (findItem != null) {
            this.f37051m.m4515y((C0182i) findItem);
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem findItem = this.f37050l.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f37051m.m4515y((C0182i) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        C1942i.m28581d(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        this.f37051m.m4549A(drawable);
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(C0586a.m33348f(getContext(), i));
    }

    public void setItemHorizontalPadding(int i) {
        this.f37051m.m4548B(i);
    }

    public void setItemHorizontalPaddingResource(int i) {
        this.f37051m.m4548B(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(int i) {
        this.f37051m.m4547C(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.f37051m.m4547C(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(int i) {
        this.f37051m.m4546D(i);
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f37051m.m4545E(colorStateList);
    }

    public void setItemMaxLines(int i) {
        this.f37051m.m4544F(i);
    }

    public void setItemTextAppearance(int i) {
        this.f37051m.m4543G(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f37051m.m4542H(colorStateList);
    }

    public void setNavigationItemSelectedListener(AbstractC8219c abstractC8219c) {
        this.f37052n = abstractC8219c;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        C8180f c8180f = this.f37051m;
        if (c8180f != null) {
            c8180f.m4541I(i);
        }
    }
}
