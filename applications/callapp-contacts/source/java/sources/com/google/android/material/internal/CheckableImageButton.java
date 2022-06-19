package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import androidx.appcompat.C0142a;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.customview.view.AbsSavedState;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/CheckableImageButton.class */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: b */
    private static final int[] f53281b = {16842912};

    /* renamed from: a */
    boolean f53282a;

    /* renamed from: c */
    private boolean f53283c;

    /* renamed from: d */
    private boolean f53284d;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.internal.CheckableImageButton.SavedState.1
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
        boolean checked;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readFromParcel(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.checked = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }
    }

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f53282a = true;
        this.f53284d = true;
        C0926v.m44123a(this, new C0865a() { // from class: com.google.android.material.internal.CheckableImageButton.1
            @Override // androidx.core.view.C0865a
            /* renamed from: a */
            public final void mo9886a(View view, C0869c c0869c) {
                super.mo9886a(view, c0869c);
                c0869c.m44272a(CheckableImageButton.this.f53282a);
                c0869c.f3644a.setChecked(CheckableImageButton.this.isChecked());
            }

            @Override // androidx.core.view.C0865a
            /* renamed from: d */
            public final void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
                super.mo10621d(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }
        });
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f53283c;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.f53283c) {
            int[] iArr = f53281b;
            return mergeDrawableStates(super.onCreateDrawableState(i + iArr.length), iArr);
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
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = this.f53283c;
        return savedState;
    }

    public void setCheckable(boolean z) {
        if (this.f53282a != z) {
            this.f53282a = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.f53282a || this.f53283c == z) {
            return;
        }
        this.f53283c = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z) {
        this.f53284d = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f53284d) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f53283c);
    }
}
