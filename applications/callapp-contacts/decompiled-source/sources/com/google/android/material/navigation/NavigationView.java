package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.appcompat.a;
import androidx.core.content.b;
import androidx.core.view.ac;
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.d;
import com.google.android.material.internal.e;
import com.google.android.material.k.i;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/navigation/NavigationView.class */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f30731d = {16842912};
    private static final int[] e = {-16842910};
    private static final int f = a.k.Widget_Design_NavigationView;

    /* renamed from: c  reason: collision with root package name */
    a f30732c;
    private final d g;
    private final e h;
    private final int i;
    private final int[] j;
    private MenuInflater k;
    private ViewTreeObserver.OnGlobalLayoutListener l;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/navigation/NavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.navigation.NavigationView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public Bundle menuState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/navigation/NavigationView$a.class */
    public interface a {
        boolean a();
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NavigationView(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 970
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    private ColorStateList a(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList a2 = androidx.appcompat.a.a.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(a.C0018a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = a2.getDefaultColor();
        int[] iArr = e;
        return new ColorStateList(new int[]{iArr, f30731d, EMPTY_STATE_SET}, new int[]{a2.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    public final void a(ac acVar) {
        e eVar = this.h;
        int b2 = acVar.b();
        if (eVar.r != b2) {
            eVar.r = b2;
            eVar.c();
        }
        eVar.f30616a.setPadding(0, eVar.f30616a.getPaddingTop(), 0, acVar.d());
        v.b(eVar.f30617b, acVar);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.a(this);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT < 16) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.l);
        } else {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.l);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.i), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.i, 1073741824);
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
        super.onRestoreInstanceState(savedState.getSuperState());
        this.g.b(savedState.menuState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuState = new Bundle();
        this.g.a(savedState.menuState);
        return savedState;
    }

    public void setCheckedItem(int i) {
        MenuItem findItem = this.g.findItem(i);
        if (findItem != null) {
            this.h.a((androidx.appcompat.view.menu.i) findItem);
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem findItem = this.g.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.h.a((androidx.appcompat.view.menu.i) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f2);
        }
        i.a(this, f2);
    }

    public void setItemBackground(Drawable drawable) {
        this.h.a(drawable);
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(b.a(getContext(), i));
    }

    public void setItemHorizontalPadding(int i) {
        this.h.b(i);
    }

    public void setItemHorizontalPaddingResource(int i) {
        this.h.b(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(int i) {
        this.h.c(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.h.c(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(int i) {
        this.h.e(i);
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.h.a(colorStateList);
    }

    public void setItemMaxLines(int i) {
        this.h.d(i);
    }

    public void setItemTextAppearance(int i) {
        this.h.a(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.h.b(colorStateList);
    }

    public void setNavigationItemSelectedListener(a aVar) {
        this.f30732c = aVar;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        e eVar = this.h;
        if (eVar != null) {
            eVar.f(i);
        }
    }
}
