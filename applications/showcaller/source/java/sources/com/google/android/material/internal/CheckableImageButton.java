package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.customview.view.AbsSavedState;
import p020b.p021a.C1423a;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/CheckableImageButton.class */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: f */
    private static final int[] f36871f = {16842912};

    /* renamed from: g */
    private boolean f36872g;

    /* renamed from: h */
    private boolean f36873h;

    /* renamed from: i */
    private boolean f36874i;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8166a();

        /* renamed from: f */
        boolean f36875f;

        /* renamed from: com.google.android.material.internal.CheckableImageButton$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$SavedState$a.class */
        static final class C8166a implements Parcelable.ClassLoaderCreator<SavedState> {
            C8166a() {
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
            m4654b(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: b */
        private void m4654b(Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.f36875f = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f36875f ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.CheckableImageButton$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$a.class */
    public class C8167a extends C1599a {
        C8167a() {
            CheckableImageButton.this = r4;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: f */
        public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
            super.mo4650f(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            c1634c.m29493a0(CheckableImageButton.this.m4655a());
            c1634c.m29491b0(CheckableImageButton.this.isChecked());
        }
    }

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36873h = true;
        this.f36874i = true;
        C1679w.m29273r0(this, new C8167a());
    }

    /* renamed from: a */
    public boolean m4655a() {
        return this.f36873h;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f36872g;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.f36872g) {
            int[] iArr = f36871f;
            return ImageButton.mergeDrawableStates(super.onCreateDrawableState(i + iArr.length), iArr);
        }
        return super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        setChecked(savedState.f36875f);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f36875f = this.f36872g;
        return savedState;
    }

    public void setCheckable(boolean z) {
        if (this.f36873h != z) {
            this.f36873h = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.f36873h || this.f36872g == z) {
            return;
        }
        this.f36872g = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z) {
        this.f36874i = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f36874i) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f36872g);
    }
}
