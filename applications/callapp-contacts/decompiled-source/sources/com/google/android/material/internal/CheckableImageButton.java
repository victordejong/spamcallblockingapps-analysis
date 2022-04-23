package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import androidx.appcompat.a;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.view.a.c;
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/CheckableImageButton.class */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f30586b = {16842912};

    /* renamed from: a  reason: collision with root package name */
    boolean f30587a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f30588c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30589d;

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
        this(context, attributeSet, a.C0018a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f30587a = true;
        this.f30589d = true;
        v.a(this, new androidx.core.view.a() { // from class: com.google.android.material.internal.CheckableImageButton.1
            @Override // androidx.core.view.a
            public final void a(View view, c cVar) {
                super.a(view, cVar);
                cVar.a(CheckableImageButton.this.f30587a);
                cVar.f1959a.setChecked(CheckableImageButton.this.isChecked());
            }

            @Override // androidx.core.view.a
            public final void d(View view, AccessibilityEvent accessibilityEvent) {
                super.d(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }
        });
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f30588c;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (!this.f30588c) {
            return super.onCreateDrawableState(i);
        }
        int[] iArr = f30586b;
        return mergeDrawableStates(super.onCreateDrawableState(i + iArr.length), iArr);
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
        savedState.checked = this.f30588c;
        return savedState;
    }

    public void setCheckable(boolean z) {
        if (this.f30587a != z) {
            this.f30587a = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f30587a && this.f30588c != z) {
            this.f30588c = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    public void setPressable(boolean z) {
        this.f30589d = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f30589d) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f30588c);
    }
}
