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
import androidx.appcompat.C0142a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.view.menu.C0272i;
import androidx.core.content.C0790b;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14621d;
import com.google.android.material.internal.C14622e;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.p374k.C14674i;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/navigation/NavigationView.class */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: d */
    private static final int[] f53616d = {16842912};

    /* renamed from: e */
    private static final int[] f53617e = {-16842910};

    /* renamed from: f */
    private static final int f53618f = C14376a.C14387k.Widget_Design_NavigationView;

    /* renamed from: c */
    AbstractC14701a f53619c;

    /* renamed from: g */
    private final C14621d f53620g;

    /* renamed from: h */
    private final C14622e f53621h;

    /* renamed from: i */
    private final int f53622i;

    /* renamed from: j */
    private final int[] f53623j;

    /* renamed from: k */
    private MenuInflater f53624k;

    /* renamed from: l */
    private ViewTreeObserver.OnGlobalLayoutListener f53625l;

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

    /* renamed from: com.google.android.material.navigation.NavigationView$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/navigation/NavigationView$a.class */
    public interface AbstractC14701a {
        /* renamed from: a */
        boolean m10360a();
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.navigationViewStyle);
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
    /* renamed from: a */
    private ColorStateList m10366a(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList m46375a = C0153a.m46375a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0142a.C0143a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = m46375a.getDefaultColor();
        int[] iArr = f53617e;
        return new ColorStateList(new int[]{iArr, f53616d, EMPTY_STATE_SET}, new int[]{m46375a.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    /* renamed from: a */
    public final void mo10365a(C0889ac c0889ac) {
        C14622e c14622e = this.f53621h;
        int m44227b = c0889ac.m44227b();
        if (c14622e.f53391r != m44227b) {
            c14622e.f53391r = m44227b;
            c14622e.m10535c();
        }
        c14622e.f53374a.setPadding(0, c14622e.f53374a.getPaddingTop(), 0, c0889ac.m44224d());
        C0926v.m44107b(c14622e.f53375b, c0889ac);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14674i.m10437a(this);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT < 16) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.f53625l);
        } else {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.f53625l);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.f53622i), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.f53622i, 1073741824);
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
        this.f53620g.m46092b(savedState.menuState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuState = new Bundle();
        this.f53620g.m46103a(savedState.menuState);
        return savedState;
    }

    public void setCheckedItem(int i) {
        MenuItem findItem = this.f53620g.findItem(i);
        if (findItem != null) {
            this.f53621h.m10544a((C0272i) findItem);
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem findItem = this.f53620g.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f53621h.m10544a((C0272i) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        C14674i.m10436a(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        this.f53621h.m10547a(drawable);
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(C0790b.m44502a(getContext(), i));
    }

    public void setItemHorizontalPadding(int i) {
        this.f53621h.m10539b(i);
    }

    public void setItemHorizontalPaddingResource(int i) {
        this.f53621h.m10539b(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(int i) {
        this.f53621h.m10534c(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.f53621h.m10534c(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(int i) {
        this.f53621h.m10531e(i);
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f53621h.m10548a(colorStateList);
    }

    public void setItemMaxLines(int i) {
        this.f53621h.m10532d(i);
    }

    public void setItemTextAppearance(int i) {
        this.f53621h.m10550a(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f53621h.m10538b(colorStateList);
    }

    public void setNavigationItemSelectedListener(AbstractC14701a abstractC14701a) {
        this.f53619c = abstractC14701a;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        C14622e c14622e = this.f53621h;
        if (c14622e != null) {
            c14622e.m10529f(i);
        }
    }
}
