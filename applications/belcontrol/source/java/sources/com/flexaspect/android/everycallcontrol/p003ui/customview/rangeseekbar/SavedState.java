package com.flexaspect.android.everycallcontrol.p003ui.customview.rangeseekbar;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.rangeseekbar.SavedState */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState.class */
public class SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<SavedState> CREATOR = new C0394a();

    /* renamed from: a */
    public float f2903a;

    /* renamed from: b */
    public float f2904b;

    /* renamed from: c */
    public float f2905c;

    /* renamed from: d */
    public int f2906d;

    /* renamed from: f */
    public float f2907f;

    /* renamed from: g */
    public float f2908g;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.rangeseekbar.SavedState$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState$a.class */
    public static final class C0394a implements Parcelable.Creator<SavedState> {
        /* renamed from: a */
        public SavedState createFromParcel(Parcel parcel) {
            return new SavedState(parcel, null);
        }

        /* renamed from: b */
        public SavedState[] newArray(int i) {
            return new SavedState[i];
        }
    }

    public SavedState(Parcel parcel) {
        super(parcel);
        this.f2903a = parcel.readFloat();
        this.f2904b = parcel.readFloat();
        this.f2905c = parcel.readFloat();
        this.f2906d = parcel.readInt();
        this.f2907f = parcel.readFloat();
        this.f2908g = parcel.readFloat();
    }

    public /* synthetic */ SavedState(Parcel parcel, C0394a c0394a) {
        this(parcel);
    }

    public SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(this.f2903a);
        parcel.writeFloat(this.f2904b);
        parcel.writeFloat(this.f2905c);
        parcel.writeInt(this.f2906d);
        parcel.writeFloat(this.f2907f);
        parcel.writeFloat(this.f2908g);
    }
}
