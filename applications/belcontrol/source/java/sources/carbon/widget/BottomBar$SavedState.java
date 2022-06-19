package carbon.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:carbon/widget/BottomBar$SavedState.class */
public class BottomBar$SavedState implements Parcelable {

    /* renamed from: a */
    public int f2249a;

    /* renamed from: b */
    public Parcelable f2250b;

    /* renamed from: c */
    public static final BottomBar$SavedState f2248c = new 1();
    public static final Parcelable.Creator<BottomBar$SavedState> CREATOR = new C0301a();

    /* renamed from: carbon.widget.BottomBar$SavedState$a */
    /* loaded from: classes-dex2jar.jar:carbon/widget/BottomBar$SavedState$a.class */
    public static final class C0301a implements Parcelable.Creator<BottomBar$SavedState> {
        /* renamed from: a */
        public BottomBar$SavedState createFromParcel(Parcel parcel) {
            return new BottomBar$SavedState(parcel);
        }

        /* renamed from: b */
        public BottomBar$SavedState[] newArray(int i) {
            return new BottomBar$SavedState[i];
        }
    }

    public BottomBar$SavedState() {
        this.f2250b = null;
    }

    public BottomBar$SavedState(Parcel parcel) {
        BottomBar$SavedState readParcelable = parcel.readParcelable(BottomBar.class.getClassLoader());
        this.f2250b = readParcelable == null ? f2248c : readParcelable;
        this.f2249a = parcel.readInt();
    }

    public BottomBar$SavedState(Parcelable parcelable) {
        this.f2250b = parcelable == f2248c ? null : parcelable;
    }

    /* renamed from: a */
    public Parcelable m5385a() {
        return this.f2250b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2250b, i);
        parcel.writeInt(this.f2249a);
    }
}
