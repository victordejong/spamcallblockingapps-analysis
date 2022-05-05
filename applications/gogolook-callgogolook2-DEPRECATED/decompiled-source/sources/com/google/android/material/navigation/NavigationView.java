package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0054R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import p081h.p203i.p204a.p294f.p308n.C9226f;
import p081h.p203i.p204a.p294f.p308n.C9227g;
import p081h.p203i.p204a.p294f.p308n.C9245k;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView.class */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: i */
    public static final int[] f7520i = {16842912};

    /* renamed from: j */
    public static final int[] f7521j = {-16842910};

    /* renamed from: d */
    public final C9226f f7522d;

    /* renamed from: e */
    public final C9227g f7523e;

    /* renamed from: f */
    public AbstractC3636b f7524f;

    /* renamed from: g */
    public final int f7525g;

    /* renamed from: h */
    public MenuInflater f7526h;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3634a();

        /* renamed from: a */
        public Bundle f7527a;

        /* renamed from: com.google.android.material.navigation.NavigationView$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$SavedState$a.class */
        public static final class C3634a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f7527a = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f7527a);
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$a.class */
    public class C3635a implements MenuBuilder.Callback {
        public C3635a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            AbstractC3636b bVar = NavigationView.this.f7524f;
            return bVar != null && bVar.m31319a(menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/navigation/NavigationView$b.class */
    public interface AbstractC3636b {
        /* renamed from: a */
        boolean m31319a(@NonNull MenuItem menuItem);
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.navigationViewStyle);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        this.f7523e = new C9227g();
        this.f7522d = new C9226f(context);
        TintTypedArray d = C9245k.m15636d(context, attributeSet, R$styleable.NavigationView, i, R$style.Widget_Design_NavigationView, new int[0]);
        ViewCompat.setBackground(this, d.getDrawable(R$styleable.NavigationView_android_background));
        if (d.hasValue(R$styleable.NavigationView_elevation)) {
            ViewCompat.setElevation(this, d.getDimensionPixelSize(R$styleable.NavigationView_elevation, 0));
        }
        ViewCompat.setFitsSystemWindows(this, d.getBoolean(R$styleable.NavigationView_android_fitsSystemWindows, false));
        this.f7525g = d.getDimensionPixelSize(R$styleable.NavigationView_android_maxWidth, 0);
        ColorStateList colorStateList = d.hasValue(R$styleable.NavigationView_itemIconTint) ? d.getColorStateList(R$styleable.NavigationView_itemIconTint) : m31323a(16842808);
        if (d.hasValue(R$styleable.NavigationView_itemTextAppearance)) {
            i2 = d.getResourceId(R$styleable.NavigationView_itemTextAppearance, 0);
            z = true;
        } else {
            z = false;
            i2 = 0;
        }
        ColorStateList colorStateList2 = d.hasValue(R$styleable.NavigationView_itemTextColor) ? d.getColorStateList(R$styleable.NavigationView_itemTextColor) : null;
        ColorStateList colorStateList3 = colorStateList2;
        if (!z) {
            colorStateList3 = colorStateList2;
            if (colorStateList2 == null) {
                colorStateList3 = m31323a(16842806);
            }
        }
        Drawable drawable = d.getDrawable(R$styleable.NavigationView_itemBackground);
        if (d.hasValue(R$styleable.NavigationView_itemHorizontalPadding)) {
            this.f7523e.m15664c(d.getDimensionPixelSize(R$styleable.NavigationView_itemHorizontalPadding, 0));
        }
        int dimensionPixelSize = d.getDimensionPixelSize(R$styleable.NavigationView_itemIconPadding, 0);
        this.f7522d.setCallback(new C3635a());
        this.f7523e.m15666b(1);
        this.f7523e.initForMenu(context, this.f7522d);
        this.f7523e.m15671a(colorStateList);
        if (z) {
            this.f7523e.m15662e(i2);
        }
        this.f7523e.m15665b(colorStateList3);
        this.f7523e.m15670a(drawable);
        this.f7523e.m15663d(dimensionPixelSize);
        this.f7522d.addMenuPresenter(this.f7523e);
        addView((View) this.f7523e.getMenuView(this));
        if (d.hasValue(R$styleable.NavigationView_menu)) {
            m31320c(d.getResourceId(R$styleable.NavigationView_menu, 0));
        }
        if (d.hasValue(R$styleable.NavigationView_headerLayout)) {
            m31321b(d.getResourceId(R$styleable.NavigationView_headerLayout, 0));
        }
        d.recycle();
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: a */
    public final ColorStateList m31323a(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0054R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        return new ColorStateList(new int[]{f7521j, f7520i, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(f7521j, defaultColor), i2, defaultColor});
    }

    /* renamed from: a */
    public final MenuInflater m31324a() {
        if (this.f7526h == null) {
            this.f7526h = new SupportMenuInflater(getContext());
        }
        return this.f7526h;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public void mo31322a(WindowInsetsCompat windowInsetsCompat) {
        this.f7523e.m15668a(windowInsetsCompat);
    }

    /* renamed from: b */
    public View m31321b(@LayoutRes int i) {
        return this.f7523e.m15672a(i);
    }

    /* renamed from: c */
    public void m31320c(int i) {
        this.f7523e.m15667a(true);
        m31324a().inflate(i, this.f7522d);
        this.f7523e.m15667a(false);
        this.f7523e.updateMenuView(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.f7525g), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.f7525g, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f7522d.restorePresenterStates(savedState.f7527a);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f7527a = new Bundle();
        this.f7522d.savePresenterStates(savedState.f7527a);
        return savedState;
    }
}
