package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import androidx.appcompat.C0083a;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.p029d.p030a.AbstractC0633a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CheckableImageButton.class */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: a */
    private static final int[] f20293a = {16842912};

    /* renamed from: b */
    private boolean f20294b;

    /* renamed from: c */
    private boolean f20295c;

    /* renamed from: d */
    private boolean f20296d;

    /* renamed from: com.google.android.material.internal.CheckableImageButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$a.class */
    public static class C4684a extends AbstractC0633a {
        public static final Parcelable.Creator<C4684a> CREATOR = new Parcelable.ClassLoaderCreator<C4684a>() { // from class: com.google.android.material.internal.CheckableImageButton.a.1
            /* renamed from: a */
            public C4684a createFromParcel(Parcel parcel) {
                return new C4684a(parcel, null);
            }

            /* renamed from: a */
            public C4684a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C4684a(parcel, classLoader);
            }

            /* renamed from: a */
            public C4684a[] newArray(int i) {
                return new C4684a[i];
            }
        };

        /* renamed from: a */
        boolean f20298a;

        public C4684a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m2914a(parcel);
        }

        public C4684a(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        private void m2914a(Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.f20298a = z;
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f20298a ? 1 : 0);
        }
    }

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20295c = true;
        this.f20296d = true;
        C0595u.m20345a(this, new C0549a() { // from class: com.google.android.material.internal.CheckableImageButton.1
            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public void mo2272a(View view, C0553c c0553c) {
                super.mo2272a(view, c0553c);
                c0553c.m20510a(CheckableImageButton.this.m2916a());
                c0553c.m20502b(CheckableImageButton.this.isChecked());
            }

            @Override // androidx.core.p026h.C0549a
            /* renamed from: d */
            public void mo2915d(View view, AccessibilityEvent accessibilityEvent) {
                super.mo2915d(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }
        });
    }

    /* renamed from: a */
    public boolean m2916a() {
        return this.f20295c;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f20294b;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        return this.f20294b ? mergeDrawableStates(super.onCreateDrawableState(f20293a.length + i), f20293a) : super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C4684a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C4684a c4684a = (C4684a) parcelable;
        super.onRestoreInstanceState(c4684a.m20121a());
        setChecked(c4684a.f20298a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C4684a c4684a = new C4684a(super.onSaveInstanceState());
        c4684a.f20298a = this.f20294b;
        return c4684a;
    }

    public void setCheckable(boolean z) {
        if (this.f20295c != z) {
            this.f20295c = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.f20295c || this.f20294b == z) {
            return;
        }
        this.f20294b = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z) {
        this.f20296d = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f20296d) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f20294b);
    }
}
