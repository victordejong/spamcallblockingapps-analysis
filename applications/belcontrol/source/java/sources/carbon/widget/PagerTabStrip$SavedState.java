package carbon.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:carbon/widget/PagerTabStrip$SavedState.class */
public class PagerTabStrip$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<PagerTabStrip$SavedState> CREATOR = new C0305a();

    /* renamed from: a */
    public final int f2299a;

    /* renamed from: b */
    public final int f2300b;

    /* renamed from: c */
    public final float f2301c;

    /* renamed from: d */
    public final float f2302d;

    /* renamed from: carbon.widget.PagerTabStrip$SavedState$a */
    /* loaded from: classes-dex2jar.jar:carbon/widget/PagerTabStrip$SavedState$a.class */
    public static final class C0305a implements Parcelable.Creator<PagerTabStrip$SavedState> {
        /* renamed from: a */
        public PagerTabStrip$SavedState createFromParcel(Parcel parcel) {
            return new PagerTabStrip$SavedState(parcel);
        }

        /* renamed from: b */
        public PagerTabStrip$SavedState[] newArray(int i) {
            return new PagerTabStrip$SavedState[i];
        }
    }

    public PagerTabStrip$SavedState(Parcel parcel) {
        super(parcel);
        this.f2299a = parcel.readInt();
        this.f2300b = parcel.readInt();
        this.f2301c = parcel.readFloat();
        this.f2302d = parcel.readFloat();
    }

    public PagerTabStrip$SavedState(Parcelable parcelable, int i, int i2, float f, float f2) {
        super(parcelable);
        this.f2299a = i;
        this.f2300b = i2;
        this.f2301c = f;
        this.f2302d = f2;
    }

    /* renamed from: a */
    public float m5368a() {
        return this.f2301c;
    }

    /* renamed from: b */
    public float m5367b() {
        return this.f2302d;
    }

    /* renamed from: c */
    public int m5366c() {
        return this.f2300b;
    }

    /* renamed from: d */
    public int m5365d() {
        return this.f2299a;
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f2299a);
        parcel.writeInt(this.f2300b);
        parcel.writeFloat(this.f2301c);
        parcel.writeFloat(this.f2302d);
    }
}
