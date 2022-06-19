package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.appcompat.widget.C0258n;
import me.zhanghai.android.materialprogressbar.C3681R;
import p163m0.C3589v;
import p216r0.AbstractC4178a;
import p262v3.C4600a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CheckableImageButton.class */
public class CheckableImageButton extends C0258n implements Checkable {

    /* renamed from: g */
    public static final int[] f6710g = {16842912};

    /* renamed from: d */
    public boolean f6711d;

    /* renamed from: e */
    public boolean f6712e = true;

    /* renamed from: f */
    public boolean f6713f = true;

    /* renamed from: com.google.android.material.internal.CheckableImageButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$a.class */
    public static class C1792a extends AbstractC4178a {
        public static final Parcelable.Creator<C1792a> CREATOR = new C1793a();

        /* renamed from: c */
        public boolean f6714c;

        /* renamed from: com.google.android.material.internal.CheckableImageButton$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$a$a.class */
        public static final class C1793a implements Parcelable.ClassLoaderCreator<C1792a> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C1792a(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C1792a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1792a(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C1792a[i];
            }
        }

        public C1792a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f6714c = parcel.readInt() != 1 ? false : true;
        }

        public C1792a(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeInt(this.f6714c ? 1 : 0);
        }
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C3681R.attr.imageButtonStyle);
        C3589v.m2103u(this, new C4600a(this));
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f6711d;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.f6711d) {
            int[] iArr = f6710g;
            return ImageButton.mergeDrawableStates(super.onCreateDrawableState(i + iArr.length), iArr);
        }
        return super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1792a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1792a c1792a = (C1792a) parcelable;
        super.onRestoreInstanceState(c1792a.f13167a);
        setChecked(c1792a.f6714c);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C1792a c1792a = new C1792a(super.onSaveInstanceState());
        c1792a.f6714c = this.f6711d;
        return c1792a;
    }

    public void setCheckable(boolean z) {
        if (this.f6712e != z) {
            this.f6712e = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.f6712e || this.f6711d == z) {
            return;
        }
        this.f6711d = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z) {
        this.f6713f = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f6713f) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f6711d);
    }
}
